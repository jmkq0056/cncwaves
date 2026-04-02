package com.stripe.bbpos.bbdevice;

import com.stripe.hardware.emv.TlvMap;

/* JADX INFO: loaded from: classes3.dex */
class aaa053zz extends aaa012zz {
    aaa053zz(aaa003zz aaa003zzVar, aaa011zz aaa011zzVar) {
        super(aaa003zzVar, aaa011zzVar);
    }

    void aaa000(int i, String str) {
        String str2 = "DF74" + ccc034zz.aaa001(str.length() / 2) + str;
        this.aaa001.aaa005 = 0;
        if (i == 0) {
            if (str.equalsIgnoreCase("52")) {
                this.aaa001.aaa003 = new aaa010zz(ccc010zz.ccc099, (byte) 0, (byte) 0, ccc071zz.aaa005(str2));
            } else {
                this.aaa001.aaa003 = new aaa010zz(ccc010zz.ccc095, (byte) 0, (byte) 0, ccc071zz.aaa005(str2));
            }
        } else if (str.equalsIgnoreCase(TlvMap.TAG_TRACK_2_DATA)) {
            this.aaa001.aaa003 = new aaa010zz(ccc010zz.ddd000, (byte) 0, (byte) 0, ccc071zz.aaa005(str2));
        } else {
            this.aaa001.aaa003 = new aaa010zz(ccc010zz.ccc097, (byte) 0, (byte) 0, ccc071zz.aaa005(str2));
        }
        aaa011zz aaa011zzVar = this.aaa001;
        aaa011zzVar.aaa000(aaa011zzVar.aaa003);
    }
}
