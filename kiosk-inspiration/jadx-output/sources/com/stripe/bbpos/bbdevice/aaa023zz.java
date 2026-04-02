package com.stripe.bbpos.bbdevice;

/* JADX INFO: loaded from: classes3.dex */
class aaa023zz extends aaa012zz {
    aaa023zz(aaa003zz aaa003zzVar, aaa011zz aaa011zzVar) {
        super(aaa003zzVar, aaa011zzVar);
    }

    void aaa000() {
        String strAaa000 = ccc071zz.aaa000(ccc010zz.bbb073);
        String str = "DF59" + ccc034zz.aaa001(strAaa000.length() / 2) + strAaa000;
        aaa011zz aaa011zzVar = this.aaa001;
        aaa011zzVar.aaa005 = 0;
        aaa011zzVar.aaa003 = new aaa010zz(ccc010zz.bbb026, (byte) 0, (byte) 0, ccc071zz.aaa005(str));
        aaa011zz aaa011zzVar2 = this.aaa001;
        aaa011zzVar2.aaa000(aaa011zzVar2.aaa003);
    }
}
