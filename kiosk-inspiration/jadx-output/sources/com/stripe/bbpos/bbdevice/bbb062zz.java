package com.stripe.bbpos.bbdevice;

import com.stripe.bbpos.bbdevice.BBDeviceController;
import com.stripe.bbpos.bbdevice.aaa003zz;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
class bbb062zz extends bbb005zz {
    bbb062zz(aaa003zz aaa003zzVar, aaa011zz aaa011zzVar) {
        super(aaa003zzVar, aaa011zzVar);
    }

    void aaa000(List<ccc067zz> list, boolean z) {
        ccc067zz ccc067zzVarAaa000 = ccc068zz.aaa000(list, "DF8524");
        if (ccc067zzVarAaa000 == null) {
            this.aaa001.aaa000(ccc010zz.bbb093, (byte) 12);
            this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "");
            return;
        }
        try {
            int i = Integer.parseInt(ccc067zzVarAaa000.aaa001, 16);
            if (i == 255) {
                this.aaa001.aaa000(ccc010zz.bbb093, (byte) 0);
                if (z) {
                    return;
                }
                this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "");
                return;
            }
            if (i == 0) {
                this.aaa001.aaa000(ccc010zz.bbb093, (byte) 0);
                if (z) {
                    return;
                }
                this.aaa000.aaa000(BBDeviceController.DisplayPromptResult.CONFIRM_BUTTON_PRESSED);
                return;
            }
            if (i == 1) {
                this.aaa001.aaa000(ccc010zz.bbb093, (byte) 0);
                if (z) {
                    return;
                }
                this.aaa000.aaa000(BBDeviceController.DisplayPromptResult.CANCEL_BUTTON_PRESSED);
                return;
            }
            if (i == 2) {
                this.aaa001.aaa000(ccc010zz.bbb093, (byte) 0);
                if (z) {
                    return;
                }
                this.aaa000.aaa000(BBDeviceController.DisplayPromptResult.BUTTON_CONFIRMATION_TIMEOUT);
                return;
            }
            if (i != 3) {
                this.aaa001.aaa000(ccc010zz.bbb093, (byte) 12);
                this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "");
            } else {
                this.aaa001.aaa000(ccc010zz.bbb093, (byte) 0);
                if (z) {
                    return;
                }
                this.aaa000.aaa000(BBDeviceController.DisplayPromptResult.DISPLAY_END);
            }
        } catch (Exception unused) {
            this.aaa001.aaa000(ccc010zz.bbb093, (byte) 12);
            this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "");
        }
    }
}
