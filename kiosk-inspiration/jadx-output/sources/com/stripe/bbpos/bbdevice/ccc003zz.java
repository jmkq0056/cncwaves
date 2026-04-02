package com.stripe.bbpos.bbdevice;

import com.stripe.bbpos.bbdevice.BBDeviceController;
import com.stripe.bbpos.bbdevice.aaa003zz;
import com.stripe.bbpos.bbdevice.ccc039zz;
import java.util.Arrays;
import java.util.Hashtable;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
class ccc003zz extends bbb005zz {
    ccc003zz(aaa003zz aaa003zzVar, aaa011zz aaa011zzVar) {
        super(aaa003zzVar, aaa011zzVar);
    }

    void aaa000(List<ccc067zz> list, boolean z) {
        aaa003zz.aaa015zz aaa015zzVar;
        aaa003zz.aaa015zz aaa015zzVar2;
        BBDeviceController.TerminalSettingStatus terminalSettingStatus;
        aaa003zz.aaa015zz aaa015zzVar3;
        ccc067zz ccc067zzVarAaa000 = ccc068zz.aaa000(list, "DF55");
        ccc067zz ccc067zzVarAaa0002 = ccc068zz.aaa000(list, "DE");
        ccc067zz ccc067zzVarAaa0003 = ccc068zz.aaa000(list, "E0");
        ccc067zz ccc067zzVarAaa0004 = ccc068zz.aaa000(list, "E1");
        int i = 16;
        if (ccc067zzVarAaa000 != null) {
            try {
                switch (Integer.parseInt(ccc067zzVarAaa000.aaa001, 16)) {
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
                        aaa015zzVar = aaa003zz.aaa015zz.INVALID_TLV_FORMAT;
                        break;
                    case 4:
                        aaa015zzVar = aaa003zz.aaa015zz.BOOTLOADER_NOT_SUPPORTED;
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
                    default:
                        aaa015zzVar = aaa003zz.aaa015zz.UNKNOWN;
                        break;
                }
                this.aaa000.aaa000(aaa015zzVar);
                return;
            } catch (Exception unused) {
                this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "");
                return;
            }
        }
        if (ccc067zzVarAaa0002 == null) {
            this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "");
            return;
        }
        int i2 = 0;
        if (ccc067zzVarAaa0003 != null) {
            Hashtable<String, String> hashtableAaa000 = aaa003zz.aaa000(ccc067zzVarAaa0003.aaa001);
            try {
                int i3 = Integer.parseInt(ccc067zzVarAaa0002.aaa001, 16);
                if (i3 != 0 && i3 != 1) {
                    this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "");
                    return;
                }
                Object[] array = hashtableAaa000.keySet().toArray();
                Arrays.sort(array);
                if (array.length > 0) {
                    Object obj = array[0];
                    switch (Integer.parseInt(hashtableAaa000.get(obj), 16)) {
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
                            aaa015zzVar3 = aaa003zz.aaa015zz.INVALID_TLV_FORMAT;
                            break;
                        case 4:
                            aaa015zzVar3 = aaa003zz.aaa015zz.BOOTLOADER_NOT_SUPPORTED;
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
                        default:
                            aaa015zzVar3 = aaa003zz.aaa015zz.UNKNOWN;
                            break;
                    }
                    aaa003zz aaa003zzVar = this.aaa000;
                    if (aaa003zzVar.aaa006 != aaa003zz.aaa016zz.AID) {
                        aaa003zzVar.aaa000(aaa015zzVar3);
                        return;
                    }
                    Hashtable hashtable = new Hashtable();
                    hashtable.put(ccc034zz.aaa000((String) obj), aaa015zzVar3);
                    this.aaa000.aaa017(ccc034zz.aaa000((Hashtable<String, aaa003zz.aaa015zz>) hashtable));
                    return;
                }
                return;
            } catch (Exception unused2) {
                this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "");
                return;
            }
        }
        if (ccc067zzVarAaa0004 == null) {
            this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "");
            return;
        }
        Hashtable<String, String> hashtableAaa0002 = aaa003zz.aaa000(ccc067zzVarAaa0004.aaa001);
        try {
            int i4 = Integer.parseInt(ccc067zzVarAaa0002.aaa001, 16);
            if (i4 != 0 && i4 != 1) {
                this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "");
                return;
            }
            Hashtable<String, aaa003zz.aaa015zz> hashtable2 = new Hashtable<>();
            Hashtable hashtable3 = new Hashtable();
            Object[] array2 = hashtableAaa0002.keySet().toArray();
            Arrays.sort(array2);
            int length = array2.length;
            int i5 = 0;
            while (i5 < length) {
                Object obj2 = array2[i5];
                try {
                    if (obj2.equals("EC")) {
                        Hashtable<String, String> hashtableAaa001 = aaa003zz.aaa001(hashtableAaa0002.get(obj2));
                        Object[] array3 = hashtableAaa001.keySet().toArray();
                        Arrays.sort(array3);
                        int length2 = array3.length;
                        int i6 = i2;
                        while (i6 < length2) {
                            Object obj3 = array3[i6];
                            switch (Integer.parseInt(hashtableAaa001.get(obj3), i)) {
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
                            try {
                                if (this.aaa000.aaa006 == aaa003zz.aaa016zz.AID) {
                                    hashtable3.put((String) obj3, terminalSettingStatus);
                                }
                                i6++;
                                i = 16;
                            } catch (Exception unused3) {
                                i = 16;
                            }
                        }
                    } else {
                        i = 16;
                        switch (Integer.parseInt(hashtableAaa0002.get(obj2), 16)) {
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
                                aaa015zzVar2 = aaa003zz.aaa015zz.INVALID_TLV_FORMAT;
                                break;
                            case 4:
                                aaa015zzVar2 = aaa003zz.aaa015zz.BOOTLOADER_NOT_SUPPORTED;
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
                            default:
                                aaa015zzVar2 = aaa003zz.aaa015zz.UNKNOWN;
                                break;
                        }
                        aaa003zz aaa003zzVar2 = this.aaa000;
                        if (aaa003zzVar2.aaa006 != aaa003zz.aaa016zz.AID) {
                            hashtable2.put((String) obj2, aaa015zzVar2);
                        } else if (aaa003zzVar2.aaa011.aaa002().aaa007() == ccc039zz.aaa001zz.UPDATE_AID_DIRECTLY) {
                            hashtable2.put((String) obj2, aaa015zzVar2);
                        } else {
                            hashtable2.put(ccc034zz.aaa000((String) obj2), aaa015zzVar2);
                        }
                    }
                } catch (Exception unused4) {
                }
                i5++;
                i2 = 0;
            }
            aaa003zz aaa003zzVar3 = this.aaa000;
            if (aaa003zzVar3.aaa006 != aaa003zz.aaa016zz.AID) {
                aaa003zzVar3.aaa018(hashtable2);
                return;
            }
            Hashtable<String, Object> hashtableAaa0003 = ccc034zz.aaa000(hashtable2);
            if (hashtable3.size() > 0) {
                hashtableAaa0003.put("dcpos", hashtable3);
            }
            this.aaa000.aaa017(hashtableAaa0003);
        } catch (Exception unused5) {
            this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "");
        }
    }
}
