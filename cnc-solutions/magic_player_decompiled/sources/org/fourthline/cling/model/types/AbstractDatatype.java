package org.fourthline.cling.model.types;

import android.support.v4.media.f;
import java.lang.reflect.ParameterizedType;
import org.fourthline.cling.model.types.Datatype;

/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractDatatype<V> implements Datatype<V> {
    private Datatype.Builtin builtin;

    @Override // org.fourthline.cling.model.types.Datatype
    public Datatype.Builtin getBuiltin() {
        return this.builtin;
    }

    @Override // org.fourthline.cling.model.types.Datatype
    public String getDisplayString() {
        return this instanceof CustomDatatype ? ((CustomDatatype) this).getName() : getBuiltin() != null ? getBuiltin().getDescriptorName() : getValueType().getSimpleName();
    }

    @Override // org.fourthline.cling.model.types.Datatype
    public String getString(V v3) {
        if (v3 == null) {
            return "";
        }
        if (isValid(v3)) {
            return v3.toString();
        }
        throw new InvalidValueException("Value is not valid: " + v3);
    }

    public Class<V> getValueType() {
        return (Class) ((ParameterizedType) getClass().getGenericSuperclass()).getActualTypeArguments()[0];
    }

    @Override // org.fourthline.cling.model.types.Datatype
    public boolean isHandlingJavaType(Class cls) {
        return getValueType().isAssignableFrom(cls);
    }

    @Override // org.fourthline.cling.model.types.Datatype
    public boolean isValid(V v3) {
        return v3 == null || getValueType().isAssignableFrom(v3.getClass());
    }

    public void setBuiltin(Datatype.Builtin builtin) {
        this.builtin = builtin;
    }

    public String toString() {
        StringBuilder sbA = f.a("(");
        sbA.append(getClass().getSimpleName());
        sbA.append(")");
        return sbA.toString();
    }

    @Override // org.fourthline.cling.model.types.Datatype
    public V valueOf(String str) {
        return null;
    }
}
