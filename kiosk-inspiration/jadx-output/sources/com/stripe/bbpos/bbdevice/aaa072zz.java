package com.stripe.bbpos.bbdevice;

import com.stripe.bbpos.bbdevice.aaa003zz;
import com.stripe.hardware.emv.TlvMap;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
class aaa072zz extends aaa012zz {
    aaa072zz(aaa003zz aaa003zzVar, aaa011zz aaa011zzVar) {
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
        if (listAaa002.size() > 1) {
            this.aaa000.aaa026(str);
            return;
        }
        if (listAaa002.size() == 0) {
            this.aaa000.aaa000(aaa003zz.aaa015zz.INVALID_TLV_FORMAT, "");
            return;
        }
        try {
            i = Integer.parseInt(str, 16);
        } catch (Exception unused) {
            this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "");
            i = 0;
        }
        if (!str.equalsIgnoreCase(TlvMap.TAG_ACQUIRER_IDENTIFIER) && !str.equalsIgnoreCase(TlvMap.TAG_TERMINAL_COUNTRY_CODE) && !str.equalsIgnoreCase(TlvMap.TAG_TRANSACTION_CURRENCY_CODE) && !str.equalsIgnoreCase(TlvMap.TAG_TRANSACTION_CURRENCY_EXPONENT) && !str.equalsIgnoreCase(TlvMap.TAG_MERCHANT_NAME) && !str.equalsIgnoreCase(TlvMap.TAG_MERCHANT_IDENTIFIER) && !str.equalsIgnoreCase(TlvMap.TAG_TERMINAL_IDENTIFICATION) && !str.equalsIgnoreCase("DF8238") && !str.equalsIgnoreCase("DF8272") && !str.equalsIgnoreCase("DF8273") && !str.equalsIgnoreCase("DF8274") && !str.equalsIgnoreCase("DF8275") && !str.equalsIgnoreCase("DF8276") && !str.equalsIgnoreCase("DF8277") && !str.equalsIgnoreCase(TlvMap.TAG_TERMINAL_CAPABILITIES) && !str.equalsIgnoreCase(TlvMap.TAG_TERMINAL_TYPE) && !str.equalsIgnoreCase(TlvMap.TAG_STANDBY_MODE_TIMEOUT) && !str.equalsIgnoreCase(TlvMap.TAG_NORMAL_MODE_TIMEOUT) && !str.equalsIgnoreCase(TlvMap.TAG_BLUETOOTH_DISCOVERY_TIMEOUT) && !str.equalsIgnoreCase("DFDF02") && !str.equalsIgnoreCase("DFDF05") && !str.equalsIgnoreCase(TlvMap.TAG_VISA_DYNAMIC_READER_LIMIT) && !str.equalsIgnoreCase("DFDF45") && !str.equalsIgnoreCase("DFDF46") && !str.equalsIgnoreCase(TlvMap.TAG_SPOC_MODE_ENABLED) && !str.equalsIgnoreCase(TlvMap.TAG_ADDITIONAL_TERMINAL_CAPABILITIES) && !str.equalsIgnoreCase(TlvMap.TAG_DOMESTIC_DEBIT_AID_LIST) && (i < 14648320 || i > 14648447)) {
            this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "Tag " + str + " not allowed to read");
            return;
        }
        String str2 = "DF0A" + ccc034zz.aaa001(str.length() / 2) + str;
        aaa011zz aaa011zzVar = this.aaa001;
        aaa011zzVar.aaa005 = 0;
        aaa011zzVar.aaa003 = new aaa010zz(ccc010zz.bbb022, (byte) 0, (byte) 0, ccc071zz.aaa005(str2));
        aaa011zz aaa011zzVar2 = this.aaa001;
        aaa011zzVar2.aaa000(aaa011zzVar2.aaa003);
    }
}
