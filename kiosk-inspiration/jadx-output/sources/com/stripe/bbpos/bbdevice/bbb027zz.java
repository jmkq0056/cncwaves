package com.stripe.bbpos.bbdevice;

import com.stripe.bbpos.bbdevice.BBDeviceController;
import com.stripe.bbpos.bbdevice.aaa003zz;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
class bbb027zz extends bbb005zz {
    bbb027zz(aaa003zz aaa003zzVar, aaa011zz aaa011zzVar) {
        super(aaa003zzVar, aaa011zzVar);
    }

    void aaa000(List<ccc067zz> list, boolean z) {
        BBDeviceController.ContactlessStatus contactlessStatus;
        BBDeviceController.ContactlessStatusTone contactlessStatusTone;
        try {
            ccc067zz ccc067zzVarAaa000 = ccc068zz.aaa000(list, "DF837D");
            if (ccc067zzVarAaa000 == null) {
                this.aaa001.aaa000(ccc010zz.aaa015, (byte) 12);
                return;
            }
            int i = Integer.parseInt(ccc067zzVarAaa000.aaa001.substring(0, 2), 16);
            int i2 = Integer.parseInt(ccc067zzVarAaa000.aaa001.substring(2, 4), 16);
            BBDeviceController.ContactlessStatusTone contactlessStatusTone2 = null;
            switch (i) {
                case 0:
                    contactlessStatus = null;
                    break;
                case 1:
                    contactlessStatus = BBDeviceController.ContactlessStatus.NOT_READY;
                    break;
                case 2:
                    contactlessStatus = BBDeviceController.ContactlessStatus.IDLE;
                    break;
                case 3:
                    contactlessStatus = BBDeviceController.ContactlessStatus.READY_TO_READ;
                    break;
                case 4:
                    contactlessStatus = BBDeviceController.ContactlessStatus.PROCESSING;
                    break;
                case 5:
                    contactlessStatus = BBDeviceController.ContactlessStatus.CARD_READ_SUCCESS;
                    break;
                case 6:
                    contactlessStatus = BBDeviceController.ContactlessStatus.PROCESSING_ERROR_OR_CARD_NOT_REMOVED;
                    break;
                default:
                    if (this.aaa001.aaa022() == aaa003zz.aaa005zz.SERIAL) {
                        if (this.aaa001.aaa000(BBDeviceController.aaa006zz.WisePOS_SEVEN) || this.aaa001.aaa000(BBDeviceController.aaa006zz.WisePOS_TOUCH) || this.aaa001.aaa000(BBDeviceController.aaa006zz.WisePOS_SML) || this.aaa001.aaa000(BBDeviceController.aaa006zz.WisePOS_GO)) {
                            this.aaa001.aaa000(ccc010zz.aaa015, (byte) 12);
                            return;
                        }
                        return;
                    }
                    return;
            }
            if (i2 != 0) {
                if (i2 == 1) {
                    contactlessStatusTone = BBDeviceController.ContactlessStatusTone.SUCCESS;
                } else {
                    if (i2 != 2) {
                        if (this.aaa001.aaa022() == aaa003zz.aaa005zz.SERIAL) {
                            if (this.aaa001.aaa000(BBDeviceController.aaa006zz.WisePOS_SEVEN) || this.aaa001.aaa000(BBDeviceController.aaa006zz.WisePOS_TOUCH) || this.aaa001.aaa000(BBDeviceController.aaa006zz.WisePOS_SML) || this.aaa001.aaa000(BBDeviceController.aaa006zz.WisePOS_GO)) {
                                this.aaa001.aaa000(ccc010zz.aaa015, (byte) 12);
                                return;
                            }
                            return;
                        }
                        return;
                    }
                    contactlessStatusTone = BBDeviceController.ContactlessStatusTone.ALERT;
                }
                contactlessStatusTone2 = contactlessStatusTone;
            }
            if (this.aaa001.aaa022() == aaa003zz.aaa005zz.SERIAL && (this.aaa001.aaa000(BBDeviceController.aaa006zz.WisePOS_SEVEN) || this.aaa001.aaa000(BBDeviceController.aaa006zz.WisePOS_TOUCH) || this.aaa001.aaa000(BBDeviceController.aaa006zz.WisePOS_SML) || this.aaa001.aaa000(BBDeviceController.aaa006zz.WisePOS_GO))) {
                this.aaa001.aaa000(ccc010zz.aaa015, (byte) 0);
            }
            if (z) {
                return;
            }
            if (contactlessStatus != null) {
                this.aaa000.aaa000(contactlessStatus);
            }
            if (contactlessStatusTone2 != null) {
                this.aaa000.aaa000(contactlessStatusTone2);
            }
        } catch (Exception unused) {
            this.aaa001.aaa000(ccc010zz.aaa015, (byte) 12);
        }
    }
}
