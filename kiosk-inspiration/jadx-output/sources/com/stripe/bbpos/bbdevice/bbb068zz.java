package com.stripe.bbpos.bbdevice;

import com.stripe.bbpos.bbdevice.aaa003zz;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
class bbb068zz extends bbb005zz {
    bbb068zz(aaa003zz aaa003zzVar, aaa011zz aaa011zzVar) {
        super(aaa003zzVar, aaa011zzVar);
    }

    void aaa000(List<ccc067zz> list, boolean z) {
        boolean z2;
        ccc067zz ccc067zzVarAaa000 = ccc068zz.aaa000(list, "DE");
        ccc067zz ccc067zzVarAaa0002 = ccc068zz.aaa000(list, "DF8218");
        if (ccc067zzVarAaa0002 == null) {
            this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "");
            return;
        }
        if (ccc067zzVarAaa000 == null) {
            this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "");
            return;
        }
        try {
            int i = Integer.parseInt(ccc067zzVarAaa000.aaa001, 16);
            if (i == 0) {
                z2 = true;
            } else {
                if (i != 1) {
                    this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "");
                    return;
                }
                z2 = false;
            }
            if (ccc071zz.aaa004(ccc067zzVarAaa0002.aaa001) == 1) {
                this.aaa000.aaa011(z2);
            } else {
                this.aaa000.aaa008(z2);
            }
        } catch (Exception unused) {
            this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "");
        }
    }
}
