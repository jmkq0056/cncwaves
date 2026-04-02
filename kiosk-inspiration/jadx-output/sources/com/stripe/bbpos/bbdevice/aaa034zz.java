package com.stripe.bbpos.bbdevice;

import com.stripe.hardware.emv.TlvMap;

/* JADX INFO: loaded from: classes3.dex */
class aaa034zz extends aaa012zz {
    aaa034zz(aaa003zz aaa003zzVar, aaa011zz aaa011zzVar) {
        super(aaa003zzVar, aaa011zzVar);
    }

    void aaa000() {
        String str = "DF73" + ccc034zz.aaa001(1) + TlvMap.SET_BUZZER_DISABLED_VALUE;
        aaa011zz aaa011zzVar = this.aaa001;
        aaa011zzVar.aaa005 = 0;
        aaa011zzVar.aaa003 = new aaa010zz(ccc010zz.ccc089, (byte) 0, (byte) 0, ccc071zz.aaa005(str));
        aaa011zz aaa011zzVar2 = this.aaa001;
        aaa011zzVar2.aaa000(aaa011zzVar2.aaa003);
    }
}
