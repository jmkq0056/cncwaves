package com.stripe.bbpos.bbdevice;

import com.stripe.bbpos.bbdevice.aaa003zz;
import java.util.Hashtable;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
class bbb047zz extends bbb005zz {
    bbb047zz(aaa003zz aaa003zzVar, aaa011zz aaa011zzVar) {
        super(aaa003zzVar, aaa011zzVar);
    }

    void aaa000(List<ccc067zz> list, boolean z) {
        Hashtable<String, String> hashtable;
        ccc067zz ccc067zzVarAaa000 = ccc068zz.aaa000(list, "DE");
        ccc067zz ccc067zzVarAaa0002 = ccc068zz.aaa000(list, "DF43");
        ccc067zz ccc067zzVarAaa0003 = ccc068zz.aaa000(list, "DF15");
        ccc068zz.aaa000(list, "DF44");
        if (ccc067zzVarAaa000 == null) {
            this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "");
            return;
        }
        try {
            int i = Integer.parseInt(ccc067zzVarAaa000.aaa001, 16);
            boolean z2 = true;
            if (i != 0) {
                if (i != 1) {
                    this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "");
                    return;
                }
                z2 = false;
            }
            if (!z2) {
                hashtable = null;
            } else {
                if (ccc067zzVarAaa0003 == null) {
                    this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "");
                    return;
                }
                hashtable = new Hashtable<>();
                hashtable.put("apdu", ccc067zzVarAaa0003.aaa001);
                if (ccc067zzVarAaa0002 != null) {
                    hashtable.put("apduLength", "" + Integer.parseInt(ccc067zzVarAaa0002.aaa001, 16));
                }
            }
            this.aaa000.aaa002(z2, hashtable);
        } catch (Exception unused) {
            this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "");
        }
    }
}
