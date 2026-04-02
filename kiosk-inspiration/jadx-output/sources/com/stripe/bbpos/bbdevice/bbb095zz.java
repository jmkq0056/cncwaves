package com.stripe.bbpos.bbdevice;

import com.stripe.bbpos.bbdevice.aaa003zz;
import java.util.Hashtable;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
class bbb095zz extends bbb005zz {
    bbb095zz(aaa003zz aaa003zzVar, aaa011zz aaa011zzVar) {
        super(aaa003zzVar, aaa011zzVar);
    }

    void aaa000(List<ccc067zz> list, boolean z) {
        boolean z2;
        ccc067zz ccc067zzVarAaa000 = ccc068zz.aaa000(list, "DE");
        ccc067zz ccc067zzVarAaa0002 = ccc068zz.aaa000(list, "DF8522");
        ccc067zz ccc067zzVarAaa0003 = ccc068zz.aaa000(list, "DF822D");
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
            Hashtable<String, String> hashtable = new Hashtable<>();
            if (z2) {
                hashtable.put("data", ccc071zz.aaa000(ccc067zzVarAaa0002));
                this.aaa000.aaa005(true, hashtable);
            } else {
                if (ccc067zzVarAaa0003 != null) {
                    hashtable.put("errorMessage", ccc034zz.aaa003(ccc067zzVarAaa0003.aaa001));
                }
                this.aaa000.aaa005(false, hashtable);
            }
        } catch (Exception unused) {
            this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "");
        }
    }
}
