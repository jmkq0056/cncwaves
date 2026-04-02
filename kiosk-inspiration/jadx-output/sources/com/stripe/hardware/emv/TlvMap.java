package com.stripe.hardware.emv;

import com.stripe.misc.CardBrand;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.CharsKt;
import kotlin.text.HexExtensionsKt;
import kotlin.text.HexFormat;
import kotlin.text.StringsKt;
import okio.ByteString;

/* JADX INFO: compiled from: TlvMap.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010(\n\u0002\u0010&\n\u0002\b\u0003\u0018\u0000 82\u00020\u0001:\u00018B\u0019\u0012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0002\u0010\u0005J\u000e\u0010.\u001a\u00020\u001e2\u0006\u0010/\u001a\u00020\u0004J\u0013\u00100\u001a\u00020\u001e2\b\u00101\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u00102\u001a\u00020\u001eH\u0002J\u0013\u00103\u001a\u0004\u0018\u00010\u00042\u0006\u0010/\u001a\u00020\u0004H\u0086\u0002J\u0018\u00104\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040605J\u0006\u00107\u001a\u00020\u0004R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u00078F¢\u0006\u0006\u001a\u0004\b\b\u0010\tR\u0011\u0010\n\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\b\u000b\u0010\fR\u0013\u0010\r\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0006\u001a\u0004\b\u000e\u0010\fR\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0006\u001a\u0004\b\u0010\u0010\fR\u0011\u0010\u0011\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\b\u0012\u0010\fR\u001f\u0010\u0013\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00148F¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0016R\u0013\u0010\u0017\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0006\u001a\u0004\b\u0018\u0010\fR\u0013\u0010\u0019\u001a\u0004\u0018\u00010\u001a8F¢\u0006\u0006\u001a\u0004\b\u001b\u0010\u001cR\u0011\u0010\u001d\u001a\u00020\u001e8F¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u001fR\u0019\u0010 \u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010!8F¢\u0006\u0006\u001a\u0004\b\"\u0010#R\u0013\u0010$\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0006\u001a\u0004\b%\u0010\fR\u001a\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010&\u001a\u00020'8F¢\u0006\u0006\u001a\u0004\b(\u0010)R\u0011\u0010*\u001a\u00020+8F¢\u0006\u0006\u001a\u0004\b,\u0010-¨\u00069"}, d2 = {"Lcom/stripe/hardware/emv/TlvMap;", "", "map", "", "", "(Ljava/util/Map;)V", "applicationId", "Lcom/stripe/hardware/emv/ApplicationId;", "getApplicationId", "()Lcom/stripe/hardware/emv/ApplicationId;", "applicationName", "getApplicationName", "()Ljava/lang/String;", "cardholderName", "getCardholderName", "cardholderVerificationMethod", "getCardholderVerificationMethod", "dedicatedFileName", "getDedicatedFileName", "expMonthAndYear", "Lkotlin/Pair;", "getExpMonthAndYear", "()Lkotlin/Pair;", "first6", "getFirst6", "interfaceType", "Lcom/stripe/hardware/emv/InterfaceType;", "getInterfaceType", "()Lcom/stripe/hardware/emv/InterfaceType;", "isMobileWallet", "", "()Z", "languagePreferences", "", "getLanguagePreferences", "()Ljava/util/List;", "last4", "getLast4", "size", "", "getSize", "()I", "sourceType", "Lcom/stripe/hardware/emv/SourceType;", "getSourceType", "()Lcom/stripe/hardware/emv/SourceType;", "contains", "tag", "equals", "other", "evaluateMobileWalletIdentifier", "get", "getTags", "", "", "toBlob", "Companion", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class TlvMap {
    public static final String ENTRY_MODE_CONTACT = "05";
    public static final String ENTRY_MODE_CONTACTLESS = "07";
    public static final String SET_BUZZER_DISABLED_VALUE = "01";
    public static final String TAG_ACCOUNT_TYPE = "5F57";
    public static final String TAG_ACQUIRER_IDENTIFIER = "9F01";
    public static final String TAG_ADDITIONAL_TERMINAL_CAPABILITIES = "9F40";
    public static final String TAG_ADF_NAME = "4F";
    public static final String TAG_AMEX_MOBILE_WALLET_IDENTIFIER = "9F79";
    public static final String TAG_AMOUNT_AUTHORIZED = "9F02";
    public static final String TAG_APPLICATION_CRYPTOGRAM = "9F26";
    public static final String TAG_APPLICATION_ID = "9F06";
    public static final String TAG_APPLICATION_INTERCHANGE_PROFILE = "82";
    public static final String TAG_APPLICATION_LABEL = "50";
    public static final String TAG_APPLICATION_PAN_SEQUENCE_NUMBER = "5F34";
    public static final String TAG_APPLICATION_PREFERRED_NAME = "9F12";
    public static final String TAG_APPLICATION_PRIMARY_ACCOUNT_NUMBER = "5A";
    public static final String TAG_APPLICATION_TRANSACTION_COUNTER = "9F36";
    public static final String TAG_APPLICATION_USAGE_CONTROL = "9F07";
    public static final String TAG_APPLICATION_VERSION_NUMBER = "9F08";
    public static final String TAG_AUTH_RESPONSE_CODE = "8A";
    public static final String TAG_BBPOS_PAN_FIRST_SIX_AND_LAST_FOUR = "C4";
    public static final String TAG_BLUETOOTH_DISCOVERY_TIMEOUT = "DF837B";
    public static final String TAG_BUZZER_SOUND_ENABLED = "DF8424";
    public static final String TAG_CARDHOLDER_NAME = "5F20";
    public static final String TAG_CASHBACK_AMOUNT = "9F03";
    public static final String TAG_CONFIG_HASH = "DF8438";
    public static final String TAG_CONTACTLESS_READER_CAPABILITIES = "9F6D";
    public static final String TAG_CRYPTOGRAM_INFORMATION_DATA = "9F27";
    public static final String TAG_CUSTOMER_VERIFICATION_METHOD_RESULTS = "9F34";
    public static final String TAG_CUSTOM_BLUETOOTH_NAME_PREFIX = "DF8408";
    public static final String TAG_CUSTOM_BLUETOOTH_SERIAL_SUFFIX = "DF8409";
    public static final String TAG_DDOL = "9F49";
    public static final String TAG_DEDICATED_FILE_NAME = "84";
    public static final String TAG_DOMESTIC_DEBIT_AID_LIST = "DF8926";
    public static final String TAG_EXPIRATION_DATE = "5F24";
    public static final String TAG_FIRMWARE_FALLBACK_ENABLED = "DF8407";
    public static final String TAG_FIRMWARE_FORCE_CHIP_ENABLED = "DF840D";
    public static final String TAG_FORM_FACTOR_INDICATOR = "9F6E";
    public static final String TAG_ICC_TRANSACTION_BEEP_ENABLED = "DF8421";
    public static final String TAG_ISSUER_APPLICATION_DATA = "9F10";
    public static final String TAG_KEYPAD_EVENT_BEEP_ENABLED = "DF842C";
    public static final String TAG_LANGUAGE_PREFERENCE = "5F2D";
    public static final String TAG_MERCHANT_IDENTIFIER = "9F16";
    public static final String TAG_MERCHANT_NAME = "9F4E";
    public static final String TAG_MOBILE_CVM_RESULTS = "9F71";
    public static final String TAG_MSR_PIN_ENTRY_TIMEOUT = "DF8403";
    public static final String TAG_NORMAL_MODE_TIMEOUT = "DF8370";
    public static final String TAG_PIN_DATA = "99";
    public static final String TAG_POS_ENTRY_MODE = "9F39";
    public static final String TAG_SERVICE_CODE = "5F30";
    public static final String TAG_SPOC_MODE_ENABLED = "DF866B";
    public static final String TAG_STANDBY_MODE_TIMEOUT = "DF8367";
    public static final String TAG_TDOL = "97";
    public static final String TAG_TERMINAL_APPLICATION_VERSION_NUMBER = "9F09";
    public static final String TAG_TERMINAL_CAPABILITIES = "9F33";
    public static final String TAG_TERMINAL_COUNTRY_CODE = "9F1A";
    public static final String TAG_TERMINAL_FLOOR_LIMIT = "9F1B";
    public static final String TAG_TERMINAL_IDENTIFICATION = "9F1C";
    public static final String TAG_TERMINAL_SERIAL_NUMBER = "9F1E";
    public static final String TAG_TERMINAL_TYPE = "9F35";
    public static final String TAG_TERMINAL_VERIFICATION_RESULTS = "95";
    public static final String TAG_TRACK_2_DATA = "57";
    public static final String TAG_TRANSACTION_CURRENCY_CODE = "5F2A";
    public static final String TAG_TRANSACTION_CURRENCY_EXPONENT = "5F36";
    public static final String TAG_TRANSACTION_DATE = "9A";
    public static final String TAG_TRANSACTION_SEQUENCE_COUNTER = "9F41";
    public static final String TAG_TRANSACTION_STATUS_INFORMATION = "9B";
    public static final String TAG_TRANSACTION_TIME = "9F21";
    public static final String TAG_TRANSACTION_TYPE = "9C";
    public static final String TAG_UNPREDICTABLE_NUMBER = "9F37";
    public static final String TAG_VISA_DYNAMIC_READER_LIMIT = "DFDF09";
    public static final String TAG_VISA_MASTERCARD_MOBILE_WALLET_IDENTIFIER = "9F19";
    private final Map<String, String> map;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final String SET_BUZZER_ENABLED_VALUE = "00";
    private static final List<String> MASTERCARD_CARD_FORM_FACTORS = CollectionsKt.listOf((Object[]) new String[]{SET_BUZZER_ENABLED_VALUE, "20"});
    private static final List<String> VISA_MOBILE_WALLET_IDENTIFIERS = CollectionsKt.listOf((Object[]) new String[]{"040010030273", "040010075001", "040010043095", "040010069887", "040010077056"});
    private static final List<String> AMEX_MOBILE_WALLET_IDENTIFIERS = CollectionsKt.listOf("594B");
    private static final List<String> DISCOVER_MOBILE_WALLET_IDENTIFIERS = CollectionsKt.listOf((Object[]) new String[]{"000000000001", "000000000003"});
    private static final List<String> EFTPOS_AU_MOBILE_WALLET_IDENTIFIERS = CollectionsKt.listOf("006110030273");
    private static final List<String> MASTERCARD_MOBILE_WALLET_IDENTIFIERS = CollectionsKt.emptyList();

    /* JADX INFO: compiled from: TlvMap.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[CvmType.values().length];
            try {
                iArr[CvmType.OFFLINE_PLAINTEXT_PIN_AND_SIGNATURE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[CvmType.OFFLINE_ENCIPHERED_PIN_AND_SIGNATURE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[CvmType.ONLINE_ENCIPHERED_PIN.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[CvmType.OFFLINE_ENCIPHERED_PIN.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[CvmType.OFFLINE_PLAINTEXT_PIN.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[CardBrand.values().length];
            try {
                iArr2[CardBrand.VISA.ordinal()] = 1;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr2[CardBrand.AMEX.ordinal()] = 2;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr2[CardBrand.MASTERCARD.ordinal()] = 3;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr2[CardBrand.DISCOVER.ordinal()] = 4;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr2[CardBrand.JCB.ordinal()] = 5;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr2[CardBrand.UNIONPAY.ordinal()] = 6;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr2[CardBrand.GIROCARD.ordinal()] = 7;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                iArr2[CardBrand.DINERS_CLUB.ordinal()] = 8;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                iArr2[CardBrand.EFTPOS_AU.ordinal()] = 9;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                iArr2[CardBrand.UNKNOWN.ordinal()] = 10;
            } catch (NoSuchFieldError unused15) {
            }
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    public TlvMap(Map<String, String> map) {
        Intrinsics.checkNotNullParameter(map, "map");
        this.map = map;
    }

    public final int getSize() {
        return this.map.size();
    }

    public final String get(String tag) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        return this.map.get(tag);
    }

    public final boolean contains(String tag) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        return this.map.containsKey(tag);
    }

    public boolean equals(Object other) {
        if (other instanceof TlvMap) {
            return Intrinsics.areEqual(this.map, ((TlvMap) other).map);
        }
        return false;
    }

    public final Iterator<Map.Entry<String, String>> getTags() {
        return this.map.entrySet().iterator();
    }

    public final String getApplicationName() {
        String dedicatedFileName;
        String str = this.map.get(TAG_APPLICATION_PREFERRED_NAME);
        if (str == null || str.length() == 0) {
            String str2 = this.map.get(TAG_APPLICATION_LABEL);
            if (str2 == null || str2.length() == 0) {
                dedicatedFileName = getDedicatedFileName();
            } else {
                dedicatedFileName = INSTANCE.fromHexToAscii((String) MapsKt.getValue(this.map, TAG_APPLICATION_LABEL));
            }
        } else {
            dedicatedFileName = INSTANCE.fromHexToAscii((String) MapsKt.getValue(this.map, TAG_APPLICATION_PREFERRED_NAME));
        }
        return Intrinsics.areEqual(dedicatedFileName, "Stripe PIN Credi") ? "Stripe PIN Credit" : dedicatedFileName;
    }

    public final ApplicationId getApplicationId() {
        return ApplicationIdKt.getApplicationIdOrNull(this.map.get(TAG_APPLICATION_ID));
    }

    public final List<String> getLanguagePreferences() {
        String str = this.map.get(TAG_LANGUAGE_PREFERENCE);
        if (str == null || str.length() == 0 || ((String) MapsKt.getValue(this.map, TAG_LANGUAGE_PREFERENCE)).length() % 4 != 0) {
            return null;
        }
        return StringsKt.chunked(INSTANCE.fromHexToAscii((String) MapsKt.getValue(this.map, TAG_LANGUAGE_PREFERENCE)), 2);
    }

    public final SourceType getSourceType() {
        if (StringsKt.startsWith$default(getDedicatedFileName(), ApplicationId.INTERAC.getId(), false, 2, (Object) null)) {
            return SourceType.INTERAC_PRESENT;
        }
        return SourceType.CARD_PRESENT;
    }

    public final String getDedicatedFileName() {
        String str = this.map.get(TAG_ADF_NAME);
        return str == null ? (String) MapsKt.getValue(this.map, TAG_DEDICATED_FILE_NAME) : str;
    }

    public final String getCardholderVerificationMethod() {
        String str = get(TAG_CUSTOMER_VERIFICATION_METHOD_RESULTS);
        if (str == null || str.length() < 6) {
            return null;
        }
        byte[] byteArray = ByteString.INSTANCE.decodeHex(str).toByteArray();
        byte b = byteArray[2];
        CvmType cvmTypeFromCode = CvmType.INSTANCE.fromCode((byte) (ArraysKt.first(byteArray) & 31));
        int i = WhenMappings.$EnumSwitchMapping$0[cvmTypeFromCode.ordinal()];
        if (i == 1 || i == 2 || i == 3) {
            if (b != CvmStatus.UNKNOWN.ordinal()) {
                cvmTypeFromCode = CvmType.FAILURE;
            }
        } else if ((i == 4 || i == 5) && b != CvmStatus.SUCCESS.ordinal()) {
            cvmTypeFromCode = CvmType.FAILURE;
        }
        return cvmTypeFromCode.toString();
    }

    public final String toBlob() {
        String strPadStart;
        StringBuilder sb = new StringBuilder();
        HexFormat.Builder builder = new HexFormat.Builder();
        builder.setUpperCase(true);
        builder.getNumber().setRemoveLeadingZeros(true);
        HexFormat hexFormatBuild = builder.build();
        for (Map.Entry<String, String> entry : this.map.entrySet()) {
            String key = entry.getKey();
            String value = entry.getValue();
            int length = value.length();
            int i = length >>> 1;
            int i2 = length >>> 9;
            int i3 = i2 + 1;
            if (i < 128) {
                strPadStart = StringsKt.padStart(HexExtensionsKt.toHexString(i, hexFormatBuild), 2, '0');
            } else {
                strPadStart = HexExtensionsKt.toHexString(i2 + 129, hexFormatBuild) + StringsKt.padStart(HexExtensionsKt.toHexString(i, hexFormatBuild), i3 * 2, '0');
            }
            sb.append(key).append(strPadStart).append(value);
        }
        String string = sb.toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        return string;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:72:0x018c A[ADDED_TO_REGION, RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean isMobileWallet() {
        /*
            Method dump skipped, instruction units count: 426
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.hardware.emv.TlvMap.isMobileWallet():boolean");
    }

    public final Pair<String, String> getExpMonthAndYear() {
        String str = get(TAG_EXPIRATION_DATE);
        if (str == null) {
            return null;
        }
        String strSubstring = str.substring(0, 2);
        Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
        String strSubstring2 = str.substring(2, 4);
        Intrinsics.checkNotNullExpressionValue(strSubstring2, "substring(...)");
        return new Pair<>(strSubstring, strSubstring2);
    }

    public final String getLast4() {
        String strReplace$default;
        String strTakeLast;
        String str = get(TAG_BBPOS_PAN_FIRST_SIX_AND_LAST_FOUR);
        if (str == null || (strReplace$default = StringsKt.replace$default(str, "F", "", false, 4, (Object) null)) == null || (strTakeLast = StringsKt.takeLast(strReplace$default, 4)) == null || strTakeLast.length() != 4) {
            return null;
        }
        return strTakeLast;
    }

    public final String getFirst6() {
        String strTake;
        String str = get(TAG_BBPOS_PAN_FIRST_SIX_AND_LAST_FOUR);
        if (str == null || (strTake = StringsKt.take(str, 6)) == null || strTake.length() != 6) {
            return null;
        }
        return strTake;
    }

    public final String getCardholderName() {
        String str = get(TAG_CARDHOLDER_NAME);
        if (str != null) {
            return INSTANCE.fromHexToAscii(str);
        }
        return null;
    }

    public final InterfaceType getInterfaceType() {
        String str = get(TAG_POS_ENTRY_MODE);
        if (Intrinsics.areEqual(str, ENTRY_MODE_CONTACT)) {
            return InterfaceType.CONTACT;
        }
        if (Intrinsics.areEqual(str, ENTRY_MODE_CONTACTLESS)) {
            return InterfaceType.CONTACTLESS;
        }
        return null;
    }

    private final boolean evaluateMobileWalletIdentifier() {
        CardBrand cardBrandForApplication;
        String str;
        List<String> list;
        ApplicationId applicationId = getApplicationId();
        if (applicationId == null || (cardBrandForApplication = ApplicationIdKt.getCardBrandForApplication(applicationId)) == null) {
            return false;
        }
        if (cardBrandForApplication == CardBrand.AMEX) {
            str = get(TAG_AMEX_MOBILE_WALLET_IDENTIFIER);
        } else {
            str = get(TAG_VISA_MASTERCARD_MOBILE_WALLET_IDENTIFIER);
        }
        int i = WhenMappings.$EnumSwitchMapping$1[cardBrandForApplication.ordinal()];
        if (i == 1) {
            list = VISA_MOBILE_WALLET_IDENTIFIERS;
        } else if (i == 2) {
            list = AMEX_MOBILE_WALLET_IDENTIFIERS;
        } else if (i == 3) {
            list = MASTERCARD_MOBILE_WALLET_IDENTIFIERS;
        } else if (i == 4) {
            list = DISCOVER_MOBILE_WALLET_IDENTIFIERS;
        } else {
            if (i != 9) {
                return false;
            }
            list = EFTPOS_AU_MOBILE_WALLET_IDENTIFIERS;
        }
        return CollectionsKt.contains(list, str);
    }

    /* JADX INFO: compiled from: TlvMap.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\bW\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\n\u0010[\u001a\u00020\u0005*\u00020\u0005J\f\u0010\\\u001a\u0004\u0018\u00010]*\u00020\u0005R\u0017\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0017\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\u0007R\u0017\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\u0007R\u000e\u0010\f\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u0017\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0007R\u0017\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0007R\u000e\u0010\u0012\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010'\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010(\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010)\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010*\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010+\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010,\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010-\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010.\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010/\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u00100\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u00101\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u00102\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u00103\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u00104\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u00105\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u00106\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u00107\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u00108\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u00109\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010:\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010;\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010<\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010=\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010>\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010?\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010@\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010A\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010B\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010C\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010D\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010E\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010F\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010G\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010H\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010I\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010J\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010K\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010L\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010M\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010N\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010O\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010P\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010Q\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010R\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010S\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010T\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010U\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010V\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010W\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010X\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u0017\u0010Y\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\b\n\u0000\u001a\u0004\bZ\u0010\u0007¨\u0006^"}, d2 = {"Lcom/stripe/hardware/emv/TlvMap$Companion;", "", "()V", "AMEX_MOBILE_WALLET_IDENTIFIERS", "", "", "getAMEX_MOBILE_WALLET_IDENTIFIERS", "()Ljava/util/List;", "DISCOVER_MOBILE_WALLET_IDENTIFIERS", "getDISCOVER_MOBILE_WALLET_IDENTIFIERS", "EFTPOS_AU_MOBILE_WALLET_IDENTIFIERS", "getEFTPOS_AU_MOBILE_WALLET_IDENTIFIERS", "ENTRY_MODE_CONTACT", "ENTRY_MODE_CONTACTLESS", "MASTERCARD_CARD_FORM_FACTORS", "getMASTERCARD_CARD_FORM_FACTORS", "MASTERCARD_MOBILE_WALLET_IDENTIFIERS", "getMASTERCARD_MOBILE_WALLET_IDENTIFIERS", "SET_BUZZER_DISABLED_VALUE", "SET_BUZZER_ENABLED_VALUE", "TAG_ACCOUNT_TYPE", "TAG_ACQUIRER_IDENTIFIER", "TAG_ADDITIONAL_TERMINAL_CAPABILITIES", "TAG_ADF_NAME", "TAG_AMEX_MOBILE_WALLET_IDENTIFIER", "TAG_AMOUNT_AUTHORIZED", "TAG_APPLICATION_CRYPTOGRAM", "TAG_APPLICATION_ID", "TAG_APPLICATION_INTERCHANGE_PROFILE", "TAG_APPLICATION_LABEL", "TAG_APPLICATION_PAN_SEQUENCE_NUMBER", "TAG_APPLICATION_PREFERRED_NAME", "TAG_APPLICATION_PRIMARY_ACCOUNT_NUMBER", "TAG_APPLICATION_TRANSACTION_COUNTER", "TAG_APPLICATION_USAGE_CONTROL", "TAG_APPLICATION_VERSION_NUMBER", "TAG_AUTH_RESPONSE_CODE", "TAG_BBPOS_PAN_FIRST_SIX_AND_LAST_FOUR", "TAG_BLUETOOTH_DISCOVERY_TIMEOUT", "TAG_BUZZER_SOUND_ENABLED", "TAG_CARDHOLDER_NAME", "TAG_CASHBACK_AMOUNT", "TAG_CONFIG_HASH", "TAG_CONTACTLESS_READER_CAPABILITIES", "TAG_CRYPTOGRAM_INFORMATION_DATA", "TAG_CUSTOMER_VERIFICATION_METHOD_RESULTS", "TAG_CUSTOM_BLUETOOTH_NAME_PREFIX", "TAG_CUSTOM_BLUETOOTH_SERIAL_SUFFIX", "TAG_DDOL", "TAG_DEDICATED_FILE_NAME", "TAG_DOMESTIC_DEBIT_AID_LIST", "TAG_EXPIRATION_DATE", "TAG_FIRMWARE_FALLBACK_ENABLED", "TAG_FIRMWARE_FORCE_CHIP_ENABLED", "TAG_FORM_FACTOR_INDICATOR", "TAG_ICC_TRANSACTION_BEEP_ENABLED", "TAG_ISSUER_APPLICATION_DATA", "TAG_KEYPAD_EVENT_BEEP_ENABLED", "TAG_LANGUAGE_PREFERENCE", "TAG_MERCHANT_IDENTIFIER", "TAG_MERCHANT_NAME", "TAG_MOBILE_CVM_RESULTS", "TAG_MSR_PIN_ENTRY_TIMEOUT", "TAG_NORMAL_MODE_TIMEOUT", "TAG_PIN_DATA", "TAG_POS_ENTRY_MODE", "TAG_SERVICE_CODE", "TAG_SPOC_MODE_ENABLED", "TAG_STANDBY_MODE_TIMEOUT", "TAG_TDOL", "TAG_TERMINAL_APPLICATION_VERSION_NUMBER", "TAG_TERMINAL_CAPABILITIES", "TAG_TERMINAL_COUNTRY_CODE", "TAG_TERMINAL_FLOOR_LIMIT", "TAG_TERMINAL_IDENTIFICATION", "TAG_TERMINAL_SERIAL_NUMBER", "TAG_TERMINAL_TYPE", "TAG_TERMINAL_VERIFICATION_RESULTS", "TAG_TRACK_2_DATA", "TAG_TRANSACTION_CURRENCY_CODE", "TAG_TRANSACTION_CURRENCY_EXPONENT", "TAG_TRANSACTION_DATE", "TAG_TRANSACTION_SEQUENCE_COUNTER", "TAG_TRANSACTION_STATUS_INFORMATION", "TAG_TRANSACTION_TIME", "TAG_TRANSACTION_TYPE", "TAG_UNPREDICTABLE_NUMBER", "TAG_VISA_DYNAMIC_READER_LIMIT", "TAG_VISA_MASTERCARD_MOBILE_WALLET_IDENTIFIER", "VISA_MOBILE_WALLET_IDENTIFIERS", "getVISA_MOBILE_WALLET_IDENTIFIERS", "fromHexToAscii", "toTlvMap", "Lcom/stripe/hardware/emv/TlvMap;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final List<String> getMASTERCARD_CARD_FORM_FACTORS() {
            return TlvMap.MASTERCARD_CARD_FORM_FACTORS;
        }

        public final List<String> getVISA_MOBILE_WALLET_IDENTIFIERS() {
            return TlvMap.VISA_MOBILE_WALLET_IDENTIFIERS;
        }

        public final List<String> getAMEX_MOBILE_WALLET_IDENTIFIERS() {
            return TlvMap.AMEX_MOBILE_WALLET_IDENTIFIERS;
        }

        public final List<String> getDISCOVER_MOBILE_WALLET_IDENTIFIERS() {
            return TlvMap.DISCOVER_MOBILE_WALLET_IDENTIFIERS;
        }

        public final List<String> getEFTPOS_AU_MOBILE_WALLET_IDENTIFIERS() {
            return TlvMap.EFTPOS_AU_MOBILE_WALLET_IDENTIFIERS;
        }

        public final List<String> getMASTERCARD_MOBILE_WALLET_IDENTIFIERS() {
            return TlvMap.MASTERCARD_MOBILE_WALLET_IDENTIFIERS;
        }

        public final TlvMap toTlvMap(String str) {
            int i;
            int iHexToInt$default;
            Intrinsics.checkNotNullParameter(str, "<this>");
            try {
                HashMap map = new HashMap();
                int i2 = 0;
                while (i2 < str.length()) {
                    String strSubstring = str.substring(i2, i2 + 2);
                    Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
                    if ((HexExtensionsKt.hexToInt$default(strSubstring, null, 1, null) & 31) == 31) {
                        int i3 = 1;
                        while (true) {
                            i = i3 + 1;
                            String strSubstring2 = str.substring((i3 << 1) + i2, (i << 1) + i2);
                            Intrinsics.checkNotNullExpressionValue(strSubstring2, "substring(...)");
                            if ((HexExtensionsKt.hexToInt$default(strSubstring2, null, 1, null) & 128) != 128) {
                                break;
                            }
                            i3 = i;
                        }
                    } else {
                        i = 1;
                    }
                    int i4 = (i << 1) + i2;
                    String strSubstring3 = str.substring(i2, i4);
                    Intrinsics.checkNotNullExpressionValue(strSubstring3, "substring(...)");
                    int i5 = i4 + 2;
                    String strSubstring4 = str.substring(i4, i5);
                    Intrinsics.checkNotNullExpressionValue(strSubstring4, "substring(...)");
                    int iHexToInt$default2 = HexExtensionsKt.hexToInt$default(strSubstring4, null, 1, null);
                    int i6 = (iHexToInt$default2 & 128) == 128 ? (iHexToInt$default2 & (-129)) + 1 : 1;
                    if (i6 == 1) {
                        String strSubstring5 = str.substring(i4, i5);
                        Intrinsics.checkNotNullExpressionValue(strSubstring5, "substring(...)");
                        iHexToInt$default = HexExtensionsKt.hexToInt$default(strSubstring5, null, 1, null);
                    } else {
                        String strSubstring6 = str.substring(i5, (i6 << 1) + i4);
                        Intrinsics.checkNotNullExpressionValue(strSubstring6, "substring(...)");
                        iHexToInt$default = HexExtensionsKt.hexToInt$default(strSubstring6, null, 1, null);
                    }
                    int i7 = i4 + (i6 << 1);
                    int i8 = (iHexToInt$default << 1) + i7;
                    if (i8 > str.length()) {
                        return null;
                    }
                    String strSubstring7 = str.substring(i7, i8);
                    Intrinsics.checkNotNullExpressionValue(strSubstring7, "substring(...)");
                    map.put(strSubstring3, strSubstring7);
                    i2 = i8;
                }
                return new TlvMap(map);
            } catch (Exception unused) {
                return null;
            }
        }

        public final String fromHexToAscii(String str) {
            Intrinsics.checkNotNullParameter(str, "<this>");
            List<String> listChunked = StringsKt.chunked(str, 2);
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(listChunked, 10));
            Iterator<T> it = listChunked.iterator();
            while (it.hasNext()) {
                arrayList.add(Character.valueOf((char) Integer.parseInt((String) it.next(), CharsKt.checkRadix(16))));
            }
            return CollectionsKt.joinToString$default(arrayList, "", null, null, 0, null, null, 62, null);
        }
    }
}
