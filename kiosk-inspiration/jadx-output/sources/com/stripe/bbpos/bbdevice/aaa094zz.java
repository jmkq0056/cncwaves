package com.stripe.bbpos.bbdevice;

import com.stripe.bbpos.bbdevice.BBDeviceController;
import com.stripe.bbpos.bbdevice.aaa003zz;
import java.util.Collections;
import java.util.Hashtable;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
class aaa094zz extends aaa012zz {
    aaa094zz(aaa003zz aaa003zzVar, aaa011zz aaa011zzVar) {
        super(aaa003zzVar, aaa011zzVar);
    }

    void aaa000(Hashtable<String, Object> hashtable) {
        String str;
        String str2;
        try {
            Object obj = hashtable.get("nfcCardDetectionTimeout");
            if (obj != null) {
                String strAaa000 = ccc034zz.aaa000(obj, "DF60");
                if (strAaa000 != null) {
                    str = "" + strAaa000;
                } else {
                    this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "");
                    return;
                }
            } else {
                str = "";
            }
            List<ccc067zz> listEmptyList = Collections.emptyList();
            Object obj2 = hashtable.get("nfcOperationMode");
            if (obj2 != null) {
                String strAaa0002 = ccc034zz.aaa000(obj2, "DF8361");
                if (strAaa0002 != null) {
                    str = str + strAaa0002;
                    listEmptyList = ccc068zz.aaa000(strAaa0002);
                } else {
                    this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "");
                    return;
                }
            }
            Object obj3 = hashtable.get("vasTerminalMode");
            if (obj3 != null) {
                String strAaa0003 = ccc034zz.aaa000(obj3, "DF8610");
                if (strAaa0003 != null) {
                    str = str + strAaa0003;
                    try {
                        BBDeviceController.VASTerminalMode vASTerminalMode = (BBDeviceController.VASTerminalMode) obj3;
                        if (listEmptyList.size() > 0 && Integer.parseInt(listEmptyList.get(0).aaa001, 16) == 0 && (vASTerminalMode == BBDeviceController.VASTerminalMode.DUAL || vASTerminalMode == BBDeviceController.VASTerminalMode.SINGLE || vASTerminalMode == BBDeviceController.VASTerminalMode.PAYMENT)) {
                            this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "Invalid vasTerminalMode");
                            return;
                        }
                    } catch (Exception unused) {
                        this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "");
                        return;
                    }
                } else {
                    this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "");
                    return;
                }
            }
            Object obj4 = hashtable.get("vasMerchantConfigs");
            if (obj4 != null) {
                List list = (List) obj4;
                int i = 0;
                while (i < list.size() && i < 200) {
                    VASMerchantConfig vASMerchantConfig = (VASMerchantConfig) list.get(i);
                    BBDeviceController.VASProtocolMode vASProtocolMode = vASMerchantConfig.protocolMode;
                    if (vASProtocolMode != null) {
                        String strAaa0004 = ccc034zz.aaa000((Object) vASProtocolMode, "DF8620");
                        if (strAaa0004 != null) {
                            String str3 = "" + strAaa0004;
                            if (vASMerchantConfig.protocolMode == BBDeviceController.VASProtocolMode.URL && ((str2 = vASMerchantConfig.url) == null || str2.equals(""))) {
                                this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "Missing url");
                                return;
                            }
                            String str4 = vASMerchantConfig.merchantID;
                            if (str4 != null && !str4.equalsIgnoreCase("")) {
                                String strAaa0005 = ccc034zz.aaa000((Object) vASMerchantConfig.merchantID, "DF8611");
                                if (strAaa0005 != null) {
                                    String str5 = str3 + strAaa0005;
                                    i++;
                                    String strAaa0006 = ccc034zz.aaa000((Object) Integer.valueOf(i), "DF861A");
                                    if (strAaa0006 != null) {
                                        String str6 = str5 + strAaa0006;
                                        String str7 = vASMerchantConfig.url;
                                        if (str7 != null && !str7.equalsIgnoreCase("")) {
                                            String strAaa0007 = ccc034zz.aaa000((Object) vASMerchantConfig.url, "DF8612");
                                            if (strAaa0007 != null) {
                                                str6 = str6 + strAaa0007;
                                            } else {
                                                this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "Invalid url");
                                                return;
                                            }
                                        }
                                        String str8 = vASMerchantConfig.filter;
                                        if (str8 != null && !str8.equalsIgnoreCase("")) {
                                            String strAaa0008 = ccc034zz.aaa000((Object) vASMerchantConfig.filter, "DF8613");
                                            if (strAaa0008 != null) {
                                                str6 = str6 + strAaa0008;
                                            } else {
                                                this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "Invalid filter");
                                                return;
                                            }
                                        }
                                        if (!str6.equalsIgnoreCase("")) {
                                            str = str + "E6" + ccc034zz.aaa001(str6.length() / 2) + str6;
                                        }
                                    } else {
                                        this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "Invalid index");
                                        return;
                                    }
                                } else {
                                    this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "Invalid merchantID");
                                    return;
                                }
                            } else {
                                this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "Missing merchantID");
                                return;
                            }
                        } else {
                            this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "Invalid protocolMode");
                            return;
                        }
                    } else {
                        this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "Missing protocolMode");
                        return;
                    }
                }
            }
            aaa011zz aaa011zzVar = this.aaa001;
            aaa011zzVar.aaa005 = 0;
            aaa011zzVar.aaa003 = new aaa010zz(ccc010zz.bbb014, (byte) 0, (byte) 0, ccc071zz.aaa005(str));
            aaa011zz aaa011zzVar2 = this.aaa001;
            aaa011zzVar2.aaa000(aaa011zzVar2.aaa003);
        } catch (Exception unused2) {
            this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "");
        }
    }
}
