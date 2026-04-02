package com.stripe.bbpos.bbdevice;

import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.stripe.bbpos.bbdevice.aaa003zz;
import com.stripe.bbpos.bbdevice.ccc017zz;
import com.stripe.core.bbpos.BbposDeviceControllerImpl;
import com.stripe.hardware.emv.TlvMap;
import com.sun.jna.platform.win32.COM.tlb.imp.TlbConst;
import java.util.Hashtable;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
class aaa099zz extends aaa012zz {
    aaa099zz(aaa003zz aaa003zzVar, aaa011zz aaa011zzVar) {
        super(aaa003zzVar, aaa011zzVar);
    }

    void aaa000(Hashtable<String, String> hashtable) {
        String str;
        boolean z;
        boolean z2;
        Hashtable<String, Object> hashtable2 = new Hashtable<>();
        if (hashtable.containsKey("appIndex")) {
            String strSubstring = hashtable.get("appIndex");
            if (ccc071zz.aaa006(strSubstring)) {
                z = false;
            } else {
                hashtable2.put("appIndex", aaa003zz.aaa015zz.INVALID_VALUE);
                z = true;
            }
            if (z) {
                str = "";
            } else {
                if (strSubstring.length() > 8) {
                    strSubstring = strSubstring.substring(strSubstring.length() - 8);
                }
                while (strSubstring.length() < 8) {
                    strSubstring = TlbConst.TYPELIB_MINOR_VERSION_SHELL + strSubstring;
                }
                str = "DF837C" + ccc034zz.aaa001(strSubstring.length() / 2) + strSubstring;
            }
        } else {
            hashtable2.put("appIndex", aaa003zz.aaa015zz.INVALID_VALUE);
            str = "";
            z = true;
        }
        if (hashtable.containsKey("aid")) {
            String str2 = hashtable.get("aid");
            if (str2 == null || str2.equalsIgnoreCase("")) {
                str2 = "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF";
            }
            if (!ccc071zz.aaa006(str2)) {
                hashtable2.put("aid", aaa003zz.aaa015zz.INVALID_VALUE);
                z = true;
            }
            if (!z) {
                str = str + TlvMap.TAG_APPLICATION_ID + ccc034zz.aaa001(str2.length() / 2) + str2;
            }
        }
        boolean z3 = z;
        String str3 = str;
        ccc017zz ccc017zzVarAaa000 = ccc034zz.aaa000(hashtable, RemoteConfigConstants.RequestFieldKey.APP_VERSION, TlvMap.TAG_TERMINAL_APPLICATION_VERSION_NUMBER, true, true, 0, this.aaa000, false);
        ccc017zz.aaa000zz aaa000zzVarAaa000 = ccc017zzVarAaa000.aaa000();
        ccc017zz.aaa000zz aaa000zzVar = ccc017zz.aaa000zz.SUCCESS;
        if (aaa000zzVarAaa000 == aaa000zzVar) {
            if (!z3) {
                str3 = str3 + ccc017zzVarAaa000.aaa001();
            }
        } else if (ccc017zzVarAaa000.aaa000() == ccc017zz.aaa000zz.FAIL) {
            hashtable2.put(RemoteConfigConstants.RequestFieldKey.APP_VERSION, aaa003zz.aaa015zz.INVALID_VALUE);
            z3 = true;
        }
        ccc017zz ccc017zzVarAaa0002 = ccc034zz.aaa000(hashtable, "terminalFloorLimit", TlvMap.TAG_TERMINAL_FLOOR_LIMIT, true, true, 0, this.aaa000, false);
        if (ccc017zzVarAaa0002.aaa000() == aaa000zzVar) {
            if (!z3) {
                str3 = str3 + ccc017zzVarAaa0002.aaa001();
            }
        } else if (ccc017zzVarAaa0002.aaa000() == ccc017zz.aaa000zz.FAIL) {
            hashtable2.put("terminalFloorLimit", aaa003zz.aaa015zz.INVALID_VALUE);
            z3 = true;
        }
        ccc017zz ccc017zzVarAaa0003 = ccc034zz.aaa000(hashtable, "contactTACDefault", "DF8120", true, true, 0, this.aaa000, false);
        if (ccc017zzVarAaa0003.aaa000() == aaa000zzVar) {
            if (!z3) {
                str3 = str3 + ccc017zzVarAaa0003.aaa001();
            }
        } else if (ccc017zzVarAaa0003.aaa000() == ccc017zz.aaa000zz.FAIL) {
            hashtable2.put("contactTACDefault", aaa003zz.aaa015zz.INVALID_VALUE);
            z3 = true;
        }
        ccc017zz ccc017zzVarAaa0004 = ccc034zz.aaa000(hashtable, "contactTACDenial", "DF8121", true, true, 0, this.aaa000, false);
        if (ccc017zzVarAaa0004.aaa000() == aaa000zzVar) {
            if (!z3) {
                str3 = str3 + ccc017zzVarAaa0004.aaa001();
            }
        } else if (ccc017zzVarAaa0004.aaa000() == ccc017zz.aaa000zz.FAIL) {
            hashtable2.put("contactTACDenial", aaa003zz.aaa015zz.INVALID_VALUE);
            z3 = true;
        }
        ccc017zz ccc017zzVarAaa0005 = ccc034zz.aaa000(hashtable, "contactTACOnline", "DF8122", true, true, 0, this.aaa000, false);
        if (ccc017zzVarAaa0005.aaa000() == aaa000zzVar) {
            if (!z3) {
                str3 = str3 + ccc017zzVarAaa0005.aaa001();
            }
        } else if (ccc017zzVarAaa0005.aaa000() == ccc017zz.aaa000zz.FAIL) {
            hashtable2.put("contactTACOnline", aaa003zz.aaa015zz.INVALID_VALUE);
            z3 = true;
        }
        ccc017zz ccc017zzVarAaa0006 = ccc034zz.aaa000(hashtable, "defaultTDOL", TlvMap.TAG_TDOL, true, true, 0, this.aaa000, false);
        if (ccc017zzVarAaa0006.aaa000() == aaa000zzVar) {
            if (!z3) {
                str3 = str3 + ccc017zzVarAaa0006.aaa001();
            }
        } else if (ccc017zzVarAaa0006.aaa000() == ccc017zz.aaa000zz.FAIL) {
            hashtable2.put("defaultTDOL", aaa003zz.aaa015zz.INVALID_VALUE);
            z3 = true;
        }
        ccc017zz ccc017zzVarAaa0007 = ccc034zz.aaa000(hashtable, "defaultDDOL", TlvMap.TAG_DDOL, true, true, 0, this.aaa000, false);
        if (ccc017zzVarAaa0007.aaa000() == aaa000zzVar) {
            if (!z3) {
                str3 = str3 + ccc017zzVarAaa0007.aaa001();
            }
        } else if (ccc017zzVarAaa0007.aaa000() == ccc017zz.aaa000zz.FAIL) {
            hashtable2.put("defaultDDOL", aaa003zz.aaa015zz.INVALID_VALUE);
            z3 = true;
        }
        ccc017zz ccc017zzVarAaa0008 = ccc034zz.aaa000(hashtable, "contactlessTransactionLimit", "DF24", true, true, 0, this.aaa000, false);
        if (ccc017zzVarAaa0008.aaa000() == aaa000zzVar) {
            if (!z3) {
                str3 = str3 + ccc017zzVarAaa0008.aaa001();
            }
        } else if (ccc017zzVarAaa0008.aaa000() == ccc017zz.aaa000zz.FAIL) {
            hashtable2.put("contactlessTransactionLimit", aaa003zz.aaa015zz.INVALID_VALUE);
            z3 = true;
        }
        ccc017zz ccc017zzVarAaa0009 = ccc034zz.aaa000(hashtable, "contactlessCVMRequiredLimit", "DF26", true, true, 0, this.aaa000, false);
        if (ccc017zzVarAaa0009.aaa000() == aaa000zzVar) {
            if (!z3) {
                str3 = str3 + ccc017zzVarAaa0009.aaa001();
            }
        } else if (ccc017zzVarAaa0009.aaa000() == ccc017zz.aaa000zz.FAIL) {
            hashtable2.put("contactlessCVMRequiredLimit", aaa003zz.aaa015zz.INVALID_VALUE);
            z3 = true;
        }
        ccc017zz ccc017zzVarAaa00010 = ccc034zz.aaa000(hashtable, "contactlessFloorLimit", "DF23", true, true, 0, this.aaa000, false);
        if (ccc017zzVarAaa00010.aaa000() == aaa000zzVar) {
            if (!z3) {
                str3 = str3 + ccc017zzVarAaa00010.aaa001();
            }
        } else if (ccc017zzVarAaa00010.aaa000() == ccc017zz.aaa000zz.FAIL) {
            hashtable2.put("contactlessFloorLimit", aaa003zz.aaa015zz.INVALID_VALUE);
            z3 = true;
        }
        ccc017zz ccc017zzVarAaa00011 = ccc034zz.aaa000(hashtable, "contactlessTACDefault", "DF20", true, true, 0, this.aaa000, false);
        if (ccc017zzVarAaa00011.aaa000() == aaa000zzVar) {
            if (!z3) {
                str3 = str3 + ccc017zzVarAaa00011.aaa001();
            }
        } else if (ccc017zzVarAaa00011.aaa000() == ccc017zz.aaa000zz.FAIL) {
            hashtable2.put("contactlessTACDefault", aaa003zz.aaa015zz.INVALID_VALUE);
            z3 = true;
        }
        ccc017zz ccc017zzVarAaa00012 = ccc034zz.aaa000(hashtable, "contactlessTACDenial", "DF21", true, true, 0, this.aaa000, false);
        if (ccc017zzVarAaa00012.aaa000() == aaa000zzVar) {
            if (!z3) {
                str3 = str3 + ccc017zzVarAaa00012.aaa001();
            }
        } else if (ccc017zzVarAaa00012.aaa000() == ccc017zz.aaa000zz.FAIL) {
            hashtable2.put("contactlessTACDenial", aaa003zz.aaa015zz.INVALID_VALUE);
            z3 = true;
        }
        ccc017zz ccc017zzVarAaa00013 = ccc034zz.aaa000(hashtable, "contactlessTACOnline", "DF22", true, true, 0, this.aaa000, false);
        if (ccc017zzVarAaa00013.aaa000() == aaa000zzVar) {
            if (!z3) {
                str3 = str3 + ccc017zzVarAaa00013.aaa001();
            }
        } else if (ccc017zzVarAaa00013.aaa000() == ccc017zz.aaa000zz.FAIL) {
            hashtable2.put("contactlessTACOnline", aaa003zz.aaa015zz.INVALID_VALUE);
            z3 = true;
        }
        ccc017zz ccc017zzVarAaa00014 = ccc034zz.aaa000(hashtable, "contactlessTransactionLimitODCV", "DF25", true, true, 0, this.aaa000, false);
        if (ccc017zzVarAaa00014.aaa000() == aaa000zzVar) {
            if (!z3) {
                str3 = str3 + ccc017zzVarAaa00014.aaa001();
            }
        } else if (ccc017zzVarAaa00014.aaa000() == ccc017zz.aaa000zz.FAIL) {
            hashtable2.put("contactlessTransactionLimitODCV", aaa003zz.aaa015zz.INVALID_VALUE);
            z3 = true;
        }
        ccc017zz ccc017zzVarAaa00015 = ccc034zz.aaa000(hashtable, BbposDeviceControllerImpl.TERMINAL_CAPABILITIES_PARAM_NAME, TlvMap.TAG_TERMINAL_CAPABILITIES, true, true, 0, this.aaa000, false);
        if (ccc017zzVarAaa00015.aaa000() == aaa000zzVar) {
            if (!z3) {
                str3 = str3 + ccc017zzVarAaa00015.aaa001();
            }
        } else if (ccc017zzVarAaa00015.aaa000() == ccc017zz.aaa000zz.FAIL) {
            hashtable2.put(BbposDeviceControllerImpl.TERMINAL_CAPABILITIES_PARAM_NAME, aaa003zz.aaa015zz.INVALID_VALUE);
            z3 = true;
        }
        ccc017zz ccc017zzVarAaa00016 = ccc034zz.aaa000(hashtable, "terminalType", TlvMap.TAG_TERMINAL_TYPE, true, true, 0, this.aaa000, false);
        if (ccc017zzVarAaa00016.aaa000() == aaa000zzVar) {
            if (!z3) {
                str3 = str3 + ccc017zzVarAaa00016.aaa001();
            }
        } else if (ccc017zzVarAaa00016.aaa000() == ccc017zz.aaa000zz.FAIL) {
            hashtable2.put("terminalType", aaa003zz.aaa015zz.INVALID_VALUE);
            z3 = true;
        }
        if (hashtable.containsKey("contactlessKernelID")) {
            hashtable.put("contactlessKernelID", ccc071zz.aaa002(hashtable.get("contactlessKernelID"), 8));
        }
        ccc017zz ccc017zzVarAaa00017 = ccc034zz.aaa000(hashtable, "contactlessKernelID", "9F2A", true, true, 0, this.aaa000, false);
        if (ccc017zzVarAaa00017.aaa000() == aaa000zzVar) {
            if (!z3) {
                str3 = str3 + ccc017zzVarAaa00017.aaa001();
            }
        } else if (ccc017zzVarAaa00017.aaa000() == ccc017zz.aaa000zz.FAIL) {
            hashtable2.put("contactlessKernelID", aaa003zz.aaa015zz.INVALID_VALUE);
            z3 = true;
        }
        if (hashtable.containsKey("kernelConfigData")) {
            String str4 = hashtable.get("kernelConfigData");
            List<ccc067zz> listAaa000 = ccc068zz.aaa000(str4);
            if (listAaa000.size() == 0) {
                hashtable2.put("kernelConfigData", aaa003zz.aaa015zz.INVALID_VALUE);
            } else if (!z3) {
                if (hashtable.containsKey("aid")) {
                    String strAaa000 = ccc034zz.aaa000(listAaa000);
                    if (strAaa000.length() == str4.length()) {
                        str3 = str3 + ccc071zz.aaa002("EB", strAaa000);
                    } else {
                        hashtable2.put("kernelConfigData", aaa003zz.aaa015zz.INVALID_VALUE);
                    }
                } else {
                    hashtable2.put("aid", aaa003zz.aaa015zz.INVALID_VALUE);
                }
            }
            z3 = true;
        }
        if (hashtable.containsKey("dcpos")) {
            String str5 = hashtable.get("dcpos");
            List<ccc067zz> listAaa0002 = ccc068zz.aaa000(str5);
            if (listAaa0002.size() == 0) {
                hashtable2.put("dcpos", aaa003zz.aaa015zz.INVALID_VALUE);
            } else {
                if (!z3) {
                    if (hashtable.containsKey("aid")) {
                        String strAaa0002 = ccc034zz.aaa000(listAaa0002);
                        if (strAaa0002.length() == str5.length()) {
                            str3 = str3 + ccc071zz.aaa002("EC", strAaa0002);
                        } else {
                            hashtable2.put("dcpos", aaa003zz.aaa015zz.INVALID_VALUE);
                        }
                    } else {
                        hashtable2.put("aid", aaa003zz.aaa015zz.INVALID_VALUE);
                    }
                }
                z2 = z3;
            }
            z2 = true;
        } else {
            z2 = z3;
        }
        if (z2) {
            this.aaa000.aaa017(hashtable2);
        } else if (str3.equalsIgnoreCase("")) {
            this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "");
        } else {
            this.aaa001.aaa015(str3);
        }
    }
}
