package com.stripe.bbpos.bbdevice;

import com.stripe.bbpos.bbdevice.BBDeviceController;
import com.stripe.bbpos.bbdevice.aaa003zz;
import com.stripe.bbpos.bbdevice.ccc066zz;
import java.util.Hashtable;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
class bbb086zz extends bbb005zz {
    bbb086zz(aaa003zz aaa003zzVar, aaa011zz aaa011zzVar) {
        super(aaa003zzVar, aaa011zzVar);
    }

    void aaa000(List<ccc067zz> list, boolean z) {
        BBDeviceController.NfcDetectCardResult nfcDetectCardResult;
        this.aaa001.aaa000(ccc010zz.bbb021, (byte) 0);
        String strAaa000 = ccc071zz.aaa000(ccc068zz.aaa000(list, "DF835A"));
        ccc067zz ccc067zzVarAaa000 = ccc068zz.aaa000(list, "DF8357");
        ccc067zz ccc067zzVarAaa0002 = ccc068zz.aaa000(list, "DF821D");
        ccc067zz ccc067zzVarAaa0003 = ccc068zz.aaa000(list, "DF822D");
        ccc067zz ccc067zzVarAaa0004 = ccc068zz.aaa000(list, "DF891A");
        if (ccc067zzVarAaa0004 != null && ccc071zz.aaa008(ccc067zzVarAaa0004.aaa001) && ccc071zz.aaa004(ccc067zzVarAaa0004.aaa001) == 1) {
            this.aaa000.aaa011.aaa000(ccc066zz.aaa002zz.SEMI_PASS_THROUGH);
        }
        try {
            switch (Integer.parseInt(strAaa000, 16)) {
                case 0:
                    nfcDetectCardResult = BBDeviceController.NfcDetectCardResult.WAITING_FOR_CARD;
                    break;
                case 1:
                    nfcDetectCardResult = BBDeviceController.NfcDetectCardResult.CARD_DETECTED;
                    break;
                case 2:
                    nfcDetectCardResult = BBDeviceController.NfcDetectCardResult.WAITING_CARD_REMOVAL;
                    break;
                case 3:
                    nfcDetectCardResult = BBDeviceController.NfcDetectCardResult.CARD_REMOVED;
                    break;
                case 4:
                    nfcDetectCardResult = BBDeviceController.NfcDetectCardResult.TIMEOUT;
                    break;
                case 5:
                    nfcDetectCardResult = BBDeviceController.NfcDetectCardResult.CARD_NOT_SUPPORTED;
                    break;
                case 6:
                    nfcDetectCardResult = BBDeviceController.NfcDetectCardResult.MULTIPLE_CARD_DETECTED;
                    break;
                default:
                    this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "");
                    return;
            }
            Hashtable<String, Object> hashtable = new Hashtable<>();
            if (ccc067zzVarAaa000 != null && !ccc067zzVarAaa000.aaa001.equals("")) {
                hashtable.put("nfcTagInfo", ccc067zzVarAaa000.aaa001);
            }
            if (ccc067zzVarAaa0002 != null && !ccc067zzVarAaa0002.aaa001.equals("")) {
                hashtable.put("nfcCardUID", ccc067zzVarAaa0002.aaa001);
            }
            if (ccc067zzVarAaa0003 != null && !ccc067zzVarAaa0003.aaa001.equals("")) {
                hashtable.put("errorMessage", ccc034zz.aaa003(ccc067zzVarAaa0003.aaa001));
            }
            this.aaa000.aaa000(nfcDetectCardResult, hashtable);
        } catch (Exception unused) {
            this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "");
        }
    }
}
