package com.stripe.bbpos.bbdevice.ota;

import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
final class i0 {
    a a = a.IDLE;
    String b = "";
    String c = "";
    String d = "";
    JSONObject e = null;
    int f = 0;

    enum a {
        IDLE,
        PROCESSING
    }

    i0() {
    }

    boolean a(String str, JSONObject jSONObject, int i) {
        if (this.a != a.IDLE) {
            r.c("[WebServiceStatus] [setBegin] return false");
            return false;
        }
        this.a = a.PROCESSING;
        this.b = str;
        this.e = jSONObject;
        this.f = i;
        if (i < 0 || i > 1) {
            this.f = 0;
        }
        this.d = "";
        this.c = "";
        r.c("[WebServiceStatus] [setBegin] return true");
        return true;
    }

    public String toString() {
        return "WebServiceStatus{state=" + this.a + ", service='" + this.b + "', completedService='" + this.c + "', result='" + this.d + "', jsonObject=" + this.e + ", part=" + this.f + AbstractJsonLexerKt.END_OBJ;
    }

    boolean a(String str, String str2) {
        if (this.a == a.PROCESSING && str.equalsIgnoreCase(this.b)) {
            this.d = str2;
            this.c = str;
            this.a = a.IDLE;
            r.c("[WebServiceStatus] [setEnd] return true");
            return true;
        }
        r.c("[WebServiceStatus] [setEnd] return false");
        return false;
    }
}
