package com.stripe.bbpos.bbdevice;

import com.stripe.bbpos.bbdevice.BBDeviceController;
import com.stripe.bbpos.bbdevice.aaa003zz;
import java.util.Arrays;
import java.util.Hashtable;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
class bbb051zz extends bbb005zz {
    bbb051zz(aaa003zz aaa003zzVar, aaa011zz aaa011zzVar) {
        super(aaa003zzVar, aaa011zzVar);
    }

    void aaa000(List<ccc067zz> list, boolean z) {
        ccc067zz ccc067zzVarAaa000 = ccc068zz.aaa000(list, "DE");
        ccc067zz ccc067zzVarAaa0002 = ccc068zz.aaa000(list, "DF59");
        if (ccc067zzVarAaa000 == null || ccc067zzVarAaa0002 == null || ccc067zzVarAaa0002.aaa001.length() != 4) {
            this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "");
            return;
        }
        try {
            byte[] bArrAaa005 = ccc071zz.aaa005(ccc067zzVarAaa0002.aaa001);
            int i = Integer.parseInt(ccc067zzVarAaa000.aaa001, 16);
            if (i == 0) {
                if (!Arrays.equals(bArrAaa005, ccc010zz.aaa025) && !Arrays.equals(bArrAaa005, ccc010zz.aaa027)) {
                    if (Arrays.equals(bArrAaa005, ccc010zz.aaa075)) {
                        this.aaa000.aaa000(aaa003zz.aaa009zz.CANCEL, new Hashtable<>());
                        return;
                    }
                    if (Arrays.equals(bArrAaa005, ccc010zz.aaa069) || Arrays.equals(bArrAaa005, ccc010zz.ccc019) || Arrays.equals(bArrAaa005, ccc010zz.aaa063)) {
                        return;
                    }
                    if (Arrays.equals(bArrAaa005, ccc010zz.aaa059)) {
                        this.aaa000.aaa009(true);
                        return;
                    }
                    if (Arrays.equals(bArrAaa005, ccc010zz.aaa033)) {
                        this.aaa000.aaa000(aaa003zz.aaa009zz.CANCEL, new Hashtable<>());
                        return;
                    }
                    if (Arrays.equals(bArrAaa005, ccc010zz.aaa087)) {
                        this.aaa000.aaa005(true);
                        return;
                    }
                    if (Arrays.equals(bArrAaa005, ccc010zz.bbb073)) {
                        this.aaa000.aaa007(true);
                        return;
                    } else if (Arrays.equals(bArrAaa005, ccc010zz.bbb090)) {
                        this.aaa000.aaa000(BBDeviceController.DisplayPromptResult.CANCELLED_BY_COMMAND);
                        return;
                    } else {
                        this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "");
                        return;
                    }
                }
                this.aaa000.aaa005(true);
                return;
            }
            if (i != 1) {
                this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "");
                return;
            }
            if (!Arrays.equals(bArrAaa005, ccc010zz.aaa025) && !Arrays.equals(bArrAaa005, ccc010zz.aaa027)) {
                if (Arrays.equals(bArrAaa005, ccc010zz.aaa099)) {
                    this.aaa000.aaa000(aaa003zz.aaa002zz.CMD_NOT_AVAILABLE, "The connected reader or the loaded firmware version does not support this command startGetPhoneNumber");
                    return;
                }
                if (Arrays.equals(bArrAaa005, ccc010zz.aaa075)) {
                    this.aaa000.aaa000(aaa003zz.aaa002zz.CMD_NOT_AVAILABLE, "The connected reader or the loaded firmware version does not support this command sendPinEntryResult");
                    return;
                }
                if (Arrays.equals(bArrAaa005, ccc010zz.aaa069)) {
                    this.aaa000.aaa000(aaa003zz.aaa002zz.CMD_NOT_AVAILABLE, "The connected reader or the loaded firmware version does not support this command selectApplication");
                    return;
                }
                if (Arrays.equals(bArrAaa005, ccc010zz.ccc019)) {
                    this.aaa000.aaa000(aaa003zz.aaa002zz.CMD_NOT_AVAILABLE, "The connected reader or the loaded firmware version does not support this command  selectAccountType");
                    return;
                }
                if (Arrays.equals(bArrAaa005, ccc010zz.aaa063)) {
                    this.aaa000.aaa000(aaa003zz.aaa002zz.CMD_NOT_AVAILABLE, "The connected reader or the loaded firmware version does not support this command setAmount");
                    return;
                }
                if (Arrays.equals(bArrAaa005, ccc010zz.aaa059)) {
                    this.aaa000.aaa009(false);
                    return;
                }
                if (Arrays.equals(bArrAaa005, ccc010zz.aaa033)) {
                    this.aaa000.aaa000(aaa003zz.aaa002zz.CMD_NOT_AVAILABLE, "The connected reader or the loaded firmware version does not support this command startPinEntry");
                    return;
                }
                if (Arrays.equals(bArrAaa005, ccc010zz.aaa087)) {
                    this.aaa000.aaa005(false);
                    return;
                }
                if (Arrays.equals(bArrAaa005, ccc010zz.bbb073)) {
                    this.aaa000.aaa007(false);
                    return;
                } else if (Arrays.equals(bArrAaa005, ccc010zz.bbb090)) {
                    this.aaa000.aaa000(BBDeviceController.DisplayPromptResult.CANCELLED_BY_COMMAND);
                    return;
                } else {
                    this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "");
                    return;
                }
            }
            this.aaa000.aaa005(false);
        } catch (Exception unused) {
            this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "");
        }
    }
}
