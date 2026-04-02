package com.stripe.bbpos.bbdevice;

import com.stripe.bbpos.bbdevice.BBDeviceController;
import com.stripe.bbpos.bbdevice.aaa003zz;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
class bbb011zz extends bbb005zz {
    bbb011zz(aaa003zz aaa003zzVar, aaa011zz aaa011zzVar) {
        super(aaa003zzVar, aaa011zzVar);
    }

    void aaa000(List<ccc067zz> list, boolean z) {
        ccc067zz ccc067zzVarAaa000 = ccc068zz.aaa000(list, "DF8769");
        BBDeviceController.DeviceResetReason deviceResetReason = BBDeviceController.DeviceResetReason.UNKNOWN;
        if (ccc067zzVarAaa000 != null && ccc071zz.aaa008(ccc067zzVarAaa000.aaa001)) {
            int iAaa004 = ccc071zz.aaa004(ccc067zzVarAaa000.aaa001);
            if (iAaa004 == 0) {
                if (this.aaa001.aaa022() == aaa003zz.aaa005zz.BLUETOOTH_2) {
                    this.aaa000.aaa011.aaa000("Received onDeviceReset callback (3056)", false);
                } else if (this.aaa001.aaa022() == aaa003zz.aaa005zz.BLUETOOTH_4) {
                    this.aaa000.aaa011.aaa000("Received onDeviceReset callback (3156)", false);
                }
                deviceResetReason = BBDeviceController.DeviceResetReason.APP_RESET_DEVICE;
            } else if (iAaa004 == 1) {
                if (this.aaa001.aaa022() == aaa003zz.aaa005zz.BLUETOOTH_2) {
                    this.aaa000.aaa011.aaa000("Received onDeviceReset callback (3057)", false);
                } else if (this.aaa001.aaa022() == aaa003zz.aaa005zz.BLUETOOTH_4) {
                    this.aaa000.aaa011.aaa000("Received onDeviceReset callback (3157)", false);
                }
                deviceResetReason = BBDeviceController.DeviceResetReason.FIRMWARE_SELF_TEST;
            } else if (iAaa004 == 2) {
                if (this.aaa001.aaa022() == aaa003zz.aaa005zz.BLUETOOTH_2) {
                    this.aaa000.aaa011.aaa000("Received onDeviceReset callback (3058)", false);
                } else if (this.aaa001.aaa022() == aaa003zz.aaa005zz.BLUETOOTH_4) {
                    this.aaa000.aaa011.aaa000("Received onDeviceReset callback (3158)", false);
                }
                deviceResetReason = BBDeviceController.DeviceResetReason.RECOVERY_ATTEMPT;
            } else if (iAaa004 == 6) {
                deviceResetReason = BBDeviceController.DeviceResetReason.WATCHDOG_TIMEOUT;
            } else if (this.aaa001.aaa022() == aaa003zz.aaa005zz.BLUETOOTH_2) {
                this.aaa000.aaa011.aaa000("Unknown BT disconnection (3050)", false);
            } else if (this.aaa001.aaa022() == aaa003zz.aaa005zz.BLUETOOTH_4) {
                this.aaa000.aaa011.aaa000("Unknown BT disconnection (3150)", false);
            }
        } else if (this.aaa001.aaa022() == aaa003zz.aaa005zz.BLUETOOTH_2) {
            this.aaa000.aaa011.aaa000("Unknown BT disconnection (3050)", false);
        } else if (this.aaa001.aaa022() == aaa003zz.aaa005zz.BLUETOOTH_4) {
            this.aaa000.aaa011.aaa000("Unknown BT disconnection (3150)", false);
        }
        this.aaa001.aaa000(ccc010zz.bbb068, (byte) 0);
        if (z) {
            return;
        }
        this.aaa000.aaa000(true, deviceResetReason);
    }
}
