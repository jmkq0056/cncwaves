package com.stripe.bbpos.bbdevice;

import com.stripe.bbpos.bbdevice.BBDeviceController;
import com.stripe.bbpos.bbdevice.aaa003zz;
import com.stripe.bbpos.bbdevice.ccc039zz;
import java.util.Arrays;
import java.util.Hashtable;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
class bbb096zz extends bbb005zz {
    bbb096zz(aaa003zz aaa003zzVar, aaa011zz aaa011zzVar) {
        super(aaa003zzVar, aaa011zzVar);
    }

    void aaa000(List<ccc067zz> list) {
        aaa003zz.aaa015zz aaa015zzVar;
        aaa003zz.aaa015zz aaa015zzVar2;
        Object[] objArr;
        aaa003zz.aaa015zz aaa015zzVar3;
        BBDeviceController.TerminalSettingStatus terminalSettingStatus;
        aaa003zz.aaa015zz aaa015zzVar4;
        aaa003zz.aaa015zz aaa015zzVar5;
        String str;
        ccc067zz ccc067zzVarAaa000 = ccc068zz.aaa000(list, "DF54");
        ccc067zz ccc067zzVarAaa0002 = ccc068zz.aaa000(list, "DE");
        ccc067zz ccc067zzVarAaa0003 = ccc068zz.aaa000(list, "E0");
        ccc067zz ccc067zzVarAaa0004 = ccc068zz.aaa000(list, "E1");
        ccc067zz ccc067zzVarAaa0005 = ccc068zz.aaa000(list, "E3");
        ccc067zz ccc067zzVarAaa0006 = ccc068zz.aaa000(list, "E4");
        int i = 0;
        if (ccc067zzVarAaa000 != null && ccc067zzVarAaa0004 == null && ccc067zzVarAaa0005 == null && ccc067zzVarAaa0006 == null) {
            try {
                switch (Integer.parseInt(ccc067zzVarAaa000.aaa001, 16)) {
                    case 0:
                        aaa015zzVar5 = aaa003zz.aaa015zz.SUCCESS;
                        break;
                    case 1:
                        aaa015zzVar5 = aaa003zz.aaa015zz.TAG_NOT_FOUND;
                        break;
                    case 2:
                        aaa015zzVar5 = aaa003zz.aaa015zz.INVALID_LENGTH;
                        break;
                    case 3:
                        aaa015zzVar5 = aaa003zz.aaa015zz.BOOTLOADER_NOT_SUPPORTED;
                        break;
                    case 4:
                    default:
                        aaa015zzVar5 = aaa003zz.aaa015zz.UNKNOWN;
                        break;
                    case 5:
                        aaa015zzVar5 = aaa003zz.aaa015zz.TAG_NOT_ALLOWED_TO_ACCESS;
                        break;
                    case 6:
                        aaa015zzVar5 = aaa003zz.aaa015zz.USER_DEFINED_DATA_NOT_ENALBLED;
                        break;
                    case 7:
                        aaa015zzVar5 = aaa003zz.aaa015zz.TAG_NOT_WRITTEN_CORRECTLY;
                        break;
                    case 8:
                        aaa015zzVar5 = aaa003zz.aaa015zz.INVALID_VALUE;
                        break;
                    case 9:
                        aaa015zzVar5 = aaa003zz.aaa015zz.TAG_NOT_UPDATED;
                        break;
                }
                if (aaa015zzVar5 == aaa003zz.aaa015zz.SUCCESS) {
                    str = "";
                    while (i < list.size()) {
                        ccc067zz ccc067zzVar = list.get(i);
                        if (!ccc067zzVar.aaa000.equalsIgnoreCase("DF54")) {
                            if (str.equals("")) {
                                str = ccc067zzVar.aaa001;
                            } else if (!ccc067zzVar.aaa003) {
                                str = ccc067zzVar.aaa001;
                            }
                        }
                        i++;
                    }
                    if (str.equals("")) {
                        this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "");
                        return;
                    }
                } else {
                    str = "";
                }
                this.aaa000.aaa000(aaa015zzVar5, str);
                return;
            } catch (Exception unused) {
                this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "");
                return;
            }
        }
        if (ccc067zzVarAaa0002 == null) {
            if (ccc067zzVarAaa000 == null || ccc067zzVarAaa0004 == null) {
                this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "");
                return;
            }
            Hashtable<String, String> hashtableAaa002 = ccc068zz.aaa002(ccc067zzVarAaa0004.aaa001);
            try {
                int i2 = Integer.parseInt(ccc067zzVarAaa000.aaa001, 16);
                Hashtable<String, Object> hashtable = new Hashtable<>();
                if (i2 == 0) {
                    hashtable.putAll(hashtableAaa002);
                    this.aaa000.aaa016(hashtable);
                    return;
                }
                if (i2 != 1 && i2 != 2 && i2 != 3 && i2 != 5 && i2 != 6) {
                    this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "");
                    return;
                }
                Object[] array = hashtableAaa002.keySet().toArray();
                Arrays.sort(array);
                for (Object obj : array) {
                    try {
                        switch (Integer.parseInt(hashtableAaa002.get(obj), 16)) {
                            case 0:
                                aaa015zzVar = aaa003zz.aaa015zz.SUCCESS;
                                break;
                            case 1:
                                aaa015zzVar = aaa003zz.aaa015zz.TAG_NOT_FOUND;
                                break;
                            case 2:
                                aaa015zzVar = aaa003zz.aaa015zz.INVALID_LENGTH;
                                break;
                            case 3:
                                aaa015zzVar = aaa003zz.aaa015zz.BOOTLOADER_NOT_SUPPORTED;
                                break;
                            case 4:
                            default:
                                aaa015zzVar = aaa003zz.aaa015zz.UNKNOWN;
                                break;
                            case 5:
                                aaa015zzVar = aaa003zz.aaa015zz.TAG_NOT_ALLOWED_TO_ACCESS;
                                break;
                            case 6:
                                aaa015zzVar = aaa003zz.aaa015zz.USER_DEFINED_DATA_NOT_ENALBLED;
                                break;
                            case 7:
                                aaa015zzVar = aaa003zz.aaa015zz.TAG_NOT_WRITTEN_CORRECTLY;
                                break;
                            case 8:
                                aaa015zzVar = aaa003zz.aaa015zz.INVALID_VALUE;
                                break;
                            case 9:
                                aaa015zzVar = aaa003zz.aaa015zz.TAG_NOT_UPDATED;
                                break;
                        }
                        hashtable.put((String) obj, aaa015zzVar);
                    } catch (Exception unused2) {
                        this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "");
                        return;
                    }
                }
                this.aaa000.aaa016(hashtable);
                return;
            } catch (Exception unused3) {
                this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "");
                return;
            }
        }
        if (ccc067zzVarAaa0003 != null) {
            Hashtable<String, String> hashtableAaa0022 = ccc068zz.aaa002(ccc067zzVarAaa0003.aaa001);
            try {
                int i3 = Integer.parseInt(ccc067zzVarAaa0002.aaa001, 16);
                if (i3 == 0) {
                    Object[] array2 = hashtableAaa0022.keySet().toArray();
                    Arrays.sort(array2);
                    if (array2.length > 0) {
                        Object obj2 = array2[0];
                        Hashtable<String, Object> hashtable2 = new Hashtable<>();
                        hashtable2.put((String) obj2, hashtableAaa0022.get(obj2));
                        this.aaa000.aaa016(hashtable2);
                        return;
                    }
                    return;
                }
                if (i3 != 1) {
                    this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "");
                    return;
                }
                Object[] array3 = hashtableAaa0022.keySet().toArray();
                Arrays.sort(array3);
                if (array3.length > 0) {
                    Object obj3 = array3[0];
                    try {
                        switch (Integer.parseInt(hashtableAaa0022.get(obj3), 16)) {
                            case 0:
                                aaa015zzVar4 = aaa003zz.aaa015zz.SUCCESS;
                                break;
                            case 1:
                                aaa015zzVar4 = aaa003zz.aaa015zz.TAG_NOT_FOUND;
                                break;
                            case 2:
                                aaa015zzVar4 = aaa003zz.aaa015zz.INVALID_LENGTH;
                                break;
                            case 3:
                                aaa015zzVar4 = aaa003zz.aaa015zz.BOOTLOADER_NOT_SUPPORTED;
                                break;
                            case 4:
                            default:
                                aaa015zzVar4 = aaa003zz.aaa015zz.UNKNOWN;
                                break;
                            case 5:
                                aaa015zzVar4 = aaa003zz.aaa015zz.TAG_NOT_ALLOWED_TO_ACCESS;
                                break;
                            case 6:
                                aaa015zzVar4 = aaa003zz.aaa015zz.USER_DEFINED_DATA_NOT_ENALBLED;
                                break;
                            case 7:
                                aaa015zzVar4 = aaa003zz.aaa015zz.TAG_NOT_WRITTEN_CORRECTLY;
                                break;
                            case 8:
                                aaa015zzVar4 = aaa003zz.aaa015zz.INVALID_VALUE;
                                break;
                            case 9:
                                aaa015zzVar4 = aaa003zz.aaa015zz.TAG_NOT_UPDATED;
                                break;
                        }
                        Hashtable<String, Object> hashtable3 = new Hashtable<>();
                        hashtable3.put((String) obj3, aaa015zzVar4);
                        this.aaa000.aaa016(hashtable3);
                        return;
                    } catch (Exception unused4) {
                        this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "");
                        return;
                    }
                }
                return;
            } catch (Exception unused5) {
                this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "");
                return;
            }
        }
        if (ccc067zzVarAaa0005 == null || ccc067zzVarAaa0006 == null) {
            if (ccc067zzVarAaa0004 == null || this.aaa000.aaa006 != aaa003zz.aaa016zz.GENERAL) {
                this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "");
                return;
            }
            Hashtable<String, String> hashtableAaa0023 = ccc068zz.aaa002(ccc067zzVarAaa0004.aaa001);
            try {
                int i4 = Integer.parseInt(ccc067zzVarAaa0002.aaa001, 16);
                Hashtable<String, Object> hashtable4 = new Hashtable<>();
                if (i4 == 0) {
                    hashtable4.putAll(hashtableAaa0023);
                    this.aaa000.aaa016(hashtable4);
                    return;
                }
                if (i4 != 1) {
                    this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "");
                    return;
                }
                Object[] array4 = hashtableAaa0023.keySet().toArray();
                Arrays.sort(array4);
                for (Object obj4 : array4) {
                    try {
                        switch (Integer.parseInt(hashtableAaa0023.get(obj4), 16)) {
                            case 0:
                                aaa015zzVar2 = aaa003zz.aaa015zz.SUCCESS;
                                break;
                            case 1:
                                aaa015zzVar2 = aaa003zz.aaa015zz.TAG_NOT_FOUND;
                                break;
                            case 2:
                                aaa015zzVar2 = aaa003zz.aaa015zz.INVALID_LENGTH;
                                break;
                            case 3:
                                aaa015zzVar2 = aaa003zz.aaa015zz.BOOTLOADER_NOT_SUPPORTED;
                                break;
                            case 4:
                            default:
                                aaa015zzVar2 = aaa003zz.aaa015zz.UNKNOWN;
                                break;
                            case 5:
                                aaa015zzVar2 = aaa003zz.aaa015zz.TAG_NOT_ALLOWED_TO_ACCESS;
                                break;
                            case 6:
                                aaa015zzVar2 = aaa003zz.aaa015zz.USER_DEFINED_DATA_NOT_ENALBLED;
                                break;
                            case 7:
                                aaa015zzVar2 = aaa003zz.aaa015zz.TAG_NOT_WRITTEN_CORRECTLY;
                                break;
                            case 8:
                                aaa015zzVar2 = aaa003zz.aaa015zz.INVALID_VALUE;
                                break;
                            case 9:
                                aaa015zzVar2 = aaa003zz.aaa015zz.TAG_NOT_UPDATED;
                                break;
                        }
                        hashtable4.put((String) obj4, aaa015zzVar2);
                    } catch (Exception unused6) {
                        this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "");
                        return;
                    }
                }
                this.aaa000.aaa016(hashtable4);
                return;
            } catch (Exception unused7) {
                this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "");
                return;
            }
        }
        Hashtable<String, String> hashtableAaa0024 = ccc068zz.aaa002(ccc067zzVarAaa0005.aaa001);
        Hashtable<String, String> hashtableAaa0025 = ccc068zz.aaa002(ccc067zzVarAaa0006.aaa001);
        Hashtable<String, Object> hashtable5 = new Hashtable<>();
        Hashtable hashtable6 = new Hashtable();
        Object[] array5 = hashtableAaa0024.keySet().toArray();
        Arrays.sort(array5);
        for (Object obj5 : array5) {
            String str2 = (String) obj5;
            String strSubstring = hashtableAaa0024.get(str2);
            try {
                if (this.aaa000.aaa006 == aaa003zz.aaa016zz.AID) {
                    if (str2.equalsIgnoreCase("9F2A") && strSubstring != null && strSubstring.length() > 2) {
                        strSubstring = strSubstring.substring(0, 2);
                    }
                    if (this.aaa000.aaa011.aaa002().aaa007() == ccc039zz.aaa001zz.READ_AID_DIRECTLY) {
                        hashtable5.put(str2, strSubstring);
                    } else if (str2.equalsIgnoreCase("EC")) {
                        hashtable6.putAll(aaa003zz.aaa001(strSubstring));
                    } else {
                        hashtable5.put(ccc034zz.aaa000(str2), strSubstring);
                    }
                } else {
                    hashtable5.put(str2, strSubstring);
                }
            } catch (Exception unused8) {
                this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "");
                return;
            }
        }
        Object[] array6 = hashtableAaa0025.keySet().toArray();
        Arrays.sort(array6);
        int length = array6.length;
        int i5 = 0;
        while (i5 < length) {
            Object obj6 = array6[i5];
            String str3 = (String) obj6;
            try {
                if (str3.equals("EC")) {
                    Hashtable<String, String> hashtableAaa001 = aaa003zz.aaa001(hashtableAaa0025.get(obj6));
                    Object[] array7 = hashtableAaa001.keySet().toArray();
                    Arrays.sort(array7);
                    int length2 = array7.length;
                    int i6 = i;
                    while (i6 < length2) {
                        Object obj7 = array7[i6];
                        switch (Integer.parseInt(hashtableAaa001.get(obj7), 16)) {
                            case 0:
                                terminalSettingStatus = BBDeviceController.TerminalSettingStatus.SUCCESS;
                                break;
                            case 1:
                                terminalSettingStatus = BBDeviceController.TerminalSettingStatus.TAG_NOT_FOUND;
                                break;
                            case 2:
                                terminalSettingStatus = BBDeviceController.TerminalSettingStatus.LENGTH_INCORRECT;
                                break;
                            case 3:
                                terminalSettingStatus = BBDeviceController.TerminalSettingStatus.TLV_INCORRECT;
                                break;
                            case 4:
                                terminalSettingStatus = BBDeviceController.TerminalSettingStatus.BOOTLOADER_NOT_SUPPORT;
                                break;
                            case 5:
                                terminalSettingStatus = BBDeviceController.TerminalSettingStatus.TAG_NOT_ALLOWED_TO_ACCESS;
                                break;
                            case 6:
                                terminalSettingStatus = BBDeviceController.TerminalSettingStatus.USER_DEFINED_DATA_NOT_ENALBLED;
                                break;
                            case 7:
                                terminalSettingStatus = BBDeviceController.TerminalSettingStatus.TAG_NOT_WRITTEN_CORRECTLY;
                                break;
                            case 8:
                                terminalSettingStatus = BBDeviceController.TerminalSettingStatus.INVALID_VALUE;
                                break;
                            case 9:
                                terminalSettingStatus = BBDeviceController.TerminalSettingStatus.TAG_NOT_UPDATED;
                                break;
                            default:
                                terminalSettingStatus = BBDeviceController.TerminalSettingStatus.UNKNOWN;
                                break;
                        }
                        Object[] objArr2 = array6;
                        if (this.aaa000.aaa006 == aaa003zz.aaa016zz.AID) {
                            hashtable6.put((String) obj7, terminalSettingStatus);
                        }
                        i6++;
                        array6 = objArr2;
                    }
                    objArr = array6;
                } else {
                    objArr = array6;
                    switch (Integer.parseInt(hashtableAaa0025.get(obj6), 16)) {
                        case 0:
                            aaa015zzVar3 = aaa003zz.aaa015zz.SUCCESS;
                            break;
                        case 1:
                            aaa015zzVar3 = aaa003zz.aaa015zz.TAG_NOT_FOUND;
                            break;
                        case 2:
                            aaa015zzVar3 = aaa003zz.aaa015zz.INVALID_LENGTH;
                            break;
                        case 3:
                            aaa015zzVar3 = aaa003zz.aaa015zz.BOOTLOADER_NOT_SUPPORTED;
                            break;
                        case 4:
                        default:
                            aaa015zzVar3 = aaa003zz.aaa015zz.UNKNOWN;
                            break;
                        case 5:
                            aaa015zzVar3 = aaa003zz.aaa015zz.TAG_NOT_ALLOWED_TO_ACCESS;
                            break;
                        case 6:
                            aaa015zzVar3 = aaa003zz.aaa015zz.USER_DEFINED_DATA_NOT_ENALBLED;
                            break;
                        case 7:
                            aaa015zzVar3 = aaa003zz.aaa015zz.TAG_NOT_WRITTEN_CORRECTLY;
                            break;
                        case 8:
                            aaa015zzVar3 = aaa003zz.aaa015zz.INVALID_VALUE;
                            break;
                        case 9:
                            aaa015zzVar3 = aaa003zz.aaa015zz.TAG_NOT_UPDATED;
                            break;
                    }
                    aaa003zz aaa003zzVar = this.aaa000;
                    if (aaa003zzVar.aaa006 != aaa003zz.aaa016zz.AID) {
                        hashtable5.put(str3, aaa015zzVar3);
                    } else if (aaa003zzVar.aaa011.aaa002().aaa007() == ccc039zz.aaa001zz.READ_AID_DIRECTLY) {
                        hashtable5.put(str3, aaa015zzVar3);
                    } else {
                        hashtable5.put(ccc034zz.aaa000(str3), aaa015zzVar3);
                    }
                }
                i5++;
                array6 = objArr;
                i = 0;
            } catch (Exception unused9) {
                this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "");
                return;
            }
        }
        aaa003zz aaa003zzVar2 = this.aaa000;
        if (aaa003zzVar2.aaa006 != aaa003zz.aaa016zz.AID) {
            aaa003zzVar2.aaa016(hashtable5);
            return;
        }
        if (hashtable6.size() > 0) {
            if (this.aaa000.aaa011.aaa002().aaa007() == ccc039zz.aaa001zz.READ_AID_DIRECTLY) {
                hashtable5.put("EC", hashtable6);
            } else {
                hashtable5.put("dcpos", hashtable6);
            }
        }
        this.aaa000.aaa015(hashtable5);
    }
}
