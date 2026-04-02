package com.stripe.bbpos.bbdevice;

import com.stripe.bbpos.bbdevice.BBDeviceController;
import com.stripe.bbpos.bbdevice.aaa003zz;
import com.stripe.hardware.emv.TlvMap;
import java.util.Hashtable;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
class ccc004zz extends bbb005zz {
    ccc004zz(aaa003zz aaa003zzVar, aaa011zz aaa011zzVar) {
        super(aaa003zzVar, aaa011zzVar);
    }

    void aaa000(List<ccc067zz> list, boolean z) {
        BBDeviceController.VASResult vASResult;
        this.aaa001.aaa000(ccc010zz.bbb084, (byte) 0);
        ccc067zz ccc067zzVarAaa000 = ccc068zz.aaa000(list, "DF8619");
        ccc067zz ccc067zzVarAaa0002 = ccc068zz.aaa000(list, "9F2A");
        ccc067zz ccc067zzVarAaa0003 = ccc068zz.aaa000(list, TlvMap.TAG_CRYPTOGRAM_INFORMATION_DATA);
        ccc067zz ccc067zzVarAaa0004 = ccc068zz.aaa000(list, "DF8611");
        try {
            switch (Integer.parseInt(ccc071zz.aaa000(ccc067zzVarAaa000), 16)) {
                case 0:
                    vASResult = BBDeviceController.VASResult.SUCCESS;
                    break;
                case 1:
                    vASResult = BBDeviceController.VASResult.VAS_DATA_NOT_FOUND;
                    break;
                case 2:
                    vASResult = BBDeviceController.VASResult.VAS_DATA_NOT_ACTIVATED;
                    break;
                case 3:
                    vASResult = BBDeviceController.VASResult.USER_INTERVENTION_REQUIRED;
                    break;
                case 4:
                    vASResult = BBDeviceController.VASResult.INCORRECT_COMMAND_DATA;
                    break;
                case 5:
                    vASResult = BBDeviceController.VASResult.NON_VAS_CARD_DETECTED;
                    break;
                case 6:
                    vASResult = BBDeviceController.VASResult.UNSUPPORTED_APP_VERSION;
                    break;
                default:
                    this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "");
                    return;
            }
            Hashtable<String, Object> hashtable = new Hashtable<>();
            hashtable.put("mobileToken", ccc071zz.aaa000(ccc067zzVarAaa0002));
            hashtable.put("vasData", ccc071zz.aaa000(ccc067zzVarAaa0003));
            hashtable.put("merchantID", ccc071zz.aaa000(ccc067zzVarAaa0004));
            this.aaa000.aaa000(vASResult, hashtable);
        } catch (Exception unused) {
            this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "");
        }
    }
}
