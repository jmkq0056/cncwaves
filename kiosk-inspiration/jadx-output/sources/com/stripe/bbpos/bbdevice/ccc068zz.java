package com.stripe.bbpos.bbdevice;

import androidx.room.RoomMasterTable;
import com.stripe.hardware.emv.TlvMap;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Hashtable;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes3.dex */
final class ccc068zz {
    static Hashtable<String, String> aaa000(List<ccc067zz> list) {
        Hashtable<String, String> hashtable = new Hashtable<>();
        for (int i = 0; i < list.size(); i++) {
            ccc067zz ccc067zzVar = list.get(i);
            String str = ccc067zzVar.aaa000;
            Locale locale = Locale.ENGLISH;
            hashtable.put(str.toUpperCase(locale), ccc067zzVar.aaa001.toUpperCase(locale));
        }
        return hashtable;
    }

    static Hashtable<String, String> aaa001(String str) {
        String str2;
        Hashtable<String, String> hashtable = new Hashtable<>();
        List<ccc067zz> listAaa000 = aaa000(str);
        for (int i = 0; i < listAaa000.size(); i++) {
            ccc067zz ccc067zzVar = listAaa000.get(i);
            String strSubstring = ccc067zzVar.aaa001;
            String str3 = ccc067zzVar.aaa000;
            Locale locale = Locale.ENGLISH;
            hashtable.put(str3.toUpperCase(locale), ccc067zzVar.aaa001.toUpperCase(locale));
            hashtable.put(ccc067zzVar.aaa000.toLowerCase(locale), ccc067zzVar.aaa001.toUpperCase(locale));
            if (ccc067zzVar.aaa000.equalsIgnoreCase(TlvMap.TAG_PIN_DATA)) {
                str2 = "epb";
            } else if (ccc067zzVar.aaa000.equalsIgnoreCase("C0")) {
                str2 = "onlineMessageKsn";
            } else if (ccc067zzVar.aaa000.equalsIgnoreCase("C1")) {
                str2 = "onlinePinKsn";
            } else if (ccc067zzVar.aaa000.equalsIgnoreCase("C2")) {
                str2 = "encOnlineMessage";
            } else {
                if (ccc067zzVar.aaa000.equalsIgnoreCase("C3")) {
                    if (aaa001(listAaa000, "C5") != null) {
                        str2 = "batchKsn";
                    } else if (aaa001(listAaa000, "C6") != null) {
                        str2 = "reversalKsn";
                    }
                } else if (ccc067zzVar.aaa000.equalsIgnoreCase(TlvMap.TAG_BBPOS_PAN_FIRST_SIX_AND_LAST_FOUR) || ccc067zzVar.aaa000.equalsIgnoreCase("DF03")) {
                    while (true) {
                        if (!strSubstring.endsWith("f") && !strSubstring.endsWith("F")) {
                            break;
                        }
                        strSubstring = strSubstring.substring(0, strSubstring.length() - 1);
                    }
                    str2 = "maskedPAN";
                } else if (ccc067zzVar.aaa000.equalsIgnoreCase("C5")) {
                    str2 = "encBatchMessage";
                } else if (ccc067zzVar.aaa000.equalsIgnoreCase("C6")) {
                    str2 = "encReversalMessage";
                } else if (ccc067zzVar.aaa000.equalsIgnoreCase("C7")) {
                    str2 = "track2EqKsn";
                } else if (ccc067zzVar.aaa000.equalsIgnoreCase("C8")) {
                    str2 = "encTrack2Eq";
                } else if (ccc067zzVar.aaa000.equalsIgnoreCase("C9")) {
                    str2 = "encPAN";
                } else if (ccc067zzVar.aaa000.equalsIgnoreCase("CA")) {
                    hashtable.put("randomNumber", ccc067zzVar.aaa001);
                    str2 = "encTrack2EqRandomNumber";
                } else if (ccc067zzVar.aaa000.equalsIgnoreCase("CB") || ccc067zzVar.aaa000.equalsIgnoreCase("DF41")) {
                    str2 = "finalMessage";
                } else {
                    if (ccc067zzVar.aaa000.equalsIgnoreCase("CC")) {
                        strSubstring = strSubstring.substring(0, 3);
                    } else if (ccc067zzVar.aaa000.equalsIgnoreCase("CD") || ccc067zzVar.aaa000.equalsIgnoreCase("DF0B")) {
                        str2 = "mac";
                    } else if (ccc067zzVar.aaa000.equalsIgnoreCase("CE")) {
                        str2 = "macKsn";
                    } else if (ccc067zzVar.aaa000.equalsIgnoreCase("DF8203")) {
                        str2 = "encWorkingKey";
                    } else if (ccc067zzVar.aaa000.equalsIgnoreCase("DF8204")) {
                        str2 = "accountSelected";
                    } else if (ccc067zzVar.aaa000.equalsIgnoreCase("DF8321")) {
                        str2 = "epbRandomNumber";
                    } else if (ccc067zzVar.aaa000.equalsIgnoreCase("DF8315")) {
                        str2 = "data";
                    } else if (ccc067zzVar.aaa000.equalsIgnoreCase("DF826E")) {
                        str2 = "serialNumber";
                    } else if (ccc067zzVar.aaa000.equalsIgnoreCase("DF834F")) {
                        str2 = "bID";
                    } else if (ccc067zzVar.aaa000.equalsIgnoreCase("9F1F")) {
                        str2 = "track1DiscretionaryData";
                    } else if (ccc067zzVar.aaa000.equalsIgnoreCase(TlvMap.TAG_TRACK_2_DATA)) {
                        str2 = "track2Equivalent";
                    } else if (ccc067zzVar.aaa000.equalsIgnoreCase("9F20")) {
                        str2 = "track2DiscretionaryData";
                    } else if (!ccc067zzVar.aaa000.equalsIgnoreCase(TlvMap.TAG_SERVICE_CODE)) {
                        if (ccc067zzVar.aaa000.equalsIgnoreCase(TlvMap.TAG_EXPIRATION_DATE)) {
                            str2 = "applicationExpirationDate";
                        } else if (ccc067zzVar.aaa000.equalsIgnoreCase(TlvMap.TAG_CARDHOLDER_NAME)) {
                            str2 = "cardholderName";
                        } else if (ccc067zzVar.aaa000.equalsIgnoreCase("9F0B")) {
                            str2 = "carholderNameExtended";
                        } else if (ccc067zzVar.aaa000.equalsIgnoreCase(TlvMap.TAG_APPLICATION_PRIMARY_ACCOUNT_NUMBER)) {
                            str2 = "PAN";
                        } else if (ccc067zzVar.aaa000.equalsIgnoreCase(TlvMap.TAG_APPLICATION_PAN_SEQUENCE_NUMBER)) {
                            str2 = "PANSequenceNumber";
                        } else if (ccc067zzVar.aaa000.equalsIgnoreCase(RoomMasterTable.DEFAULT_ID)) {
                            str2 = "IIN";
                        } else if (ccc067zzVar.aaa000.equalsIgnoreCase("56")) {
                            str2 = "track1MasterCard";
                        } else if (ccc067zzVar.aaa000.equalsIgnoreCase("9F6B")) {
                            str2 = "track2Data";
                        } else if (ccc067zzVar.aaa000.equalsIgnoreCase("DF812A")) {
                            str2 = "DDCardTrack1";
                        } else if (ccc067zzVar.aaa000.equalsIgnoreCase("DF812B")) {
                            str2 = "DDCardTrack2";
                        } else if (ccc067zzVar.aaa000.equalsIgnoreCase("5F21")) {
                            str2 = "track1";
                        } else if (ccc067zzVar.aaa000.equalsIgnoreCase("5F22")) {
                            str2 = "track2";
                        } else if (ccc067zzVar.aaa000.equalsIgnoreCase("5F23")) {
                            str2 = "track3";
                        } else if (ccc067zzVar.aaa000.equalsIgnoreCase("58")) {
                            str2 = "track3EquivalentData";
                        } else if (ccc067zzVar.aaa000.equalsIgnoreCase("59")) {
                            str2 = "cardExpirationDate";
                        }
                    }
                    str2 = "serviceCode";
                }
            }
            hashtable.put(str2, strSubstring);
        }
        return hashtable;
    }

    static Hashtable<String, String> aaa002(String str) {
        return aaa000(aaa000(str));
    }

    static List<ccc067zz> aaa002(byte[] bArr) {
        try {
            return aaa001(bArr);
        } catch (Exception unused) {
            return Collections.emptyList();
        }
    }

    static List<ccc067zz> aaa000(String str) {
        try {
            return aaa001(ccc071zz.aaa005(str));
        } catch (Exception unused) {
            return Collections.emptyList();
        }
    }

    private static int aaa000(byte[] bArr) {
        int i = 0;
        byte b = bArr[0];
        if ((b & (-128)) != -128) {
            return b & 255;
        }
        int i2 = b & 127;
        for (int i3 = 1; i3 < i2 + 1; i3++) {
            i = (i << 8) | (bArr[i3] & 255);
        }
        return i;
    }

    static ccc067zz aaa000(List<ccc067zz> list, String str) {
        int iBinarySearch = Collections.binarySearch(list, ccc067zz.aaa000(str, new byte[]{0}));
        if (iBinarySearch >= 0) {
            return list.get(iBinarySearch);
        }
        return null;
    }

    private static List<ccc067zz> aaa001(byte[] bArr) {
        byte[] bArr2;
        int i;
        byte[] bArr3;
        int i2;
        int iAaa000;
        ccc067zz ccc067zzVarAaa000;
        ArrayList arrayList = new ArrayList();
        int i3 = 0;
        while (i3 < bArr.length) {
            try {
                byte b = bArr[i3];
                boolean z = (b & 32) == 32;
                if ((b & 31) == 31) {
                    int i4 = i3 + 1;
                    while ((bArr[i4] & (-128)) == -128) {
                        i4++;
                    }
                    int i5 = (i4 - i3) + 1;
                    bArr2 = new byte[i5];
                    System.arraycopy(bArr, i3, bArr2, 0, i5);
                    i = i3 + i5;
                } else {
                    bArr2 = new byte[]{b};
                    i = i3 + 1;
                    if (b == 0) {
                        break;
                    }
                }
                byte b2 = bArr[i];
                if ((b2 & (-128)) == -128) {
                    int i6 = (b2 & 127) + 1;
                    bArr3 = new byte[i6];
                    System.arraycopy(bArr, i, bArr3, 0, i6);
                    i2 = i + i6;
                } else {
                    bArr3 = new byte[]{b2};
                    i2 = i + 1;
                }
                if (bArr3[0] != -128 && bArr3.length <= 4 && (iAaa000 = aaa000(bArr3)) <= 16777215) {
                    byte[] bArr4 = new byte[iAaa000];
                    System.arraycopy(bArr, i2, bArr4, 0, iAaa000);
                    i3 = i2 + iAaa000;
                    if (z) {
                        ccc067zzVarAaa000 = ccc067zz.aaa000(ccc071zz.aaa000(bArr2), bArr4, aaa001(bArr4));
                    } else {
                        ccc067zzVarAaa000 = ccc067zz.aaa000(ccc071zz.aaa000(bArr2), bArr4);
                    }
                    arrayList.add(ccc067zzVarAaa000);
                }
            } catch (Exception unused) {
            }
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    static ccc067zz aaa001(List<ccc067zz> list, String str) {
        ccc067zz ccc067zzVarAaa001;
        for (int i = 0; i < list.size(); i++) {
            ccc067zz ccc067zzVar = list.get(i);
            if (ccc067zzVar.aaa000.equalsIgnoreCase(str)) {
                return ccc067zzVar;
            }
            if (ccc067zzVar.aaa003 && (ccc067zzVarAaa001 = aaa001(ccc067zzVar.aaa004, str)) != null) {
                return ccc067zzVarAaa001;
            }
        }
        return null;
    }
}
