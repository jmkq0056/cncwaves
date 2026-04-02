package com.stripe.bbpos.bbdevice;

import com.stripe.bbpos.bbdevice.aaa003zz;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
class bbb020zz extends bbb005zz {
    bbb020zz(aaa003zz aaa003zzVar, aaa011zz aaa011zzVar) {
        super(aaa003zzVar, aaa011zzVar);
    }

    void aaa000(List<ccc067zz> list, boolean z) {
        aaa003zz.aaa012zz aaa012zzVar;
        aaa003zz.aaa013zz aaa013zzVar;
        ccc067zz ccc067zzVarAaa000 = ccc068zz.aaa000(list, "DF8231");
        ccc067zz ccc067zzVarAaa0002 = ccc068zz.aaa000(list, "DF8233");
        String strAaa000 = ccc071zz.aaa000(ccc068zz.aaa000(list, "DF8232"));
        if (ccc067zzVarAaa000 == null || ccc067zzVarAaa0002 == null) {
            return;
        }
        try {
            switch (Integer.parseInt(ccc067zzVarAaa000.aaa001, 16)) {
                case 0:
                    aaa012zzVar = aaa003zz.aaa012zz.TEST_UID;
                    break;
                case 1:
                    aaa012zzVar = aaa003zz.aaa012zz.TEST_BUZZER;
                    break;
                case 2:
                    aaa012zzVar = aaa003zz.aaa012zz.TEST_KEYPAD;
                    break;
                case 3:
                    aaa012zzVar = aaa003zz.aaa012zz.TEST_LCD;
                    break;
                case 4:
                    aaa012zzVar = aaa003zz.aaa012zz.TEST_ICC;
                    break;
                case 5:
                    aaa012zzVar = aaa003zz.aaa012zz.TEST_MAGHEAD;
                    break;
                case 6:
                    aaa012zzVar = aaa003zz.aaa012zz.TEST_LED;
                    break;
                case 7:
                    aaa012zzVar = aaa003zz.aaa012zz.TEST_EXTFLASH;
                    break;
                case 8:
                    aaa012zzVar = aaa003zz.aaa012zz.TEST_NFC;
                    break;
                case 9:
                    aaa012zzVar = aaa003zz.aaa012zz.TEST_BLUETOOTH;
                    break;
                case 10:
                    aaa012zzVar = aaa003zz.aaa012zz.TEST_TAMPER;
                    break;
                case 11:
                    aaa012zzVar = aaa003zz.aaa012zz.TEST_SAMCARD;
                    break;
                case 12:
                    aaa012zzVar = aaa003zz.aaa012zz.TEST_GPIO;
                    break;
                case 13:
                    aaa012zzVar = aaa003zz.aaa012zz.TEST_NFC_CARRIER;
                    break;
                default:
                    this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "");
                    return;
            }
            int i = Integer.parseInt(ccc067zzVarAaa0002.aaa001, 16);
            aaa003zz.aaa013zz aaa013zzVar2 = aaa003zz.aaa013zz.SUCCESS;
            if (i == 0) {
                aaa013zzVar = aaa003zz.aaa013zz.SUCCESS;
            } else if (i == 1) {
                aaa013zzVar = aaa003zz.aaa013zz.FAIL;
            } else if (i == 2) {
                aaa013zzVar = aaa003zz.aaa013zz.CANCEL;
            } else if (i == 3) {
                aaa013zzVar = aaa003zz.aaa013zz.TIMEOUT;
            } else if (i == 4) {
                aaa013zzVar = aaa003zz.aaa013zz.NOT_DEFINE;
            } else {
                if (i != 5) {
                    this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "");
                    return;
                }
                aaa013zzVar = aaa003zz.aaa013zz.INVESTIGATE;
            }
            this.aaa001.aaa000(ccc010zz.bbb058, (byte) 0);
            if (z) {
                return;
            }
            this.aaa000.aaa000(aaa012zzVar, aaa013zzVar, strAaa000);
        } catch (Exception unused) {
            this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "");
        }
    }
}
