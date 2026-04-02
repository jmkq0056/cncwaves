package com.stripe.bbpos.bbdevice;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.stripe.bbpos.bbdevice.aaa003zz;
import java.util.Hashtable;

/* JADX INFO: loaded from: classes3.dex */
class aaa039zz extends aaa012zz {
    aaa039zz(aaa003zz aaa003zzVar, aaa011zz aaa011zzVar) {
        super(aaa003zzVar, aaa011zzVar);
    }

    void aaa000(Hashtable<String, String> hashtable) {
        String str;
        if (!ccc071zz.aaa004(hashtable)) {
            this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "Invalid input");
            return;
        }
        try {
            String str2 = hashtable.get("rid");
            if (str2 != null) {
                String strAaa000 = ccc034zz.aaa000((Object) str2, "DF824B");
                if (strAaa000 == null) {
                    this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "invalid rid");
                    return;
                }
                str = "" + strAaa000;
            } else {
                str = "";
            }
            String str3 = hashtable.get(FirebaseAnalytics.Param.INDEX);
            if (str3 != null) {
                String strAaa0002 = ccc034zz.aaa000((Object) str3, "9F22");
                if (strAaa0002 == null) {
                    this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "invalid index");
                    return;
                }
                str = str + strAaa0002;
            }
            aaa011zz aaa011zzVar = this.aaa001;
            aaa011zzVar.aaa005 = 0;
            aaa011zzVar.aaa003 = new aaa010zz(ccc010zz.bbb048, (byte) 0, (byte) 0, ccc071zz.aaa005(str));
            aaa011zz aaa011zzVar2 = this.aaa001;
            aaa011zzVar2.aaa000(aaa011zzVar2.aaa003);
        } catch (Exception unused) {
            this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "");
        }
    }
}
