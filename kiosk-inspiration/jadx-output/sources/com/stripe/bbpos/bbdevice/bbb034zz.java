package com.stripe.bbpos.bbdevice;

import com.stripe.bbpos.bbdevice.BBDeviceController;
import com.stripe.bbpos.bbdevice.aaa003zz;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
class bbb034zz extends bbb005zz {
    bbb034zz(aaa003zz aaa003zzVar, aaa011zz aaa011zzVar) {
        super(aaa003zzVar, aaa011zzVar);
    }

    void aaa000(List<ccc067zz> list, boolean z) {
        BBDeviceController.PinEntrySource pinEntrySource;
        ccc067zz ccc067zzVarAaa000 = ccc068zz.aaa000(list, "DF862C");
        ccc067zz ccc067zzVarAaa0002 = ccc068zz.aaa000(list, "DF8205");
        if (this.aaa001.aaa022() == aaa003zz.aaa005zz.SERIAL && this.aaa001.aaa000(BBDeviceController.aaa006zz.WisePOS_SEVEN)) {
            this.aaa001.aaa000(ccc010zz.aaa074, (byte) 0);
        } else {
            this.aaa001.aaa000(ccc010zz.aaa072, (byte) 0);
        }
        if (z) {
            return;
        }
        BBDeviceController.ManualPanEntryType manualPanEntryType = BBDeviceController.ManualPanEntryType.PAN;
        if (ccc067zzVarAaa000 != null) {
            try {
                int i = Integer.parseInt(ccc067zzVarAaa000.aaa001, 16);
                if (i != 1) {
                    if (i == 2) {
                        manualPanEntryType = BBDeviceController.ManualPanEntryType.EXPIRY_DATE;
                    } else if (i == 4) {
                        manualPanEntryType = BBDeviceController.ManualPanEntryType.CVV;
                    }
                }
            } catch (Exception unused) {
                manualPanEntryType = BBDeviceController.ManualPanEntryType.PAN;
            }
        }
        BBDeviceController.PinEntrySource pinEntrySource2 = BBDeviceController.PinEntrySource.PHONE;
        if (ccc067zzVarAaa0002 != null) {
            try {
                int i2 = Integer.parseInt(ccc067zzVarAaa0002.aaa001, 16);
                if (i2 != 0) {
                    BBDeviceController.PinEntrySource pinEntrySource3 = (i2 != 1 && i2 == 2) ? BBDeviceController.PinEntrySource.SMARTPOS : BBDeviceController.PinEntrySource.KEYPAD;
                    pinEntrySource2 = pinEntrySource3;
                }
                pinEntrySource = pinEntrySource2;
            } catch (Exception unused2) {
                pinEntrySource = BBDeviceController.PinEntrySource.SMARTPOS;
            }
        } else {
            pinEntrySource = pinEntrySource2;
        }
        if (ccc067zzVarAaa000 != null) {
            this.aaa000.aaa000(manualPanEntryType);
        } else {
            this.aaa000.aaa000(pinEntrySource);
        }
    }
}
