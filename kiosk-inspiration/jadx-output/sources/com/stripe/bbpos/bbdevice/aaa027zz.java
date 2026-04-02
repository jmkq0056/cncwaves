package com.stripe.bbpos.bbdevice;

import com.stripe.bbpos.bbdevice.BBDeviceController;
import com.stripe.bbpos.bbdevice.aaa003zz;
import com.sun.jna.platform.win32.COM.tlb.imp.TlbConst;
import java.util.Hashtable;
import java.util.Locale;

/* JADX INFO: loaded from: classes3.dex */
class aaa027zz extends aaa012zz {
    aaa027zz(aaa003zz aaa003zzVar, aaa011zz aaa011zzVar) {
        super(aaa003zzVar, aaa011zzVar);
    }

    void aaa000(Hashtable<String, Object> hashtable) {
        String strAaa000;
        if (!hashtable.containsKey("promptData") && !hashtable.containsKey("promptDataEnum") && !hashtable.containsKey("promptIcon") && !hashtable.containsKey("promptTone") && !hashtable.containsKey("promptAnimation")) {
            this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "promptData, promptDataEnum, promptIcon, promptTone and promptAnimation is missing");
            return;
        }
        Object obj = hashtable.get("promptData");
        String str = "";
        if (obj != null) {
            if (obj instanceof String) {
                if (!ccc071zz.aaa006((String) obj)) {
                    this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "invalid promptData");
                    return;
                }
                String strAaa0002 = ccc034zz.aaa000(obj, "DF8522");
                if (strAaa0002 != null) {
                    str = "" + strAaa0002;
                } else {
                    this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "invalid promptData");
                    return;
                }
            } else {
                this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "invalid promptData");
                return;
            }
        }
        Object obj2 = hashtable.get("promptDataEnum");
        if (obj2 != null) {
            if (obj2 instanceof String) {
                if (!ccc071zz.aaa006((String) obj2)) {
                    this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "invalid promptDataEnum");
                    return;
                }
                String strAaa0003 = ccc034zz.aaa000(obj2, "DF8747");
                if (strAaa0003 != null) {
                    str = str + strAaa0003;
                } else {
                    this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "invalid promptDataEnum");
                    return;
                }
            } else {
                this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "invalid promptDataEnum");
                return;
            }
        }
        Object obj3 = hashtable.get("option");
        if (obj3 != null) {
            if (obj3 instanceof BBDeviceController.DisplayPromptOption) {
                this.aaa000.aaa009 = (BBDeviceController.DisplayPromptOption) obj3;
                String strAaa0004 = ccc034zz.aaa000(obj3, "DF8523");
                if (strAaa0004 != null) {
                    String str2 = str + strAaa0004;
                    Object obj4 = hashtable.get("promptIcon");
                    if (obj4 != null) {
                        String strAaa0005 = ccc034zz.aaa000(obj4, "DF8737");
                        if (strAaa0005 != null) {
                            str2 = str2 + strAaa0005;
                        } else {
                            this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "invalid promptIcon");
                            return;
                        }
                    }
                    Object obj5 = hashtable.get("timeout");
                    Object[] array = hashtable.keySet().toArray();
                    int length = array.length;
                    int i = 0;
                    while (true) {
                        if (i >= length) {
                            break;
                        }
                        Object obj6 = array[i];
                        if (((String) obj6).toLowerCase(Locale.ROOT).endsWith("timeout")) {
                            obj5 = hashtable.get(obj6);
                            break;
                        }
                        i++;
                    }
                    if (obj5 != null) {
                        if (this.aaa000.aaa009 == BBDeviceController.DisplayPromptOption.DISPLAY_ONLY_WITHOUT_TIMEOUT) {
                            strAaa000 = ccc034zz.aaa000((Object) TlbConst.TYPELIB_MINOR_VERSION_SHELL, "DF8521");
                        } else {
                            strAaa000 = ccc034zz.aaa000(obj5, "DF8521");
                        }
                        if (strAaa000 != null) {
                            str2 = str2 + strAaa000;
                        } else {
                            this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "Invalid timeout");
                            return;
                        }
                    } else if (this.aaa000.aaa009 == BBDeviceController.DisplayPromptOption.DISPLAY_ONLY_WITHOUT_TIMEOUT) {
                        String strAaa0006 = ccc034zz.aaa000((Object) TlbConst.TYPELIB_MINOR_VERSION_SHELL, "DF8521");
                        if (strAaa0006 != null) {
                            str2 = str2 + strAaa0006;
                        } else {
                            this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "Invalid timeout");
                            return;
                        }
                    }
                    Object obj7 = hashtable.get("horizontalScrollSpeed");
                    if (obj7 != null) {
                        String strAaa0007 = ccc034zz.aaa000(obj7, "DF875D");
                        if (strAaa0007 != null) {
                            str2 = str2 + strAaa0007;
                        } else {
                            this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "invalid horizontalScrollSpeed");
                            return;
                        }
                    }
                    Object obj8 = hashtable.get("verticalScrollSpeed");
                    if (obj8 != null) {
                        String strAaa0008 = ccc034zz.aaa000(obj8, "DF877E");
                        if (strAaa0008 != null) {
                            str2 = str2 + strAaa0008;
                        } else {
                            this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "invalid verticalScrollSpeed");
                            return;
                        }
                    }
                    Object obj9 = hashtable.get("scrollDirection");
                    if (obj9 != null) {
                        String strAaa0009 = ccc034zz.aaa000(obj9, "DF8762");
                        if (strAaa0009 != null) {
                            str2 = str2 + strAaa0009;
                        } else {
                            this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "invalid scrollDirection");
                            return;
                        }
                    }
                    Object obj10 = hashtable.get("promptTone");
                    if (obj10 != null) {
                        String strAaa00010 = ccc034zz.aaa000(obj10, "DF876C");
                        if (strAaa00010 != null) {
                            str2 = str2 + strAaa00010;
                        } else {
                            this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "invalid promptTone");
                            return;
                        }
                    }
                    Object obj11 = hashtable.get("promptAnimation");
                    if (obj11 != null) {
                        String strAaa00011 = ccc034zz.aaa000(obj11, "DF876D");
                        if (strAaa00011 != null) {
                            str2 = str2 + strAaa00011;
                        } else {
                            this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "invalid promptAnimation");
                            return;
                        }
                    }
                    aaa011zz aaa011zzVar = this.aaa001;
                    aaa011zzVar.aaa005 = 0;
                    aaa011zzVar.aaa003 = new aaa010zz(ccc010zz.bbb090, (byte) 0, (byte) 0, ccc071zz.aaa005(str2));
                    aaa011zz aaa011zzVar2 = this.aaa001;
                    aaa011zzVar2.aaa000(aaa011zzVar2.aaa003);
                    return;
                }
                this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "Invalid option");
                return;
            }
            this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "Invalid option");
            return;
        }
        this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "option is missing");
    }
}
