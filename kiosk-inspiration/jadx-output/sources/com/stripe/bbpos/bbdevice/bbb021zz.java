package com.stripe.bbpos.bbdevice;

import com.stripe.bbpos.bbdevice.aaa003zz;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
class bbb021zz extends bbb005zz {
    bbb021zz(aaa003zz aaa003zzVar, aaa011zz aaa011zzVar) {
        super(aaa003zzVar, aaa011zzVar);
    }

    void aaa000(List<ccc067zz> list, boolean z) {
        aaa003zz.aaa012zz aaa012zzVar;
        ccc067zz ccc067zzVarAaa000 = ccc068zz.aaa000(list, "DF8231");
        ccc067zz ccc067zzVarAaa0002 = ccc068zz.aaa000(list, "DF8234");
        if (ccc067zzVarAaa000 == null) {
            this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "");
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
            if (ccc067zzVarAaa0002 == null) {
                this.aaa000.aaa000(aaa012zzVar, ccc071zz.aaa000(ccc068zz.aaa000(list, "DF8232")));
                return;
            }
            try {
                if (Integer.parseInt(ccc067zzVarAaa0002.aaa001, 16) == 0) {
                    this.aaa000.aaa000(aaa012zzVar, true);
                } else {
                    this.aaa000.aaa000(aaa012zzVar, false);
                }
            } catch (Exception unused) {
                this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "");
            }
        } catch (Exception unused2) {
            this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "");
        }
    }
}
