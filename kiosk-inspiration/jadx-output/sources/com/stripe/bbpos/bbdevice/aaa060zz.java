package com.stripe.bbpos.bbdevice;

/* JADX INFO: loaded from: classes3.dex */
class aaa060zz extends aaa012zz {
    aaa060zz(aaa003zz aaa003zzVar, aaa011zz aaa011zzVar) {
        super(aaa003zzVar, aaa011zzVar);
    }

    void aaa000(String str, String str2) {
        String str3 = ("DF74" + ccc071zz.aaa004(str.length() / 2) + str) + "DF864A" + ccc071zz.aaa004(str2.length() / 2) + str2;
        aaa011zz aaa011zzVar = this.aaa001;
        aaa011zzVar.aaa005 = 0;
        aaa011zzVar.aaa003 = new aaa010zz(ccc010zz.ccc081, (byte) 0, (byte) 0, ccc071zz.aaa005(str3));
        aaa011zz aaa011zzVar2 = this.aaa001;
        aaa011zzVar2.aaa000(aaa011zzVar2.aaa003);
    }
}
