package com.stripe.bbpos.bbdevice;

import android.app.Activity;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.stripe.bbpos.bbdevice.BBDeviceController;
import com.stripe.bbpos.bbdevice.aaa003zz;
import com.stripe.bbpos.bbdevice.ccc017zz;
import com.stripe.core.bbpos.BbposDeviceControllerImpl;
import com.stripe.hardware.emv.TlvMap;
import com.sun.jna.platform.linux.XAttr;
import com.sun.jna.platform.win32.COM.tlb.imp.TlbConst;
import com.sun.jna.platform.win32.WinError;
import com.sun.jna.platform.win32.WinNT;
import com.sun.jna.platform.win32.WinUser;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes3.dex */
final class ccc034zz {
    private static final Hashtable<String, Integer> aaa000;
    static final char[] aaa001;

    static /* synthetic */ class aaa000zz {
        static final /* synthetic */ int[] aaa000;
        static final /* synthetic */ int[] aaa001;
        static final /* synthetic */ int[] aaa002;
        static final /* synthetic */ int[] aaa003;
        static final /* synthetic */ int[] aaa004;
        static final /* synthetic */ int[] aaa005;
        static final /* synthetic */ int[] aaa006;
        static final /* synthetic */ int[] aaa007;
        static final /* synthetic */ int[] aaa008;
        static final /* synthetic */ int[] aaa009;
        static final /* synthetic */ int[] aaa010;
        static final /* synthetic */ int[] aaa011;
        static final /* synthetic */ int[] aaa012;
        static final /* synthetic */ int[] aaa013;
        static final /* synthetic */ int[] aaa014;
        static final /* synthetic */ int[] aaa015;

        static {
            int[] iArr = new int[BBDeviceController.EncryptionPaddingMethod.values().length];
            aaa015 = iArr;
            try {
                iArr[BBDeviceController.EncryptionPaddingMethod.PKCS7.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                aaa015[BBDeviceController.EncryptionPaddingMethod.ZERO_PADDING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            int[] iArr2 = new int[BBDeviceController.EncryptionKeySource.values().length];
            aaa014 = iArr2;
            try {
                iArr2[BBDeviceController.EncryptionKeySource.BOTH.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                aaa014[BBDeviceController.EncryptionKeySource.BY_DEVICE_16_BYTES_RANDOM_NUMBER.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                aaa014[BBDeviceController.EncryptionKeySource.BY_DEVICE_8_BYTES_RANDOM_NUMBER.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                aaa014[BBDeviceController.EncryptionKeySource.BY_SERVER_16_BYTES_WORKING_KEY.ordinal()] = 4;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                aaa014[BBDeviceController.EncryptionKeySource.BY_SERVER_8_BYTES_WORKING_KEY.ordinal()] = 5;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                aaa014[BBDeviceController.EncryptionKeySource.STORED_IN_DEVICE_16_BYTES_KEY.ordinal()] = 6;
            } catch (NoSuchFieldError unused8) {
            }
            int[] iArr3 = new int[BBDeviceController.EncryptionMethod.values().length];
            aaa013 = iArr3;
            try {
                iArr3[BBDeviceController.EncryptionMethod.AES_CBC.ordinal()] = 1;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                aaa013[BBDeviceController.EncryptionMethod.AES_ECB.ordinal()] = 2;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                aaa013[BBDeviceController.EncryptionMethod.AES_CMAC.ordinal()] = 3;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                aaa013[BBDeviceController.EncryptionMethod.MAC_ANSI_X9_19.ordinal()] = 4;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                aaa013[BBDeviceController.EncryptionMethod.MAC_ANSI_X9_9.ordinal()] = 5;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                aaa013[BBDeviceController.EncryptionMethod.MAC_METHOD_1.ordinal()] = 6;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                aaa013[BBDeviceController.EncryptionMethod.MAC_METHOD_2.ordinal()] = 7;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                aaa013[BBDeviceController.EncryptionMethod.TDES_CBC.ordinal()] = 8;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                aaa013[BBDeviceController.EncryptionMethod.TDES_ECB.ordinal()] = 9;
            } catch (NoSuchFieldError unused17) {
            }
            int[] iArr4 = new int[BBDeviceController.EncryptionKeyUsage.values().length];
            aaa012 = iArr4;
            try {
                iArr4[BBDeviceController.EncryptionKeyUsage.TAK.ordinal()] = 1;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                aaa012[BBDeviceController.EncryptionKeyUsage.TEK.ordinal()] = 2;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                aaa012[BBDeviceController.EncryptionKeyUsage.TPK.ordinal()] = 3;
            } catch (NoSuchFieldError unused20) {
            }
            int[] iArr5 = new int[BBDeviceController.OtherAmountOption.values().length];
            aaa011 = iArr5;
            try {
                iArr5[BBDeviceController.OtherAmountOption.CURRENCY.ordinal()] = 1;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                aaa011[BBDeviceController.OtherAmountOption.PERCENTAGE.ordinal()] = 2;
            } catch (NoSuchFieldError unused22) {
            }
            int[] iArr6 = new int[BBDeviceController.PinEntryOrientation.values().length];
            aaa010 = iArr6;
            try {
                iArr6[BBDeviceController.PinEntryOrientation.ROTATION_0.ordinal()] = 1;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                aaa010[BBDeviceController.PinEntryOrientation.ROTATION_90.ordinal()] = 2;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                aaa010[BBDeviceController.PinEntryOrientation.ROTATION_180.ordinal()] = 3;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                aaa010[BBDeviceController.PinEntryOrientation.ROTATION_270.ordinal()] = 4;
            } catch (NoSuchFieldError unused26) {
            }
            int[] iArr7 = new int[BBDeviceController.DisplayPromptTone.values().length];
            aaa009 = iArr7;
            try {
                iArr7[BBDeviceController.DisplayPromptTone.SUCCESS_TONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused27) {
            }
            try {
                aaa009[BBDeviceController.DisplayPromptTone.ALERT_TONE.ordinal()] = 2;
            } catch (NoSuchFieldError unused28) {
            }
            int[] iArr8 = new int[BBDeviceController.DisplayPromptIcon.values().length];
            aaa008 = iArr8;
            try {
                iArr8[BBDeviceController.DisplayPromptIcon.CHECK_MARK.ordinal()] = 1;
            } catch (NoSuchFieldError unused29) {
            }
            try {
                aaa008[BBDeviceController.DisplayPromptIcon.CROSS_MARK.ordinal()] = 2;
            } catch (NoSuchFieldError unused30) {
            }
            try {
                aaa008[BBDeviceController.DisplayPromptIcon.EXCLAMATION_MARK.ordinal()] = 3;
            } catch (NoSuchFieldError unused31) {
            }
            int[] iArr9 = new int[BBDeviceController.DisplayPromptOption.values().length];
            aaa007 = iArr9;
            try {
                iArr9[BBDeviceController.DisplayPromptOption.DISPLAY_ONLY.ordinal()] = 1;
            } catch (NoSuchFieldError unused32) {
            }
            try {
                aaa007[BBDeviceController.DisplayPromptOption.DISPLAY_WITH_CONFIRM_BUTTONS.ordinal()] = 2;
            } catch (NoSuchFieldError unused33) {
            }
            try {
                aaa007[BBDeviceController.DisplayPromptOption.DISPLAY_ONLY_WITHOUT_TIMEOUT.ordinal()] = 3;
            } catch (NoSuchFieldError unused34) {
            }
            int[] iArr10 = new int[BBDeviceController.AmountInputType.values().length];
            aaa006 = iArr10;
            try {
                iArr10[BBDeviceController.AmountInputType.AMOUNT_ONLY.ordinal()] = 1;
            } catch (NoSuchFieldError unused35) {
            }
            try {
                aaa006[BBDeviceController.AmountInputType.TIPS_ONLY.ordinal()] = 2;
            } catch (NoSuchFieldError unused36) {
            }
            try {
                aaa006[BBDeviceController.AmountInputType.AMOUNT_AND_CASHBACK.ordinal()] = 3;
            } catch (NoSuchFieldError unused37) {
            }
            try {
                aaa006[BBDeviceController.AmountInputType.CASHBACK_ONLY.ordinal()] = 4;
            } catch (NoSuchFieldError unused38) {
            }
            try {
                aaa006[BBDeviceController.AmountInputType.AMOUNT_AND_TIPS.ordinal()] = 5;
            } catch (NoSuchFieldError unused39) {
            }
            try {
                aaa006[BBDeviceController.AmountInputType.AMOUNT_AND_TIPS_IN_PERCENTAGE.ordinal()] = 6;
            } catch (NoSuchFieldError unused40) {
            }
            int[] iArr11 = new int[BBDeviceController.VASProtocolMode.values().length];
            aaa005 = iArr11;
            try {
                iArr11[BBDeviceController.VASProtocolMode.URL.ordinal()] = 1;
            } catch (NoSuchFieldError unused41) {
            }
            try {
                aaa005[BBDeviceController.VASProtocolMode.FULL.ordinal()] = 2;
            } catch (NoSuchFieldError unused42) {
            }
            int[] iArr12 = new int[BBDeviceController.VASTerminalMode.values().length];
            aaa004 = iArr12;
            try {
                iArr12[BBDeviceController.VASTerminalMode.SINGLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused43) {
            }
            try {
                aaa004[BBDeviceController.VASTerminalMode.DUAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused44) {
            }
            try {
                aaa004[BBDeviceController.VASTerminalMode.VAS.ordinal()] = 3;
            } catch (NoSuchFieldError unused45) {
            }
            try {
                aaa004[BBDeviceController.VASTerminalMode.PAYMENT.ordinal()] = 4;
            } catch (NoSuchFieldError unused46) {
            }
            int[] iArr13 = new int[BBDeviceController.LEDMode.values().length];
            aaa003 = iArr13;
            try {
                iArr13[BBDeviceController.LEDMode.DEFAULT.ordinal()] = 1;
            } catch (NoSuchFieldError unused47) {
            }
            try {
                aaa003[BBDeviceController.LEDMode.ON.ordinal()] = 2;
            } catch (NoSuchFieldError unused48) {
            }
            try {
                aaa003[BBDeviceController.LEDMode.OFF.ordinal()] = 3;
            } catch (NoSuchFieldError unused49) {
            }
            try {
                aaa003[BBDeviceController.LEDMode.FLASH.ordinal()] = 4;
            } catch (NoSuchFieldError unused50) {
            }
            int[] iArr14 = new int[BBDeviceController.ReadNdefRecord.values().length];
            aaa002 = iArr14;
            try {
                iArr14[BBDeviceController.ReadNdefRecord.READ_1ST.ordinal()] = 1;
            } catch (NoSuchFieldError unused51) {
            }
            try {
                aaa002[BBDeviceController.ReadNdefRecord.READ_NEXT.ordinal()] = 2;
            } catch (NoSuchFieldError unused52) {
            }
            int[] iArr15 = new int[BBDeviceController.EmvOption.values().length];
            aaa001 = iArr15;
            try {
                iArr15[BBDeviceController.EmvOption.START.ordinal()] = 1;
            } catch (NoSuchFieldError unused53) {
            }
            try {
                aaa001[BBDeviceController.EmvOption.START_WITH_FORCE_ONLINE.ordinal()] = 2;
            } catch (NoSuchFieldError unused54) {
            }
            int[] iArr16 = new int[BBDeviceController.CheckCardMode.values().length];
            aaa000 = iArr16;
            try {
                iArr16[BBDeviceController.CheckCardMode.SWIPE.ordinal()] = 1;
            } catch (NoSuchFieldError unused55) {
            }
            try {
                aaa000[BBDeviceController.CheckCardMode.INSERT.ordinal()] = 2;
            } catch (NoSuchFieldError unused56) {
            }
            try {
                aaa000[BBDeviceController.CheckCardMode.TAP.ordinal()] = 3;
            } catch (NoSuchFieldError unused57) {
            }
            try {
                aaa000[BBDeviceController.CheckCardMode.SWIPE_OR_INSERT.ordinal()] = 4;
            } catch (NoSuchFieldError unused58) {
            }
            try {
                aaa000[BBDeviceController.CheckCardMode.SWIPE_OR_TAP.ordinal()] = 5;
            } catch (NoSuchFieldError unused59) {
            }
            try {
                aaa000[BBDeviceController.CheckCardMode.INSERT_OR_TAP.ordinal()] = 6;
            } catch (NoSuchFieldError unused60) {
            }
            try {
                aaa000[BBDeviceController.CheckCardMode.SWIPE_OR_INSERT_OR_TAP.ordinal()] = 7;
            } catch (NoSuchFieldError unused61) {
            }
            try {
                aaa000[BBDeviceController.CheckCardMode.MANUAL_PAN_ENTRY.ordinal()] = 8;
            } catch (NoSuchFieldError unused62) {
            }
            try {
                aaa000[BBDeviceController.CheckCardMode.QR_CODE.ordinal()] = 9;
            } catch (NoSuchFieldError unused63) {
            }
        }
    }

    static {
        Hashtable<String, Integer> hashtable = new Hashtable<>();
        aaa000 = hashtable;
        aaa001 = "0123456789ABCDEF".toCharArray();
        hashtable.put("0108", 0);
        hashtable.put("0152", 0);
        hashtable.put("0174", 0);
        hashtable.put("0218", 0);
        hashtable.put("0262", 0);
        hashtable.put("0324", 0);
        hashtable.put("0352", 0);
        hashtable.put("0392", 0);
        hashtable.put("0410", 0);
        hashtable.put("0548", 0);
        hashtable.put("0600", 0);
        hashtable.put("0646", 0);
        hashtable.put("0704", 0);
        hashtable.put("0800", 0);
        hashtable.put("0940", 0);
        hashtable.put("0950", 0);
        hashtable.put("0952", 0);
        hashtable.put("0953", 0);
        hashtable.put("0974", 0);
        hashtable.put("0990", 0);
        hashtable.put("0008", 2);
        hashtable.put("0012", 2);
        hashtable.put("0032", 2);
        hashtable.put("0036", 2);
        hashtable.put("0044", 2);
        hashtable.put("0050", 2);
        hashtable.put("0051", 2);
        hashtable.put("0052", 2);
        hashtable.put("0060", 2);
        hashtable.put("0064", 2);
        hashtable.put("0068", 2);
        hashtable.put("0072", 2);
        hashtable.put("0084", 2);
        hashtable.put("0090", 2);
        hashtable.put("0096", 2);
        hashtable.put("0104", 2);
        hashtable.put("0116", 2);
        hashtable.put("0124", 2);
        hashtable.put("0132", 2);
        hashtable.put("0136", 2);
        hashtable.put("0144", 2);
        hashtable.put("0156", 2);
        hashtable.put("0170", 2);
        hashtable.put("0188", 2);
        hashtable.put("0191", 2);
        hashtable.put("0192", 2);
        hashtable.put("0203", 2);
        hashtable.put("0208", 2);
        hashtable.put("0214", 2);
        hashtable.put("0222", 2);
        hashtable.put("0230", 2);
        hashtable.put("0232", 2);
        hashtable.put("0238", 2);
        hashtable.put("0242", 2);
        hashtable.put("0270", 2);
        hashtable.put("0292", 2);
        hashtable.put("0320", 2);
        hashtable.put("0328", 2);
        hashtable.put("0332", 2);
        hashtable.put("0340", 2);
        hashtable.put("0344", 2);
        hashtable.put("0348", 2);
        hashtable.put("0356", 2);
        hashtable.put("0360", 2);
        hashtable.put("0364", 2);
        hashtable.put("0376", 2);
        hashtable.put("0388", 2);
        hashtable.put("0398", 2);
        hashtable.put("0404", 2);
        hashtable.put("0408", 2);
        hashtable.put("0417", 2);
        hashtable.put("0418", 2);
        hashtable.put("0422", 2);
        hashtable.put("0426", 2);
        hashtable.put("0428", 2);
        hashtable.put("0430", 2);
        hashtable.put("0440", 2);
        hashtable.put("0446", 2);
        hashtable.put("0454", 2);
        hashtable.put("0458", 2);
        hashtable.put("0462", 2);
        hashtable.put("0478", 2);
        hashtable.put("0480", 2);
        hashtable.put("0484", 2);
        hashtable.put("0496", 2);
        hashtable.put("0498", 2);
        hashtable.put("0504", 2);
        hashtable.put("0516", 2);
        hashtable.put("0524", 2);
        hashtable.put("0532", 2);
        hashtable.put("0533", 2);
        hashtable.put("0554", 2);
        hashtable.put("0558", 2);
        hashtable.put("0566", 2);
        hashtable.put("0578", 2);
        hashtable.put("0586", 2);
        hashtable.put("0590", 2);
        hashtable.put("0598", 2);
        hashtable.put("0604", 2);
        hashtable.put("0608", 2);
        hashtable.put("0634", 2);
        hashtable.put("0643", 2);
        hashtable.put("0654", 2);
        hashtable.put("0678", 2);
        hashtable.put("0682", 2);
        hashtable.put("0690", 2);
        hashtable.put("0694", 2);
        hashtable.put("0702", 2);
        hashtable.put("0706", 2);
        hashtable.put("0710", 2);
        hashtable.put("0728", 2);
        hashtable.put("0748", 2);
        hashtable.put("0752", 2);
        hashtable.put("0756", 2);
        hashtable.put("0760", 2);
        hashtable.put("0764", 2);
        hashtable.put("0776", 2);
        hashtable.put("0780", 2);
        hashtable.put("0784", 2);
        hashtable.put("0807", 2);
        hashtable.put("0818", 2);
        hashtable.put("0826", 2);
        hashtable.put("0834", 2);
        hashtable.put("0840", 2);
        hashtable.put("0858", 2);
        hashtable.put("0860", 2);
        hashtable.put("0882", 2);
        hashtable.put("0886", 2);
        hashtable.put("0901", 2);
        hashtable.put("0928", 2);
        hashtable.put("0931", 2);
        hashtable.put("0932", 2);
        hashtable.put("0934", 2);
        hashtable.put("0936", 2);
        hashtable.put("0937", 2);
        hashtable.put("0938", 2);
        hashtable.put("0941", 2);
        hashtable.put("0943", 2);
        hashtable.put("0944", 2);
        hashtable.put("0946", 2);
        hashtable.put("0947", 2);
        hashtable.put("0948", 2);
        hashtable.put("0949", 2);
        hashtable.put("0951", 2);
        hashtable.put("0967", 2);
        hashtable.put("0968", 2);
        hashtable.put("0969", 2);
        hashtable.put("0970", 2);
        hashtable.put("0971", 2);
        hashtable.put("0972", 2);
        hashtable.put("0973", 2);
        hashtable.put("0975", 2);
        hashtable.put("0976", 2);
        hashtable.put("0977", 2);
        hashtable.put("0978", 2);
        hashtable.put("0979", 2);
        hashtable.put("0980", 2);
        hashtable.put("0981", 2);
        hashtable.put("0984", 2);
        hashtable.put("0985", 2);
        hashtable.put("0986", 2);
        hashtable.put("0997", 2);
        hashtable.put("0998", 2);
        hashtable.put("0933", 2);
        hashtable.put("0048", 3);
        hashtable.put("0368", 3);
        hashtable.put("0400", 3);
        hashtable.put("0414", 3);
        hashtable.put("0434", 3);
        hashtable.put("0512", 3);
        hashtable.put("0788", 3);
    }

    static <T> String aaa000(Object obj, Class<T> cls) {
        int iIntValue;
        if (cls == byte[].class) {
            if (obj instanceof String) {
                String str = (String) obj;
                while (str.length() % 2 != 0) {
                    str = TlbConst.TYPELIB_MINOR_VERSION_SHELL + str;
                }
                if (ccc071zz.aaa006(str)) {
                    return str;
                }
                return null;
            }
            if (obj instanceof byte[]) {
                return ccc071zz.aaa000((byte[]) obj);
            }
            if (obj instanceof Byte) {
                return ccc071zz.aaa000(((Byte) obj).byteValue());
            }
            if (obj instanceof BBDeviceController.CurrencyCharacter[]) {
                BBDeviceController.CurrencyCharacter[] currencyCharacterArr = (BBDeviceController.CurrencyCharacter[]) obj;
                if (currencyCharacterArr.length == 0) {
                    currencyCharacterArr = new BBDeviceController.CurrencyCharacter[]{BBDeviceController.CurrencyCharacter.SPACE};
                }
                String strSubstring = "";
                for (BBDeviceController.CurrencyCharacter currencyCharacter : currencyCharacterArr) {
                    strSubstring = strSubstring + ccc071zz.aaa000(ccc024zz.aaa001.get(currencyCharacter).byteValue());
                }
                if (strSubstring.equals("")) {
                    return null;
                }
                if (strSubstring.length() > 6) {
                    strSubstring = strSubstring.substring(0, 6);
                }
                while (strSubstring.length() < 6) {
                    strSubstring = strSubstring + TlbConst.TYPELIB_MINOR_VERSION_SHELL;
                }
                return strSubstring;
            }
        } else if (cls == BBDeviceController.CheckCardMode.class) {
            if (obj instanceof BBDeviceController.CheckCardMode) {
                switch (aaa000zz.aaa000[((BBDeviceController.CheckCardMode) obj).ordinal()]) {
                    case 1:
                        return TlvMap.SET_BUZZER_DISABLED_VALUE;
                    case 2:
                        return "02";
                    case 3:
                        return "04";
                    case 4:
                        return "03";
                    case 5:
                        return TlvMap.ENTRY_MODE_CONTACT;
                    case 6:
                        return "06";
                    case 7:
                        return TlvMap.ENTRY_MODE_CONTACTLESS;
                    case 8:
                        return "09";
                    case 9:
                        return "0A";
                    default:
                        return null;
                }
            }
        } else if (cls != BBDeviceController.EmvOption.class) {
            if (cls == Integer.class) {
                if (obj instanceof String) {
                    try {
                        iIntValue = Integer.parseInt((String) obj);
                    } catch (Exception unused) {
                        return null;
                    }
                } else {
                    if (!(obj instanceof Integer)) {
                        return null;
                    }
                    iIntValue = ((Integer) obj).intValue();
                }
                if (iIntValue < 0) {
                    return null;
                }
                String hexString = Integer.toHexString(iIntValue);
                while (hexString.length() % 2 != 0) {
                    hexString = TlbConst.TYPELIB_MINOR_VERSION_SHELL + hexString;
                }
                return hexString;
            }
            if (cls == BBDeviceController.CurrencyCharacter[].class) {
                if (obj instanceof BBDeviceController.CurrencyCharacter[]) {
                    BBDeviceController.CurrencyCharacter[] currencyCharacterArr2 = (BBDeviceController.CurrencyCharacter[]) obj;
                    if (currencyCharacterArr2.length == 0) {
                        currencyCharacterArr2 = new BBDeviceController.CurrencyCharacter[]{BBDeviceController.CurrencyCharacter.SPACE};
                    }
                    String str2 = "";
                    for (BBDeviceController.CurrencyCharacter currencyCharacter2 : currencyCharacterArr2) {
                        str2 = str2 + ccc071zz.aaa000(ccc024zz.aaa000.get(currencyCharacter2));
                    }
                    if (str2.equals("")) {
                        return null;
                    }
                    return str2;
                }
            } else if (cls == Boolean.class) {
                if (obj instanceof String) {
                    try {
                        return Boolean.parseBoolean((String) obj) ? TlvMap.SET_BUZZER_DISABLED_VALUE : TlvMap.SET_BUZZER_ENABLED_VALUE;
                    } catch (Exception unused2) {
                        return null;
                    }
                }
                if (obj instanceof Boolean) {
                    return ((Boolean) obj).booleanValue() ? TlvMap.SET_BUZZER_DISABLED_VALUE : TlvMap.SET_BUZZER_ENABLED_VALUE;
                }
            } else if (cls == BBDeviceController.ReadNdefRecord.class) {
                if (obj instanceof BBDeviceController.ReadNdefRecord) {
                    int i = aaa000zz.aaa002[((BBDeviceController.ReadNdefRecord) obj).ordinal()];
                    if (i == 1) {
                        return TlvMap.SET_BUZZER_ENABLED_VALUE;
                    }
                    if (i != 2) {
                        return null;
                    }
                    return TlvMap.SET_BUZZER_DISABLED_VALUE;
                }
            } else if (cls == BBDeviceController.LEDMode.class) {
                if (obj instanceof BBDeviceController.LEDMode) {
                    int i2 = aaa000zz.aaa003[((BBDeviceController.LEDMode) obj).ordinal()];
                    if (i2 == 1) {
                        return TlvMap.SET_BUZZER_ENABLED_VALUE;
                    }
                    if (i2 == 2) {
                        return TlvMap.SET_BUZZER_DISABLED_VALUE;
                    }
                    if (i2 == 3) {
                        return "02";
                    }
                    if (i2 != 4) {
                        return null;
                    }
                    return "03";
                }
            } else if (cls == BBDeviceController.VASTerminalMode.class) {
                if (obj instanceof BBDeviceController.VASTerminalMode) {
                    int i3 = aaa000zz.aaa004[((BBDeviceController.VASTerminalMode) obj).ordinal()];
                    if (i3 == 1) {
                        return TlvMap.SET_BUZZER_ENABLED_VALUE;
                    }
                    if (i3 == 2) {
                        return TlvMap.SET_BUZZER_DISABLED_VALUE;
                    }
                    if (i3 == 3) {
                        return "02";
                    }
                    if (i3 != 4) {
                        return null;
                    }
                    return "03";
                }
            } else if (cls == BBDeviceController.VASProtocolMode.class) {
                if (obj instanceof BBDeviceController.VASProtocolMode) {
                    int i4 = aaa000zz.aaa005[((BBDeviceController.VASProtocolMode) obj).ordinal()];
                    if (i4 == 1) {
                        return TlvMap.SET_BUZZER_ENABLED_VALUE;
                    }
                    if (i4 != 2) {
                        return null;
                    }
                    return TlvMap.SET_BUZZER_DISABLED_VALUE;
                }
            } else if (cls == BBDeviceController.AmountInputType.class) {
                if (obj instanceof BBDeviceController.AmountInputType) {
                    switch (aaa000zz.aaa006[((BBDeviceController.AmountInputType) obj).ordinal()]) {
                        case 1:
                            return TlvMap.SET_BUZZER_ENABLED_VALUE;
                        case 2:
                            return "03";
                        case 3:
                            return TlvMap.SET_BUZZER_DISABLED_VALUE;
                        case 4:
                            return "02";
                        case 5:
                            return "04";
                        case 6:
                            return TlvMap.ENTRY_MODE_CONTACT;
                        default:
                            return null;
                    }
                }
            } else if (cls == BBDeviceController.DisplayPromptOption.class) {
                if (obj instanceof BBDeviceController.DisplayPromptOption) {
                    int i5 = aaa000zz.aaa007[((BBDeviceController.DisplayPromptOption) obj).ordinal()];
                    if (i5 == 1) {
                        return TlvMap.SET_BUZZER_ENABLED_VALUE;
                    }
                    if (i5 == 2) {
                        return TlvMap.SET_BUZZER_DISABLED_VALUE;
                    }
                    if (i5 != 3) {
                        return null;
                    }
                    return "02";
                }
            } else if (cls == BBDeviceController.DisplayPromptIcon.class) {
                if (obj instanceof BBDeviceController.DisplayPromptIcon) {
                    int i6 = aaa000zz.aaa008[((BBDeviceController.DisplayPromptIcon) obj).ordinal()];
                    if (i6 == 1) {
                        return TlvMap.SET_BUZZER_ENABLED_VALUE;
                    }
                    if (i6 == 2) {
                        return TlvMap.SET_BUZZER_DISABLED_VALUE;
                    }
                    if (i6 != 3) {
                        return null;
                    }
                    return "02";
                }
            } else if (cls == BBDeviceController.DisplayPromptTone.class) {
                if (obj instanceof BBDeviceController.DisplayPromptTone) {
                    int i7 = aaa000zz.aaa009[((BBDeviceController.DisplayPromptTone) obj).ordinal()];
                    if (i7 == 1) {
                        return TlvMap.SET_BUZZER_ENABLED_VALUE;
                    }
                    if (i7 != 2) {
                        return null;
                    }
                    return TlvMap.SET_BUZZER_DISABLED_VALUE;
                }
            } else if (cls == BBDeviceController.PinEntryOrientation.class) {
                if (obj instanceof BBDeviceController.PinEntryOrientation) {
                    int i8 = aaa000zz.aaa010[((BBDeviceController.PinEntryOrientation) obj).ordinal()];
                    if (i8 == 1) {
                        return TlvMap.SET_BUZZER_ENABLED_VALUE;
                    }
                    if (i8 == 2) {
                        return "03";
                    }
                    if (i8 == 3) {
                        return TlvMap.SET_BUZZER_DISABLED_VALUE;
                    }
                    if (i8 != 4) {
                        return null;
                    }
                    return "02";
                }
            } else if (cls == BBDeviceController.OtherAmountOption.class && (obj instanceof BBDeviceController.OtherAmountOption)) {
                int i9 = aaa000zz.aaa011[((BBDeviceController.OtherAmountOption) obj).ordinal()];
                if (i9 == 1) {
                    return TlvMap.SET_BUZZER_ENABLED_VALUE;
                }
                if (i9 != 2) {
                    return null;
                }
                return TlvMap.SET_BUZZER_DISABLED_VALUE;
            }
        } else if (obj instanceof BBDeviceController.EmvOption) {
            int i10 = aaa000zz.aaa001[((BBDeviceController.EmvOption) obj).ordinal()];
            if (i10 == 1) {
                return TlvMap.SET_BUZZER_ENABLED_VALUE;
            }
            if (i10 != 2) {
                return null;
            }
            return TlvMap.SET_BUZZER_DISABLED_VALUE;
        }
        return null;
    }

    static String aaa001(int i) {
        String string = Integer.toString(i, 16);
        while (string.length() % 2 != 0) {
            string = TlbConst.TYPELIB_MINOR_VERSION_SHELL + string;
        }
        if (i < 128) {
            return string.toUpperCase(Locale.ROOT);
        }
        return (Integer.toString((string.length() / 2) | 128, 16) + string).toUpperCase(Locale.ROOT);
    }

    static Hashtable<String, String> aaa002(List<ccc067zz> list) {
        Hashtable<String, String> hashtable = new Hashtable<>();
        for (int i = 0; i < list.size(); i++) {
            ccc067zz ccc067zzVar = list.get(i);
            if (ccc067zzVar.aaa000.equalsIgnoreCase("FF8240")) {
                List<ccc067zz> list2 = ccc067zzVar.aaa004;
                String str = "";
                String str2 = "";
                for (int i2 = 0; i2 < list2.size(); i2++) {
                    ccc067zz ccc067zzVar2 = list2.get(i2);
                    if (ccc067zzVar2.aaa000.equalsIgnoreCase("DF24")) {
                        str = ccc067zzVar2.aaa001;
                    } else if (ccc067zzVar2.aaa000.equalsIgnoreCase(TlvMap.TAG_APPLICATION_ID)) {
                        str2 = ccc067zzVar2.aaa001;
                    }
                }
                hashtable.put(str, str2);
            }
        }
        return hashtable;
    }

    static String aaa003(String str) {
        if (str == null) {
            return "";
        }
        int i = Integer.parseInt(str, 16);
        String str2 = "Invalid display string enum.";
        switch (i) {
            case 1:
                str2 = "No Encrypted Method";
                break;
            case 2:
                str2 = "No Initial Vector";
                break;
            case 3:
                str2 = "No Raw Data";
                break;
            case 4:
                str2 = "No Key Index";
                break;
            case 5:
                str2 = "No Random Number";
                break;
            case 6:
                str2 = "No Encrypted Key";
                break;
            case 7:
                str2 = "Encrypted Key Wrong Length";
                break;
            case 8:
                str2 = "Padding and Encryption Algorithm not Match";
                break;
            case 9:
                str2 = "Encrypted Key Wrong KCV";
                break;
            case 10:
                str2 = "Initial Vector Wrong Length";
                break;
            case 11:
                str2 = "Working Key Wrong Length";
                break;
            case 12:
                str2 = "Random Number Wrong Length";
                break;
            case 13:
                str2 = "No order ID";
                break;
            case 14:
                str2 = "Order ID Wrong Length";
                break;
            case 15:
                str2 = "Unknown Input Error";
                break;
            case 16:
                str2 = "Encrypted Data Key Wrong Length";
                break;
            case 17:
                str2 = "Encrypted PIN Key Wrong Length";
                break;
            case 18:
                str2 = "Encrypted MAC Key Wrong Length";
                break;
            case 19:
                str2 = "Encrypted Data Key Wrong KCV";
                break;
            case 20:
                str2 = "Encrypted PIN Key Wrong KCV";
                break;
            case 21:
                str2 = "Encrypted MAC Key Wrong KCV";
                break;
            case 22:
                str2 = "No Encrypted Data Key";
                break;
            case 23:
                str2 = "No Encrypted PIN Key";
                break;
            case 24:
                str2 = "No Encrypted MAC Key";
                break;
            case 25:
                str2 = "No Check Card Mode";
                break;
            case 26:
                str2 = "PIN Block Wrong Length";
                break;
            case 27:
                str2 = "PAN Wrong Length";
                break;
            case 28:
                str2 = "PIN entry cannot be enabled. Please check the PAN is in swipe card data before calling startPinEntry.";
                break;
            case 29:
                str2 = "startPinEntry has to be called within 1s after onReturnCheckCardResult";
                break;
            case 30:
                str2 = "Command Disabled";
                break;
            case 31:
                str2 = "Card Scheme Not Match";
                break;
            case 32:
                str2 = "Raw Data Wrong Length";
                break;
            case 33:
                str2 = "Integrity Check Failed";
                break;
            case 34:
                str2 = "I/O Error";
                break;
            case 35:
                str2 = "Protocol Error";
                break;
            case 36:
                str2 = "No Card Detected";
                break;
            case 37:
                str2 = "Unknown Tag Type";
                break;
            case 38:
                str2 = "Access Denied";
                break;
            case 39:
                str2 = "Packet Buffer Overflow";
                break;
            case 40:
                str2 = "End of File";
                break;
            case 41:
                str2 = "Out of Memory";
                break;
            case 42:
                str2 = "Function Not Support";
                break;
            case 43:
                str2 = "MIFARE Authentication Error";
                break;
            case 44:
                str2 = "No CAPK Location";
                break;
            case 45:
                str2 = "CAPK Location >= 50";
                break;
            case 46:
                str2 = "No CAPK RID";
                break;
            case 47:
                str2 = "CAPK RID Length != 5";
                break;
            case 48:
                str2 = "No CAPK Index";
                break;
            case 49:
                str2 = "CAPK Index = 0";
                break;
            case 50:
                str2 = "No CAPK Exponent";
                break;
            case 51:
                str2 = "Invalid CAPK Exponent";
                break;
            case 52:
                str2 = "No CAPK Size";
                break;
            case 53:
                str2 = "CAPK Size = 0";
                break;
            case 54:
                str2 = "No CAPK Modulus";
                break;
            case 55:
                str2 = "CAPK Size not match Modulus";
                break;
            case 56:
                str2 = "CAPK Modulus > 248 bytes";
                break;
            case 57:
                str2 = "No CAPK Checksum";
                break;
            case 58:
                str2 = "CAPK Checksum Length != 20";
                break;
            case 59:
                str2 = "CAPK Checksum Not Match";
                break;
            case 60:
                str2 = "No LED Index";
                break;
            case 61:
                str2 = "Invalid LED Index";
                break;
            case 62:
                str2 = "No LED Mode";
                break;
            case 63:
                str2 = "Invalid LED Mode";
                break;
            case 64:
                str2 = "No LED Control Duration";
                break;
            case 65:
                str2 = "Invalid LED Control Duration";
                break;
            case 66:
                str2 = "No ON interval for flashing LED";
                break;
            case 67:
                str2 = "Invalid ON interval for flashing LED";
                break;
            case 68:
                str2 = "No OFF interval for flashing LED";
                break;
            case 69:
                str2 = "Invalid OFF interval for flashing LED";
                break;
            case 70:
                str2 = "LED Control Duration not match the flashing ON-OFF Interval.";
                break;
            case 71:
                str2 = "No LED settings specifed";
                break;
            case 72:
                str2 = "Input Amount Incorrect";
                break;
            case 73:
                str2 = "Invalid Function in Current Connection Mode";
                break;
            case 74:
                str2 = "Cannot start a new transaction within 30s of the last transaction";
                break;
            case 75:
            case 76:
            case 82:
            case WinError.ERROR_SEM_OWNER_DIED /* 105 */:
            default:
                str2 = "Unknown error";
                break;
            case 77:
                str2 = "Invalid VAS mode";
                break;
            case 78:
                str2 = "Invalid VAS merchant URL";
                break;
            case 79:
                str2 = "Hardware cannot support swipe and tap at the same time.";
                break;
            case 80:
                str2 = "Invalid amount input type";
                break;
            case 81:
                str2 = "Invalid QR code data";
                break;
            case 83:
                str2 = "Incorrect Passkey error";
                break;
            case 84:
                str2 = "This device does not support BLE Secure Connection (Bluetooth 4.2).";
                break;
            case WinError.ERROR_ALREADY_ASSIGNED /* 85 */:
                str2 = "The MPOS device already paired with another device.";
                break;
            case 86:
                str2 = "The algorithm of key does not match the intended operation";
                break;
            case 87:
                str2 = "BLE passkey timeout";
                break;
            case 88:
                str2 = "BLE pairing other Error";
                break;
            case 89:
                str2 = "Cannot start a new transaction when no enablement token is received within the last 10 mins";
                break;
            case 90:
                str2 = "Mutual Authentication Fail";
                break;
            case WinUser.SM_MOUSEHORIZONTALWHEELPRESENT /* 91 */:
            case WinUser.SM_CXPADDEDBORDER /* 92 */:
                str2 = "Cannot enter standby mode";
                break;
            case 93:
                str2 = "Exceeded maximum number of areas for foreground color.";
                break;
            case 94:
                str2 = "Exceeded maximum number of areas for background color.";
                break;
            case XAttr.ENOTSUP /* 95 */:
            case WinError.ERROR_SEM_USER_LIMIT /* 106 */:
                break;
            case WinNT.LANG_KASHMIRI /* 96 */:
                str2 = "Invalid scroll speed.";
                break;
            case 97:
                str2 = "Invalid scroll direction.";
                break;
            case 98:
                str2 = "Invalid image data.";
                break;
            case 99:
                str2 = "Missing image foreground color.";
                break;
            case 100:
                str2 = "Missing image background color.";
                break;
            case 101:
                str2 = "The config is not compatible with this version of firmware.";
                break;
            case 102:
                str2 = "The SDK is not compatible with this version of firmware.";
                break;
            case 103:
                str2 = "Exceeded storage limit.";
                break;
            case 104:
                str2 = "Invalid amount input type options.";
                break;
            case WinError.ERROR_DISK_CHANGE /* 107 */:
                str2 = "The test is not available.";
                break;
            case 108:
                str2 = "Not enough output buffer.";
                break;
            case 109:
                str2 = "Cannot power down by command.";
                break;
            case 110:
                str2 = "Missing SRT block number.";
                break;
            case WinError.ERROR_BUFFER_OVERFLOW /* 111 */:
                str2 = "Invalid SRT block number.";
                break;
            case 112:
                str2 = "Invalid SRT command ID.";
                break;
            case WinError.ERROR_NO_MORE_SEARCH_HANDLES /* 113 */:
                str2 = "Missing SRT command ID.";
                break;
            case WinError.ERROR_INVALID_TARGET_HANDLE /* 114 */:
                str2 = "Invalid SRT data.";
                break;
            case 115:
                str2 = "SRT read/write error.";
                break;
            case 116:
                str2 = "Missing encryption keys.";
                break;
            case WinError.ERROR_INVALID_CATEGORY /* 117 */:
                str2 = "Encryption error.";
                break;
            case WinError.ERROR_INVALID_VERIFY_SWITCH /* 118 */:
                str2 = "Invalid key management.";
                break;
            case WinError.ERROR_BAD_DRIVER_LEVEL /* 119 */:
                str2 = "The reader is already connected to another device via USB.";
                break;
            case WinError.ERROR_CALL_NOT_IMPLEMENTED /* 120 */:
                str2 = "The reader is already connected to another device via Bluetooth.";
                break;
        }
        return "Error Code " + i + " - " + str2;
    }

    static List<CAPK> aaa001(List<ccc067zz> list) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            ccc067zz ccc067zzVar = list.get(i);
            if (ccc067zzVar.aaa000.equalsIgnoreCase("FF8242")) {
                List<ccc067zz> list2 = ccc067zzVar.aaa004;
                CAPK capk = new CAPK();
                for (int i2 = 0; i2 < list2.size(); i2++) {
                    ccc067zz ccc067zzVar2 = list2.get(i2);
                    if (ccc067zzVar2.aaa000.equalsIgnoreCase("DF824A")) {
                        capk.location = ccc067zzVar2.aaa001;
                    } else if (ccc067zzVar2.aaa000.equalsIgnoreCase("DF824B")) {
                        capk.rid = ccc067zzVar2.aaa001;
                    } else if (ccc067zzVar2.aaa000.equalsIgnoreCase("DF824D")) {
                        String str = ccc067zzVar2.aaa001;
                        capk.exponent = str;
                        if (str.length() > 6) {
                            capk.exponent = capk.exponent.substring(0, 6);
                        }
                    } else if (ccc067zzVar2.aaa000.equalsIgnoreCase("DF824E")) {
                        capk.modulus = ccc067zzVar2.aaa001;
                    } else if (ccc067zzVar2.aaa000.equalsIgnoreCase("DF824F")) {
                        capk.checksum = ccc067zzVar2.aaa001;
                    } else if (ccc067zzVar2.aaa000.equalsIgnoreCase("DF8250")) {
                        capk.size = ccc067zzVar2.aaa001;
                    } else if (ccc067zzVar2.aaa000.equalsIgnoreCase("9F22")) {
                        String str2 = ccc067zzVar2.aaa001;
                        capk.index = str2;
                        if (str2.length() > 2) {
                            String str3 = capk.index;
                            capk.index = str3.substring(str3.length() - 2, capk.index.length());
                        }
                    }
                }
                arrayList.add(capk);
            } else if (ccc067zzVar.aaa000.equalsIgnoreCase("FF8241")) {
                arrayList.addAll(aaa001(ccc067zzVar.aaa004));
            }
        }
        return arrayList;
    }

    static aaa003zz.aaa002zz aaa002(String str) {
        aaa003zz.aaa002zz aaa002zzVar = aaa003zz.aaa002zz.INPUT_INVALID;
        if (str != null) {
            try {
                int i = Integer.parseInt(str, 16);
                if (i == 73) {
                    return aaa003zz.aaa002zz.INVALID_FUNCTION_IN_CURRENT_MODE;
                }
                if (i == 74) {
                    return aaa003zz.aaa002zz.PCI_ERROR;
                }
                if (i == 82) {
                    return aaa003zz.aaa002zz.UNKNOWN;
                }
                if (i == 83) {
                    return aaa003zz.aaa002zz.PAIRING_ERROR_INCORRECT_PASSKEY;
                }
                if (i == 84) {
                    return aaa003zz.aaa002zz.BLE_SECURE_CONNECTION_NOT_SUPPORTED;
                }
                if (i == 85) {
                    return aaa003zz.aaa002zz.PAIRING_ERROR_ALREADY_PAIRED_WITH_ANOTHER_DEVICE;
                }
                if (i == 87) {
                    return aaa003zz.aaa002zz.PAIRING_ERROR;
                }
                if (i == 88) {
                    return aaa003zz.aaa002zz.PAIRING_ERROR;
                }
                if (i == 91) {
                    return aaa003zz.aaa002zz.UNKNOWN;
                }
                if (i == 92) {
                    return aaa003zz.aaa002zz.UNKNOWN;
                }
                if (i != 93 && i != 94 && i != 95 && i != 96 && i != 97 && i != 98 && i != 99 && i != 100) {
                    if (i == 101) {
                        return aaa003zz.aaa002zz.NOT_COMPATIBLE_ERROR;
                    }
                    if (i == 102) {
                        return aaa003zz.aaa002zz.NOT_COMPATIBLE_ERROR;
                    }
                    if (i != 103 && i != 104 && i != 106 && i != 107) {
                        if (i == 109) {
                            return aaa003zz.aaa002zz.CMD_NOT_AVAILABLE;
                        }
                        if (i != 110 && i != 111 && i != 112 && i != 113 && i != 114 && i != 115) {
                            if (i == 116) {
                                return aaa003zz.aaa002zz.CMD_NOT_AVAILABLE;
                            }
                            if (i != 117 && i != 118) {
                                if (i == 119) {
                                    return aaa003zz.aaa002zz.FAIL_TO_START_BTV4;
                                }
                                if (i == 120) {
                                    return aaa003zz.aaa002zz.FAIL_TO_START_USB;
                                }
                                if (i >= 82) {
                                    return aaa003zz.aaa002zz.UNKNOWN;
                                }
                            }
                        }
                    }
                }
            } catch (Exception unused) {
            }
        }
        return aaa002zzVar;
    }

    static boolean aaa001(String str) {
        return str.equals(RemoteConfigConstants.RequestFieldKey.SDK_VERSION) || str.equals("productID") || str.equals("formatID") || str.equals("vendorID") || str.equals("isSupportedTrack1") || str.equals("isSupportedTrack2") || str.equals("isSupportedTrack3") || str.equals("isSupportedNfc") || str.equals("batteryPercentage") || str.equals("bootloaderVersion") || str.equals("firmwareVersion") || str.equals("isUsbConnected") || str.equals("isCharging") || str.equals("batteryLevel") || str.equals("hardwareVersion") || str.equals("pinKsn") || str.equals("pinKsn1") || str.equals("pinKsn2") || str.equals("pinKsn3") || str.equals("pinKsn4") || str.equals("trackKsn") || str.equals("trackKsn1") || str.equals("trackKsn2") || str.equals("trackKsn3") || str.equals("trackKsn4") || str.equals("emvKsn") || str.equals("emvKsn1") || str.equals("emvKsn2") || str.equals("emvKsn3") || str.equals("emvKsn4") || str.equals("csn") || str.equals("uid") || str.equals("terminalSettingVersion") || str.equals("deviceSettingVersion") || str.equals("coprocessorVersion") || str.equals("coprocessorBootloaderVersion") || str.equals("serialNumber") || str.equals("modelName") || str.equals("macKsn") || str.equals("macKsn1") || str.equals("macKsn2") || str.equals("macKsn3") || str.equals("macKsn4") || str.equals("nfcKsn") || str.equals("messageKsn") || str.equals("cmacKsn") || str.equals("bID") || str.equals("publicKeyVersion") || str.equals("caKeyVersion") || str.equals("df8602") || str.equals("firmwareID") || str.equals("bootloaderID") || str.equals("mcuInfo") || str.equals("supportCubeSecurityMode") || str.equals("supportSPoCFeature") || str.equals("isSupportedSoftwarePinPad") || str.equals("coinCellBatteryVoltage") || str.equals("rssi") || str.equals("deviceTamperStatus") || str.equals("iccReadSucc") || str.equals("iccReadFail") || str.equals("ctlReadSucc") || str.equals("ctlReadFail") || str.equals("msrReadSucc") || str.equals("msrReadFail") || str.equals("isSupportedPowerSaving") || str.equals("healthCheckStatus") || str.equals("internalTamperState") || str.equals("pinKeyProfileID") || str.equals("pinKeyProfileID1") || str.equals("pinKeyProfileID2") || str.equals("pinKeyProfileID3") || str.equals("pinKeyProfileID4") || str.equals("emvKeyProfileID") || str.equals("emvKeyProfileID1") || str.equals("emvKeyProfileID2") || str.equals("emvKeyProfileID3") || str.equals("emvKeyProfileID4") || str.equals("trackKeyProfileID") || str.equals("trackKeyProfileID1") || str.equals("trackKeyProfileID2") || str.equals("trackKeyProfileID3") || str.equals("trackKeyProfileID4") || str.equals("macKeyProfileID") || str.equals("macKeyProfileID1") || str.equals("macKeyProfileID2") || str.equals("macKeyProfileID3") || str.equals("macKeyProfileID4") || str.equals("spocKeyProfileID") || str.equals("cmacKeyProfileID") || str.equals("hardwareID") || str.equals("defaultLanguage") || str.equals("supportedLanguages") || str.equals("emvKeyModulusHash") || str.equals("trackKeyModulusHash") || str.equals("fskPublicKeyHash") || str.equals("mmk1PublicKeyHash") || str.equals("tmk0CmacKcv") || str.equals("tmk1CmacKcv") || str.equals("tmk2CmacKcv") || str.equals("tmk3CmacKcv") || str.equals("isRebootRequired") || str.equals("mmk0PublicKeyHash") || str.equals("p2peReadiness") || str.equals("p2peEnvironment") || str.equals("firmwareDebugInfo") || str.equals("factoryMode");
    }

    static HashMap<String, String> aaa001() {
        HashMap<String, String> map = new HashMap<>();
        map.put("D3", "productID");
        map.put("D4", "formatID");
        map.put("DF25", "vendorID");
        map.put("DF12", "hardwareVersion");
        map.put("DF05", "pinKsn");
        map.put("DF8671", "pinKsn1");
        map.put("DF8672", "pinKsn2");
        map.put("DF8673", "pinKsn3");
        map.put("DF8674", "pinKsn4");
        map.put("DF07", "trackKsn");
        map.put("DF890A", "trackKsn1");
        map.put("DF890B", "trackKsn2");
        map.put("DF890C", "trackKsn3");
        map.put("DF890D", "trackKsn4");
        map.put("DF06", "emvKsn");
        map.put("DF8906", "emvKsn1");
        map.put("DF8907", "emvKsn2");
        map.put("DF8908", "emvKsn3");
        map.put("DF8909", "emvKsn4");
        map.put("DF08", "macKsn");
        map.put("DF890E", "macKsn1");
        map.put("DF890F", "macKsn2");
        map.put("DF8910", "macKsn3");
        map.put("DF8911", "macKsn4");
        map.put("DF8349", "nfcKsn");
        map.put("DF834A", "messageKsn");
        map.put("DF8912", "cmacKsn");
        map.put("D6", "bootloaderVersion");
        map.put("D7", "firmwareVersion");
        map.put("DF31", "csn");
        map.put("D8", "uid");
        map.put("DF834F", "bID");
        map.put("DF5E", "terminalSettingVersion");
        map.put("DF5D", "deviceSettingVersion");
        map.put("DF8625", "firmwareID");
        map.put("DF8626", "bootloaderID");
        map.put("DF8665", "hardwareID");
        map.put("DF8629", "mcuInfo");
        map.put("DF826E", "serialNumber");
        map.put("DF8328", "modelName");
        map.put("DF8237", "batteryPercentage");
        map.put("DF8363", "publicKeyVersion");
        map.put("DF5F", "caKeyVersion");
        map.put("DF10", "coprocessorVersion");
        map.put("DF0F", "coprocessorBootloaderVersion");
        map.put("DF8748", "emvKeyModulusHash");
        map.put("DF872F", "defaultLanguage");
        map.put("DF8730", "supportedLanguages");
        map.put("DF877C", "tmk0CmacKcv");
        map.put("DF8955", "tmk1CmacKcv");
        map.put("DF8962", "tmk2CmacKcv");
        map.put("DF8963", "tmk3CmacKcv");
        map.put("DF861B", "mmk0PublicKeyHash");
        map.put("DF8768", "isRebootRequired");
        map.put("DF877B", "mmk1PublicKeyHash");
        map.put("DF8778", "fskPublicKeyHash");
        map.put("DF871A", "iccReadSucc");
        map.put("DF871B", "iccReadFail");
        map.put("DF871C", "ctlReadSucc");
        map.put("DF871D", "ctlReadFail");
        map.put("DF8718", "msrReadSucc");
        map.put("DF8719", "msrReadFail");
        map.put("DF894B", "firmwareDebugInfo");
        map.put("DF821F", "factoryMode");
        return map;
    }

    static ccc017zz aaa000(Hashtable<String, String> hashtable, String str, String str2, boolean z, boolean z2, int i, aaa003zz aaa003zzVar, boolean z3) {
        String str3 = "";
        ccc017zz ccc017zzVar = new ccc017zz(ccc017zz.aaa000zz.SKIP, "");
        if (!hashtable.containsKey(str)) {
            if (z) {
                return ccc017zzVar;
            }
            if (z3) {
                aaa003zzVar.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, str + " is missing");
            }
            ccc017zzVar.aaa000(ccc017zz.aaa000zz.FAIL);
            ccc017zzVar.aaa000(str + " is missing");
            return ccc017zzVar;
        }
        String str4 = hashtable.get(str);
        if (z2) {
            if (ccc071zz.aaa008(str4)) {
                if (!ccc071zz.aaa006(str4)) {
                    if (z3) {
                        aaa003zzVar.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "invalid " + str);
                    }
                    ccc017zzVar.aaa000(ccc017zz.aaa000zz.FAIL);
                    ccc017zzVar.aaa000("invalid " + str);
                    return ccc017zzVar;
                }
                str3 = str4;
            }
            ccc017zzVar.aaa000(ccc017zz.aaa000zz.SUCCESS);
            ccc017zzVar.aaa000(str2 + aaa001(str3.length() / 2) + str3);
            return ccc017zzVar;
        }
        if (!ccc071zz.aaa006(str4)) {
            if (z3) {
                aaa003zzVar.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "invalid " + str);
            }
            ccc017zzVar.aaa000(ccc017zz.aaa000zz.FAIL);
            ccc017zzVar.aaa000("invalid " + str);
            return ccc017zzVar;
        }
        ccc017zzVar.aaa000(ccc017zz.aaa000zz.SUCCESS);
        ccc017zzVar.aaa000(str2 + aaa001(str4.length() / 2) + str4);
        return ccc017zzVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:107:0x01a9, code lost:
    
        if (r0.length() > 2) goto L108;
     */
    /* JADX WARN: Code restructure failed: missing block: B:216:0x035b, code lost:
    
        if (r0 == null) goto L217;
     */
    /* JADX WARN: Code restructure failed: missing block: B:283:0x04b5, code lost:
    
        if (((java.lang.Boolean) r21).booleanValue() != false) goto L284;
     */
    /* JADX WARN: Code restructure failed: missing block: B:284:0x04b7, code lost:
    
        r0 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:285:0x04ba, code lost:
    
        r16 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:293:0x04d2, code lost:
    
        if (((java.lang.Boolean) r21).booleanValue() != false) goto L285;
     */
    /* JADX WARN: Code restructure failed: missing block: B:303:0x04f2, code lost:
    
        if (r0.equalsIgnoreCase(com.stripe.hardware.emv.TlvMap.SET_BUZZER_ENABLED_VALUE) != false) goto L284;
     */
    /* JADX WARN: Code restructure failed: missing block: B:502:0x08f6, code lost:
    
        if (r6.equalsIgnoreCase("") != false) goto L503;
     */
    /* JADX WARN: Code restructure failed: missing block: B:636:0x0b23, code lost:
    
        if (r0.length() > 4) goto L637;
     */
    /* JADX WARN: Removed duplicated region for block: B:605:0x0aa0 A[PHI: r16
      0x0aa0: PHI (r16v10 java.lang.String) = 
      (r16v6 java.lang.String)
      (r16v7 java.lang.String)
      (r16v7 java.lang.String)
      (r16v7 java.lang.String)
      (r16v7 java.lang.String)
      (r16v7 java.lang.String)
      (r16v11 java.lang.String)
     binds: [B:599:0x0a80, B:566:0x09eb, B:515:0x0921, B:517:0x0925, B:329:0x054e, B:334:0x055f, B:218:0x035e] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:651:0x0b5a  */
    /* JADX WARN: Removed duplicated region for block: B:653:0x0b7f A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static java.lang.String aaa000(java.lang.Object r21, java.lang.String r22) {
        /*
            Method dump skipped, instruction units count: 2944
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.bbpos.bbdevice.ccc034zz.aaa000(java.lang.Object, java.lang.String):java.lang.String");
    }

    static String aaa000(Object obj, String str, Object obj2, Object obj3, int[] iArr) {
        String strAaa000;
        int iIntValue;
        String str2;
        String str3;
        if (iArr != null && iArr.length >= 1) {
            iArr[0] = 0;
        }
        if (obj2 == null) {
            if (iArr != null && iArr.length >= 1) {
                iArr[0] = 2;
            }
            return null;
        }
        if ((str.equalsIgnoreCase(TlvMap.TAG_AMOUNT_AUTHORIZED) || str.equalsIgnoreCase("DF852D") || str.equalsIgnoreCase("DF852E") || str.equalsIgnoreCase("DF852F") || str.equalsIgnoreCase("DF8558") || str.equalsIgnoreCase("DF8559") || str.equalsIgnoreCase("DF855A") || str.equalsIgnoreCase("DF8928")) && ((obj instanceof Float) || (obj instanceof Double) || (obj instanceof Short) || (obj instanceof Integer) || (obj instanceof Long) || (obj instanceof String))) {
            String strAaa0002 = aaa000(obj);
            boolean z = obj2 instanceof String;
            if (!z && !(obj2 instanceof byte[])) {
                return null;
            }
            if (z) {
                strAaa000 = (String) obj2;
            } else if (obj2 instanceof byte[]) {
                strAaa000 = ccc071zz.aaa000((byte[]) obj2);
            } else {
                if (iArr != null && iArr.length >= 1) {
                    iArr[0] = 2;
                }
                return null;
            }
            String strSubstring = "";
            if (strAaa000.equalsIgnoreCase("")) {
                if (iArr != null && iArr.length >= 1) {
                    iArr[0] = 2;
                }
                return null;
            }
            if (strAaa000.length() > 4) {
                return null;
            }
            while (strAaa000.length() < 4) {
                strAaa000 = TlbConst.TYPELIB_MINOR_VERSION_SHELL + strAaa000;
            }
            if (!ccc071zz.aaa006(strAaa000)) {
                return null;
            }
            if (strAaa0002.equals("")) {
                if (str.equalsIgnoreCase("DF8928")) {
                    return "";
                }
                strAaa0002 = TlbConst.TYPELIB_MINOR_VERSION_SHELL;
            }
            if (obj3 == null) {
                Hashtable<String, Integer> hashtable = aaa000;
                if (!hashtable.containsKey(strAaa000)) {
                    return null;
                }
                iIntValue = hashtable.get(strAaa000).intValue();
            } else {
                try {
                    if (obj3 instanceof String) {
                        iIntValue = Integer.parseInt((String) obj3);
                    } else if (obj3 instanceof Integer) {
                        iIntValue = ((Integer) obj3).intValue();
                    } else {
                        if (iArr != null && iArr.length >= 1) {
                            iArr[0] = 4;
                        }
                        return null;
                    }
                    if (iIntValue < 0 || iIntValue > 3) {
                        if (iArr != null && iArr.length >= 1) {
                            iArr[0] = 5;
                        }
                        return null;
                    }
                } catch (Exception unused) {
                    if (iArr != null && iArr.length >= 1) {
                        iArr[0] = 4;
                    }
                    return null;
                }
            }
            if (iIntValue > 0) {
                str2 = "\\d{1," + (12 - iIntValue) + "}(\\.\\d{1," + iIntValue + "})?";
            } else {
                str2 = "\\d{1,12}";
            }
            if (!Pattern.matches(str2, strAaa0002)) {
                if (iArr != null && iArr.length >= 1) {
                    iArr[0] = 6;
                }
                return null;
            }
            if (Double.parseDouble(strAaa0002) < 0.0d) {
                return null;
            }
            int iIndexOf = strAaa0002.indexOf(".");
            if (iIndexOf != -1) {
                String strSubstring2 = strAaa0002.substring(0, iIndexOf);
                strSubstring = strAaa0002.substring(iIndexOf + 1);
                strAaa0002 = strSubstring2;
            }
            while (strAaa0002.length() < 12 - iIntValue) {
                strAaa0002 = TlbConst.TYPELIB_MINOR_VERSION_SHELL + strAaa0002;
            }
            while (strSubstring.length() < iIntValue) {
                strSubstring = strSubstring + TlbConst.TYPELIB_MINOR_VERSION_SHELL;
            }
            str3 = strAaa0002 + strSubstring;
        } else {
            str3 = null;
        }
        if (str3 != null) {
            return str + aaa001(str3.length() / 2) + str3;
        }
        return null;
    }

    static String aaa000(Object obj, Object obj2, Object obj3, Object obj4, int[] iArr, Object obj5) {
        String strAaa000;
        String strAaa0002;
        String strAaa0003;
        int iIntValue;
        int i;
        String str;
        String strSubstring;
        int i2;
        String strSubstring2;
        if (iArr != null && iArr.length >= 1) {
            iArr[0] = 0;
        }
        if (obj3 == null || obj4 == null) {
            if (obj3 == null) {
                if (iArr != null && iArr.length >= 1) {
                    iArr[0] = 2;
                }
            } else if (obj4 == null && iArr != null && iArr.length >= 1) {
                iArr[0] = 3;
            }
            return null;
        }
        String str2 = "";
        if (obj == null) {
            strAaa000 = "";
        } else {
            if (!(obj instanceof Float) && !(obj instanceof Double) && !(obj instanceof Short) && !(obj instanceof Integer) && !(obj instanceof Long) && !(obj instanceof String)) {
                return null;
            }
            strAaa000 = aaa000(obj);
        }
        if (obj2 == null) {
            strAaa0002 = "";
        } else {
            if (!(obj2 instanceof Float) && !(obj2 instanceof Double) && !(obj2 instanceof Short) && !(obj2 instanceof Integer) && !(obj2 instanceof Long) && !(obj2 instanceof String)) {
                return null;
            }
            strAaa0002 = aaa000(obj2);
        }
        if (strAaa000.equalsIgnoreCase("") && strAaa0002.equalsIgnoreCase("")) {
            if (iArr != null && iArr.length >= 1) {
                if ((obj4 instanceof BBDeviceController.TransactionType) && ((BBDeviceController.TransactionType) obj4) == BBDeviceController.TransactionType.CASHBACK) {
                    iArr[0] = 9;
                    return null;
                }
                iArr[0] = 8;
            }
            return null;
        }
        boolean z = obj3 instanceof String;
        if (!z && !(obj3 instanceof byte[])) {
            return null;
        }
        if (z) {
            strAaa0003 = (String) obj3;
        } else if (obj3 instanceof byte[]) {
            strAaa0003 = ccc071zz.aaa000((byte[]) obj3);
        } else {
            if (iArr != null && iArr.length >= 1) {
                iArr[0] = 2;
            }
            return null;
        }
        if (strAaa0003.equalsIgnoreCase("")) {
            if (iArr != null && iArr.length >= 1) {
                iArr[0] = 2;
            }
            return null;
        }
        if (strAaa0003.length() > 4) {
            return null;
        }
        while (strAaa0003.length() < 4) {
            strAaa0003 = TlbConst.TYPELIB_MINOR_VERSION_SHELL + strAaa0003;
        }
        if (ccc071zz.aaa006(strAaa0003) && (obj4 instanceof BBDeviceController.TransactionType)) {
            BBDeviceController.TransactionType transactionType = (BBDeviceController.TransactionType) obj4;
            if (strAaa000.equals("")) {
                strAaa000 = TlbConst.TYPELIB_MINOR_VERSION_SHELL;
            }
            if (strAaa0002.equals("")) {
                strAaa0002 = TlbConst.TYPELIB_MINOR_VERSION_SHELL;
            }
            if (obj5 == null) {
                Hashtable<String, Integer> hashtable = aaa000;
                if (!hashtable.containsKey(strAaa0003)) {
                    return null;
                }
                iIntValue = hashtable.get(strAaa0003).intValue();
                i = -1;
            } else {
                try {
                    if (obj5 instanceof String) {
                        iIntValue = Integer.parseInt((String) obj5);
                    } else if (obj5 instanceof Integer) {
                        iIntValue = ((Integer) obj5).intValue();
                    } else {
                        if (iArr != null && iArr.length >= 1) {
                            iArr[0] = 4;
                        }
                        return null;
                    }
                    if (iIntValue < 0 || iIntValue > 3) {
                        if (iArr != null && iArr.length >= 1) {
                            iArr[0] = 5;
                        }
                        return null;
                    }
                    i = iIntValue;
                } catch (Exception unused) {
                    if (iArr != null && iArr.length >= 1) {
                        iArr[0] = 4;
                    }
                }
            }
            if (iIntValue > 0) {
                str = "\\d{1," + (12 - iIntValue) + "}(\\.\\d{1," + iIntValue + "})?";
            } else {
                str = "\\d{1,12}";
            }
            if (!Pattern.matches(str, strAaa000)) {
                if (iArr != null && iArr.length >= 1) {
                    iArr[0] = 6;
                }
                return null;
            }
            if (!Pattern.matches(str, strAaa0002)) {
                if (iArr != null && iArr.length >= 1) {
                    iArr[0] = 7;
                }
                return null;
            }
            double d = Double.parseDouble(strAaa000);
            double d2 = Double.parseDouble(strAaa0002);
            if (transactionType == BBDeviceController.TransactionType.GOODS || transactionType == BBDeviceController.TransactionType.SERVICES || transactionType == BBDeviceController.TransactionType.TRANSFER || transactionType == BBDeviceController.TransactionType.PAYMENT || transactionType == BBDeviceController.TransactionType.REFUND || transactionType == BBDeviceController.TransactionType.CASH) {
                if (d < 0.0d) {
                    return null;
                }
                if (d2 > 0.0d) {
                    if (iArr != null && iArr.length >= 1) {
                        iArr[0] = 1;
                    }
                    return null;
                }
            } else if (transactionType == BBDeviceController.TransactionType.CASHBACK && d2 < 0.0d) {
                return null;
            }
            int iIndexOf = strAaa000.indexOf(".");
            if (iIndexOf == -1) {
                strSubstring = "";
            } else {
                String strSubstring3 = strAaa000.substring(0, iIndexOf);
                strSubstring = strAaa000.substring(iIndexOf + 1);
                strAaa000 = strSubstring3;
            }
            while (true) {
                i2 = 12 - iIntValue;
                if (strAaa000.length() >= i2) {
                    break;
                }
                strAaa000 = TlbConst.TYPELIB_MINOR_VERSION_SHELL + strAaa000;
            }
            while (strSubstring.length() < iIntValue) {
                strSubstring = strSubstring + TlbConst.TYPELIB_MINOR_VERSION_SHELL;
            }
            String str3 = strAaa000 + strSubstring;
            String str4 = TlvMap.TAG_AMOUNT_AUTHORIZED + aaa001(str3.length() / 2) + str3;
            int iIndexOf2 = strAaa0002.indexOf(".");
            if (iIndexOf2 == -1) {
                strSubstring2 = "";
            } else {
                String strSubstring4 = strAaa0002.substring(0, iIndexOf2);
                strSubstring2 = strAaa0002.substring(iIndexOf2 + 1);
                strAaa0002 = strSubstring4;
            }
            while (strAaa0002.length() < i2) {
                strAaa0002 = TlbConst.TYPELIB_MINOR_VERSION_SHELL + strAaa0002;
            }
            while (strSubstring2.length() < iIntValue) {
                strSubstring2 = strSubstring2 + TlbConst.TYPELIB_MINOR_VERSION_SHELL;
            }
            String str5 = strAaa0002 + strSubstring2;
            String str6 = (str4 + TlvMap.TAG_CASHBACK_AMOUNT + aaa001(str5.length() / 2) + str5) + TlvMap.TAG_TRANSACTION_CURRENCY_CODE + aaa001(strAaa0003.length() / 2) + strAaa0003;
            String strAaa0004 = aaa000((Object) Integer.valueOf(iIntValue), Integer.class);
            if (i >= 0) {
                strAaa0004 = aaa000((Object) Integer.valueOf(i), Integer.class);
            }
            String str7 = str6 + TlvMap.TAG_TRANSACTION_CURRENCY_EXPONENT + aaa001(strAaa0004.length() / 2) + strAaa0004;
            if (transactionType == BBDeviceController.TransactionType.GOODS) {
                str2 = "04";
            } else if (transactionType == BBDeviceController.TransactionType.SERVICES) {
                str2 = "08";
            } else if (transactionType == BBDeviceController.TransactionType.CASHBACK) {
                str2 = "02";
            } else if (transactionType == BBDeviceController.TransactionType.INQUIRY) {
                str2 = "06";
            } else if (transactionType == BBDeviceController.TransactionType.TRANSFER) {
                str2 = "10";
            } else if (transactionType == BBDeviceController.TransactionType.PAYMENT) {
                str2 = "12";
            } else if (transactionType == BBDeviceController.TransactionType.REFUND) {
                str2 = "14";
            } else if (transactionType == BBDeviceController.TransactionType.CASH) {
                str2 = "17";
            } else if (transactionType == BBDeviceController.TransactionType.VOID) {
                str2 = TlvMap.TAG_APPLICATION_PRIMARY_ACCOUNT_NUMBER;
            } else if (transactionType == BBDeviceController.TransactionType.REVERSAL) {
                str2 = "5B";
            }
            return str7 + TlvMap.TAG_TRANSACTION_TYPE + aaa001(str2.length() / 2) + str2;
        }
        return null;
    }

    static String aaa000(Object obj, Object obj2, int[] iArr, Object obj3, boolean z) {
        String strAaa000;
        String strAaa0002;
        int iIntValue;
        int i;
        String str;
        if (iArr != null && iArr.length >= 1) {
            iArr[0] = 0;
        }
        if (obj2 == null) {
            if (iArr != null && iArr.length >= 1) {
                iArr[0] = 2;
            }
            return null;
        }
        String strSubstring = "";
        if (obj == null) {
            strAaa000 = "";
        } else {
            boolean z2 = obj instanceof String;
            if (z2 && ((String) obj).equalsIgnoreCase("")) {
                iArr[0] = 7;
                return null;
            }
            if (!(obj instanceof Float) && !(obj instanceof Double) && !(obj instanceof Short) && !(obj instanceof Integer) && !(obj instanceof Long) && !z2) {
                return null;
            }
            strAaa000 = aaa000(obj);
        }
        boolean z3 = obj2 instanceof String;
        if (!z3 && !(obj2 instanceof byte[])) {
            return null;
        }
        if (z3) {
            strAaa0002 = (String) obj2;
        } else if (obj2 instanceof byte[]) {
            strAaa0002 = ccc071zz.aaa000((byte[]) obj2);
        } else {
            if (iArr != null && iArr.length >= 1) {
                iArr[0] = 2;
            }
            return null;
        }
        if (strAaa0002.equalsIgnoreCase("")) {
            if (iArr != null && iArr.length >= 1) {
                iArr[0] = 2;
            }
            return null;
        }
        if (strAaa0002.length() > 4) {
            return null;
        }
        while (strAaa0002.length() < 4) {
            strAaa0002 = TlbConst.TYPELIB_MINOR_VERSION_SHELL + strAaa0002;
        }
        if (!ccc071zz.aaa006(strAaa0002)) {
            return null;
        }
        if (strAaa000.equals("")) {
            strAaa000 = TlbConst.TYPELIB_MINOR_VERSION_SHELL;
        }
        if (obj3 == null) {
            Hashtable<String, Integer> hashtable = aaa000;
            if (!hashtable.containsKey(strAaa0002)) {
                return null;
            }
            iIntValue = hashtable.get(strAaa0002).intValue();
            i = -1;
        } else {
            try {
                if (obj3 instanceof String) {
                    iIntValue = Integer.parseInt((String) obj3);
                } else if (obj3 instanceof Integer) {
                    iIntValue = ((Integer) obj3).intValue();
                } else {
                    if (iArr != null && iArr.length >= 1) {
                        iArr[0] = 4;
                    }
                    return null;
                }
                if (iIntValue < 0 || iIntValue > 3) {
                    if (iArr != null && iArr.length >= 1) {
                        iArr[0] = 5;
                    }
                    return null;
                }
                i = iIntValue;
            } catch (Exception unused) {
                if (iArr != null && iArr.length >= 1) {
                    iArr[0] = 4;
                }
                return null;
            }
        }
        if (iIntValue > 0) {
            str = "\\d{1," + (12 - iIntValue) + "}(\\.\\d{1," + iIntValue + "})?";
        } else {
            str = "\\d{1,12}";
        }
        if (!Pattern.matches(str, strAaa000)) {
            if (iArr != null && iArr.length >= 1) {
                iArr[0] = 6;
            }
            return null;
        }
        if (Double.parseDouble(strAaa000) < 0.0d) {
            return null;
        }
        int iIndexOf = strAaa000.indexOf(".");
        if (iIndexOf != -1) {
            String strSubstring2 = strAaa000.substring(0, iIndexOf);
            strSubstring = strAaa000.substring(iIndexOf + 1);
            strAaa000 = strSubstring2;
        }
        while (strAaa000.length() < 12 - iIntValue) {
            strAaa000 = TlbConst.TYPELIB_MINOR_VERSION_SHELL + strAaa000;
        }
        while (strSubstring.length() < iIntValue) {
            strSubstring = strSubstring + TlbConst.TYPELIB_MINOR_VERSION_SHELL;
        }
        String str2 = strAaa000 + strSubstring;
        String str3 = "DF861F" + aaa001(str2.length() / 2) + str2;
        if (!z) {
            return str3;
        }
        String str4 = str3 + TlvMap.TAG_TRANSACTION_CURRENCY_CODE + aaa001(strAaa0002.length() / 2) + strAaa0002;
        String strAaa0003 = aaa000((Object) Integer.valueOf(iIntValue), Integer.class);
        if (i >= 0) {
            strAaa0003 = aaa000((Object) Integer.valueOf(i), Integer.class);
        }
        return str4 + TlvMap.TAG_TRANSACTION_CURRENCY_EXPONENT + aaa001(strAaa0003.length() / 2) + strAaa0003;
    }

    static String aaa000(Object obj, Object obj2, Object obj3, Object obj4) {
        String str;
        String str2;
        if (obj == null) {
            str = TlvMap.SET_BUZZER_ENABLED_VALUE;
        } else {
            if (!(obj instanceof BBDeviceController.EncryptionMethod)) {
                return null;
            }
            switch (aaa000zz.aaa013[((BBDeviceController.EncryptionMethod) obj).ordinal()]) {
                case 1:
                    str = "04";
                    break;
                case 2:
                    str = "03";
                    break;
                case 3:
                    str = "09";
                    break;
                case 4:
                    str = "06";
                    break;
                case 5:
                    str = TlvMap.ENTRY_MODE_CONTACT;
                    break;
                case 6:
                    str = TlvMap.ENTRY_MODE_CONTACTLESS;
                    break;
                case 7:
                    str = "08";
                    break;
                case 8:
                    str = "02";
                    break;
                case 9:
                    str = TlvMap.SET_BUZZER_DISABLED_VALUE;
                    break;
                default:
                    str = "";
                    break;
            }
        }
        if (obj2 != null) {
            if (!(obj2 instanceof BBDeviceController.EncryptionKeySource)) {
                return null;
            }
            switch (aaa000zz.aaa014[((BBDeviceController.EncryptionKeySource) obj2).ordinal()]) {
                case 1:
                    str = str + "03";
                    break;
                case 2:
                    str = str + TlvMap.SET_BUZZER_DISABLED_VALUE;
                    break;
                case 3:
                    str = str + "02";
                    break;
                case 4:
                    str = str + "04";
                    break;
                case 5:
                    str = str + TlvMap.ENTRY_MODE_CONTACT;
                    break;
                case 6:
                    str = str + "06";
                    break;
            }
        } else {
            str = str + TlvMap.SET_BUZZER_ENABLED_VALUE;
        }
        if (obj3 != null) {
            if (!(obj3 instanceof BBDeviceController.EncryptionPaddingMethod)) {
                return null;
            }
            int i = aaa000zz.aaa015[((BBDeviceController.EncryptionPaddingMethod) obj3).ordinal()];
            if (i == 1) {
                str = str + "02";
            } else if (i == 2) {
                str = str + TlvMap.SET_BUZZER_DISABLED_VALUE;
            }
        } else {
            str = str + TlvMap.SET_BUZZER_ENABLED_VALUE;
        }
        if (obj4 != null) {
            if (obj4 instanceof Integer) {
                str2 = str + ccc071zz.aaa000((byte) ((Integer) obj4).intValue());
            } else {
                if (obj4 instanceof String) {
                    try {
                        str2 = str + ccc071zz.aaa000((byte) Integer.parseInt((String) obj4));
                    } catch (Exception unused) {
                    }
                }
                return null;
            }
        } else {
            str2 = str + TlvMap.SET_BUZZER_ENABLED_VALUE;
        }
        return "DF5B" + aaa001(str2.length() / 2) + str2;
    }

    static String aaa000(Object obj, Object obj2) {
        String strAaa000 = aaa000(obj, byte[].class);
        if (strAaa000 == null) {
            return null;
        }
        if (obj2 != null) {
            String strAaa0002 = aaa000(obj2, byte[].class);
            if (strAaa0002 == null) {
                return null;
            }
            strAaa000 = strAaa000 + strAaa0002;
        }
        return "DF5C" + aaa001(strAaa000.length() / 2) + strAaa000;
    }

    static boolean aaa000(CAPK capk) {
        if (capk.location.length() == 2 && capk.rid.length() == 10) {
            return (capk.exponent.length() == 2 || capk.exponent.length() == 6) && capk.checksum.length() == 40 && capk.size.length() == 4 && capk.index.length() == 2 && ccc071zz.aaa006(capk.location) && ccc071zz.aaa006(capk.rid) && ccc071zz.aaa006(capk.exponent) && ccc071zz.aaa006(capk.checksum) && ccc071zz.aaa006(capk.size) && ccc071zz.aaa006(capk.index) && ccc071zz.aaa006(capk.modulus);
        }
        return false;
    }

    static String aaa000(String str) {
        if (str.equalsIgnoreCase("DF837C")) {
            return "appIndex";
        }
        if (str.equalsIgnoreCase(TlvMap.TAG_APPLICATION_ID)) {
            return "aid";
        }
        if (str.equalsIgnoreCase(TlvMap.TAG_TERMINAL_APPLICATION_VERSION_NUMBER)) {
            return RemoteConfigConstants.RequestFieldKey.APP_VERSION;
        }
        if (str.equalsIgnoreCase("DF8120")) {
            return "contactTACDefault";
        }
        if (str.equalsIgnoreCase("DF8121")) {
            return "contactTACDenial";
        }
        if (str.equalsIgnoreCase("DF8122")) {
            return "contactTACOnline";
        }
        if (str.equalsIgnoreCase("DF20")) {
            return "contactlessTACDefault";
        }
        if (str.equalsIgnoreCase("DF21")) {
            return "contactlessTACDenial";
        }
        if (str.equalsIgnoreCase("DF22")) {
            return "contactlessTACOnline";
        }
        if (str.equalsIgnoreCase(TlvMap.TAG_TDOL)) {
            return "defaultTDOL";
        }
        if (str.equalsIgnoreCase(TlvMap.TAG_DDOL)) {
            return "defaultDDOL";
        }
        if (str.equalsIgnoreCase("DF24")) {
            return "contactlessTransactionLimit";
        }
        if (str.equalsIgnoreCase("DF25")) {
            return "contactlessTransactionLimitODCV";
        }
        if (str.equalsIgnoreCase("DF26")) {
            return "contactlessCVMRequiredLimit";
        }
        if (str.equalsIgnoreCase("DF23")) {
            return "contactlessFloorLimit";
        }
        if (str.equalsIgnoreCase(TlvMap.TAG_TERMINAL_FLOOR_LIMIT)) {
            return "terminalFloorLimit";
        }
        if (str.equalsIgnoreCase(TlvMap.TAG_TERMINAL_CAPABILITIES)) {
            return BbposDeviceControllerImpl.TERMINAL_CAPABILITIES_PARAM_NAME;
        }
        if (str.equalsIgnoreCase(TlvMap.TAG_TERMINAL_TYPE)) {
            return "terminalType";
        }
        if (str.equalsIgnoreCase("9F2A")) {
            return "contactlessKernelID";
        }
        if (str.equalsIgnoreCase("EB")) {
            return "kernelConfigData";
        }
        return str.equalsIgnoreCase("EC") ? "dcpos" : str;
    }

    static aaa003zz.EnumC0044aaa003zz aaa000(int i) {
        if (i == 48) {
            return aaa003zz.EnumC0044aaa003zz.BROADCOM;
        }
        if (i == 49) {
            return aaa003zz.EnumC0044aaa003zz.TI;
        }
        if (i == 50) {
            return aaa003zz.EnumC0044aaa003zz.TSB501;
        }
        if (i == 51) {
            return aaa003zz.EnumC0044aaa003zz.TSB503;
        }
        if (i == 52) {
            return aaa003zz.EnumC0044aaa003zz.TSB551;
        }
        if (i == 53) {
            return aaa003zz.EnumC0044aaa003zz.YI_CHIP_1021;
        }
        return aaa003zz.EnumC0044aaa003zz.UNKNOWN;
    }

    static Activity aaa000() {
        try {
            Class<?> cls = Class.forName("android.app.ActivityThread");
            Object objInvoke = cls.getMethod("currentActivityThread", new Class[0]).invoke(null, new Object[0]);
            Field declaredField = cls.getDeclaredField("mActivities");
            declaredField.setAccessible(true);
            Map map = (Map) declaredField.get(objInvoke);
            if (map == null) {
                return null;
            }
            for (Object obj : map.values()) {
                Class<?> cls2 = obj.getClass();
                Field declaredField2 = cls2.getDeclaredField("paused");
                declaredField2.setAccessible(true);
                if (!declaredField2.getBoolean(obj)) {
                    Field declaredField3 = cls2.getDeclaredField("activity");
                    declaredField3.setAccessible(true);
                    return (Activity) declaredField3.get(obj);
                }
            }
        } catch (Exception unused) {
        }
        return null;
    }

    static String aaa000(Object obj) {
        boolean z = obj instanceof Float;
        String str = "";
        if (z || (obj instanceof Double) || (obj instanceof Short) || (obj instanceof Integer) || (obj instanceof Long) || (obj instanceof String)) {
            if (z) {
                str = String.format(Locale.ROOT, "%f", Float.valueOf(((Float) obj).floatValue()));
            } else if (obj instanceof Double) {
                str = String.format(Locale.ROOT, "%f", Double.valueOf(((Double) obj).doubleValue()));
            } else {
                str = "" + obj;
            }
        }
        String strReplaceAll = str.replaceAll(",", ".");
        int iLastIndexOf = strReplaceAll.lastIndexOf(".");
        if (iLastIndexOf >= 0) {
            int length = strReplaceAll.length() - 1;
            boolean z2 = true;
            while (z2) {
                if (length <= iLastIndexOf || strReplaceAll.charAt(strReplaceAll.length() - 1) != '0') {
                    z2 = false;
                } else {
                    strReplaceAll = strReplaceAll.substring(0, strReplaceAll.length() - 1);
                    length--;
                }
            }
        }
        return (strReplaceAll.length() <= 0 || strReplaceAll.charAt(strReplaceAll.length() - 1) != '.') ? strReplaceAll : strReplaceAll.substring(0, strReplaceAll.length() - 1);
    }

    static String aaa000(List<ccc067zz> list) {
        String str = "";
        for (int i = 0; i < list.size(); i++) {
            str = str + ccc071zz.aaa002(list.get(i).aaa000, list.get(i).aaa001);
        }
        return str;
    }

    static Hashtable<String, Object> aaa000(Hashtable<String, aaa003zz.aaa015zz> hashtable) {
        return new Hashtable<>(hashtable);
    }
}
