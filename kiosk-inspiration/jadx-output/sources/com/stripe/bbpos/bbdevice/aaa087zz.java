package com.stripe.bbpos.bbdevice;

import com.stripe.bbpos.bbdevice.aaa003zz;
import com.stripe.core.bbpos.BbposDeviceControllerImpl;
import java.util.Hashtable;

/* JADX INFO: loaded from: classes3.dex */
class aaa087zz extends aaa012zz {
    aaa087zz(aaa003zz aaa003zzVar, aaa011zz aaa011zzVar) {
        super(aaa003zzVar, aaa011zzVar);
    }

    boolean aaa000(Hashtable<String, Object> hashtable) {
        Object obj;
        int i;
        String str;
        boolean z;
        Object obj2;
        try {
            Object obj3 = hashtable.get(BbposDeviceControllerImpl.AMOUNT_PARAM_NAME);
            Object obj4 = hashtable.get("cashbackAmount");
            if (obj3 == null && obj4 == null) {
                if (hashtable.get("tipsAmount") == null) {
                    this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "");
                    return false;
                }
                str = "";
                obj = BbposDeviceControllerImpl.CURRENCY_EXPONENT_PARAM_NAME;
                z = false;
                i = 2;
            } else {
                Object obj5 = hashtable.get(BbposDeviceControllerImpl.CURRENCY_CODE_PARAM_NAME);
                Object obj6 = hashtable.get(BbposDeviceControllerImpl.TRANSACTION_TYPE_PARAM_NAME);
                Object obj7 = hashtable.get(BbposDeviceControllerImpl.CURRENCY_EXPONENT_PARAM_NAME);
                int[] iArr = new int[1];
                obj = BbposDeviceControllerImpl.CURRENCY_EXPONENT_PARAM_NAME;
                i = 2;
                String strAaa000 = ccc034zz.aaa000(obj3, obj4, obj5, obj6, iArr, obj7);
                if (strAaa000 == null && iArr[0] == 1) {
                    this.aaa000.aaa000(aaa003zz.aaa002zz.CASHBACK_NOT_SUPPORTED, "Cashback not supported");
                    return false;
                }
                if (strAaa000 == null && iArr[0] == 2) {
                    this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "currencyCode is missing");
                    return false;
                }
                if (strAaa000 == null && iArr[0] == 3) {
                    this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "transactionType is missing");
                    return false;
                }
                if (strAaa000 == null && iArr[0] == 4) {
                    this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "Invalid currencyExponent");
                    return false;
                }
                if (strAaa000 == null && iArr[0] == 5) {
                    this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "currencyExponent is out of range");
                    return false;
                }
                if (strAaa000 == null && iArr[0] == 6) {
                    this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "Invalid amount pattern");
                    return false;
                }
                if (strAaa000 == null && iArr[0] == 7) {
                    this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "Invalid cashbackAmount pattern");
                    return false;
                }
                if (strAaa000 == null && iArr[0] == 8) {
                    this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "\"amount\" does not accept empty string");
                    return false;
                }
                if (strAaa000 == null && iArr[0] == 9) {
                    this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "\"cashbackAmount\" does not accept empty string");
                    return false;
                }
                if (strAaa000 == null) {
                    this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "");
                    return false;
                }
                str = "" + strAaa000;
                z = true;
            }
            Object obj8 = hashtable.get(BbposDeviceControllerImpl.CURRENCY_CHARACTERS_PARAM_NAME);
            if (obj8 != null) {
                String str2 = "DF873A";
                if (this.aaa000.aaa011.aaa014().aaa005().equalsIgnoreCase("") || ccc071zz.aaa003(this.aaa000.aaa011.aaa014().aaa005()).startsWith("WPC2") || ccc071zz.aaa003(this.aaa000.aaa011.aaa014().aaa005()).startsWith("WPP2")) {
                    str2 = "DF32";
                }
                String strAaa0002 = ccc034zz.aaa000(obj8, str2);
                if (strAaa0002 != null) {
                    str = str + strAaa0002;
                } else {
                    this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "");
                    return false;
                }
            }
            Object obj9 = hashtable.get("tipsAmount");
            if (obj9 != null) {
                obj2 = obj;
                int[] iArr2 = new int[1];
                String strAaa0003 = ccc034zz.aaa000(obj9, hashtable.get(BbposDeviceControllerImpl.CURRENCY_CODE_PARAM_NAME), iArr2, hashtable.get(obj2), !z);
                if (strAaa0003 == null && iArr2[0] == i) {
                    this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "currencyCode is missing");
                    return false;
                }
                if (strAaa0003 == null && iArr2[0] == 4) {
                    this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "Invalid currencyExponent");
                    return false;
                }
                if (strAaa0003 == null && iArr2[0] == 5) {
                    this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "currencyExponent is out of range");
                    return false;
                }
                if (strAaa0003 == null && iArr2[0] == 6) {
                    this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "Invalid tipsAmount pattern");
                    return false;
                }
                if (strAaa0003 == null && iArr2[0] == 7) {
                    this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "\"tipsAmount\" does not accept empty string");
                    return false;
                }
                if (strAaa0003 == null) {
                    this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "");
                    return false;
                }
                str = str + strAaa0003;
            } else {
                obj2 = obj;
            }
            Object obj10 = hashtable.get("tipEligibleAmount");
            if (obj10 != null) {
                int[] iArr3 = new int[1];
                String strAaa0004 = ccc034zz.aaa000(obj10, "DF8928", hashtable.get(BbposDeviceControllerImpl.CURRENCY_CODE_PARAM_NAME), hashtable.get(obj2), iArr3);
                if (strAaa0004 == null && iArr3[0] == i) {
                    this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "currencyCode is missing");
                    return false;
                }
                if (strAaa0004 == null && iArr3[0] == 4) {
                    this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "invalid currencyExponent");
                    return false;
                }
                if (strAaa0004 == null && iArr3[0] == 5) {
                    this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "currencyExponent is out of range");
                    return false;
                }
                if (strAaa0004 == null && iArr3[0] == 6) {
                    this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "invalid tips eligible amount pattern");
                    return false;
                }
                if (strAaa0004 != null) {
                    str = str + strAaa0004;
                } else {
                    this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "invalid tipEligibleAmount");
                    return false;
                }
            }
            aaa011zz aaa011zzVar = this.aaa001;
            aaa011zzVar.aaa005 = 0;
            aaa011zzVar.aaa003 = new aaa010zz(ccc010zz.aaa063, (byte) 0, (byte) 0, ccc071zz.aaa005(str));
            aaa011zz aaa011zzVar2 = this.aaa001;
            aaa011zzVar2.aaa011 = false;
            aaa011zzVar2.aaa000(aaa011zzVar2.aaa003);
            return true;
        } catch (Exception unused) {
            this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "");
            return false;
        }
    }
}
