package com.stripe.bbpos.bbdevice;

import com.stripe.bbpos.bbdevice.BBDeviceController;
import com.stripe.bbpos.bbdevice.aaa003zz;
import com.stripe.core.bbpos.BbposDeviceControllerImpl;
import com.stripe.hardware.emv.TlvMap;
import com.sun.jna.platform.win32.COM.tlb.imp.TlbConst;
import java.util.Hashtable;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
class bbb045zz extends bbb005zz {
    bbb045zz(aaa003zz aaa003zzVar, aaa011zz aaa011zzVar) {
        super(aaa003zzVar, aaa011zzVar);
    }

    void aaa000(List<ccc067zz> list, boolean z) {
        String strSubstring;
        String strSubstring2;
        String str;
        ccc067zz ccc067zzVarAaa000 = ccc068zz.aaa000(list, TlvMap.TAG_AMOUNT_AUTHORIZED);
        ccc067zz ccc067zzVarAaa0002 = ccc068zz.aaa000(list, TlvMap.TAG_CASHBACK_AMOUNT);
        ccc067zz ccc067zzVarAaa0003 = ccc068zz.aaa000(list, TlvMap.TAG_TRANSACTION_CURRENCY_CODE);
        ccc067zz ccc067zzVarAaa0004 = ccc068zz.aaa000(list, TlvMap.TAG_TRANSACTION_CURRENCY_EXPONENT);
        ccc067zz ccc067zzVarAaa0005 = ccc068zz.aaa000(list, "DF53");
        ccc067zz ccc067zzVarAaa0006 = ccc068zz.aaa000(list, "DF861F");
        ccc067zz ccc067zzVarAaa0007 = ccc068zz.aaa000(list, "DF8923");
        if (ccc067zzVarAaa0005 == null) {
            this.aaa001.aaa000(ccc010zz.aaa062, (byte) 12);
            return;
        }
        try {
            int i = Integer.parseInt(ccc067zzVarAaa0005.aaa001, 16);
            if (i != 0) {
                if (i == 1) {
                    this.aaa001.aaa000(ccc010zz.aaa062, (byte) 0);
                    if (z) {
                        return;
                    }
                    this.aaa000.aaa000(BBDeviceController.AmountInputResult.CANCEL, new Hashtable<>());
                    return;
                }
                if (i == 2) {
                    this.aaa001.aaa000(ccc010zz.aaa062, (byte) 0);
                    if (z) {
                        return;
                    }
                    this.aaa000.aaa000(BBDeviceController.AmountInputResult.TIMEOUT, new Hashtable<>());
                    return;
                }
                if (i == 7) {
                    this.aaa001.aaa000(ccc010zz.aaa062, (byte) 0);
                    this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "");
                    return;
                }
                if (i == 8) {
                    this.aaa001.aaa000(ccc010zz.aaa062, (byte) 0);
                    if (z) {
                        return;
                    }
                    this.aaa000.aaa000(BBDeviceController.AmountInputResult.INVALID_AMOUNT, new Hashtable<>());
                    return;
                }
                if (i != 9) {
                    this.aaa001.aaa000(ccc010zz.aaa062, (byte) 12);
                    return;
                }
                this.aaa001.aaa000(ccc010zz.aaa062, (byte) 0);
                if (z) {
                    return;
                }
                this.aaa000.aaa000(BBDeviceController.AmountInputResult.CANCEL, new Hashtable<>());
                return;
            }
            if ((ccc067zzVarAaa000 == null && ccc067zzVarAaa0006 == null && ccc067zzVarAaa0002 == null) || ccc067zzVarAaa0003 == null || ccc067zzVarAaa0004 == null) {
                this.aaa001.aaa000(ccc010zz.aaa062, (byte) 12);
                return;
            }
            Hashtable<String, String> hashtable = new Hashtable<>();
            hashtable.put(BbposDeviceControllerImpl.CURRENCY_CODE_PARAM_NAME, ccc067zzVarAaa0003.aaa001);
            int i2 = Integer.parseInt(ccc067zzVarAaa0004.aaa001, 16);
            String strSubstring3 = null;
            if (i2 > 0) {
                if (ccc067zzVarAaa000 != null) {
                    String str2 = ccc067zzVarAaa000.aaa001;
                    str = str2.substring(0, str2.length() - i2) + "." + str2.substring(str2.length() - i2);
                } else {
                    str = null;
                }
                if (ccc067zzVarAaa0006 != null) {
                    String str3 = ccc067zzVarAaa0006.aaa001;
                    strSubstring2 = str3.substring(0, str3.length() - i2) + "." + str3.substring(str3.length() - i2);
                } else {
                    strSubstring2 = null;
                }
                if (ccc067zzVarAaa0002 != null) {
                    String str4 = ccc067zzVarAaa0002.aaa001;
                    strSubstring3 = str4.substring(0, str4.length() - i2) + "." + str4.substring(str4.length() - i2);
                }
                String str5 = strSubstring3;
                strSubstring3 = str;
                strSubstring = str5;
            } else {
                strSubstring = null;
                strSubstring2 = null;
            }
            if (strSubstring3 != null) {
                while (strSubstring3.startsWith(TlbConst.TYPELIB_MINOR_VERSION_SHELL) && !strSubstring3.startsWith("0.")) {
                    strSubstring3 = strSubstring3.substring(1);
                }
                hashtable.put(BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, strSubstring3);
            }
            if (strSubstring2 != null) {
                while (strSubstring2.startsWith(TlbConst.TYPELIB_MINOR_VERSION_SHELL) && !strSubstring2.startsWith("0.")) {
                    strSubstring2 = strSubstring2.substring(1);
                }
                hashtable.put("tipsAmount", strSubstring2);
            }
            if (strSubstring != null) {
                while (strSubstring.startsWith(TlbConst.TYPELIB_MINOR_VERSION_SHELL) && !strSubstring.startsWith("0.")) {
                    strSubstring = strSubstring.substring(1);
                }
                hashtable.put("cashbackAmount", strSubstring);
            }
            if (ccc067zzVarAaa0007 != null && ccc071zz.aaa008(ccc067zzVarAaa0007.aaa001)) {
                hashtable.put("tipSelectionType", ccc067zzVarAaa0007.aaa001);
            }
            this.aaa001.aaa000(ccc010zz.aaa062, (byte) 0);
            if (z) {
                return;
            }
            this.aaa000.aaa000(BBDeviceController.AmountInputResult.SUCCESS, hashtable);
        } catch (Exception unused) {
            this.aaa001.aaa000(ccc010zz.aaa062, (byte) 12);
        }
    }
}
