package com.stripe.bbpos.bbdevice;

import com.stripe.bbpos.bbdevice.BBDeviceController;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
class ccc008zz extends bbb005zz {
    ccc008zz(aaa003zz aaa003zzVar, aaa011zz aaa011zzVar) {
        super(aaa003zzVar, aaa011zzVar);
    }

    void aaa000(List<ccc067zz> list, boolean z) {
        ccc067zz ccc067zzVarAaa000 = ccc068zz.aaa000(list, "DF826F");
        if (ccc067zzVarAaa000 == null) {
            if (ccc071zz.aaa008(this.aaa000.aaa036())) {
                this.aaa000.aaa000(BBDeviceController.SessionError.FIRMWARE_NOT_SUPPORTED, "error code - 7003");
                return;
            }
            return;
        }
        String str = ccc067zzVarAaa000.aaa001;
        String strAaa000 = ccc032zz.aaa000(str.substring(0, str.length() - 6), ccc032zz.aaa000(this.aaa000.aaa036()));
        String strAaa001 = ccc032zz.aaa001("70BB5FCDE822CCD6", ccc032zz.aaa000(strAaa000));
        String strAaa0012 = ccc032zz.aaa001(ccc071zz.aaa000(strAaa000, "3776E3F109A98F0A"), ccc032zz.aaa000(this.aaa000.aaa036()));
        if (!strAaa001.substring(0, 6).equalsIgnoreCase(ccc067zzVarAaa000.aaa001.substring(16, 22))) {
            this.aaa000.aaa000(BBDeviceController.SessionError.INVALID_VENDOR_TOKEN, "");
        } else {
            this.aaa000.aaa032(strAaa0012);
            this.aaa000.aaa065();
        }
    }
}
