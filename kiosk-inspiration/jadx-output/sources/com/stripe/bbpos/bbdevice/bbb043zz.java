package com.stripe.bbpos.bbdevice;

import com.stripe.bbpos.bbdevice.BBDeviceController;
import com.stripe.bbpos.bbdevice.aaa003zz;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
class bbb043zz extends bbb005zz {
    bbb043zz(aaa003zz aaa003zzVar, aaa011zz aaa011zzVar) {
        super(aaa003zzVar, aaa011zzVar);
    }

    void aaa000(List<ccc067zz> list, boolean z) {
        ccc067zz ccc067zzVarAaa000 = ccc068zz.aaa000(list, "DF860E");
        ccc067zz ccc067zzVarAaa0002 = ccc068zz.aaa000(list, "DF860C");
        if (ccc067zzVarAaa000 == null) {
            this.aaa001.aaa000(ccc010zz.bbb076, (byte) 12);
            this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "");
            return;
        }
        try {
            int i = Integer.parseInt(ccc067zzVarAaa000.aaa001, 16);
            if (i == 0) {
                if (ccc067zzVarAaa0002 == null) {
                    this.aaa001.aaa000(ccc010zz.bbb076, (byte) 12);
                    this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "");
                    return;
                } else {
                    this.aaa001.aaa000(ccc010zz.bbb076, (byte) 0);
                    if (z) {
                        return;
                    }
                    this.aaa000.aaa000(BBDeviceController.AccountSelectionResult.SUCCESS, Integer.parseInt(ccc067zzVarAaa0002.aaa001, 16));
                    return;
                }
            }
            if (i == 1) {
                this.aaa001.aaa000(ccc010zz.bbb076, (byte) 0);
                if (z) {
                    return;
                }
                this.aaa000.aaa000(BBDeviceController.AccountSelectionResult.TIMEOUT, 0);
                return;
            }
            if (i == 2) {
                this.aaa001.aaa000(ccc010zz.bbb076, (byte) 0);
                if (z) {
                    return;
                }
                this.aaa000.aaa000(BBDeviceController.AccountSelectionResult.CANCEL, 0);
                return;
            }
            if (i != 3) {
                this.aaa001.aaa000(ccc010zz.bbb076, (byte) 12);
                this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "");
            } else {
                this.aaa001.aaa000(ccc010zz.bbb076, (byte) 0);
                if (z) {
                    return;
                }
                this.aaa000.aaa000(BBDeviceController.AccountSelectionResult.INVALID_SELECTION, 0);
            }
        } catch (Exception unused) {
            this.aaa001.aaa000(ccc010zz.bbb076, (byte) 12);
            this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "");
        }
    }
}
