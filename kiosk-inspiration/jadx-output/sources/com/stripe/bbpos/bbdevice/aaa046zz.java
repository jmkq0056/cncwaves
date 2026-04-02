package com.stripe.bbpos.bbdevice;

import com.stripe.hardware.emv.TlvMap;

/* JADX INFO: loaded from: classes3.dex */
class aaa046zz extends aaa012zz {
    aaa046zz(aaa003zz aaa003zzVar, aaa011zz aaa011zzVar) {
        super(aaa003zzVar, aaa011zzVar);
    }

    void aaa000() {
        String str = (((((((((((((((((((((((((((((((((((((((((("D3DF12DF857AD7") + "D6") + "D8") + "D9") + "DF8239") + "DA") + "DB") + "DF05") + "DF06") + "DF07") + "DF31") + "DF3F") + "DF40") + "D4") + "DF5D") + "DF5E") + "DF25") + "DF10") + "DF0F") + "DF826E") + "DF8328") + "DF8237") + "DF08") + "DF8349") + "DF834A") + "DF834F") + "DF8363") + "DF5F") + "DF8625") + "DF8626") + "DF8665") + "DF8629") + "DF8664") + TlvMap.TAG_SPOC_MODE_ENABLED) + "DF8645") + "DF8704") + "DF871A") + "DF871B") + "DF871C") + "DF871D") + "DF8718") + "DF8719") + "DF8778";
        String str2 = ("DF0A" + ccc034zz.aaa001(str.length() / 2) + str) + "DF8675" + ccc034zz.aaa001(1) + TlvMap.TAG_TRANSACTION_TYPE;
        aaa011zz aaa011zzVar = this.aaa001;
        aaa011zzVar.aaa005 = 0;
        aaa011zz.aaa018 = false;
        aaa011zzVar.aaa003 = new aaa010zz(ccc010zz.aaa000, (byte) 0, (byte) 0, ccc071zz.aaa005(str2));
        aaa011zz aaa011zzVar2 = this.aaa001;
        aaa011zzVar2.aaa000(aaa011zzVar2.aaa003);
        this.aaa001.aaa006 = false;
    }
}
