package com.stripe.bbpos.bbdevice;

import java.util.Hashtable;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
class bbb071zz extends bbb005zz {
    bbb071zz(aaa003zz aaa003zzVar, aaa011zz aaa011zzVar) {
        super(aaa003zzVar, aaa011zzVar);
    }

    void aaa000(List<ccc067zz> list, boolean z) {
        ccc067zz ccc067zzVarAaa000 = ccc068zz.aaa000(list, "DE");
        ccc067zz ccc067zzVarAaa0002 = ccc068zz.aaa000(list, "DF1F");
        ccc067zz ccc067zzVarAaa0003 = ccc068zz.aaa000(list, "DF06");
        ccc067zz ccc067zzVarAaa0004 = ccc068zz.aaa000(list, "DF0B");
        ccc067zz ccc067zzVarAaa0005 = ccc068zz.aaa000(list, "CA");
        ccc067zz ccc067zzVarAaa0006 = ccc068zz.aaa000(list, "DF822D");
        if (ccc067zzVarAaa000 == null) {
            aaa000();
            return;
        }
        try {
            int i = Integer.parseInt(ccc067zzVarAaa000.aaa001, 16);
            boolean z2 = true;
            if (i != 0) {
                if (i != 1) {
                    aaa000();
                    return;
                }
                z2 = false;
            }
            Hashtable<String, String> hashtable = new Hashtable<>();
            if (z2) {
                if (ccc067zzVarAaa0002 != null) {
                    hashtable.put("encData", ccc067zzVarAaa0002.aaa001);
                }
                if (ccc067zzVarAaa0003 != null) {
                    hashtable.put("ksn", ccc067zzVarAaa0003.aaa001);
                }
                if (ccc067zzVarAaa0004 != null) {
                    hashtable.put("mac", ccc067zzVarAaa0004.aaa001);
                }
                if (ccc067zzVarAaa0005 != null) {
                    hashtable.put("randomNumber", ccc067zzVarAaa0005.aaa001);
                }
            }
            if (ccc067zzVarAaa0006 != null) {
                hashtable.put("errorMessage", ccc034zz.aaa003(ccc067zzVarAaa0006.aaa001));
            }
            this.aaa001.aaa000(ccc010zz.aaa054, (byte) 0);
            if (z) {
                return;
            }
            this.aaa000.aaa003(z2, hashtable);
        } catch (Exception unused) {
            aaa000();
        }
    }

    private void aaa000() {
        this.aaa001.aaa000(ccc010zz.aaa054, (byte) 12);
    }
}
