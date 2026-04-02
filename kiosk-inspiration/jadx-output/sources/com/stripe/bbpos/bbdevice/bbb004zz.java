package com.stripe.bbpos.bbdevice;

import com.stripe.bbpos.bbdevice.aaa003zz;
import com.stripe.hardware.emv.TlvMap;

/* JADX INFO: loaded from: classes3.dex */
class bbb004zz extends aaa012zz {
    bbb004zz(aaa003zz aaa003zzVar, aaa011zz aaa011zzVar) {
        super(aaa003zzVar, aaa011zzVar);
    }

    void aaa000(int i, String str) {
        if (i < 0) {
            this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "block index invalid");
            return;
        }
        String strAaa000 = ccc034zz.aaa000((Object) Integer.valueOf(i), "DF75");
        if (strAaa000 == null) {
            this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "block index invalid");
            return;
        }
        String str2 = "" + strAaa000;
        if (i == 0) {
            str2 = (str2 + "DF865A" + ccc034zz.aaa001(1) + TlvMap.SET_BUZZER_ENABLED_VALUE) + "DF865B" + ccc034zz.aaa001(str.length() / 2) + str;
        }
        aaa011zz aaa011zzVar = this.aaa001;
        aaa011zzVar.aaa005 = 0;
        aaa011zzVar.aaa003 = new aaa010zz(ccc010zz.ddd036, (byte) 0, (byte) 0, ccc071zz.aaa005(str2));
        aaa011zz aaa011zzVar2 = this.aaa001;
        aaa011zzVar2.aaa000(aaa011zzVar2.aaa003);
    }
}
