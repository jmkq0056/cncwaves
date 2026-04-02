package org.seamless.xml;

import java.util.HashMap;
import java.util.Iterator;
import javax.xml.namespace.NamespaceContext;

/* JADX INFO: loaded from: classes2.dex */
public abstract class NamespaceContextMap extends HashMap<String, String> implements NamespaceContext {
    public abstract String getDefaultNamespaceURI();

    @Override // javax.xml.namespace.NamespaceContext
    public String getNamespaceURI(String str) {
        if (str != null) {
            return str.equals("") ? getDefaultNamespaceURI() : get(str) != null ? get(str) : "";
        }
        throw new IllegalArgumentException("No prefix provided!");
    }

    @Override // javax.xml.namespace.NamespaceContext
    public String getPrefix(String str) {
        return null;
    }

    @Override // javax.xml.namespace.NamespaceContext
    public Iterator getPrefixes(String str) {
        return null;
    }
}
