package com.stripe.bbpos.bbdevice;

import com.stripe.bbpos.bbdevice.BBDeviceController;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
class bbb038zz extends bbb005zz {
    bbb038zz(aaa003zz aaa003zzVar, aaa011zz aaa011zzVar) {
        super(aaa003zzVar, aaa011zzVar);
    }

    void aaa000(List<ccc067zz> list, boolean z) {
        ccc067zz ccc067zzVarAaa000 = ccc068zz.aaa000(list, "DF851E");
        this.aaa001.aaa000(ccc010zz.bbb005, (byte) 0);
        if (!this.aaa001.aaa010.equals("")) {
            aaa011zz aaa011zzVar = this.aaa001;
            aaa011zzVar.aaa005 = 0;
            aaa011zzVar.aaa003 = new aaa010zz(ccc010zz.aaa063, (byte) 0, (byte) 0, ccc071zz.aaa005(aaa011zzVar.aaa010));
            aaa011zz aaa011zzVar2 = this.aaa001;
            aaa011zzVar2.aaa010 = "";
            aaa011zzVar2.aaa038();
            return;
        }
        this.aaa001.aaa011 = true;
        if (z) {
            return;
        }
        if (ccc067zzVarAaa000 == null) {
            this.aaa000.aaa058();
            return;
        }
        int i = Integer.parseInt(ccc067zzVarAaa000.aaa001, 16);
        if (i == 2) {
            this.aaa000.aaa000(BBDeviceController.AmountInputType.CASHBACK_ONLY);
        } else if (i == 3) {
            this.aaa000.aaa000(BBDeviceController.AmountInputType.TIPS_ONLY);
        } else {
            this.aaa000.aaa058();
        }
    }
}
