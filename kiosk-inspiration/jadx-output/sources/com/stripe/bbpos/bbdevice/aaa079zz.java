package com.stripe.bbpos.bbdevice;

import com.stripe.bbpos.bbdevice.aaa003zz;
import com.stripe.hardware.emv.TlvMap;

/* JADX INFO: loaded from: classes3.dex */
class aaa079zz extends aaa012zz {
    aaa079zz(aaa003zz aaa003zzVar, aaa011zz aaa011zzVar) {
        super(aaa003zzVar, aaa011zzVar);
    }

    void aaa000(boolean z) {
        String str;
        if (z) {
            str = TlvMap.SET_BUZZER_ENABLED_VALUE;
        } else {
            str = TlvMap.SET_BUZZER_DISABLED_VALUE;
        }
        String str2 = "DE" + ccc034zz.aaa001(str.length() / 2) + str;
        aaa011zz aaa011zzVar = this.aaa001;
        aaa011zzVar.aaa005 = 0;
        aaa011zzVar.aaa003 = new aaa010zz(ccc010zz.aaa083, (byte) 0, (byte) 0, ccc071zz.aaa005(str2));
        aaa011zz aaa011zzVar2 = this.aaa001;
        aaa011zzVar2.aaa000(aaa011zzVar2.aaa003);
    }

    void aaa000(boolean z, String str) {
        String str2;
        if (z) {
            str2 = TlvMap.SET_BUZZER_ENABLED_VALUE;
        } else {
            str2 = TlvMap.SET_BUZZER_DISABLED_VALUE;
        }
        String str3 = "DE" + ccc034zz.aaa001(str2.length() / 2) + str2;
        if (!ccc071zz.aaa006(str)) {
            this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "Invalid HEX string");
            return;
        }
        if (!str.equals("")) {
            if (ccc068zz.aaa002(str).size() == 0) {
                this.aaa000.aaa000(aaa003zz.aaa015zz.INVALID_TLV_FORMAT);
                return;
            }
            str3 = str3 + "DF3B" + ccc034zz.aaa001(str.length() / 2) + str;
        }
        aaa011zz aaa011zzVar = this.aaa001;
        aaa011zzVar.aaa005 = 0;
        aaa011zzVar.aaa003 = new aaa010zz(ccc010zz.aaa083, (byte) 0, (byte) 0, ccc071zz.aaa005(str3));
        aaa011zz aaa011zzVar2 = this.aaa001;
        aaa011zzVar2.aaa000(aaa011zzVar2.aaa003);
    }
}
