package com.stripe.bbpos.bbdevice;

import com.stripe.bbpos.bbdevice.aaa003zz;
import com.stripe.hardware.emv.TlvMap;
import java.util.Hashtable;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
class bbb002zz extends aaa012zz {
    bbb002zz(aaa003zz aaa003zzVar, aaa011zz aaa011zzVar) {
        super(aaa003zzVar, aaa011zzVar);
    }

    void aaa000(String str) {
        int i;
        if (!ccc071zz.aaa006(str)) {
            this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "Invalid HEX string");
            return;
        }
        Hashtable<String, String> hashtableAaa002 = ccc068zz.aaa002(str);
        if (hashtableAaa002.size() > 1) {
            this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "Multiple TLV");
            return;
        }
        if (hashtableAaa002.size() == 0) {
            this.aaa000.aaa000(aaa003zz.aaa015zz.INVALID_TLV_FORMAT);
            return;
        }
        Map.Entry<String, String> next = hashtableAaa002.entrySet().iterator().next();
        String key = next.getKey();
        try {
            i = Integer.parseInt(key, 16);
        } catch (Exception unused) {
            this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "");
            i = 0;
        }
        if (key.equalsIgnoreCase(TlvMap.TAG_ACQUIRER_IDENTIFIER) || key.equalsIgnoreCase(TlvMap.TAG_TERMINAL_COUNTRY_CODE) || key.equalsIgnoreCase(TlvMap.TAG_TRANSACTION_CURRENCY_CODE) || key.equalsIgnoreCase(TlvMap.TAG_TRANSACTION_CURRENCY_EXPONENT) || key.equalsIgnoreCase(TlvMap.TAG_MERCHANT_NAME) || key.equalsIgnoreCase(TlvMap.TAG_MERCHANT_IDENTIFIER) || key.equalsIgnoreCase(TlvMap.TAG_TERMINAL_IDENTIFICATION) || key.equalsIgnoreCase("DF8238") || key.equalsIgnoreCase("DF8272") || key.equalsIgnoreCase("DF8273") || key.equalsIgnoreCase("DF8274") || key.equalsIgnoreCase("DF8275") || key.equalsIgnoreCase("DF8276") || key.equalsIgnoreCase("DF8277") || key.equalsIgnoreCase(TlvMap.TAG_STANDBY_MODE_TIMEOUT) || key.equalsIgnoreCase(TlvMap.TAG_NORMAL_MODE_TIMEOUT) || key.equalsIgnoreCase(TlvMap.TAG_BLUETOOTH_DISCOVERY_TIMEOUT) || key.equalsIgnoreCase("DFDF02") || key.equalsIgnoreCase("DFDF05") || key.equalsIgnoreCase(TlvMap.TAG_VISA_DYNAMIC_READER_LIMIT) || key.equalsIgnoreCase("DFDF45") || key.equalsIgnoreCase("DFDF46")) {
            String value = next.getValue();
            if (key.equalsIgnoreCase(TlvMap.TAG_ACQUIRER_IDENTIFIER)) {
                if (value.length() != 12) {
                    this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "The length of 9F01 is not equal to 6");
                    return;
                }
            } else if (key.equalsIgnoreCase(TlvMap.TAG_TERMINAL_COUNTRY_CODE)) {
                if (value.length() != 4) {
                    this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "The length of 9F1A is not equal to 2");
                    return;
                }
            } else if (key.equalsIgnoreCase(TlvMap.TAG_TRANSACTION_CURRENCY_CODE)) {
                if (value.length() != 4) {
                    this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "The length of 5F2A is not equal to 2");
                    return;
                }
            } else if (key.equalsIgnoreCase(TlvMap.TAG_TRANSACTION_CURRENCY_EXPONENT)) {
                if (value.length() != 2) {
                    this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "The length of 5F36 is not equal to 1");
                    return;
                }
            } else if (!key.equalsIgnoreCase(TlvMap.TAG_MERCHANT_NAME)) {
                if (key.equalsIgnoreCase(TlvMap.TAG_MERCHANT_IDENTIFIER)) {
                    if (value.length() != 30) {
                        this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "The length of 9F16 is not equal to 15");
                        return;
                    }
                } else if (key.equalsIgnoreCase(TlvMap.TAG_TERMINAL_IDENTIFICATION)) {
                    if (value.length() != 16) {
                        this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "The length of 9F1C is not equal to 8");
                        return;
                    }
                } else if (key.equalsIgnoreCase(TlvMap.TAG_STANDBY_MODE_TIMEOUT)) {
                    if (value.length() != 2) {
                        this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "The length of DF8367 is not equal to 1");
                        return;
                    }
                } else if (key.equalsIgnoreCase(TlvMap.TAG_NORMAL_MODE_TIMEOUT)) {
                    if (value.length() != 2 && value.length() != 8) {
                        this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "The length of DF8370 is not equal to 1 or 4");
                        return;
                    }
                } else if (key.equalsIgnoreCase(TlvMap.TAG_BLUETOOTH_DISCOVERY_TIMEOUT) && value.length() != 2) {
                    this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "The length of DF837B is not equal to 1");
                    return;
                }
            }
        } else if (i < 14648320 || i > 14648447) {
            this.aaa000.aaa000(aaa003zz.aaa015zz.TAG_NOT_ALLOWED_TO_ACCESS);
            return;
        }
        String str2 = "E0" + ccc034zz.aaa001(str.length() / 2) + str;
        aaa011zz aaa011zzVar = this.aaa001;
        aaa011zzVar.aaa005 = 0;
        aaa011zzVar.aaa003 = new aaa010zz(ccc010zz.bbb024, (byte) 0, (byte) 0, ccc071zz.aaa005(str2));
        aaa011zz aaa011zzVar2 = this.aaa001;
        aaa011zzVar2.aaa000(aaa011zzVar2.aaa003);
    }
}
