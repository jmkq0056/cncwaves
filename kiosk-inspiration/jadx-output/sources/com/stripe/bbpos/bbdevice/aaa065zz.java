package com.stripe.bbpos.bbdevice;

import com.stripe.bbpos.bbdevice.aaa003zz;

/* JADX INFO: loaded from: classes3.dex */
class aaa065zz extends aaa012zz {
    aaa065zz(aaa003zz aaa003zzVar, aaa011zz aaa011zzVar) {
        super(aaa003zzVar, aaa011zzVar);
    }

    void aaa000() {
        aaa011zz aaa011zzVar = this.aaa001;
        aaa011zzVar.aaa005 = 0;
        aaa011zzVar.aaa003 = new aaa010zz(ccc010zz.aaa004, (byte) 0, (byte) 0, new byte[0]);
        aaa011zz aaa011zzVar2 = this.aaa001;
        aaa011zzVar2.aaa000(aaa011zzVar2.aaa003);
        if (this.aaa001.aaa022() == aaa003zz.aaa005zz.BLUETOOTH_2) {
            this.aaa000.aaa011.aaa000("Command powerDown is called (3053)", false);
        } else if (this.aaa001.aaa022() == aaa003zz.aaa005zz.BLUETOOTH_4) {
            this.aaa000.aaa011.aaa000("Command powerDown is called (3153)", false);
        }
    }
}
