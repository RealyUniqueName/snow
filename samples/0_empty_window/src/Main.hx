
import lumen.Lumen;

import lumen.render.gl.GL;
import lumen.render.gl.GLTexture;
import lumen.render.gl.GLProgram;
import lumen.render.gl.GLBuffer;

import lumen.utils.ByteArray;
import lumen.utils.UInt8Array;
import lumen.utils.Float32Array;
import lumen.utils.compat.Matrix3D;

import lumen.window.Window;
import lumen.input.Input;

import lumen.LumenTypes.ImageInfo;
import lumen.App;

import lumen.audio.system.AudioSystem.LumenSound;

class Main extends lumen.AppFixedTimestep {

    var imageUniform:Int;
    var modelViewMatrixUniform:Int;
    var projectionMatrixUniform:Int;
    var shaderProgram:GLProgram;
    var texCoordAttribute:Int;
    var texCoordBuffer:GLBuffer;
    var vertexAttribute:Int;
    var vertexBuffer:GLBuffer;
    var textures: Array<GLTexture>;
    var current_texture : GLTexture;
    var tex_index : Int = 0;
    var files : Array<String>;
    
    var size : Int = 128;
    var texture_time : Float = 1.0;
    var positionX : Float = 0;
    var positionY : Float = 0;
    var dirX : Float = 1;
    var speed : Float = 100;

    override public function ready() {

        trace('/ HOST / ready');

        trace("app config is loaded as : " + app.config.runtime_config );

        size = app.config.runtime_config.size;
        speed = app.config.runtime_config.movespeed;
        texture_time = app.config.runtime_config.texture_time;
        timescale = app.config.runtime_config.timescale;


        var dcount : Int = app.window.desktop_get_display_count();
        trace('A total of ${dcount} displays were found');
        for(i in 0 ... dcount) {
            var bounds = app.window.desktop_get_display_bounds(i);
            var name = app.window.desktop_get_display_name(i);
            trace('display ${i}, name: ${name} bounds: ${bounds} modes:' );

                //get list of modes for this display
            var modecount = app.window.desktop_get_display_mode_count(i);

            for(j in 0 ... modecount) {
                var mode = app.window.desktop_get_display_mode(i,j);
                trace('\t\t ${mode.width} x ${mode.height}  @  ${mode.refresh_rate}hz ');
            }

        }

        trace("desktop native resolution of primary display : " + app.window.desktop_get_display_native_mode(0) );

        trace("OpenGL reports version " + GL.versionString());

        // initializeShaders();
        // createBuffers();

        textures = [];

        files = [ 
            'assets/test.bmp',
            'assets/test.gif', 
            'assets/test.jpg', 
            'assets/test.png', 
            'assets/test.psd', 
            'assets/test.tga', 
        ];
        
        for(f in files) {
            var info : ImageInfo = app.loadimage(f);
            trace('loaded $f with ${info.width}x${info.height}x${info.bpp} (source bpp:${info.bpp_source}) mem:${info.data.byteLength}');
            textures.push( createTexture( info ) );
        }

        //this is temp testing, just hook into the window render directly
        current_texture = textures[0];

        app.main_window.window_render_handler = onrender;
       
        next_tex_tick = haxe.Timer.stamp() + texture_time;

        positionY = (app.main_window.size.h - size) / 2;

        sound1 = app.audio.create("assets/sound.pcm", 'one');
        sound2 = app.audio.create("assets/sound.ogg");
        sound3 = app.audio.create("assets/sound.wav", 'three');

        trace("sound1 : " + sound1.name);
        trace("sound2 : " + sound2.name);
        trace("sound3 : " + sound3.name);

        sound1.play();
        sound2.play();
        sound3.play();

    } //ready


    var sound1 : LumenSound;
    var sound2 : LumenSound;
    var sound3 : LumenSound;

    var left : Bool = false;

    override function onkeydown( event:KeyEvent ) {

        // trace("key down : " + event);

            //console scan code should be universally next to 1
        if(event.keycode == Key.KEY_e) {
            sound1.play();
        }

        if(event.keycode == Key.KEY_q) {
            left = !left;
            sound2.pan = left ? -1 : 1;
            sound2.play();
        }

        if(event.keycode == Key.KEY_w) {
            app.audio.pitch('three', 1.5);
            sound3.play();
        }

        if(event.scancode == Scan.GRAVE) {
            app.audio.pitch('three', 0.5);
            sound3.play();
        }

    } //onkeydown

    override function onkeyup( event:KeyEvent ) {

            //alt enter to toggle fullscreen test
        if( event.keycode == Key.RETURN && event.mod.alt ) {
            app.main_window.fullscreen = !app.main_window.fullscreen;
        }

        if(event.keycode == Key.ESCAPE) {
            app.shutdown();
        }

    } //onkeyup

    override public function ontextinput( event : TextEvent ) {
        // trace("text input : " + event);
    } //ontextinput


    override function onmousemove( event:MouseEvent ) {
        // trace("move " + event);
    }

    override function onmouseup( event:MouseEvent ) {
        // trace("up " + event);
        positionY = event.y - (size/2);
        positionX = event.x - (size/2);
        phys_posx = positionX;
    }

    override function onmousedown( event:MouseEvent ) {
        // trace("down " + event);
    }

    override function onmousewheel( event:MouseEvent ) {
        // trace("wheel " + event);
    }


    override function ongamepadaxis( _event:GamepadEvent ) {
        // trace('axis; device: ${_event.which}, axis: ${_event.axis}, value: ${_event.value}');
    }

    override function ongamepadbuttonup( _event:GamepadEvent ) {
        // trace('button up; device: ${_event.which}, button: ${_event.button}');
    }

    override function ongamepadbuttondown( _event:GamepadEvent ) {
        // trace('button down; device: ${_event.which}, button: ${_event.button}');
    }

    override function ongamepaddevice( _event:GamepadEvent ) {
        // trace('device event; device: ${_event.which}, type: ${_event.type}');
    }


    var next_tex_tick : Float = 0;
    var phys_posx : Float = 0;

    override function update(delta:Float) {

        positionX = phys_posx;

        phys_posx += (speed * dirX * delta);

        // Sys.println('dt:${delta}');

        if(current_time > next_tex_tick) {

            next_tex_tick = current_time + texture_time;
            tex_index++;
            if(tex_index == files.length) {
                tex_index = 0;
            }

            current_texture = textures[tex_index];

        }

        if(app.input.keyreleased(Key.SPACE)) {
            trace('space released');
        }

        if(app.input.keypressed(Key.SPACE)) {
            trace('space pressed');
        }

        if(app.input.keydown(Key.SPACE)) {
            // trace('space down');
        }

    } //update


    function onrender( window:Window ) {

        //"update"
        //this is to test the fix-your-timestep thing
        //essentially app.mspf is a fixed timestep, alpha time is how far we are into one...        

        var prevx = positionX;
        var alpha_time : Float = overflow / mspf;
        // var alpha_time : Float = 1; use this to test the others

        positionX = (phys_posx * alpha_time) + prevx * ( 1.0 - alpha_time );

        if(positionX >= (app.main_window.size.w - size)) {            
            positionX = (app.main_window.size.w - size);
            dirX = -1;
        } else if(positionX <= 0) {
            positionX = 0;
            dirX = 1;
        }

        // Sys.println('alpha:${alpha_time} dt:${app.last_frame_time} avgdt:${avgdt} simtime:${app.t}');

        render();

        window.swap();

    } //onrender hook

    function createTexture( info:ImageInfo ):GLTexture {
        
        var texture = GL.createTexture();

            GL.bindTexture (GL.TEXTURE_2D, texture);
            GL.texImage2D (GL.TEXTURE_2D, 0, GL.RGBA, info.width, info.height, 0, GL.RGBA, GL.UNSIGNED_BYTE, new UInt8Array( cast info.data ) );
            GL.texParameteri (GL.TEXTURE_2D, GL.TEXTURE_MAG_FILTER, GL.NEAREST);
            GL.texParameteri (GL.TEXTURE_2D, GL.TEXTURE_MIN_FILTER, GL.NEAREST);
            GL.bindTexture (GL.TEXTURE_2D, null);

        return texture;

    } //createTexture

    function initializeShaders ():Void {

        var vertexShaderSource = 

            "precision mediump float;
            attribute vec3 aVertexPosition;
            attribute vec2 aTexCoord;
            varying vec2 vTexCoord;

            uniform mat4 uModelViewMatrix;
            uniform mat4 uProjectionMatrix;

            void main(void) {
                vTexCoord = aTexCoord;
                gl_Position = uProjectionMatrix * uModelViewMatrix * vec4 (aVertexPosition, 1.0);
            }";

        trace("DERPDERPDERP");
        var vertexShader = GL.createShader (GL.VERTEX_SHADER);
        trace("DERPDERPDERP");

            GL.shaderSource (vertexShader, vertexShaderSource);
            GL.compileShader (vertexShader);

        if (GL.getShaderParameter (vertexShader, GL.COMPILE_STATUS) == 0) {

            throw "Error compiling vertex shader";

        }

        var fragmentShaderSource =

            "precision mediump float;
            varying vec2 vTexCoord;
            uniform sampler2D uImage0;

            void main(void) {
                gl_FragColor = texture2D (uImage0, vTexCoord);
            }";

        var fragmentShader = GL.createShader (GL.FRAGMENT_SHADER);
            GL.shaderSource (fragmentShader, fragmentShaderSource);
            GL.compileShader (fragmentShader);
        
        if (GL.getShaderParameter (fragmentShader, GL.COMPILE_STATUS) == 0) {
            
            throw "Error compiling fragment shader";
            
        }
        
        shaderProgram = GL.createProgram ();

        GL.attachShader (shaderProgram, vertexShader);
        GL.attachShader (shaderProgram, fragmentShader);
        GL.linkProgram (shaderProgram);
        
        if (GL.getProgramParameter (shaderProgram, GL.LINK_STATUS) == 0) {
            
            throw "Unable to initialize the shader program.";
            
        }
        
        vertexAttribute = GL.getAttribLocation (shaderProgram, "aVertexPosition");
        texCoordAttribute = GL.getAttribLocation (shaderProgram, "aTexCoord");
        projectionMatrixUniform = GL.getUniformLocation (shaderProgram, "uProjectionMatrix");
        modelViewMatrixUniform = GL.getUniformLocation (shaderProgram, "uModelViewMatrix");
        imageUniform = GL.getUniformLocation (shaderProgram, "uImage0");
        
    } //initializeShaders

    function createBuffers ():Void {
        
        var vertices = [
            
            size, size, 0,
            0, size, 0,
            size, 0, 0,
            0, 0, 0
            
        ];
        
        vertexBuffer = GL.createBuffer ();
        GL.bindBuffer (GL.ARRAY_BUFFER, vertexBuffer);
        GL.bufferData (GL.ARRAY_BUFFER, new Float32Array (cast vertices), GL.STATIC_DRAW);
        GL.bindBuffer (GL.ARRAY_BUFFER, null);
        
        var texCoords = [
            
            1, 1, 
            0, 1, 
            1, 0, 
            0, 0, 
            
        ];
        
        texCoordBuffer = GL.createBuffer ();
        GL.bindBuffer (GL.ARRAY_BUFFER, texCoordBuffer);    
        GL.bufferData (GL.ARRAY_BUFFER, new Float32Array (cast texCoords), GL.STATIC_DRAW);
        GL.bindBuffer (GL.ARRAY_BUFFER, null);
        
    } //createBuffers

    function render(){
        
        GL.viewport (0, 0, app.main_window.size.w, app.main_window.size.h);
        
        GL.clearColor (Math.random(), 0.5, 0.2, 1.0);
        GL.clear (GL.COLOR_BUFFER_BIT);
            
            return;
        // var positionX = (app.main_window.size.w - size) / 2;
        // var positionY = (app.main_window.size.h - size) / 2;
        
        var projectionMatrix = Matrix3D.createOrtho (0, app.main_window.size.w, app.main_window.size.h, 0, 1000, -1000);
        var modelViewMatrix = Matrix3D.create2D (positionX, positionY, 1, 0);
        
        GL.useProgram (shaderProgram);
        GL.enableVertexAttribArray (vertexAttribute);
        GL.enableVertexAttribArray (texCoordAttribute);
        
        GL.activeTexture (GL.TEXTURE0);
        GL.bindTexture (GL.TEXTURE_2D, current_texture);
        GL.enable (GL.TEXTURE_2D);
        
        GL.bindBuffer (GL.ARRAY_BUFFER, vertexBuffer);
        GL.vertexAttribPointer (vertexAttribute, 3, GL.FLOAT, false, 0, 0);
        GL.bindBuffer (GL.ARRAY_BUFFER, texCoordBuffer);
        GL.vertexAttribPointer (texCoordAttribute, 2, GL.FLOAT, false, 0, 0);
        
        GL.uniformMatrix3D (projectionMatrixUniform, false, projectionMatrix);
        GL.uniformMatrix3D (modelViewMatrixUniform, false, modelViewMatrix);
        GL.uniform1i (imageUniform, 0);
        
        GL.drawArrays (GL.TRIANGLE_STRIP, 0, 4);
        
        GL.bindBuffer (GL.ARRAY_BUFFER, null);
        GL.disable (GL.TEXTURE_2D);
        GL.bindTexture (GL.TEXTURE_2D, null);
        
        GL.disableVertexAttribArray (vertexAttribute);
        GL.disableVertexAttribArray (texCoordAttribute);
        GL.useProgram (null);
    
    } //render

} //Main
