package com.stripe.bbpos.bbdevice;

import com.stripe.bbpos.bbdevice.aaa003zz;
import com.stripe.hardware.emv.TlvMap;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
class aaa071zz extends aaa012zz {
    aaa071zz(aaa003zz aaa003zzVar, aaa011zz aaa011zzVar) {
        super(aaa003zzVar, aaa011zzVar);
    }

    void aaa000(String str) {
        int i;
        if (str.length() == 0 || str.length() % 2 != 0) {
            this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "");
            return;
        }
        if (!ccc071zz.aaa006(str)) {
            this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "Invalid HEX string");
            return;
        }
        List<String> listAaa002 = ccc071zz.aaa002(str);
        if (listAaa002.size() <= 0) {
            this.aaa000.aaa000(aaa003zz.aaa015zz.INVALID_TLV_FORMAT, "");
            return;
        }
        if (this.aaa000.aaa006 == aaa003zz.aaa016zz.GENERAL) {
            for (int i2 = 0; i2 < listAaa002.size(); i2++) {
                String str2 = listAaa002.get(i2);
                try {
                    i = Integer.parseInt(str2, 16);
                } catch (Exception unused) {
                    this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "");
                    i = 0;
                }
                if (!str2.equalsIgnoreCase(TlvMap.TAG_ACQUIRER_IDENTIFIER) && !str2.equalsIgnoreCase(TlvMap.TAG_TERMINAL_COUNTRY_CODE) && !str2.equalsIgnoreCase(TlvMap.TAG_TRANSACTION_CURRENCY_CODE) && !str2.equalsIgnoreCase(TlvMap.TAG_TRANSACTION_CURRENCY_EXPONENT) && !str2.equalsIgnoreCase(TlvMap.TAG_MERCHANT_NAME) && !str2.equalsIgnoreCase(TlvMap.TAG_MERCHANT_IDENTIFIER) && !str2.equalsIgnoreCase(TlvMap.TAG_TERMINAL_IDENTIFICATION) && !str2.equalsIgnoreCase("DF8238") && !str2.equalsIgnoreCase("DF8272") && !str2.equalsIgnoreCase("DF8273") && !str2.equalsIgnoreCase("DF8274") && !str2.equalsIgnoreCase("DF8275") && !str2.equalsIgnoreCase("DF8276") && !str2.equalsIgnoreCase("DF8277") && !str2.equalsIgnoreCase(TlvMap.TAG_TERMINAL_CAPABILITIES) && !str2.equalsIgnoreCase(TlvMap.TAG_TERMINAL_TYPE) && !str2.equalsIgnoreCase(TlvMap.TAG_STANDBY_MODE_TIMEOUT) && !str2.equalsIgnoreCase(TlvMap.TAG_NORMAL_MODE_TIMEOUT) && !str2.equalsIgnoreCase(TlvMap.TAG_BLUETOOTH_DISCOVERY_TIMEOUT) && !str2.equalsIgnoreCase("DFDF02") && !str2.equalsIgnoreCase("DFDF05") && !str2.equalsIgnoreCase(TlvMap.TAG_VISA_DYNAMIC_READER_LIMIT) && !str2.equalsIgnoreCase("DFDF45") && !str2.equalsIgnoreCase("DFDF46") && !str2.equalsIgnoreCase(TlvMap.TAG_SPOC_MODE_ENABLED) && !str2.equalsIgnoreCase(TlvMap.TAG_ADDITIONAL_TERMINAL_CAPABILITIES) && !str2.equalsIgnoreCase(TlvMap.TAG_DOMESTIC_DEBIT_AID_LIST) && (i < 14648320 || i > 14648447)) {
                    this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "Tag " + str2 + " not allowed to read");
                    return;
                }
            }
        }
        String str3 = "DF0A" + ccc034zz.aaa001(str.length() / 2) + str;
        aaa011zz aaa011zzVar = this.aaa001;
        aaa011zzVar.aaa005 = 0;
        aaa011zzVar.aaa003 = new aaa010zz(ccc010zz.bbb022, (byte) 0, (byte) 0, ccc071zz.aaa005(str3));
        aaa011zz aaa011zzVar2 = this.aaa001;
        aaa011zzVar2.aaa000(aaa011zzVar2.aaa003);
    }
}
