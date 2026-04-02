package org.eclipse.jetty.util.ajax;

import java.util.Collection;
import java.util.Collections;
import java.util.Map;
import org.eclipse.jetty.util.Loader;
import org.eclipse.jetty.util.ajax.JSON;
import org.seamless.xhtml.XHTML;

/* JADX INFO: loaded from: classes2.dex */
public class JSONCollectionConvertor implements JSON.Convertor {
    @Override // org.eclipse.jetty.util.ajax.JSON.Convertor
    public Object fromJSON(Map map) {
        try {
            Collection collection = (Collection) Loader.loadClass(getClass(), (String) map.get(XHTML.ATTR.CLASS)).newInstance();
            Collections.addAll(collection, (Object[]) map.get("list"));
            return collection;
        } catch (Exception e4) {
            if (e4 instanceof RuntimeException) {
                throw ((RuntimeException) e4);
            }
            throw new RuntimeException(e4);
        }
    }

    @Override // org.eclipse.jetty.util.ajax.JSON.Convertor
    public void toJSON(Object obj, JSON.Output output) {
        output.addClass(obj.getClass());
        output.add("list", ((Collection) obj).toArray());
    }
}
