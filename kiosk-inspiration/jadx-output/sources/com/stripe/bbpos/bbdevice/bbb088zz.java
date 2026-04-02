package com.stripe.bbpos.bbdevice;

import com.stripe.bbpos.bbdevice.aaa003zz;
import java.util.Hashtable;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
class bbb088zz extends bbb005zz {
    bbb088zz(aaa003zz aaa003zzVar, aaa011zz aaa011zzVar) {
        super(aaa003zzVar, aaa011zzVar);
    }

    void aaa000(List<ccc067zz> list, boolean z) {
        aaa003zz.aaa009zz aaa009zzVar;
        ccc067zz ccc067zzVarAaa000 = ccc068zz.aaa000(list, "DF51");
        String strAaa000 = ccc071zz.aaa000(ccc068zz.aaa000(list, "CE"));
        String strAaa0002 = ccc071zz.aaa000(ccc068zz.aaa000(list, "DF05"));
        String strAaa0003 = ccc071zz.aaa000(ccc068zz.aaa000(list, "CA"));
        String strAaa0004 = ccc071zz.aaa000(ccc068zz.aaa000(list, "DF5C"));
        if (ccc067zzVarAaa000 == null) {
            this.aaa001.aaa000(ccc010zz.aaa036, (byte) 12);
            return;
        }
        try {
            switch (Integer.parseInt(ccc067zzVarAaa000.aaa001, 16)) {
                case 0:
                    aaa009zzVar = aaa003zz.aaa009zz.ENTERED;
                    break;
                case 1:
                    aaa009zzVar = aaa003zz.aaa009zz.CANCEL;
                    break;
                case 2:
                    aaa009zzVar = aaa003zz.aaa009zz.TIMEOUT;
                    break;
                case 3:
                    aaa009zzVar = aaa003zz.aaa009zz.KEY_ERROR;
                    break;
                case 4:
                    aaa009zzVar = aaa003zz.aaa009zz.BYPASS;
                    break;
                case 5:
                    aaa009zzVar = aaa003zz.aaa009zz.WRONG_PIN_LENGTH;
                    break;
                case 6:
                    aaa009zzVar = aaa003zz.aaa009zz.INCORRECT_PIN;
                    break;
                case 7:
                    this.aaa001.aaa000(ccc010zz.aaa036, (byte) 0);
                    this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "");
                    return;
                case 8:
                    aaa009zzVar = aaa003zz.aaa009zz.ICC_REMOVED;
                    break;
                default:
                    this.aaa001.aaa000(ccc010zz.aaa036, (byte) 12);
                    return;
            }
            Hashtable<String, String> hashtable = new Hashtable<>();
            hashtable.put("epb", strAaa000);
            hashtable.put("ksn", strAaa0002);
            hashtable.put("randomNumber", strAaa0003);
            hashtable.put("encWorkingKey", strAaa0004);
            this.aaa001.aaa000(ccc010zz.aaa036, (byte) 0);
            if (z) {
                return;
            }
            this.aaa000.aaa000(aaa009zzVar, hashtable);
        } catch (Exception unused) {
            this.aaa001.aaa000(ccc010zz.aaa036, (byte) 12);
        }
    }

    void aaa001(List<ccc067zz> list, boolean z) {
        aaa003zz.aaa009zz aaa009zzVar;
        ccc067zz ccc067zzVarAaa000 = ccc068zz.aaa000(list, "DF51");
        String strAaa000 = ccc071zz.aaa000(ccc068zz.aaa000(list, "CE"));
        String strAaa0002 = ccc071zz.aaa000(ccc068zz.aaa000(list, "DF05"));
        String strAaa0003 = ccc071zz.aaa000(ccc068zz.aaa000(list, "CA"));
        String strAaa0004 = ccc071zz.aaa000(ccc068zz.aaa000(list, "DF5C"));
        if (ccc067zzVarAaa000 == null) {
            this.aaa001.aaa000(ccc010zz.bbb061, (byte) 12);
            return;
        }
        try {
            switch (Integer.parseInt(ccc067zzVarAaa000.aaa001, 16)) {
                case 0:
                    aaa009zzVar = aaa003zz.aaa009zz.ENTERED;
                    break;
                case 1:
                    aaa009zzVar = aaa003zz.aaa009zz.CANCEL;
                    break;
                case 2:
                    aaa009zzVar = aaa003zz.aaa009zz.TIMEOUT;
                    break;
                case 3:
                    aaa009zzVar = aaa003zz.aaa009zz.KEY_ERROR;
                    break;
                case 4:
                    aaa009zzVar = aaa003zz.aaa009zz.BYPASS;
                    break;
                case 5:
                    aaa009zzVar = aaa003zz.aaa009zz.WRONG_PIN_LENGTH;
                    break;
                case 6:
                    aaa009zzVar = aaa003zz.aaa009zz.INCORRECT_PIN;
                    break;
                case 7:
                    this.aaa001.aaa000(ccc010zz.bbb061, (byte) 0);
                    this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "");
                    return;
                case 8:
                    aaa009zzVar = aaa003zz.aaa009zz.ICC_REMOVED;
                    break;
                default:
                    this.aaa001.aaa000(ccc010zz.bbb061, (byte) 12);
                    return;
            }
            Hashtable<String, String> hashtable = new Hashtable<>();
            hashtable.put("epb", strAaa000);
            hashtable.put("ksn", strAaa0002);
            hashtable.put("randomNumber", strAaa0003);
            hashtable.put("encWorkingKey", strAaa0004);
            this.aaa001.aaa000(ccc010zz.bbb061, (byte) 0);
            if (z) {
                return;
            }
            this.aaa000.aaa000(aaa009zzVar, hashtable);
        } catch (Exception unused) {
            this.aaa001.aaa000(ccc010zz.bbb061, (byte) 12);
        }
    }

    void aaa002(List<ccc067zz> list, boolean z) {
        aaa003zz.aaa009zz aaa009zzVar;
        ccc067zz ccc067zzVarAaa000 = ccc068zz.aaa000(list, "DF51");
        if (ccc067zzVarAaa000 == null) {
            this.aaa001.aaa000(ccc010zz.aaa038, (byte) 12);
            return;
        }
        try {
            int i = Integer.parseInt(ccc067zzVarAaa000.aaa001, 16);
            if (i == 0) {
                aaa009zzVar = aaa003zz.aaa009zz.ENTERED;
            } else if (i == 1) {
                aaa009zzVar = aaa003zz.aaa009zz.CANCEL;
            } else if (i == 2) {
                aaa009zzVar = aaa003zz.aaa009zz.TIMEOUT;
            } else if (i == 3) {
                aaa009zzVar = aaa003zz.aaa009zz.KEY_ERROR;
            } else {
                if (i != 4) {
                    this.aaa001.aaa000(ccc010zz.aaa038, (byte) 12);
                    return;
                }
                aaa009zzVar = aaa003zz.aaa009zz.BYPASS;
            }
            Hashtable<String, String> hashtable = new Hashtable<>();
            hashtable.put("epb", "");
            hashtable.put("ksn", "");
            hashtable.put("randomNumber", "");
            hashtable.put("encWorkingKey", "");
            this.aaa001.aaa000(ccc010zz.aaa038, (byte) 0);
            if (z) {
                return;
            }
            if (!this.aaa001.aaa013) {
                this.aaa000.aaa000(aaa009zzVar, hashtable);
            }
            this.aaa001.aaa013 = false;
        } catch (Exception unused) {
            this.aaa001.aaa000(ccc010zz.aaa038, (byte) 12);
        }
    }
}
