package org.fourthline.cling.model.types;

import androidx.appcompat.view.a;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public class BooleanDatatype extends AbstractDatatype<Boolean> {
    @Override // org.fourthline.cling.model.types.AbstractDatatype, org.fourthline.cling.model.types.Datatype
    public boolean isHandlingJavaType(Class cls) {
        return cls == Boolean.TYPE || Boolean.class.isAssignableFrom(cls);
    }

    @Override // org.fourthline.cling.model.types.AbstractDatatype, org.fourthline.cling.model.types.Datatype
    public String getString(Boolean bool) {
        return bool == null ? "" : bool.booleanValue() ? "1" : "0";
    }

    @Override // org.fourthline.cling.model.types.AbstractDatatype, org.fourthline.cling.model.types.Datatype
    public Boolean valueOf(String str) {
        if (str.equals("")) {
            return null;
        }
        if (!str.equals("1")) {
            Locale locale = Locale.ROOT;
            if (!str.toUpperCase(locale).equals("YES") && !str.toUpperCase(locale).equals("TRUE")) {
                if (str.equals("0") || str.toUpperCase(locale).equals("NO") || str.toUpperCase(locale).equals("FALSE")) {
                    return Boolean.FALSE;
                }
                throw new InvalidValueException(a.a("Invalid boolean value string: ", str));
            }
        }
        return Boolean.TRUE;
    }
}
