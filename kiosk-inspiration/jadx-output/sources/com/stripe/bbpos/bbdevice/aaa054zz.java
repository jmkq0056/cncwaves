package com.stripe.bbpos.bbdevice;

/* JADX INFO: loaded from: classes3.dex */
class aaa054zz extends aaa012zz {
    aaa054zz(aaa003zz aaa003zzVar, aaa011zz aaa011zzVar) {
        super(aaa003zzVar, aaa011zzVar);
    }

    void aaa000(int i) {
        aaa011zz aaa011zzVar = this.aaa001;
        aaa011zzVar.aaa005 = 0;
        if (i == 0) {
            aaa011zzVar.aaa003 = new aaa010zz(ccc010zz.ccc091, (byte) 0, (byte) 0, ccc071zz.aaa005(""));
        } else {
            aaa011zzVar.aaa003 = new aaa010zz(ccc010zz.ccc093, (byte) 0, (byte) 0, ccc071zz.aaa005(""));
        }
        aaa011zz aaa011zzVar2 = this.aaa001;
        aaa011zzVar2.aaa000(aaa011zzVar2.aaa003);
    }
}
