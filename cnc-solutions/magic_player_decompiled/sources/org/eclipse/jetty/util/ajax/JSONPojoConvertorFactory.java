package org.eclipse.jetty.util.ajax;

import java.util.Map;
import org.eclipse.jetty.util.Loader;
import org.eclipse.jetty.util.ajax.JSON;
import org.seamless.xhtml.XHTML;

/* JADX INFO: loaded from: classes2.dex */
public class JSONPojoConvertorFactory implements JSON.Convertor {
    private final boolean _fromJson;
    private final JSON _json;

    public JSONPojoConvertorFactory(JSON json) {
        if (json == null) {
            throw new IllegalArgumentException();
        }
        this._json = json;
        this._fromJson = true;
    }

    @Override // org.eclipse.jetty.util.ajax.JSON.Convertor
    public Object fromJSON(Map map) {
        String str = (String) map.get(XHTML.ATTR.CLASS);
        if (str == null) {
            return map;
        }
        JSON.Convertor convertorFor = this._json.getConvertorFor(str);
        if (convertorFor == null) {
            try {
                JSONPojoConvertor jSONPojoConvertor = new JSONPojoConvertor((Class<?>) Loader.loadClass(JSON.class, str), this._fromJson);
                try {
                    this._json.addConvertorFor(str, jSONPojoConvertor);
                    convertorFor = jSONPojoConvertor;
                } catch (ClassNotFoundException e4) {
                    e = e4;
                    convertorFor = jSONPojoConvertor;
                    JSON.LOG.warn(e);
                }
            } catch (ClassNotFoundException e5) {
                e = e5;
            }
        }
        return convertorFor != null ? convertorFor.fromJSON(map) : map;
    }

    @Override // org.eclipse.jetty.util.ajax.JSON.Convertor
    public void toJSON(Object obj, JSON.Output output) {
        JSONPojoConvertor jSONPojoConvertor;
        String name = obj.getClass().getName();
        JSON.Convertor convertorFor = this._json.getConvertorFor(name);
        if (convertorFor == null) {
            try {
                jSONPojoConvertor = new JSONPojoConvertor((Class<?>) Loader.loadClass(JSON.class, name), this._fromJson);
            } catch (ClassNotFoundException e4) {
                e = e4;
            }
            try {
                this._json.addConvertorFor(name, jSONPojoConvertor);
                convertorFor = jSONPojoConvertor;
            } catch (ClassNotFoundException e5) {
                e = e5;
                convertorFor = jSONPojoConvertor;
                JSON.LOG.warn(e);
            }
        }
        if (convertorFor != null) {
            convertorFor.toJSON(obj, output);
        }
    }

    public JSONPojoConvertorFactory(JSON json, boolean z3) {
        if (json != null) {
            this._json = json;
            this._fromJson = z3;
            return;
        }
        throw new IllegalArgumentException();
    }
}
