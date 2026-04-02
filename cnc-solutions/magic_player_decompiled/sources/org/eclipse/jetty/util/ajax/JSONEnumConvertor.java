package org.eclipse.jetty.util.ajax;

import java.lang.reflect.Method;
import java.util.Map;
import org.eclipse.jetty.util.Loader;
import org.eclipse.jetty.util.ajax.JSON;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;
import org.seamless.xhtml.XHTML;

/* JADX INFO: loaded from: classes2.dex */
public class JSONEnumConvertor implements JSON.Convertor {
    private static final Logger LOG = Log.getLogger((Class<?>) JSONEnumConvertor.class);
    private boolean _fromJSON;
    private Method _valueOf;

    public JSONEnumConvertor() {
        this(false);
    }

    @Override // org.eclipse.jetty.util.ajax.JSON.Convertor
    public Object fromJSON(Map map) {
        if (!this._fromJSON) {
            throw new UnsupportedOperationException();
        }
        try {
            return this._valueOf.invoke(null, Loader.loadClass(getClass(), (String) map.get(XHTML.ATTR.CLASS)), map.get("value"));
        } catch (Exception e4) {
            LOG.warn(e4);
            return null;
        }
    }

    @Override // org.eclipse.jetty.util.ajax.JSON.Convertor
    public void toJSON(Object obj, JSON.Output output) {
        if (!this._fromJSON) {
            output.add(((Enum) obj).name());
        } else {
            output.addClass(obj.getClass());
            output.add("value", ((Enum) obj).name());
        }
    }

    public JSONEnumConvertor(boolean z3) {
        try {
            this._valueOf = Loader.loadClass(getClass(), "java.lang.Enum").getMethod("valueOf", Class.class, String.class);
            this._fromJSON = z3;
        } catch (Exception e4) {
            throw new RuntimeException("!Enums", e4);
        }
    }
}
