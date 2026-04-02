package org.fourthline.cling.model.types;

import androidx.appcompat.view.a;

/* JADX INFO: loaded from: classes2.dex */
public class FloatDatatype extends AbstractDatatype<Float> {
    @Override // org.fourthline.cling.model.types.AbstractDatatype, org.fourthline.cling.model.types.Datatype
    public boolean isHandlingJavaType(Class cls) {
        return cls == Float.TYPE || Float.class.isAssignableFrom(cls);
    }

    @Override // org.fourthline.cling.model.types.AbstractDatatype, org.fourthline.cling.model.types.Datatype
    public Float valueOf(String str) {
        if (str.equals("")) {
            return null;
        }
        try {
            return Float.valueOf(Float.parseFloat(str.trim()));
        } catch (NumberFormatException e4) {
            throw new InvalidValueException(a.a("Can't convert string to number: ", str), e4);
        }
    }
}
