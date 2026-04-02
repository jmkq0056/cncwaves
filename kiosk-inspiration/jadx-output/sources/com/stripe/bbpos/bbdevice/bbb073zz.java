package com.stripe.bbpos.bbdevice;

import com.stripe.bbpos.bbdevice.BBDeviceController;
import com.stripe.bbpos.bbdevice.aaa003zz;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
class bbb073zz extends bbb005zz {
    bbb073zz(aaa003zz aaa003zzVar, aaa011zz aaa011zzVar) {
        super(aaa003zzVar, aaa011zzVar);
    }

    void aaa000(List<ccc067zz> list, boolean z) {
        ccc067zz ccc067zzVarAaa000 = ccc068zz.aaa000(list, "DF853F");
        if (ccc067zzVarAaa000 == null) {
            this.aaa001.aaa000(ccc010zz.bbb095, (byte) 12);
            this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "");
            return;
        }
        try {
            int i = Integer.parseInt(ccc067zzVarAaa000.aaa001, 16);
            if (i == 1) {
                this.aaa001.aaa000(ccc010zz.bbb095, (byte) 0);
                if (z) {
                    return;
                }
                this.aaa000.aaa000(BBDeviceController.FunctionKey.F1);
                return;
            }
            if (i == 2) {
                this.aaa001.aaa000(ccc010zz.bbb095, (byte) 0);
                if (z) {
                    return;
                }
                this.aaa000.aaa000(BBDeviceController.FunctionKey.F2);
                return;
            }
            if (i == 3) {
                this.aaa001.aaa000(ccc010zz.bbb095, (byte) 0);
                if (z) {
                    return;
                }
                this.aaa000.aaa000(BBDeviceController.FunctionKey.F3);
                return;
            }
            if (i != 4) {
                this.aaa001.aaa000(ccc010zz.bbb095, (byte) 12);
                this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "");
            } else {
                this.aaa001.aaa000(ccc010zz.bbb095, (byte) 0);
                if (z) {
                    return;
                }
                this.aaa000.aaa000(BBDeviceController.FunctionKey.F4);
            }
        } catch (Exception unused) {
            this.aaa001.aaa000(ccc010zz.bbb095, (byte) 12);
            this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "");
        }
    }
}
