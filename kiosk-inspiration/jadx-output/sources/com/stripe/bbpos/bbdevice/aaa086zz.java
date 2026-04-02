package com.stripe.bbpos.bbdevice;

import com.stripe.bbpos.bbdevice.aaa003zz;
import com.stripe.hardware.emv.TlvMap;
import java.util.Hashtable;
import java.util.Locale;

/* JADX INFO: loaded from: classes3.dex */
class aaa086zz extends aaa012zz {
    aaa086zz(aaa003zz aaa003zzVar, aaa011zz aaa011zzVar) {
        super(aaa003zzVar, aaa011zzVar);
    }

    void aaa000(Hashtable<String, String> hashtable) {
        String str = hashtable.get("KA");
        String str2 = hashtable.get("KB");
        String str3 = hashtable.get("RD");
        String str4 = ((("DF75" + ccc034zz.aaa001(1) + TlvMap.SET_BUZZER_DISABLED_VALUE) + "DF865F" + ccc034zz.aaa001(str2.length() / 2) + str2) + "DF865D" + ccc034zz.aaa001(str.length() / 2) + str) + "DF865B" + ccc034zz.aaa001(str3.length() / 2) + str3;
        String str5 = hashtable.get("CE");
        if (str5 != null) {
            String strAaa000 = ccc034zz.aaa000((Object) str5, "DF8658");
            if (strAaa000 == null) {
                this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "invalid CE");
                return;
            }
            str4 = str4 + strAaa000;
        }
        String str6 = hashtable.get("KN");
        if (str6 != null) {
            String strAaa0002 = ccc034zz.aaa000((Object) str6, "DF865E");
            if (strAaa0002 == null) {
                this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "invalid KN");
                return;
            }
            str4 = str4 + strAaa0002;
        }
        String str7 = hashtable.get("AN");
        if (str7 != null) {
            str4 = str7.toUpperCase(Locale.ROOT).equalsIgnoreCase("Y") ? str4 + "DF8661" + ccc034zz.aaa001(1) + "59" : str4 + "DF8661" + ccc034zz.aaa001(1) + "4E";
        }
        aaa011zz aaa011zzVar = this.aaa001;
        aaa011zzVar.aaa005 = 0;
        aaa011zzVar.aaa003 = new aaa010zz(ccc010zz.ddd038, (byte) 0, (byte) 0, ccc071zz.aaa005(str4));
        aaa011zz aaa011zzVar2 = this.aaa001;
        aaa011zzVar2.aaa000(aaa011zzVar2.aaa003);
    }
}
