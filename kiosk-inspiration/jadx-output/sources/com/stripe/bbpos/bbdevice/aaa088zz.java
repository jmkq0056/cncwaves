package com.stripe.bbpos.bbdevice;

import com.stripe.hardware.emv.TlvMap;

/* JADX INFO: loaded from: classes3.dex */
class aaa088zz extends aaa012zz {
    aaa088zz(aaa003zz aaa003zzVar, aaa011zz aaa011zzVar) {
        super(aaa003zzVar, aaa011zzVar);
    }

    void aaa000(boolean z) {
        String str;
        if (z) {
            str = TlvMap.SET_BUZZER_DISABLED_VALUE;
        } else {
            str = TlvMap.SET_BUZZER_ENABLED_VALUE;
        }
        String str2 = "DF48" + ccc034zz.aaa001(str.length() / 2) + str;
        aaa011zz aaa011zzVar = this.aaa001;
        aaa011zzVar.aaa005 = 0;
        aaa011zzVar.aaa003 = new aaa010zz(ccc010zz.ccc029, (byte) 0, (byte) 0, ccc071zz.aaa005(str2));
        aaa011zz aaa011zzVar2 = this.aaa001;
        aaa011zzVar2.aaa000(aaa011zzVar2.aaa003);
    }
}
