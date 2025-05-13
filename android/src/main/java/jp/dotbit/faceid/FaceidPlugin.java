package jp.dotbit.faceid;

import com.getcapacitor.Plugin;
import com.getcapacitor.PluginCall;
import com.getcapacitor.PluginMethod;
import com.getcapacitor.annotation.CapacitorPlugin;

@CapacitorPlugin(name = "Faceid")
public class FaceidPlugin extends Plugin {

    private Faceid implementation = new Faceid();

    @PluginMethod
    public void authenticate(PluginCall call) {
        call.reject("not implemented");
    }
}
