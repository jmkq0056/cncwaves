package org.fourthline.cling.model.types;

import android.support.v4.media.b;
import android.support.v4.media.f;
import androidx.appcompat.view.a;

/* JADX INFO: loaded from: classes2.dex */
public class PragmaType {
    private boolean quote;
    private String token;
    private String value;

    public PragmaType(String str, String str2, boolean z3) {
        this.token = str;
        this.value = str2;
        this.quote = z3;
    }

    public static PragmaType valueOf(String str) {
        if (str.length() == 0) {
            throw new InvalidValueException(a.a("Can't parse Bytes Range: ", str));
        }
        String str2 = null;
        String[] strArrSplit = str.split("=");
        boolean z3 = false;
        if (strArrSplit.length > 1) {
            str2 = strArrSplit[0];
            str = strArrSplit[1];
            if (str.startsWith("\"") && str.endsWith("\"")) {
                str = str.substring(1, str.length() - 1);
                z3 = true;
            }
        }
        return new PragmaType(str2, str, z3);
    }

    public String getString() {
        StringBuilder sbA = f.a(this.token != null ? b.a(f.a(""), this.token, "=") : "");
        sbA.append(this.quote ? b.a(f.a("\""), this.value, "\"") : this.value);
        return sbA.toString();
    }

    public String getToken() {
        return this.token;
    }

    public String getValue() {
        return this.value;
    }

    public PragmaType(String str, String str2) {
        this.token = str;
        this.value = str2;
    }

    public PragmaType(String str) {
        this.token = null;
        this.value = str;
    }
}
