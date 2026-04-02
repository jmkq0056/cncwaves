package com.stripe.bbpos.bbdevice;

import com.stripe.bbpos.bbdevice.aaa003zz;
import java.util.Hashtable;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
class ccc006zz extends bbb005zz {
    ccc006zz(aaa003zz aaa003zzVar, aaa011zz aaa011zzVar) {
        super(aaa003zzVar, aaa011zzVar);
    }

    void aaa000(List<ccc067zz> list, boolean z) {
        ccc067zz ccc067zzVarAaa000 = ccc068zz.aaa000(list, "DE");
        ccc067zz ccc067zzVarAaa0002 = ccc068zz.aaa000(list, "DF822D");
        String strAaa000 = ccc071zz.aaa000(ccc068zz.aaa000(list, "DF865B"));
        String strAaa0002 = ccc071zz.aaa000(ccc068zz.aaa000(list, "DF865D"));
        String strAaa0003 = ccc071zz.aaa000(ccc068zz.aaa000(list, "DF8660"));
        if (ccc067zzVarAaa000 != null) {
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
                Hashtable<String, String> hashtable = new Hashtable<>();
                if (z2) {
                    hashtable.put("RD", strAaa000);
                    hashtable.put("KA", strAaa0002);
                    hashtable.put("KV", strAaa0003);
                } else if (ccc067zzVarAaa0002 != null) {
                    hashtable.put("errorMessage", ccc034zz.aaa003(ccc067zzVarAaa0002.aaa001));
                }
                this.aaa000.aaa007(z2, hashtable);
            } catch (Exception unused) {
                this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "");
            }
        }
    }
}
