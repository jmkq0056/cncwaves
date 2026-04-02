package com.stripe.bbpos.bbdevice;

import com.stripe.bbpos.bbdevice.aaa003zz;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
class bbb094zz extends bbb005zz {
    bbb094zz(aaa003zz aaa003zzVar, aaa011zz aaa011zzVar) {
        super(aaa003zzVar, aaa011zzVar);
    }

    void aaa000(List<ccc067zz> list, boolean z) {
        ccc067zz ccc067zzVarAaa000 = ccc068zz.aaa000(list, "DE");
        ccc067zz ccc067zzVarAaa0002 = ccc068zz.aaa000(list, "DF822D");
        ccc067zz ccc067zzVarAaa0003 = ccc068zz.aaa000(list, "DF75");
        ccc067zz ccc067zzVarAaa0004 = ccc068zz.aaa000(list, "DF6C");
        ccc067zz ccc067zzVarAaa0005 = ccc068zz.aaa000(list, "DF8654");
        if (ccc067zzVarAaa000 == null) {
            this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "Error when read display settings. (error code - 9020)");
            return;
        }
        try {
            int i = Integer.parseInt(ccc067zzVarAaa000.aaa001, 16);
            boolean z2 = true;
            if (i != 0) {
                if (i != 1) {
                    this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "Error when read display settings. (error code - 9018)");
                    return;
                }
                z2 = false;
            }
            boolean z3 = z2;
            if (z3) {
                if (ccc067zzVarAaa0003 != null) {
                    this.aaa000.aaa000(z3, ccc071zz.aaa000(ccc067zzVarAaa0004), ccc071zz.aaa000(ccc067zzVarAaa0005), Integer.parseInt(ccc067zzVarAaa0003.aaa001, 16), "");
                    return;
                } else {
                    this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "Error when read display settings. (error code - 9019)");
                    return;
                }
            }
            if (ccc067zzVarAaa0002 != null) {
                this.aaa000.aaa000(z3, "", "", 0, ccc034zz.aaa003(ccc067zzVarAaa0002.aaa001));
            } else {
                this.aaa000.aaa000(z3, "", "", 0, "");
            }
        } catch (Exception unused) {
            this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "Error when read display settings. (error code - 9019)");
        }
    }
}
