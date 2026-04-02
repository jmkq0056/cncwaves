package com.stripe.bbpos.bbdevice;

import com.stripe.bbpos.bbdevice.aaa003zz;
import java.util.Hashtable;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
class bbb084zz extends bbb005zz {
    bbb084zz(aaa003zz aaa003zzVar, aaa011zz aaa011zzVar) {
        super(aaa003zzVar, aaa011zzVar);
    }

    void aaa000(List<ccc067zz> list, boolean z) {
        ccc067zz ccc067zzVarAaa000 = ccc068zz.aaa000(list, "DF05");
        ccc067zz ccc067zzVarAaa0002 = ccc068zz.aaa000(list, "DF06");
        ccc067zz ccc067zzVarAaa0003 = ccc068zz.aaa000(list, "DF07");
        ccc067zz ccc067zzVarAaa0004 = ccc068zz.aaa000(list, "D8");
        String strAaa000 = ccc071zz.aaa000(ccc068zz.aaa000(list, "DF31"));
        if (ccc067zzVarAaa000 == null || ccc067zzVarAaa0002 == null || ccc067zzVarAaa0003 == null || ccc067zzVarAaa0004 == null) {
            this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "");
            return;
        }
        Hashtable<String, String> hashtable = new Hashtable<>();
        hashtable.put("pinKsn", ccc067zzVarAaa000.aaa001);
        hashtable.put("emvKsn", ccc067zzVarAaa0002.aaa001);
        hashtable.put("trackKsn", ccc067zzVarAaa0003.aaa001);
        hashtable.put("uid", ccc067zzVarAaa0004.aaa001);
        hashtable.put("csn", strAaa000);
        this.aaa000.aaa014(hashtable);
    }
}
