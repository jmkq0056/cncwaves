package com.stripe.bbpos.bbdevice;

import com.stripe.bbpos.bbdevice.BBDeviceController;
import com.stripe.bbpos.bbdevice.aaa003zz;
import com.stripe.hardware.emv.TlvMap;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
class ccc000zz extends bbb005zz {
    ccc000zz(aaa003zz aaa003zzVar, aaa011zz aaa011zzVar) {
        super(aaa003zzVar, aaa011zzVar);
    }

    void aaa000(List<ccc067zz> list, boolean z) {
        BBDeviceController.TransactionResult transactionResult;
        ccc067zz ccc067zzVarAaa000 = ccc068zz.aaa000(list, "DF2A");
        ccc067zz ccc067zzVarAaa0002 = ccc068zz.aaa000(list, "DF825D");
        ccc067zz ccc067zzVarAaa0003 = ccc068zz.aaa000(list, "DF875E");
        ccc067zz ccc067zzVarAaa0004 = ccc068zz.aaa000(list, TlvMap.TAG_AUTH_RESPONSE_CODE);
        if (ccc067zzVarAaa0003 != null && ccc067zzVarAaa0003.aaa001.equalsIgnoreCase(TlvMap.SET_BUZZER_DISABLED_VALUE)) {
            this.aaa000.aaa011.aaa013(true);
        }
        if (ccc067zzVarAaa000 == null) {
            this.aaa001.aaa000(ccc010zz.aaa080, (byte) 12);
            return;
        }
        try {
            int i = Integer.parseInt(ccc067zzVarAaa000.aaa001, 16);
            if (i == 20) {
                transactionResult = BBDeviceController.TransactionResult.ICC_CARD_REMOVED;
            } else if (i == 23) {
                transactionResult = BBDeviceController.TransactionResult.CANCELED;
            } else if (i != 24) {
                switch (i) {
                    case 0:
                        transactionResult = BBDeviceController.TransactionResult.APPROVED;
                        break;
                    case 1:
                        transactionResult = BBDeviceController.TransactionResult.TERMINATED;
                        break;
                    case 2:
                        transactionResult = BBDeviceController.TransactionResult.DECLINED;
                        break;
                    case 3:
                        transactionResult = BBDeviceController.TransactionResult.CANCELED_OR_TIMEOUT;
                        break;
                    case 4:
                        transactionResult = BBDeviceController.TransactionResult.CAPK_FAIL;
                        break;
                    case 5:
                        transactionResult = BBDeviceController.TransactionResult.NOT_ICC;
                        break;
                    case 6:
                        transactionResult = BBDeviceController.TransactionResult.CARD_BLOCKED;
                        break;
                    case 7:
                        transactionResult = BBDeviceController.TransactionResult.DEVICE_ERROR;
                        break;
                    case 8:
                        transactionResult = BBDeviceController.TransactionResult.CARD_NOT_SUPPORTED;
                        break;
                    case 9:
                        transactionResult = BBDeviceController.TransactionResult.MISSING_MANDATORY_DATA;
                        break;
                    case 10:
                        transactionResult = BBDeviceController.TransactionResult.NO_EMV_APPS;
                        break;
                    case 11:
                        transactionResult = BBDeviceController.TransactionResult.INVALID_ICC_DATA;
                        break;
                    case 12:
                        transactionResult = BBDeviceController.TransactionResult.CONDITION_NOT_SATISFIED;
                        break;
                    case 13:
                        transactionResult = BBDeviceController.TransactionResult.APPLICATION_BLOCKED;
                        break;
                    case 14:
                        transactionResult = BBDeviceController.TransactionResult.TERMINATED;
                        break;
                    default:
                        this.aaa001.aaa000(ccc010zz.aaa080, (byte) 12);
                        return;
                }
            } else {
                transactionResult = BBDeviceController.TransactionResult.TIMEOUT;
            }
            int i2 = 0;
            this.aaa001.aaa000(ccc010zz.aaa080, (byte) 0);
            if (i == 14) {
                return;
            }
            if (ccc067zzVarAaa0002 != null && !ccc067zzVarAaa0002.aaa001.equalsIgnoreCase("")) {
                try {
                    i2 = Integer.parseInt(ccc067zzVarAaa0002.aaa001, 16);
                } catch (Exception unused) {
                }
                if (i2 != 0) {
                    this.aaa000.aaa000(aaa003zz.aaa002zz.CONTACTLESS_ERROR, "ErrorCode: " + ccc067zzVarAaa0002.aaa001);
                }
            }
            if (z) {
                return;
            }
            if (ccc067zzVarAaa0004 == null || ccc067zzVarAaa0004.aaa001.equalsIgnoreCase("")) {
                this.aaa000.aaa000(transactionResult);
            } else {
                this.aaa000.aaa000(transactionResult, ccc067zzVarAaa0004.aaa001);
            }
        } catch (Exception unused2) {
            this.aaa001.aaa000(ccc010zz.aaa080, (byte) 12);
        }
    }
}
