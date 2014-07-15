
[![Logo](../../../images/logo.png)](../../../api/index.html)

---



<h1>WindowSystemBinding</h1>
<small>`snow.window.WindowSystemBinding`</small>

Internal class handled by `Windowing`, a less concrete implementation of the platform window bindings.
    WindowBinding is bound to snow.platform.native.WindowSystem, snow.platform.native.WindowSystem etc

---

`class`<br/>implements <code><span>snow.utils.AbstractClass</span></code>
<span class="meta">
<br/>meta: @:build(&#x27;???&#x27;), @:autoBuild(&#x27;???&#x27;), @:noCompletion
</span>


---

&nbsp;
&nbsp;



<h3>Members</h3> <hr/>





<h3>Methods</h3> <hr/><span class="method apipage">
            <a name="init"><a class="lift" href="#init">init</a></a><code class="signature apipage">init() : Void</code><br/><span class="small_desc_flat">Called when the window manager initializes this system</span>
        </span>
    <span class="method apipage">
            <a name="process"><a class="lift" href="#process">process</a></a><code class="signature apipage">process() : Void</code><br/><span class="small_desc_flat">Called when the window manager updates this system</span>
        </span>
    <span class="method apipage">
            <a name="destroy"><a class="lift" href="#destroy">destroy</a></a><code class="signature apipage">destroy() : Void</code><br/><span class="small_desc_flat">Called when the window manager destroys this system</span>
        </span>
    <span class="method apipage">
            <a name="listen"><a class="lift" href="#listen">listen</a></a><code class="signature apipage">listen(window:snow.window.Window<span></span>) : Void</code><br/><span class="small_desc_flat">Called to set up any listeners on the given window</span>
        </span>
    <span class="method apipage">
            <a name="unlisten"><a class="lift" href="#unlisten">unlisten</a></a><code class="signature apipage">unlisten(window:snow.window.Window<span></span>) : Void</code><br/><span class="small_desc_flat">Called to remove any listeners on the given window</span>
        </span>
    <span class="method apipage">
            <a name="create"><a class="lift" href="#create">create</a></a><code class="signature apipage">create(config:snow.types.WindowConfig<span></span>, on\_created:<span></span>) : Void</code><br/><span class="small_desc_flat">Create a window with config, calls on_created when complete passing the handle, the ID,
            and the actual config that was used since the requested config could fail</span>
        </span>
    <span class="method apipage">
            <a name="close"><a class="lift" href="#close">close</a></a><code class="signature apipage">close(window:snow.window.Window<span></span>) : Void</code><br/><span class="small_desc_flat">Close a given window handle</span>
        </span>
    <span class="method apipage">
            <a name="update"><a class="lift" href="#update">update</a></a><code class="signature apipage">update(window:snow.window.Window<span></span>) : Void</code><br/><span class="small_desc_flat">Update a given window</span>
        </span>
    <span class="method apipage">
            <a name="render"><a class="lift" href="#render">render</a></a><code class="signature apipage">render(window:snow.window.Window<span></span>) : Void</code><br/><span class="small_desc_flat">Render a given window</span>
        </span>
    <span class="method apipage">
            <a name="swap"><a class="lift" href="#swap">swap</a></a><code class="signature apipage">swap(window:snow.window.Window<span></span>) : Void</code><br/><span class="small_desc_flat">Swap a given window</span>
        </span>
    <span class="method apipage">
            <a name="simple_message"><a class="lift" href="#simple_message">simple\_message</a></a><code class="signature apipage">simple\_message(window:snow.window.Window<span></span>, message:String<span></span>, title:String<span>=&#x27;&#x27;</span>) : Void</code><br/><span class="small_desc_flat">Display a message on a window</span>
        </span>
    <span class="method apipage">
            <a name="set_size"><a class="lift" href="#set_size">set\_size</a></a><code class="signature apipage">set\_size(window:snow.window.Window<span></span>, w:Int<span></span>, h:Int<span></span>) : Void</code><br/><span class="small_desc_flat">Set the size of a window</span>
        </span>
    <span class="method apipage">
            <a name="set_position"><a class="lift" href="#set_position">set\_position</a></a><code class="signature apipage">set\_position(window:snow.window.Window<span></span>, x:Int<span></span>, y:Int<span></span>) : Void</code><br/><span class="small_desc_flat">Set the position of a window</span>
        </span>
    <span class="method apipage">
            <a name="set_title"><a class="lift" href="#set_title">set\_title</a></a><code class="signature apipage">set\_title(window:snow.window.Window<span></span>, title:String<span></span>) : Void</code><br/><span class="small_desc_flat">Set the title of a window</span>
        </span>
    <span class="method apipage">
            <a name="set_max_size"><a class="lift" href="#set_max_size">set\_max\_size</a></a><code class="signature apipage">set\_max\_size(window:snow.window.Window<span></span>, w:Int<span></span>, h:Int<span></span>) : Void</code><br/><span class="small_desc_flat">Set the max size of a window</span>
        </span>
    <span class="method apipage">
            <a name="set_min_size"><a class="lift" href="#set_min_size">set\_min\_size</a></a><code class="signature apipage">set\_min\_size(window:snow.window.Window<span></span>, w:Int<span></span>, h:Int<span></span>) : Void</code><br/><span class="small_desc_flat">Set the min size of a window</span>
        </span>
    <span class="method apipage">
            <a name="grab"><a class="lift" href="#grab">grab</a></a><code class="signature apipage">grab(window:snow.window.Window<span></span>, grabbed:Bool<span></span>) : Void</code><br/><span class="small_desc_flat">Set the grab state of a window</span>
        </span>
    <span class="method apipage">
            <a name="fullscreen"><a class="lift" href="#fullscreen">fullscreen</a></a><code class="signature apipage">fullscreen(window:snow.window.Window<span></span>, fullscreen:Bool<span></span>, windowed\_fullscreen:Bool<span>=true</span>) : Void</code><br/><span class="small_desc_flat">Set the fullscreen state of a window</span>
        </span>
    <span class="method apipage">
            <a name="bordered"><a class="lift" href="#bordered">bordered</a></a><code class="signature apipage">bordered(window:snow.window.Window<span></span>, bordered:Bool<span></span>) : Void</code><br/><span class="small_desc_flat">Set the bordered state of a window</span>
        </span>
    <span class="method apipage">
            <a name="display_count"><a class="lift" href="#display_count">display\_count</a></a><code class="signature apipage">display\_count() : Int</code><br/><span class="small_desc_flat">Get the number of displays present</span>
        </span>
    <span class="method apipage">
            <a name="display_mode_count"><a class="lift" href="#display_mode_count">display\_mode\_count</a></a><code class="signature apipage">display\_mode\_count(display:Int<span></span>) : Int</code><br/><span class="small_desc_flat">Get the number of display modes present</span>
        </span>
    <span class="method apipage">
            <a name="display_native_mode"><a class="lift" href="#display_native_mode">display\_native\_mode</a></a><code class="signature apipage">display\_native\_mode(display:Int<span></span>) : snow.types.DisplayMode</code><br/><span class="small_desc_flat">Get the native mode information of the display by index</span>
        </span>
    <span class="method apipage">
            <a name="display_current_mode"><a class="lift" href="#display_current_mode">display\_current\_mode</a></a><code class="signature apipage">display\_current\_mode(display:Int<span></span>) : snow.types.DisplayMode</code><br/><span class="small_desc_flat">Get the current mode information of the display by index</span>
        </span>
    <span class="method apipage">
            <a name="display_mode"><a class="lift" href="#display_mode">display\_mode</a></a><code class="signature apipage">display\_mode(display:Int<span></span>, mode\_index:Int<span></span>) : snow.types.DisplayMode</code><br/><span class="small_desc_flat">Get the information from a specific mode index, the index obtrained from iterating with `display_mode_count` value</span>
        </span>
    <span class="method apipage">
            <a name="display_bounds"><a class="lift" href="#display_bounds">display\_bounds</a></a><code class="signature apipage">display\_bounds(display:Int<span></span>) : Dynamic</code><br/><span class="small_desc_flat">Get the bounds of the display by index</span>
        </span>
    <span class="method apipage">
            <a name="display_name"><a class="lift" href="#display_name">display\_name</a></a><code class="signature apipage">display\_name(display:Int<span></span>) : String</code><br/><span class="small_desc_flat">Get the name of the display by index, where available</span>
        </span>
    





---

&nbsp;
&nbsp;
&nbsp;
&nbsp;