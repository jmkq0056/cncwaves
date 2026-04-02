package com.stripe.bbpos.bbdevice;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
class bbb019zz extends bbb005zz {
    bbb019zz(aaa003zz aaa003zzVar, aaa011zz aaa011zzVar) {
        super(aaa003zzVar, aaa011zzVar);
    }

    void aaa000(List<ccc067zz> list, boolean z) {
        ccc067zz ccc067zzVarAaa000 = ccc068zz.aaa000(list, "DF8216");
        if (ccc067zzVarAaa000 == null) {
            this.aaa001.aaa000(ccc010zz.aaa046, (byte) 12);
            return;
        }
        int i = Integer.parseInt(ccc067zzVarAaa000.aaa001, 16);
        boolean z2 = true;
        if (i != 0) {
            if (i != 1) {
                this.aaa001.aaa000(ccc010zz.aaa046, (byte) 12);
                return;
            }
            z2 = false;
        }
        this.aaa001.aaa000(ccc010zz.aaa046, (byte) 0);
        if (z) {
            return;
        }
        if (z2) {
            this.aaa000.aaa051();
        } else {
            this.aaa000.aaa050();
        }
    }
}
