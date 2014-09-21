
[![Logo](../../../images/logo.png)](../../../api/index.html)

<hr/>
<a href="#" id="search_bar" onclick="return;"><div> search API <em>(or start typing anywhere)</em> </div></a>
<hr/>

<script src="../../../js/omnibar.js"> </script>
<link rel="stylesheet" type="text/css" href="../../../css/omnibar.css" media="all">

<div id="omnibar"> <a href="#" onclick="return" id="omnibar_close"></a> <input id="omnibar_text" type="text" placeholder="search types..."></input></div>
<script  id="typelist" data-relpath="../../../" data-types="snow.App,snow.AppFixedTimestep,snow.Core,snow.CoreBinding,snow.Log,snow.Snow,snow.assets.Asset,snow.assets.AssetAudio,snow.assets.AssetBytes,snow.assets.AssetImage,snow.assets.AssetSystem,snow.assets.AssetSystemBinding,snow.assets.AssetText,snow.assets.Assets,snow.audio.Audio,snow.audio.AudioSystem,snow.audio.AudioSystemBinding,snow.audio.Sound,snow.audio.SoundBinding,snow.audio.SoundStream,snow.audio.openal.AL,snow.audio.openal.ALC,snow.audio.openal.Context,snow.audio.openal.Device,snow.input.Input,snow.input.InputSystem,snow.input.InputSystemBinding,snow.input.Keycodes,snow.input.MapIntBool,snow.input.MapIntFloat,snow.input.Scancodes,snow.io.IO,snow.io.IOSystem,snow.io.IOSystemBinding,snow.platform.native.Core,snow.platform.native.StaticSnow,snow.platform.native.assets.AssetSystem,snow.platform.native.audio.AudioSystem,snow.platform.native.audio.Sound,snow.platform.native.audio.SoundStream,snow.platform.native.audio.openal.AL,snow.platform.native.audio.openal.ALC,snow.platform.native.audio.openal.AudioSystem,snow.platform.native.audio.openal.Context,snow.platform.native.audio.openal.Device,snow.platform.native.audio.openal.OpenALHelper,snow.platform.native.audio.openal.Sound,snow.platform.native.audio.openal.SoundStream,snow.platform.native.audio.openal._AL.Context_Impl_,snow.platform.native.audio.openal._AL.Device_Impl_,snow.platform.native.input.InputSystem,snow.platform.native.input.sdl.ControllerEventType,snow.platform.native.input.sdl.GamepadEventTypes,snow.platform.native.input.sdl.InputSystem,snow.platform.native.input.sdl.KeyEventType,snow.platform.native.input.sdl.KeyEventTypes,snow.platform.native.input.sdl.ModValue,snow.platform.native.input.sdl.MouseEventType,snow.platform.native.input.sdl.MouseEventTypes,snow.platform.native.input.sdl.TouchEventTypes,snow.platform.native.input.sdl.TouchState,snow.platform.native.io.IOFile,snow.platform.native.io.IOSystem,snow.platform.native.render.opengl.GL,snow.platform.native.render.opengl.GLActiveInfo,snow.platform.native.render.opengl.GLBuffer,snow.platform.native.render.opengl.GLContextAttributes,snow.platform.native.render.opengl.GLFBO,snow.platform.native.render.opengl.GLFramebuffer,snow.platform.native.render.opengl.GLObject,snow.platform.native.render.opengl.GLProgram,snow.platform.native.render.opengl.GLRBO,snow.platform.native.render.opengl.GLRenderbuffer,snow.platform.native.render.opengl.GLShader,snow.platform.native.render.opengl.GLShaderPrecisionFormat,snow.platform.native.render.opengl.GLTexture,snow.platform.native.render.opengl.GLUniformLocation,snow.platform.native.render.opengl._GL.GLFramebuffer_Impl_,snow.platform.native.render.opengl._GL.GLRenderbuffer_Impl_,snow.platform.native.utils.ArrayBuffer,snow.platform.native.utils.ArrayBufferView,snow.platform.native.utils.ByteArray,snow.platform.native.utils.Compression,snow.platform.native.utils.Float32Array,snow.platform.native.utils.Int16Array,snow.platform.native.utils.Int32Array,snow.platform.native.utils.Int8Array,snow.platform.native.utils.UInt16Array,snow.platform.native.utils.UInt32Array,snow.platform.native.utils.UInt8Array,snow.platform.native.utils.UInt8ClampedArray,snow.platform.native.window.WindowSystem,snow.platform.native.window.sdl.WindowSystem,snow.platform.web.assets.psd.PSD,snow.platform.web.audio.AudioSystem,snow.platform.web.audio.Sound,snow.platform.web.audio.SoundStream,snow.platform.web.audio.howlerjs.AudioParams,snow.platform.web.audio.howlerjs.AudioSystem,snow.platform.web.audio.howlerjs.Howl,snow.platform.web.audio.howlerjs.Howler,snow.platform.web.audio.howlerjs.SoundStream,snow.platform.web.audio.howlerjs.SpriteParams,snow.render.opengl.GL,snow.render.opengl.GLActiveInfo,snow.render.opengl.GLBuffer,snow.render.opengl.GLContextAttributes,snow.render.opengl.GLFramebuffer,snow.render.opengl.GLProgram,snow.render.opengl.GLRenderbuffer,snow.render.opengl.GLShader,snow.render.opengl.GLTexture,snow.render.opengl.GLUniformLocation,snow.types.AppConfig,snow.types.AppConfigNative,snow.types.AppConfigWeb,snow.types.AssetAudioOptions,snow.types.AssetBytesOptions,snow.types.AssetImageOptions,snow.types.AssetInfo,snow.types.AssetTextOptions,snow.types.AssetType,snow.types.AudioDataBlob,snow.types.AudioDataInfo,snow.types.AudioFormatType,snow.types.AudioHandle,snow.types.AudioInfo,snow.types.DisplayMode,snow.types.FileEvent,snow.types.FileEventType,snow.types.FileEvents,snow.types.FileFilter,snow.types.GamepadDeviceEventType,snow.types.ImageInfo,snow.types.InputEvent,snow.types.InputEventType,snow.types.InputEvents,snow.types.Key,snow.types.ModState,snow.types.Scan,snow.types.SnowConfig,snow.types.SystemEvent,snow.types.SystemEventType,snow.types.SystemEvents,snow.types.TextEventType,snow.types.WindowConfig,snow.types.WindowEvent,snow.types.WindowEventType,snow.types.WindowEvents,snow.types.WindowHandle,snow.utils.AbstractClass,snow.utils.AbstractClassBuilder,snow.utils.ArrayBuffer,snow.utils.ArrayBufferView,snow.utils.ByteArray,snow.utils.Float32Array,snow.utils.IDataInput,snow.utils.IMemoryRange,snow.utils.Int16Array,snow.utils.Int32Array,snow.utils.Int8Array,snow.utils.Libs,snow.utils.Timer,snow.utils.UInt16Array,snow.utils.UInt32Array,snow.utils.UInt8Array,snow.utils.UIntClamped8Array,snow.utils._AbstractClass.StringMap,snow.utils.format.png.Chunk,snow.utils.format.png.Color,snow.utils.format.png.Data,snow.utils.format.png.Header,snow.utils.format.png.Reader,snow.utils.format.png.Tools,snow.utils.format.png.Writer,snow.utils.format.tools.Adler32,snow.utils.format.tools.Deflate,snow.utils.format.tools.HuffTools,snow.utils.format.tools.Huffman,snow.utils.format.tools.Inflate,snow.utils.format.tools.InflateImpl,snow.utils.format.tools.MemoryBytes,snow.utils.format.tools._InflateImpl.State,snow.utils.format.tools._InflateImpl.Window,snow.window.Window,snow.window.WindowSystem,snow.window.WindowSystemBinding,snow.window.Windowing"></script>


<h1>Windowing</h1>
<small>`snow.window.Windowing`</small>

A window manager, accessed via `app.window`

<hr/>

`class`<br/><span class="meta">
meta: @:keep</span>

<hr/>


&nbsp;
&nbsp;




<h3>Members</h3> <hr/><span class="member apipage">
                <a name="window_count"><a class="lift" href="#window_count">window\_count</a></a><div class="clear"></div>
                <code class="signature apipage">window\_count : [Int](http://api.haxe.org/Int.html)</code><br/></span>
            <span class="small_desc_flat">The number of windows in this manager</span><br/><span class="member apipage">
                <a name="window_handles"><a class="lift" href="#window_handles">window\_handles</a></a><div class="clear"></div>
                <code class="signature apipage">window\_handles : [Map](http://api.haxe.org/Map.html)&lt;[snow.types.WindowHandle](../../../api/snow/types/WindowHandle.html), [Int](http://api.haxe.org/Int.html)&gt;</code><br/></span>
            <span class="small_desc_flat">The list of window handles, pointing to id's in the `window_list`</span><br/><span class="member apipage">
                <a name="window_list"><a class="lift" href="#window_list">window\_list</a></a><div class="clear"></div>
                <code class="signature apipage">window\_list : [Map](http://api.haxe.org/Map.html)&lt;[Int](http://api.haxe.org/Int.html), [snow.window.Window](../../../api/snow/window/Window.html)&gt;</code><br/></span>
            <span class="small_desc_flat">The list of windows in this manager</span><br/>


<h3>Methods</h3> <hr/><span class="method apipage">
            <a name="create"><a class="lift" href="#create">create</a></a><div class="clear"></div>
            <code class="signature apipage">create(\_config:[snow.types.WindowConfig](../../../api/snow/types/WindowConfig.html)<span></span>) : [snow.window.Window](../../../api/snow/window/Window.html)</code><br/><span class="small_desc_flat">Create a window with the given config.</span>


</span>
<span class="method apipage">
            <a name="display_bounds"><a class="lift" href="#display_bounds">display\_bounds</a></a><div class="clear"></div>
            <code class="signature apipage">display\_bounds(display:[Int](http://api.haxe.org/Int.html)<span></span>) : [Dynamic](#)</code><br/><span class="small_desc_flat">Get the bounds of the display by index</span>


</span>
<span class="method apipage">
            <a name="display_count"><a class="lift" href="#display_count">display\_count</a></a><div class="clear"></div>
            <code class="signature apipage">display\_count() : [Int](http://api.haxe.org/Int.html)</code><br/><span class="small_desc_flat">Get the number of displays present</span>


</span>
<span class="method apipage">
            <a name="display_current_mode"><a class="lift" href="#display_current_mode">display\_current\_mode</a></a><div class="clear"></div>
            <code class="signature apipage">display\_current\_mode(display:[Int](http://api.haxe.org/Int.html)<span></span>) : [snow.types.DisplayMode](../../../api/snow/types/DisplayMode.html)</code><br/><span class="small_desc_flat">Get the current mode information of the display by index</span>


</span>
<span class="method apipage">
            <a name="display_mode"><a class="lift" href="#display_mode">display\_mode</a></a><div class="clear"></div>
            <code class="signature apipage">display\_mode(display:[Int](http://api.haxe.org/Int.html)<span></span>, mode\_index:[Int](http://api.haxe.org/Int.html)<span></span>) : [snow.types.DisplayMode](../../../api/snow/types/DisplayMode.html)</code><br/><span class="small_desc_flat">Get the information from a specific mode index, the index is obtained by iterating with a `display_mode_count` as the loop value</span>


</span>
<span class="method apipage">
            <a name="display_mode_count"><a class="lift" href="#display_mode_count">display\_mode\_count</a></a><div class="clear"></div>
            <code class="signature apipage">display\_mode\_count(display:[Int](http://api.haxe.org/Int.html)<span></span>) : [Int](http://api.haxe.org/Int.html)</code><br/><span class="small_desc_flat">Get the number of display modes present</span>


</span>
<span class="method apipage">
            <a name="display_name"><a class="lift" href="#display_name">display\_name</a></a><div class="clear"></div>
            <code class="signature apipage">display\_name(display:[Int](http://api.haxe.org/Int.html)<span></span>) : [String](http://api.haxe.org/String.html)</code><br/><span class="small_desc_flat">Get the name of the display by index, where available</span>


</span>
<span class="method apipage">
            <a name="display_native_mode"><a class="lift" href="#display_native_mode">display\_native\_mode</a></a><div class="clear"></div>
            <code class="signature apipage">display\_native\_mode(display:[Int](http://api.haxe.org/Int.html)<span></span>) : [snow.types.DisplayMode](../../../api/snow/types/DisplayMode.html)</code><br/><span class="small_desc_flat">Get the native mode information of the display by index</span>


</span>
<span class="method apipage">
            <a name="enable_cursor"><a class="lift" href="#enable_cursor">enable\_cursor</a></a><div class="clear"></div>
            <code class="signature apipage">enable\_cursor(\_enable:[Bool](http://api.haxe.org/Bool.html)<span></span>) : [Void](http://api.haxe.org/Void.html)</code><br/><span class="small_desc_flat">Toggle the OS cursor. This is not window specific but application wide, when inside a window, the OS cursor is hidden.</span>


</span>
<span class="method apipage">
            <a name="enable_cursor_lock"><a class="lift" href="#enable_cursor_lock">enable\_cursor\_lock</a></a><div class="clear"></div>
            <code class="signature apipage">enable\_cursor\_lock(\_enable:[Bool](http://api.haxe.org/Bool.html)<span></span>) : [Void](http://api.haxe.org/Void.html)</code><br/><span class="small_desc_flat">Lock the OS cursor to the foreground window. This hides the cursor and prevents it from leaving, reporting relative coordinates.</span>


</span>
<span class="method apipage">
            <a name="enable_vsync"><a class="lift" href="#enable_vsync">enable\_vsync</a></a><div class="clear"></div>
            <code class="signature apipage">enable\_vsync(\_enable:[Bool](http://api.haxe.org/Bool.html)<span></span>) : [Int](http://api.haxe.org/Int.html)</code><br/><span class="small_desc_flat">Toggle vertical refresh. This is not window specific but context wide</span>


</span>



<hr/>

&nbsp;
&nbsp;
&nbsp;
&nbsp;