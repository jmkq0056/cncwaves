package com.stripe.bbpos.bbdevice;

import com.stripe.bbpos.bbdevice.aaa003zz;

/* JADX INFO: loaded from: classes3.dex */
class bbb018zz extends bbb005zz {
    bbb018zz(aaa003zz aaa003zzVar, aaa011zz aaa011zzVar) {
        super(aaa003zzVar, aaa011zzVar);
    }

    void aaa000() {
        aaa010zz aaa010zzVar = this.aaa001.aaa003;
        if (aaa010zzVar != null && aaa010zzVar.aaa003()[1] % 2 == 0) {
            this.aaa001.aaa038();
            return;
        }
        if (this.aaa001.aaa022() == aaa003zz.aaa005zz.BLUETOOTH_2) {
            this.aaa000.aaa011.aaa000("Received onPowerDown callback (3055)", false);
        } else if (this.aaa001.aaa022() == aaa003zz.aaa005zz.BLUETOOTH_4) {
            this.aaa000.aaa011.aaa000("Received onPowerDown callback (3155)", false);
        }
        this.aaa000.aaa049();
    }

    void aaa000(boolean z) {
        this.aaa001.aaa000(ccc010zz.bbb070, (byte) 0);
        if (z) {
            return;
        }
        if (this.aaa001.aaa022() == aaa003zz.aaa005zz.BLUETOOTH_2) {
            this.aaa000.aaa011.aaa000("Received onPowerDown callback (3055)", false);
        } else if (this.aaa001.aaa022() == aaa003zz.aaa005zz.BLUETOOTH_4) {
            this.aaa000.aaa011.aaa000("Received onPowerDown callback (3155)", false);
        }
        this.aaa000.aaa049();
    }
}
