package org.fourthline.cling.model.types;

import android.support.v4.media.f;

/* JADX INFO: loaded from: classes2.dex */
public class CustomDatatype extends AbstractDatatype<String> {
    private String name;

    public CustomDatatype(String str) {
        this.name = str;
    }

    public String getName() {
        return this.name;
    }

    @Override // org.fourthline.cling.model.types.AbstractDatatype
    public String toString() {
        StringBuilder sbA = f.a("(");
        sbA.append(getClass().getSimpleName());
        sbA.append(") '");
        sbA.append(getName());
        sbA.append("'");
        return sbA.toString();
    }

    @Override // org.fourthline.cling.model.types.AbstractDatatype, org.fourthline.cling.model.types.Datatype
    public String valueOf(String str) {
        if (str.equals("")) {
            return null;
        }
        return str;
    }
}
