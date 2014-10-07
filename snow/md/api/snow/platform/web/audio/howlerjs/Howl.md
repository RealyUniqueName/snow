
[![Logo](../../../../../../images/logo.png)](../../../../../../api/index.html)

<hr/>
<a href="#" id="search_bar" onclick="return;"><div> search API <em>(or start typing anywhere)</em> </div></a>
<hr/>

<script src="../../../../../../js/omnibar.js"> </script>
<link rel="stylesheet" type="text/css" href="../../../../../../css/omnibar.css" media="all">

<div id="omnibar"> <a href="#" onclick="return" id="omnibar_close"></a> <input id="omnibar_text" type="text" placeholder="search types..."></input></div>
<script  id="typelist" data-relpath="../../../../../../" data-types="snow.App,snow.AppFixedTimestep,snow.Core,snow.CoreBinding,snow.Log,snow.Snow,snow.assets.Asset,snow.assets.AssetAudio,snow.assets.AssetBytes,snow.assets.AssetImage,snow.assets.AssetSystem,snow.assets.AssetSystemBinding,snow.assets.AssetText,snow.assets.Assets,snow.audio.Audio,snow.audio.AudioSystem,snow.audio.AudioSystemBinding,snow.audio.Sound,snow.audio.SoundBinding,snow.audio.SoundStream,snow.audio._Audio.AudioHandleMap,snow.audio.openal.AL,snow.audio.openal.ALC,snow.audio.openal.Context,snow.audio.openal.Device,snow.input.Input,snow.input.InputSystem,snow.input.InputSystemBinding,snow.input.Keycodes,snow.input.MapIntBool,snow.input.MapIntFloat,snow.input.Scancodes,snow.io.IO,snow.io.IOSystem,snow.io.IOSystemBinding,snow.platform.native.Core,snow.platform.native.StaticSnow,snow.platform.native.assets.AssetSystem,snow.platform.native.audio.AudioSystem,snow.platform.native.audio.Sound,snow.platform.native.audio.SoundStream,snow.platform.native.audio.openal.AL,snow.platform.native.audio.openal.ALC,snow.platform.native.audio.openal.AudioSystem,snow.platform.native.audio.openal.Context,snow.platform.native.audio.openal.Device,snow.platform.native.audio.openal.OpenALHelper,snow.platform.native.audio.openal.Sound,snow.platform.native.audio.openal.SoundStream,snow.platform.native.audio.openal._AL.Context_Impl_,snow.platform.native.audio.openal._AL.Device_Impl_,snow.platform.native.input.InputSystem,snow.platform.native.input.sdl.ControllerEventType,snow.platform.native.input.sdl.InputSystem,snow.platform.native.input.sdl.KeyEventType,snow.platform.native.input.sdl.ModValue,snow.platform.native.input.sdl.MouseEventType,snow.platform.native.input.sdl.TouchEventType,snow.platform.native.io.IOFile,snow.platform.native.io.IOFileHandle,snow.platform.native.io.IOSystem,snow.platform.native.io._IOFile.IOFileHandle_Impl_,snow.platform.native.render.opengl.GL,snow.platform.native.render.opengl.GLActiveInfo,snow.platform.native.render.opengl.GLBuffer,snow.platform.native.render.opengl.GLContextAttributes,snow.platform.native.render.opengl.GLFBO,snow.platform.native.render.opengl.GLFramebuffer,snow.platform.native.render.opengl.GLObject,snow.platform.native.render.opengl.GLProgram,snow.platform.native.render.opengl.GLRBO,snow.platform.native.render.opengl.GLRenderbuffer,snow.platform.native.render.opengl.GLShader,snow.platform.native.render.opengl.GLShaderPrecisionFormat,snow.platform.native.render.opengl.GLTexture,snow.platform.native.render.opengl.GLUniformLocation,snow.platform.native.render.opengl._GL.GLFramebuffer_Impl_,snow.platform.native.render.opengl._GL.GLRenderbuffer_Impl_,snow.platform.native.utils.ArrayBuffer,snow.platform.native.utils.ArrayBufferView,snow.platform.native.utils.ByteArray,snow.platform.native.utils.Compression,snow.platform.native.utils.Float32Array,snow.platform.native.utils.Int16Array,snow.platform.native.utils.Int32Array,snow.platform.native.utils.Int8Array,snow.platform.native.utils.UInt16Array,snow.platform.native.utils.UInt32Array,snow.platform.native.utils.UInt8Array,snow.platform.native.utils.UInt8ClampedArray,snow.platform.native.window.WindowSystem,snow.platform.native.window.sdl.WindowSystem,snow.platform.web.assets.psd.PSD,snow.platform.web.audio.AudioSystem,snow.platform.web.audio.Sound,snow.platform.web.audio.SoundStream,snow.platform.web.audio.howlerjs.AudioParams,snow.platform.web.audio.howlerjs.AudioSystem,snow.platform.web.audio.howlerjs.Howl,snow.platform.web.audio.howlerjs.Howler,snow.platform.web.audio.howlerjs.SoundStream,snow.platform.web.audio.howlerjs.SpriteParams,snow.render.opengl.GL,snow.render.opengl.GLActiveInfo,snow.render.opengl.GLBuffer,snow.render.opengl.GLContextAttributes,snow.render.opengl.GLFramebuffer,snow.render.opengl.GLProgram,snow.render.opengl.GLRenderbuffer,snow.render.opengl.GLShader,snow.render.opengl.GLTexture,snow.render.opengl.GLUniformLocation,snow.types.AppConfig,snow.types.AppConfigNative,snow.types.AppConfigWeb,snow.types.AssetAudioOptions,snow.types.AssetBytesOptions,snow.types.AssetImageOptions,snow.types.AssetInfo,snow.types.AssetTextOptions,snow.types.AssetType,snow.types.AudioDataBlob,snow.types.AudioDataInfo,snow.types.AudioFormatType,snow.types.AudioHandle,snow.types.AudioInfo,snow.types.DisplayMode,snow.types.FileEvent,snow.types.FileEventType,snow.types.FileFilter,snow.types.GamepadDeviceEventType,snow.types.ImageInfo,snow.types.InputEvent,snow.types.InputEventType,snow.types.Key,snow.types.ModState,snow.types.Scan,snow.types.SnowConfig,snow.types.SystemEvent,snow.types.SystemEventType,snow.types.TextEventType,snow.types.WindowConfig,snow.types.WindowEvent,snow.types.WindowEventType,snow.types.WindowHandle,snow.utils.AbstractClass,snow.utils.AbstractClassBuilder,snow.utils.ArrayBuffer,snow.utils.ArrayBufferView,snow.utils.ByteArray,snow.utils.Float32Array,snow.utils.IDataInput,snow.utils.IMemoryRange,snow.utils.Int16Array,snow.utils.Int32Array,snow.utils.Int8Array,snow.utils.Libs,snow.utils.Timer,snow.utils.UInt16Array,snow.utils.UInt32Array,snow.utils.UInt8Array,snow.utils.UInt8ClampedArray,snow.utils._AbstractClass.StringMap,snow.utils.format.png.Chunk,snow.utils.format.png.Color,snow.utils.format.png.Data,snow.utils.format.png.Header,snow.utils.format.png.Reader,snow.utils.format.png.Tools,snow.utils.format.png.Writer,snow.utils.format.tools.Adler32,snow.utils.format.tools.Deflate,snow.utils.format.tools.HuffTools,snow.utils.format.tools.Huffman,snow.utils.format.tools.Inflate,snow.utils.format.tools.InflateImpl,snow.utils.format.tools.MemoryBytes,snow.utils.format.tools._InflateImpl.State,snow.utils.format.tools._InflateImpl.Window,snow.window.Window,snow.window.WindowSystem,snow.window.WindowSystemBinding,snow.window.Windowing,snow.window._Windowing.WindowHandleMap"></script>


<h1>Howl</h1>
<small>`snow.platform.web.audio.howlerjs.Howl`</small>



<hr/>

`class`<br/><span class="meta">
meta: @:keep, @:native(&quot;window.Howl&quot;)</span>

<hr/>


&nbsp;
&nbsp;






<h3>Methods</h3> <hr/><span class="method apipage">
            <a name="fade"><a class="lift" href="#fade">fade</a></a><div class="clear"></div>
            <code class="signature apipage">fade(from:[Float](http://api.haxe.org/Float.html)<span></span>, to:[Float](http://api.haxe.org/Float.html)<span></span>, len:[Float](http://api.haxe.org/Float.html)<span></span>, callBack:[Dynamic](#)<span></span>, id:[String](http://api.haxe.org/String.html)<span></span>) : [snow.platform.web.audio.howlerjs.Howl](../../../../../../api/snow/platform/web/audio/howlerjs/Howl.html)</code><br/><span class="small_desc_flat"></span>


</span>
<span class="method apipage">
            <a name="fadeIn"><a class="lift" href="#fadeIn">fadeIn</a></a><div class="clear"></div>
            <code class="signature apipage">fadeIn(to:[Float](http://api.haxe.org/Float.html)<span></span>, len:[Float](http://api.haxe.org/Float.html)<span></span>, callBack:[Dynamic](#)<span></span>) : [snow.platform.web.audio.howlerjs.Howl](../../../../../../api/snow/platform/web/audio/howlerjs/Howl.html)</code><br/><span class="small_desc_flat"></span>


</span>
<span class="method apipage">
            <a name="fadeOut"><a class="lift" href="#fadeOut">fadeOut</a></a><div class="clear"></div>
            <code class="signature apipage">fadeOut(to:[Float](http://api.haxe.org/Float.html)<span></span>, len:[Float](http://api.haxe.org/Float.html)<span></span>, calBack:[Dynamic](#)<span></span>, id:[String](http://api.haxe.org/String.html)<span></span>) : [snow.platform.web.audio.howlerjs.Howl](../../../../../../api/snow/platform/web/audio/howlerjs/Howl.html)</code><br/><span class="small_desc_flat"></span>


</span>
<span class="method apipage">
            <a name="load"><a class="lift" href="#load">load</a></a><div class="clear"></div>
            <code class="signature apipage">load() : [snow.platform.web.audio.howlerjs.Howl](../../../../../../api/snow/platform/web/audio/howlerjs/Howl.html)</code><br/><span class="small_desc_flat"></span>


</span>
<span class="method apipage">
            <a name="loop"><a class="lift" href="#loop">loop</a></a><div class="clear"></div>
            <code class="signature apipage">loop(loop:[Bool](http://api.haxe.org/Bool.html)<span></span>) : [Dynamic](#)</code><br/><span class="small_desc_flat"></span>


</span>
<span class="method apipage">
            <a name="mute"><a class="lift" href="#mute">mute</a></a><div class="clear"></div>
            <code class="signature apipage">mute(id:[String](http://api.haxe.org/String.html)<span></span>) : [snow.platform.web.audio.howlerjs.Howl](../../../../../../api/snow/platform/web/audio/howlerjs/Howl.html)</code><br/><span class="small_desc_flat"></span>


</span>
<span class="method apipage">
            <a name="new"><a class="lift" href="#new">new</a></a><div class="clear"></div>
            <code class="signature apipage">new(o:[Dynamic](#)<span></span>) : [Void](http://api.haxe.org/Void.html)</code><br/><span class="small_desc_flat"></span>


</span>
<span class="method apipage">
            <a name="off"><a class="lift" href="#off">off</a></a><div class="clear"></div>
            <code class="signature apipage">off(event:[String](http://api.haxe.org/String.html)<span></span>, fn:[Dynamic](#)<span></span>) : [snow.platform.web.audio.howlerjs.Howl](../../../../../../api/snow/platform/web/audio/howlerjs/Howl.html)</code><br/><span class="small_desc_flat"></span>


</span>
<span class="method apipage">
            <a name="on"><a class="lift" href="#on">on</a></a><div class="clear"></div>
            <code class="signature apipage">on(event:[String](http://api.haxe.org/String.html)<span></span>, fn:[Dynamic](#)<span></span>) : [snow.platform.web.audio.howlerjs.Howl](../../../../../../api/snow/platform/web/audio/howlerjs/Howl.html)</code><br/><span class="small_desc_flat"></span>


</span>
<span class="method apipage">
            <a name="pause"><a class="lift" href="#pause">pause</a></a><div class="clear"></div>
            <code class="signature apipage">pause(id:[String](http://api.haxe.org/String.html)<span></span>, timerId:[String](http://api.haxe.org/String.html)<span></span>) : [snow.platform.web.audio.howlerjs.Howl](../../../../../../api/snow/platform/web/audio/howlerjs/Howl.html)</code><br/><span class="small_desc_flat"></span>


</span>
<span class="method apipage">
            <a name="play"><a class="lift" href="#play">play</a></a><div class="clear"></div>
            <code class="signature apipage">play(sprite:[String](http://api.haxe.org/String.html)<span></span>, callBack:[String](http://api.haxe.org/String.html)&nbsp;-&gt; [Void](http://api.haxe.org/Void.html)<span></span>) : [snow.platform.web.audio.howlerjs.Howl](../../../../../../api/snow/platform/web/audio/howlerjs/Howl.html)</code><br/><span class="small_desc_flat"></span>


</span>
<span class="method apipage">
            <a name="pos"><a class="lift" href="#pos">pos</a></a><div class="clear"></div>
            <code class="signature apipage">pos(pos:[Float](http://api.haxe.org/Float.html)<span></span>, id:[String](http://api.haxe.org/String.html)<span></span>) : [Dynamic](#)</code><br/><span class="small_desc_flat"></span>


</span>
<span class="method apipage">
            <a name="pos3d"><a class="lift" href="#pos3d">pos3d</a></a><div class="clear"></div>
            <code class="signature apipage">pos3d(x:[Float](http://api.haxe.org/Float.html)<span></span>, y:[Float](http://api.haxe.org/Float.html)<span></span>, z:[Float](http://api.haxe.org/Float.html)<span></span>, id:[String](http://api.haxe.org/String.html)<span></span>) : [Dynamic](#)</code><br/><span class="small_desc_flat"></span>


</span>
<span class="method apipage">
            <a name="sprite"><a class="lift" href="#sprite">sprite</a></a><div class="clear"></div>
            <code class="signature apipage">sprite(sprite:[snow.platform.web.audio.howlerjs.SpriteParams](../../../../../../api/snow/platform/web/audio/howlerjs/SpriteParams.html)<span></span>) : [Dynamic](#)</code><br/><span class="small_desc_flat"></span>


</span>
<span class="method apipage">
            <a name="stop"><a class="lift" href="#stop">stop</a></a><div class="clear"></div>
            <code class="signature apipage">stop(id:[String](http://api.haxe.org/String.html)<span></span>, timerId:[String](http://api.haxe.org/String.html)<span></span>) : [snow.platform.web.audio.howlerjs.Howl](../../../../../../api/snow/platform/web/audio/howlerjs/Howl.html)</code><br/><span class="small_desc_flat"></span>


</span>
<span class="method apipage">
            <a name="unload"><a class="lift" href="#unload">unload</a></a><div class="clear"></div>
            <code class="signature apipage">unload() : [Void](http://api.haxe.org/Void.html)</code><br/><span class="small_desc_flat"></span>


</span>
<span class="method apipage">
            <a name="unmute"><a class="lift" href="#unmute">unmute</a></a><div class="clear"></div>
            <code class="signature apipage">unmute(id:[String](http://api.haxe.org/String.html)<span></span>) : [snow.platform.web.audio.howlerjs.Howl](../../../../../../api/snow/platform/web/audio/howlerjs/Howl.html)</code><br/><span class="small_desc_flat"></span>


</span>
<span class="method apipage">
            <a name="urls"><a class="lift" href="#urls">urls</a></a><div class="clear"></div>
            <code class="signature apipage">urls(urls:[Array](http://api.haxe.org/Array.html)&lt;[String](http://api.haxe.org/String.html)&gt;<span></span>) : [Dynamic](#)</code><br/><span class="small_desc_flat"></span>


</span>
<span class="method apipage">
            <a name="volume"><a class="lift" href="#volume">volume</a></a><div class="clear"></div>
            <code class="signature apipage">volume(vol:[Float](http://api.haxe.org/Float.html)<span></span>, id:[String](http://api.haxe.org/String.html)<span></span>) : [Dynamic](#)</code><br/><span class="small_desc_flat"></span>


</span>



<hr/>

&nbsp;
&nbsp;
&nbsp;
&nbsp;