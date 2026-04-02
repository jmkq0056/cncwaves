package com.stripe.bbpos.bbdevice;

import com.stripe.bbpos.bbdevice.BBDeviceController;
import com.stripe.bbpos.bbdevice.aaa003zz;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
class bbb042zz extends bbb005zz {
    bbb042zz(aaa003zz aaa003zzVar, aaa011zz aaa011zzVar) {
        super(aaa003zzVar, aaa011zzVar);
    }

    void aaa000(List<ccc067zz> list, boolean z) {
        ccc067zz ccc067zzVarAaa000 = ccc068zz.aaa000(list, "DF894D");
        try {
            aaa011zz aaa011zzVar = this.aaa001;
            byte[] bArr = ccc010zz.ccc050;
            aaa011zzVar.aaa000(bArr, (byte) 0);
            if (z) {
                return;
            }
            if (ccc067zzVarAaa000 == null) {
                this.aaa001.aaa000(bArr, (byte) 12);
                this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "");
                return;
            }
            int i = Integer.parseInt(ccc067zzVarAaa000.aaa001, 16);
            if (i == 0) {
                this.aaa000.aaa000(BBDeviceController.PinPadTouchEvent.OUT_OF_PIN_PAD);
                return;
            }
            if (i == 1) {
                this.aaa000.aaa000(BBDeviceController.PinPadTouchEvent.NEW_KEY_DETECTED);
                return;
            }
            if (i == 2) {
                this.aaa000.aaa000(BBDeviceController.PinPadTouchEvent.BACKSPACE_KEY_DETECTED);
                return;
            }
            if (i == 3) {
                this.aaa000.aaa000(BBDeviceController.PinPadTouchEvent.CLEAR_KEY_DETECTED);
                return;
            }
            if (i == 4) {
                this.aaa000.aaa000(BBDeviceController.PinPadTouchEvent.CANCEL_KEY_DETECTED);
                return;
            }
            if (i == 5) {
                this.aaa000.aaa000(BBDeviceController.PinPadTouchEvent.ENTER_KEY_DETECTED);
            } else if (i == 6) {
                this.aaa000.aaa000(BBDeviceController.PinPadTouchEvent.ENTER_KEY_DETECTED_INCORRECT_PIN_LENGTH);
            } else {
                this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "");
            }
        } catch (Exception unused) {
            this.aaa001.aaa000(ccc010zz.ccc050, (byte) 12);
            this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "");
        }
    }
}
