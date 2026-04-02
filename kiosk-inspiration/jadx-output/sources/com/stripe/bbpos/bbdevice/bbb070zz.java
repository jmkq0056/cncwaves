package com.stripe.bbpos.bbdevice;

import com.stripe.bbpos.bbdevice.aaa003zz;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
class bbb070zz extends bbb005zz {
    bbb070zz(aaa003zz aaa003zzVar, aaa011zz aaa011zzVar) {
        super(aaa003zzVar, aaa011zzVar);
    }

    void aaa000(List<ccc067zz> list, boolean z) {
        ccc067zz ccc067zzVarAaa000 = ccc068zz.aaa000(list, "DE");
        ccc067zz ccc067zzVarAaa0002 = ccc068zz.aaa000(list, "DF35");
        boolean z2 = false;
        try {
            if (ccc067zzVarAaa0002 != null) {
                int i = Integer.parseInt(ccc067zzVarAaa0002.aaa001, 16);
                if (i == 0) {
                    z2 = true;
                } else if (i != 1) {
                    this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "");
                    return;
                }
                this.aaa000.aaa009(z2);
                return;
            }
            if (ccc067zzVarAaa000 == null) {
                this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "");
                return;
            }
            int i2 = Integer.parseInt(ccc067zzVarAaa000.aaa001, 16);
            if (i2 == 0) {
                z2 = true;
            } else if (i2 != 1) {
                this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "");
                return;
            }
            this.aaa000.aaa013(z2);
        } catch (Exception unused) {
            this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "");
        }
    }
}
