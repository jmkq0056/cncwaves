package com.stripe.bbpos.bbdevice;

import com.stripe.bbpos.bbdevice.BBDeviceController;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
class bbb017zz extends bbb005zz {
    bbb017zz(aaa003zz aaa003zzVar, aaa011zz aaa011zzVar) {
        super(aaa003zzVar, aaa011zzVar);
    }

    void aaa000(List<ccc067zz> list, boolean z) {
        ccc067zz ccc067zzVarAaa000 = ccc068zz.aaa000(list, "DB");
        ccc067zz ccc067zzVarAaa0002 = ccc068zz.aaa000(list, "DA");
        ccc067zz ccc067zzVarAaa0003 = ccc068zz.aaa000(list, "DF8570");
        BBDeviceController.PowerSource powerSource = BBDeviceController.PowerSource.USB;
        if (ccc067zzVarAaa0003 != null && ccc071zz.aaa003(ccc067zzVarAaa0003.aaa001, 0) == 1) {
            powerSource = BBDeviceController.PowerSource.WIRELESS;
        }
        BBDeviceController.BatteryStatus batteryStatus = BBDeviceController.BatteryStatus.NOT_CHARGING;
        if (ccc067zzVarAaa0002 != null && ccc071zz.aaa003(ccc067zzVarAaa0002.aaa001, 0) == 1) {
            batteryStatus = BBDeviceController.BatteryStatus.IS_CHARGING;
        }
        this.aaa001.aaa000(ccc010zz.ccc040, (byte) 0);
        if (z) {
            return;
        }
        if (ccc067zzVarAaa000 == null || ccc071zz.aaa003(ccc067zzVarAaa000.aaa001, 0) != 1) {
            this.aaa000.aaa000(powerSource);
        } else {
            this.aaa000.aaa000(powerSource, batteryStatus);
        }
    }
}
