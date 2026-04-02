package com.stripe.bbpos.bbdevice;

import com.stripe.bbpos.bbdevice.BBDeviceController;
import com.stripe.bbpos.bbdevice.aaa003zz;

/* JADX INFO: loaded from: classes3.dex */
class aaa091zz extends aaa012zz {
    aaa091zz(aaa003zz aaa003zzVar, aaa011zz aaa011zzVar) {
        super(aaa003zzVar, aaa011zzVar);
    }

    void aaa000(BBDeviceController.PinEntryOrientation pinEntryOrientation) {
        String strAaa000 = ccc034zz.aaa000((Object) pinEntryOrientation, "DF850E");
        if (strAaa000 == null) {
            this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "Invalid input");
            return;
        }
        String str = "" + strAaa000;
        aaa011zz aaa011zzVar = this.aaa001;
        aaa011zzVar.aaa005 = 0;
        aaa003zz.aaa005zz aaa005zzVarAaa022 = aaa011zzVar.aaa022();
        aaa003zz.aaa005zz aaa005zzVar = aaa003zz.aaa005zz.SERIAL;
        if (aaa005zzVarAaa022 == aaa005zzVar && this.aaa001.aaa000(BBDeviceController.aaa006zz.WisePOS_SEVEN)) {
            this.aaa001.aaa003 = new aaa010zz(ccc010zz.ccc007, (byte) 0, (byte) 0, ccc071zz.aaa005(str));
        } else if (this.aaa001.aaa022() != aaa005zzVar || (!this.aaa001.aaa000(BBDeviceController.aaa006zz.WisePOSPlus) && !this.aaa001.aaa000(BBDeviceController.aaa006zz.WisePOS_TOUCH) && !this.aaa001.aaa000(BBDeviceController.aaa006zz.WisePOS_SML))) {
            this.aaa000.aaa000(aaa003zz.aaa002zz.CMD_NOT_AVAILABLE, "The connected reader or the loaded firmware version does not support this command");
            return;
        } else {
            this.aaa001.aaa003 = new aaa010zz(ccc010zz.ccc005, (byte) 0, (byte) 0, ccc071zz.aaa005(str));
        }
        aaa011zz aaa011zzVar2 = this.aaa001;
        aaa011zzVar2.aaa000(aaa011zzVar2.aaa003);
    }
}
