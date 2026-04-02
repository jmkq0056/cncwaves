package com.stripe.bbpos.bbdevice;

import com.stripe.bbpos.bbdevice.aaa003zz;
import java.util.Hashtable;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
class bbb052zz extends bbb005zz {
    bbb052zz(aaa003zz aaa003zzVar, aaa011zz aaa011zzVar) {
        super(aaa003zzVar, aaa011zzVar);
    }

    void aaa000(List<ccc067zz> list, boolean z) {
        ccc067zz ccc067zzVarAaa000 = ccc068zz.aaa000(list, "CA");
        ccc067zz ccc067zzVarAaa0002 = ccc068zz.aaa000(list, "DF70");
        try {
            Hashtable<String, String> hashtable = new Hashtable<>();
            hashtable.put("randomNumber", ccc071zz.aaa000(ccc067zzVarAaa000));
            hashtable.put("ksn", ccc071zz.aaa000(ccc067zzVarAaa0002));
            this.aaa000.aaa010(hashtable);
        } catch (Exception unused) {
            this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "");
        }
    }
}
