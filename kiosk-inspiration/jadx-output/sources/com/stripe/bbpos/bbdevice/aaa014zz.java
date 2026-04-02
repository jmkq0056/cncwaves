package com.stripe.bbpos.bbdevice;

import com.stripe.bbpos.bbdevice.BBDeviceController;
import com.stripe.bbpos.bbdevice.aaa003zz;

/* JADX INFO: loaded from: classes3.dex */
class aaa014zz extends aaa012zz {
    aaa014zz(aaa003zz aaa003zzVar, aaa011zz aaa011zzVar) {
        super(aaa003zzVar, aaa011zzVar);
    }

    void aaa000() {
        if (this.aaa001.aaa022() == aaa003zz.aaa005zz.SERIAL && this.aaa001.aaa000(BBDeviceController.aaa006zz.WisePOS_SEVEN)) {
            aaa011zz aaa011zzVar = this.aaa001;
            if (aaa011zzVar.aaa012) {
                aaa011zzVar.aaa012 = false;
                String strAaa000 = ccc071zz.aaa000(ccc010zz.aaa027);
                String str = "DF59" + ccc034zz.aaa001(strAaa000.length() / 2) + strAaa000;
                aaa011zz aaa011zzVar2 = this.aaa001;
                aaa011zzVar2.aaa005 = 0;
                aaa011zzVar2.aaa003 = new aaa010zz(ccc010zz.bbb028, (byte) 0, (byte) 0, ccc071zz.aaa005(str));
                aaa011zz aaa011zzVar3 = this.aaa001;
                aaa011zzVar3.aaa000(aaa011zzVar3.aaa003);
                return;
            }
        }
        String strAaa0002 = ccc071zz.aaa000(ccc010zz.aaa025);
        String str2 = "DF59" + ccc034zz.aaa001(strAaa0002.length() / 2) + strAaa0002;
        aaa011zz aaa011zzVar4 = this.aaa001;
        aaa011zzVar4.aaa005 = 0;
        aaa011zzVar4.aaa003 = new aaa010zz(ccc010zz.bbb026, (byte) 0, (byte) 0, ccc071zz.aaa005(str2));
        aaa011zz aaa011zzVar5 = this.aaa001;
        aaa011zzVar5.aaa000(aaa011zzVar5.aaa003);
    }
}
