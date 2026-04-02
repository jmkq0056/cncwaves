package com.stripe.bbpos.bbdevice;

import com.stripe.bbpos.bbdevice.aaa003zz;
import com.stripe.hardware.emv.TlvMap;

/* JADX INFO: loaded from: classes3.dex */
class aaa075zz extends aaa012zz {
    aaa075zz(aaa003zz aaa003zzVar, aaa011zz aaa011zzVar) {
        super(aaa003zzVar, aaa011zzVar);
    }

    void aaa000(int i) {
        String str;
        if (i == 0) {
            str = TlvMap.TAG_ACCOUNT_TYPE + ccc034zz.aaa001(1) + TlvMap.SET_BUZZER_ENABLED_VALUE;
        } else if (i == 1) {
            str = TlvMap.TAG_ACCOUNT_TYPE + ccc034zz.aaa001(1) + "10";
        } else if (i == 2) {
            str = TlvMap.TAG_ACCOUNT_TYPE + ccc034zz.aaa001(1) + "20";
        } else {
            if (i != 3) {
                this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "");
                return;
            }
            str = TlvMap.TAG_ACCOUNT_TYPE + ccc034zz.aaa001(1) + "30";
        }
        aaa011zz aaa011zzVar = this.aaa001;
        aaa011zzVar.aaa005 = 0;
        aaa011zzVar.aaa003 = new aaa010zz(ccc010zz.ccc019, (byte) 0, (byte) 0, ccc071zz.aaa005(str));
        aaa011zz aaa011zzVar2 = this.aaa001;
        aaa011zzVar2.aaa000(aaa011zzVar2.aaa003);
    }
}
