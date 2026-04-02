package com.stripe.bbpos.bbdevice;

import com.stripe.bbpos.bbdevice.aaa003zz;
import java.util.Hashtable;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
class bbb085zz extends bbb005zz {
    bbb085zz(aaa003zz aaa003zzVar, aaa011zz aaa011zzVar) {
        super(aaa003zzVar, aaa011zzVar);
    }

    void aaa000(List<ccc067zz> list, boolean z) {
        ccc067zz ccc067zzVarAaa000 = ccc068zz.aaa000(list, "DE");
        String strAaa000 = ccc071zz.aaa000(ccc068zz.aaa000(list, "DF8359"));
        ccc067zz ccc067zzVarAaa0002 = ccc068zz.aaa000(list, "DF822D");
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
            if (z2) {
                Hashtable<String, String> hashtable = new Hashtable<>();
                hashtable.put("ndefRecord", strAaa000 + "");
                this.aaa000.aaa004(z2, hashtable);
            } else {
                if (ccc067zzVarAaa0002 == null) {
                    this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "");
                    return;
                }
                Hashtable<String, String> hashtable2 = new Hashtable<>();
                hashtable2.put("errorMessage", ccc034zz.aaa003(ccc067zzVarAaa0002.aaa001));
                this.aaa000.aaa004(z2, hashtable2);
            }
        } catch (Exception unused) {
            this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "");
        }
    }
}
