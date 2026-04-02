package com.stripe.bbpos.bbdevice;

/* JADX INFO: loaded from: classes3.dex */
class ccc017zz {
    private aaa000zz aaa000;
    private String aaa001;

    enum aaa000zz {
        SUCCESS,
        FAIL,
        SKIP
    }

    ccc017zz(aaa000zz aaa000zzVar, String str) {
        this.aaa000 = aaa000zzVar;
        if (str == null) {
            this.aaa001 = "";
        } else {
            this.aaa001 = str;
        }
    }

    aaa000zz aaa000() {
        return this.aaa000;
    }

    String aaa001() {
        return this.aaa001;
    }

    void aaa000(aaa000zz aaa000zzVar) {
        this.aaa000 = aaa000zzVar;
    }

    void aaa000(String str) {
        this.aaa001 = str;
    }
}
