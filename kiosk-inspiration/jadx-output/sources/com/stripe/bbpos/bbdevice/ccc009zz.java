package com.stripe.bbpos.bbdevice;

import com.stripe.bbpos.bbdevice.BBDeviceController;
import com.stripe.bbpos.bbdevice.aaa003zz;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
class ccc009zz extends bbb005zz {
    ccc009zz(aaa003zz aaa003zzVar, aaa011zz aaa011zzVar) {
        super(aaa003zzVar, aaa011zzVar);
    }

    void aaa000(List<ccc067zz> list, boolean z) {
        BBDeviceController.CheckCardMode checkCardMode;
        ccc067zz ccc067zzVarAaa000 = ccc068zz.aaa000(list, "DF0E");
        if (ccc067zzVarAaa000 == null) {
            this.aaa001.aaa000(ccc010zz.bbb003, (byte) 12);
            return;
        }
        try {
            switch (Integer.parseInt(ccc067zzVarAaa000.aaa001, 16)) {
                case 1:
                    checkCardMode = BBDeviceController.CheckCardMode.SWIPE;
                    break;
                case 2:
                    checkCardMode = BBDeviceController.CheckCardMode.INSERT;
                    break;
                case 3:
                    checkCardMode = BBDeviceController.CheckCardMode.SWIPE_OR_INSERT;
                    break;
                case 4:
                    checkCardMode = BBDeviceController.CheckCardMode.TAP;
                    break;
                case 5:
                    checkCardMode = BBDeviceController.CheckCardMode.SWIPE_OR_TAP;
                    break;
                case 6:
                    checkCardMode = BBDeviceController.CheckCardMode.INSERT_OR_TAP;
                    break;
                case 7:
                    checkCardMode = BBDeviceController.CheckCardMode.SWIPE_OR_INSERT_OR_TAP;
                    break;
                case 8:
                default:
                    this.aaa001.aaa000(ccc010zz.bbb003, (byte) 12);
                    return;
                case 9:
                    checkCardMode = BBDeviceController.CheckCardMode.MANUAL_PAN_ENTRY;
                    break;
                case 10:
                    checkCardMode = BBDeviceController.CheckCardMode.QR_CODE;
                    break;
            }
            this.aaa001.aaa000(ccc010zz.bbb003, (byte) 0);
            if (z) {
                return;
            }
            this.aaa000.aaa000(checkCardMode);
        } catch (Exception unused) {
            this.aaa001.aaa000(ccc010zz.bbb003, (byte) 12);
        }
    }

    void aaa001(List<ccc067zz> list, boolean z) {
        BBDeviceController.CheckCardMode checkCardMode;
        ccc067zz ccc067zzVarAaa000 = ccc068zz.aaa000(list, "DF35");
        ccc067zz ccc067zzVarAaa0002 = ccc068zz.aaa000(list, "DF0E");
        ccc067zz ccc067zzVarAaa0003 = ccc068zz.aaa000(list, "DF822D");
        ccc067zz ccc067zzVarAaa0004 = ccc068zz.aaa000(list, "DF50");
        if (ccc067zzVarAaa0003 != null) {
            this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, ccc034zz.aaa003(ccc067zzVarAaa0003.aaa001));
            return;
        }
        boolean z2 = true;
        if (ccc067zzVarAaa000 != null) {
            try {
                int i = Integer.parseInt(ccc067zzVarAaa000.aaa001, 16);
                if (i != 0) {
                    if (i != 1) {
                        this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "");
                        return;
                    }
                    z2 = false;
                }
                this.aaa000.aaa005(z2);
                return;
            } catch (Exception unused) {
                this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "");
                return;
            }
        }
        if (ccc067zzVarAaa0002 == null) {
            this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "");
            return;
        }
        if (ccc067zzVarAaa0004 != null && ccc071zz.aaa008(ccc067zzVarAaa0004.aaa001)) {
            try {
                if (Integer.parseInt(ccc067zzVarAaa0004.aaa001, 16) == 1) {
                    return;
                }
            } catch (Exception unused2) {
            }
        }
        try {
            switch (Integer.parseInt(ccc067zzVarAaa0002.aaa001, 16)) {
                case 1:
                    checkCardMode = BBDeviceController.CheckCardMode.SWIPE;
                    break;
                case 2:
                    checkCardMode = BBDeviceController.CheckCardMode.INSERT;
                    break;
                case 3:
                    checkCardMode = BBDeviceController.CheckCardMode.SWIPE_OR_INSERT;
                    break;
                case 4:
                    checkCardMode = BBDeviceController.CheckCardMode.TAP;
                    break;
                case 5:
                    checkCardMode = BBDeviceController.CheckCardMode.SWIPE_OR_TAP;
                    break;
                case 6:
                    checkCardMode = BBDeviceController.CheckCardMode.INSERT_OR_TAP;
                    break;
                case 7:
                    checkCardMode = BBDeviceController.CheckCardMode.SWIPE_OR_INSERT_OR_TAP;
                    break;
                case 8:
                default:
                    this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "");
                    return;
                case 9:
                    checkCardMode = BBDeviceController.CheckCardMode.MANUAL_PAN_ENTRY;
                    break;
                case 10:
                    checkCardMode = BBDeviceController.CheckCardMode.QR_CODE;
                    break;
            }
            this.aaa000.aaa000(checkCardMode);
        } catch (Exception unused3) {
            this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "");
        }
    }
}
