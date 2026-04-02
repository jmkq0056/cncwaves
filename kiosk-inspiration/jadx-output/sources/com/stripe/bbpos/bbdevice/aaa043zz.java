package com.stripe.bbpos.bbdevice;

import com.stripe.bbpos.bbdevice.ccc039zz;
import com.stripe.bbpos.bbdevice.ccc066zz;
import com.stripe.hardware.emv.TlvMap;

/* JADX INFO: loaded from: classes3.dex */
class aaa043zz extends aaa012zz {
    aaa043zz(aaa003zz aaa003zzVar, aaa011zz aaa011zzVar) {
        super(aaa003zzVar, aaa011zzVar);
    }

    void aaa000() {
        if (this.aaa000.aaa011.aaa016() == ccc066zz.aaa001zz.BOOTLOADER) {
            this.aaa000.aaa011.aaa002().aaa000(ccc039zz.aaa001zz.GET_DEVICE_INFO_IN_BOOTLOADER);
            aaa011zz aaa011zzVar = this.aaa001;
            aaa011zzVar.aaa005 = 0;
            aaa011zzVar.aaa003 = new aaa010zz(ccc010zz.ddd010, (byte) 0, (byte) 0, new byte[0]);
            aaa011zz aaa011zzVar2 = this.aaa001;
            aaa011zzVar2.aaa000(aaa011zzVar2.aaa003);
            this.aaa001.aaa006 = false;
            aaa011zz.aaa018 = false;
            return;
        }
        String str = ((((((((((((((((((((((((((((((((((((((((((((((((("D3DF12DF857AD7") + "D6") + "D8") + "D9") + "DF8239") + "DA") + "DB") + "DF05") + "DF06") + "DF07") + "DF31") + "DF3F") + "DF40") + "D4") + "DF5D") + "DF5E") + "DF25") + "DF10") + "DF0F") + "DF826E") + "DF8328") + "DF8237") + "DF08") + "DF8349") + "DF834A") + "DF8912") + "DF834F") + "DF8363") + "DF5F") + "DF8625") + "DF8626") + "DF8665") + "DF8645") + "DF8704") + "DF871A") + "DF871B") + "DF871C") + "DF871D") + "DF8718") + "DF8719") + "DF854B") + "DF854C") + TlvMap.TAG_SPOC_MODE_ENABLED) + "DF8726") + "DF8748") + "DF8749") + "DF872F") + "DF8730") + "DF8778") + "DF894B";
        String str2 = ("DF0A" + ccc034zz.aaa001(str.length() / 2) + str) + "DF8675" + ccc034zz.aaa001(1) + "98";
        aaa011zz aaa011zzVar3 = this.aaa001;
        aaa011zzVar3.aaa005 = 0;
        aaa011zzVar3.aaa003 = new aaa010zz(ccc010zz.aaa000, (byte) 0, (byte) 0, ccc071zz.aaa005(str2));
        aaa011zz aaa011zzVar4 = this.aaa001;
        aaa011zzVar4.aaa000(aaa011zzVar4.aaa003);
        this.aaa001.aaa006 = false;
        aaa011zz.aaa018 = false;
    }
}
