package com.stripe.bbpos.bbdevice.ota;

/* JADX INFO: loaded from: classes3.dex */
final class k {
    private String a;
    private String b;
    private String c;
    private String d;
    private String e;

    k() {
        this.a = "";
        this.b = "";
        this.c = "";
        this.d = "";
        this.e = "";
    }

    String a() {
        return this.b;
    }

    String b() {
        return this.c;
    }

    String c() {
        return this.a;
    }

    String d() {
        return this.e;
    }

    k(String str, String str2, String str3, String str4, String str5) {
        this.a = str;
        this.b = str2;
        if (str3 == null) {
            this.c = "";
        } else {
            this.c = str3;
        }
        if (str4 == null) {
            this.d = "";
        } else {
            this.d = str4;
        }
        if (str5 == null) {
            this.e = "";
        } else {
            this.e = str5;
        }
    }
}
