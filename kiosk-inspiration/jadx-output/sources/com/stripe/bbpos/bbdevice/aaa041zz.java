package com.stripe.bbpos.bbdevice;

import com.stripe.bbpos.bbdevice.aaa003zz;
import com.stripe.hardware.emv.TlvMap;

/* JADX INFO: loaded from: classes3.dex */
class aaa041zz extends aaa012zz {
    aaa041zz(aaa003zz aaa003zzVar, aaa011zz aaa011zzVar) {
        super(aaa003zzVar, aaa011zzVar);
    }

    void aaa000() {
        aaa011zz aaa011zzVar = this.aaa001;
        aaa011zzVar.aaa005 = 0;
        if (aaa011zzVar.aaa022() == aaa003zz.aaa005zz.USB) {
            aaa011zz aaa011zzVar2 = this.aaa001;
            aaa011zzVar2.aaa015 = 1;
            aaa011zzVar2.aaa016 = null;
            this.aaa001.aaa003 = new aaa010zz(ccc010zz.bbb044, (byte) 0, (byte) 0, ccc071zz.aaa005("DF824A" + ccc034zz.aaa001(1) + TlvMap.SET_BUZZER_ENABLED_VALUE));
        } else {
            aaa011zz aaa011zzVar3 = this.aaa001;
            aaa011zzVar3.aaa015 = 0;
            aaa011zzVar3.aaa016 = null;
            aaa011zzVar3.aaa003 = new aaa010zz(ccc010zz.bbb044, (byte) 0, (byte) 0, new byte[0]);
        }
        aaa011zz aaa011zzVar4 = this.aaa001;
        aaa011zzVar4.aaa000(aaa011zzVar4.aaa003);
    }
}
