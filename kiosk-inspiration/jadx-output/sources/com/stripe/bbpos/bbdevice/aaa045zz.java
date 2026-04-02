package com.stripe.bbpos.bbdevice;

import com.stripe.hardware.emv.TlvMap;

/* JADX INFO: loaded from: classes3.dex */
class aaa045zz extends aaa012zz {
    aaa045zz(aaa003zz aaa003zzVar, aaa011zz aaa011zzVar) {
        super(aaa003zzVar, aaa011zzVar);
    }

    void aaa000() {
        String str = ((((((((((((((((((((((((((((((((((((((((((((((((((("D3DF12DF857AD7") + "D6") + "D8") + "D9") + "DF8239") + "DA") + "DB") + "DF05DF8671DF8672DF8673DF8674") + "DF06DF8906DF8907DF8908DF8909") + "DF07DF890ADF890BDF890CDF890D") + "DF31") + "DF3F") + "DF40") + "D4") + "DF5D") + "DF5E") + "DF25") + "DF10") + "DF0F") + "DF826E") + "DF8328") + "DF8237") + "DF8349") + "DF834A") + "DF08DF890EDF890FDF8910DF8911") + "DF8912") + "DF834F") + "DF8629") + "DF8664") + TlvMap.TAG_SPOC_MODE_ENABLED) + "DF8645") + "DF8704") + "DF8726") + "DF8363") + "DF5F") + "DF8625") + "DF8626") + "DF8665") + "DF854B") + "DF854C") + "DF8748") + "DF8749") + "DF872F") + "DF8730") + "DF8778") + "DF877B") + "DF877C") + "DF8955") + "DF8962") + "DF8963") + "DF861B") + "DF894B";
        String str2 = ("DF0A" + ccc034zz.aaa001(str.length() / 2) + str) + "DF8675" + ccc034zz.aaa001(1) + TlvMap.TAG_TRANSACTION_STATUS_INFORMATION;
        aaa011zz aaa011zzVar = this.aaa001;
        aaa011zzVar.aaa005 = 0;
        aaa011zz.aaa018 = true;
        aaa011zzVar.aaa003 = new aaa010zz(ccc010zz.aaa000, (byte) 0, (byte) 0, ccc071zz.aaa005(str2));
        aaa011zz aaa011zzVar2 = this.aaa001;
        aaa011zzVar2.aaa000(aaa011zzVar2.aaa003);
        this.aaa001.aaa006 = false;
    }
}
