package com.stripe.bbpos.bbdevice;

import com.stripe.bbpos.bbdevice.aaa003zz;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
class bbb074zz extends bbb005zz {
    bbb074zz(aaa003zz aaa003zzVar, aaa011zz aaa011zzVar) {
        super(aaa003zzVar, aaa011zzVar);
    }

    void aaa000(List<ccc067zz> list, boolean z, String str) {
        ccc067zz ccc067zzVarAaa000 = ccc068zz.aaa000(list, "DE");
        String strAaa000 = ccc071zz.aaa000(ccc068zz.aaa000(list, "DF74"));
        ccc067zz ccc067zzVarAaa0002 = ccc068zz.aaa000(list, "DF6C");
        if (ccc067zzVarAaa000 == null) {
            this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, str + " (" + strAaa000 + ")");
            return;
        }
        try {
            if (Integer.parseInt(ccc067zzVarAaa000.aaa001, 16) != 0) {
                this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, str + " (" + strAaa000 + ")");
            } else if (strAaa000 == null || ccc067zzVarAaa0002 == null) {
                this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, str + " (" + strAaa000 + ")");
            } else {
                this.aaa000.aaa003(strAaa000, ccc067zzVarAaa0002.aaa001);
            }
        } catch (Exception unused) {
            this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, str + " (" + strAaa000 + ")");
        }
    }
}
