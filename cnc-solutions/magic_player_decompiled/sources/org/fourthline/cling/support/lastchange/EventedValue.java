package org.fourthline.cling.support.lastchange;

import java.util.Map;
import org.fourthline.cling.model.types.Datatype;
import org.fourthline.cling.model.types.InvalidValueException;
import org.fourthline.cling.support.shared.AbstractMap;

/* JADX INFO: loaded from: classes2.dex */
public abstract class EventedValue<V> {
    public final V value;

    public EventedValue(V v3) {
        this.value = v3;
    }

    public Map.Entry<String, String>[] getAttributes() {
        return new Map.Entry[]{new AbstractMap.SimpleEntry("val", toString())};
    }

    public abstract Datatype getDatatype();

    public String getName() {
        return getClass().getSimpleName();
    }

    public V getValue() {
        return this.value;
    }

    public String toString() {
        return getDatatype().getString(getValue());
    }

    public V valueOf(Map.Entry<String, String>[] entryArr) {
        V vValueOf = null;
        for (Map.Entry<String, String> entry : entryArr) {
            if (entry.getKey().equals("val")) {
                vValueOf = valueOf(entry.getValue());
            }
        }
        return vValueOf;
    }

    public EventedValue(Map.Entry<String, String>[] entryArr) {
        try {
            this.value = valueOf(entryArr);
        } catch (InvalidValueException e4) {
            throw new RuntimeException(e4);
        }
    }

    public V valueOf(String str) {
        return (V) getDatatype().valueOf(str);
    }
}
