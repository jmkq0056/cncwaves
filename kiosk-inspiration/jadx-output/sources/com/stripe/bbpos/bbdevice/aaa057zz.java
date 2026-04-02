package com.stripe.bbpos.bbdevice;

import com.stripe.hardware.emv.TlvMap;

/* JADX INFO: loaded from: classes3.dex */
class aaa057zz extends aaa012zz {
    aaa057zz(aaa003zz aaa003zzVar, aaa011zz aaa011zzVar) {
        super(aaa003zzVar, aaa011zzVar);
    }

    void aaa000() {
        String str = (((((((((((((("D3DF12DF857AD7") + "D8") + "D9") + "DA") + "DB") + "DF05") + "DF06") + "DF07") + "DF31") + "DF3F") + "DF40") + "DF10") + "DF0F") + "DF8237") + "DF8239";
        String str2 = ("DF0A" + ccc034zz.aaa001(str.length() / 2) + str) + "DF8675" + ccc034zz.aaa001(1) + TlvMap.TAG_TRANSACTION_DATE;
        aaa011zz aaa011zzVar = this.aaa001;
        aaa011zzVar.aaa005 = 0;
        aaa011zzVar.aaa003 = new aaa010zz(ccc010zz.aaa000, (byte) 0, (byte) 0, ccc071zz.aaa005(str2));
        aaa011zz aaa011zzVar2 = this.aaa001;
        aaa011zzVar2.aaa000(aaa011zzVar2.aaa003);
        this.aaa001.aaa006 = true;
        aaa011zz.aaa018 = false;
    }
}
