package com.stripe.bbpos.bbdevice;

import com.stripe.bbpos.bbdevice.aaa003zz;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
class bbb091zz extends bbb005zz {
    bbb091zz(aaa003zz aaa003zzVar, aaa011zz aaa011zzVar) {
        super(aaa003zzVar, aaa011zzVar);
    }

    void aaa000(List<ccc067zz> list) {
        ccc067zz ccc067zzVarAaa000 = ccc068zz.aaa000(list, "DE");
        String strAaa000 = ccc071zz.aaa000(ccc068zz.aaa000(list, "DF13"));
        String strAaa0002 = ccc071zz.aaa000(ccc068zz.aaa000(list, "DF42"));
        String strAaa0003 = ccc071zz.aaa000(ccc068zz.aaa000(list, "DF06"));
        if (ccc067zzVarAaa000 == null) {
            this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "");
            return;
        }
        try {
            int i = Integer.parseInt(ccc067zzVarAaa000.aaa001, 16);
            boolean z = true;
            if (i != 0) {
                if (i != 1) {
                    this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "");
                    return;
                }
                z = false;
            }
            this.aaa000.aaa000(z, new aaa003zz.aaa010zz(strAaa000, Integer.parseInt(strAaa0002, 16), strAaa0003));
        } catch (Exception unused) {
            this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "");
        }
    }
}
