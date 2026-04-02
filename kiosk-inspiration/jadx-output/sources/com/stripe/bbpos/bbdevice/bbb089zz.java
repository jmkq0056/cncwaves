package com.stripe.bbpos.bbdevice;

import com.stripe.bbpos.bbdevice.BBDeviceController;
import com.stripe.bbpos.bbdevice.aaa003zz;
import java.util.Hashtable;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
class bbb089zz extends bbb005zz {
    bbb089zz(aaa003zz aaa003zzVar, aaa011zz aaa011zzVar) {
        super(aaa003zzVar, aaa011zzVar);
    }

    void aaa000(List<ccc067zz> list, boolean z) {
        ccc067zz ccc067zzVarAaa000 = ccc068zz.aaa000(list, "DF35");
        ccc067zz ccc067zzVarAaa0002 = ccc068zz.aaa000(list, "DE");
        ccc067zz ccc067zzVarAaa0003 = ccc068zz.aaa000(list, "DF8205");
        ccc067zz ccc067zzVarAaa0004 = ccc068zz.aaa000(list, "DF822D");
        if (ccc067zzVarAaa000 != null) {
            try {
                int i = Integer.parseInt(ccc067zzVarAaa000.aaa001, 16);
                if (i == 0) {
                    this.aaa000.aaa000(aaa003zz.aaa009zz.CANCEL, new Hashtable<>());
                    return;
                } else {
                    if (i != 1) {
                        this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "");
                        return;
                    }
                    return;
                }
            } catch (Exception unused) {
                this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "");
                return;
            }
        }
        if (ccc067zzVarAaa0002 == null) {
            this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "");
            return;
        }
        try {
            int i2 = Integer.parseInt(ccc067zzVarAaa0002.aaa001, 16);
            if (i2 != 0) {
                if (i2 != 1) {
                    this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "");
                    return;
                } else if (ccc067zzVarAaa0004 != null) {
                    this.aaa000.aaa000(aaa003zz.aaa002zz.CMD_NOT_AVAILABLE, "The connected reader or the loaded firmware version does not support this command startPinEntry (" + ccc034zz.aaa003(ccc067zzVarAaa0004.aaa001) + ")");
                    return;
                } else {
                    this.aaa000.aaa000(aaa003zz.aaa002zz.CMD_NOT_AVAILABLE, "The connected reader or the loaded firmware version does not support this command startPinEntry");
                    return;
                }
            }
            if (z) {
                return;
            }
            BBDeviceController.PinEntrySource pinEntrySource = BBDeviceController.PinEntrySource.KEYPAD;
            if (ccc067zzVarAaa0003 != null) {
                int i3 = Integer.parseInt(ccc067zzVarAaa0003.aaa001, 16);
                if (i3 == 0) {
                    pinEntrySource = BBDeviceController.PinEntrySource.PHONE;
                } else if (i3 != 1 && i3 == 2) {
                    pinEntrySource = BBDeviceController.PinEntrySource.SMARTPOS;
                }
            }
            if (this.aaa001.aaa022() == aaa003zz.aaa005zz.SERIAL && this.aaa001.aaa000(BBDeviceController.aaa006zz.WisePOS_SEVEN) && pinEntrySource == BBDeviceController.PinEntrySource.SMARTPOS) {
                return;
            }
            this.aaa000.aaa000(pinEntrySource);
        } catch (Exception unused2) {
            this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "");
        }
    }
}
