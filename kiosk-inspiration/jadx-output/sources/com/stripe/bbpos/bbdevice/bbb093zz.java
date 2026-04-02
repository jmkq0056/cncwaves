package com.stripe.bbpos.bbdevice;

import com.stripe.bbpos.bbdevice.aaa003zz;

/* JADX INFO: loaded from: classes3.dex */
class bbb093zz extends bbb005zz {
    bbb093zz(aaa003zz aaa003zzVar, aaa011zz aaa011zzVar) {
        super(aaa003zzVar, aaa011zzVar);
    }

    void aaa000(byte[] bArr) {
        if (bArr == null) {
            this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "Error when get Random. (error code - 9017)");
        } else {
            this.aaa000.aaa021(ccc071zz.aaa000(bArr));
        }
    }
}
