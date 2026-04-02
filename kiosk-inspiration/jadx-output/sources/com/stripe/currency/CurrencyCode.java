package com.stripe.currency;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.logging.type.LogSeverity;
import com.google.zxing.pdf417.PDF417Common;
import com.sun.jna.platform.win32.WinError;
import com.sun.jna.platform.win32.WinUser;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.apache.http.HttpStatus;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: CurrencyCode.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00005\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\b\n\u0002\u0010\u000b\n\u0003\b½\u0001\b\u0086\u0081\u0002\u0018\u0000 Ñ\u00012\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0002Ñ\u0001B3\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0012\u0010\u0007\u001a\n\u0012\u0006\b\u0001\u0012\u00020\t0\b\"\u00020\t¢\u0006\u0002\u0010\nJ\b\u0010\u0014\u001a\u00020\u0015H\u0016J\b\u0010\u0016\u001a\u00020\u0015H\u0016R\u0017\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\t0\f¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0012j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019j\u0002\b\u001aj\u0002\b\u001bj\u0002\b\u001cj\u0002\b\u001dj\u0002\b\u001ej\u0002\b\u001fj\u0002\b j\u0002\b!j\u0002\b\"j\u0002\b#j\u0002\b$j\u0002\b%j\u0002\b&j\u0002\b'j\u0002\b(j\u0002\b)j\u0002\b*j\u0002\b+j\u0002\b,j\u0002\b-j\u0002\b.j\u0002\b/j\u0002\b0j\u0002\b1j\u0002\b2j\u0002\b3j\u0002\b4j\u0002\b5j\u0002\b6j\u0002\b7j\u0002\b8j\u0002\b9j\u0002\b:j\u0002\b;j\u0002\b<j\u0002\b=j\u0002\b>j\u0002\b?j\u0002\b@j\u0002\bAj\u0002\bBj\u0002\bCj\u0002\bDj\u0002\bEj\u0002\bFj\u0002\bGj\u0002\bHj\u0002\bIj\u0002\bJj\u0002\bKj\u0002\bLj\u0002\bMj\u0002\bNj\u0002\bOj\u0002\bPj\u0002\bQj\u0002\bRj\u0002\bSj\u0002\bTj\u0002\bUj\u0002\bVj\u0002\bWj\u0002\bXj\u0002\bYj\u0002\bZj\u0002\b[j\u0002\b\\j\u0002\b]j\u0002\b^j\u0002\b_j\u0002\b`j\u0002\baj\u0002\bbj\u0002\bcj\u0002\bdj\u0002\bej\u0002\bfj\u0002\bgj\u0002\bhj\u0002\bij\u0002\bjj\u0002\bkj\u0002\blj\u0002\bmj\u0002\bnj\u0002\boj\u0002\bpj\u0002\bqj\u0002\brj\u0002\bsj\u0002\btj\u0002\buj\u0002\bvj\u0002\bwj\u0002\bxj\u0002\byj\u0002\bzj\u0002\b{j\u0002\b|j\u0002\b}j\u0002\b~j\u0002\b\u007fj\u0003\b\u0080\u0001j\u0003\b\u0081\u0001j\u0003\b\u0082\u0001j\u0003\b\u0083\u0001j\u0003\b\u0084\u0001j\u0003\b\u0085\u0001j\u0003\b\u0086\u0001j\u0003\b\u0087\u0001j\u0003\b\u0088\u0001j\u0003\b\u0089\u0001j\u0003\b\u008a\u0001j\u0003\b\u008b\u0001j\u0003\b\u008c\u0001j\u0003\b\u008d\u0001j\u0003\b\u008e\u0001j\u0003\b\u008f\u0001j\u0003\b\u0090\u0001j\u0003\b\u0091\u0001j\u0003\b\u0092\u0001j\u0003\b\u0093\u0001j\u0003\b\u0094\u0001j\u0003\b\u0095\u0001j\u0003\b\u0096\u0001j\u0003\b\u0097\u0001j\u0003\b\u0098\u0001j\u0003\b\u0099\u0001j\u0003\b\u009a\u0001j\u0003\b\u009b\u0001j\u0003\b\u009c\u0001j\u0003\b\u009d\u0001j\u0003\b\u009e\u0001j\u0003\b\u009f\u0001j\u0003\b \u0001j\u0003\b¡\u0001j\u0003\b¢\u0001j\u0003\b£\u0001j\u0003\b¤\u0001j\u0003\b¥\u0001j\u0003\b¦\u0001j\u0003\b§\u0001j\u0003\b¨\u0001j\u0003\b©\u0001j\u0003\bª\u0001j\u0003\b«\u0001j\u0003\b¬\u0001j\u0003\b\u00ad\u0001j\u0003\b®\u0001j\u0003\b¯\u0001j\u0003\b°\u0001j\u0003\b±\u0001j\u0003\b²\u0001j\u0003\b³\u0001j\u0003\b´\u0001j\u0003\bµ\u0001j\u0003\b¶\u0001j\u0003\b·\u0001j\u0003\b¸\u0001j\u0003\b¹\u0001j\u0003\bº\u0001j\u0003\b»\u0001j\u0003\b¼\u0001j\u0003\b½\u0001j\u0003\b¾\u0001j\u0003\b¿\u0001j\u0003\bÀ\u0001j\u0003\bÁ\u0001j\u0003\bÂ\u0001j\u0003\bÃ\u0001j\u0003\bÄ\u0001j\u0003\bÅ\u0001j\u0003\bÆ\u0001j\u0003\bÇ\u0001j\u0003\bÈ\u0001j\u0003\bÉ\u0001j\u0003\bÊ\u0001j\u0003\bË\u0001j\u0003\bÌ\u0001j\u0003\bÍ\u0001j\u0003\bÎ\u0001j\u0003\bÏ\u0001j\u0003\bÐ\u0001¨\u0006Ò\u0001"}, d2 = {"Lcom/stripe/currency/CurrencyCode;", "", "currencyName", "", "numeric", "", "minorUnit", "countries", "", "Lcom/stripe/currency/CountryCode;", "(Ljava/lang/String;ILjava/lang/String;II[Lcom/stripe/currency/CountryCode;)V", "countryList", "", "getCountryList", "()Ljava/util/List;", "getCurrencyName", "()Ljava/lang/String;", "getMinorUnit", "()I", "getNumeric", "isFund", "", "isPreciousMetal", "UNDEFINED", "AED", "AFN", "ALL", "AMD", "ANG", "AOA", "ARS", "AUD", "AWG", "AZN", "BAM", "BBD", "BDT", "BGN", "BHD", "BIF", "BMD", "BND", "BOB", "BOV", "BRL", "BSD", "BTN", "BWP", "BYN", "BYR", "BZD", "CAD", "CDF", "CHE", "CHF", "CHW", "CLF", "CLP", "CNY", "COP", "COU", "CRC", "CUC", "CUP", "CVE", "CZK", "DJF", "DKK", "DOP", "DZD", "EGP", "ERN", "ETB", "EUR", "FJD", "FKP", "GBP", "GEL", "GHS", "GIP", "GMD", "GNF", "GTQ", "GYD", "HKD", "HNL", "HRK", "HTG", "HUF", "IDR", "ILS", "INR", "IQD", "IRR", "ISK", "JMD", "JOD", "JPY", "KES", "KGS", "KHR", "KMF", "KPW", "KRW", "KWD", "KYD", "KZT", "LAK", "LBP", "LKR", "LRD", "LSL", "LTL", "LYD", "MAD", "MDL", "MGA", "MKD", "MMK", "MNT", "MOP", "MRO", "MRU", "MUR", "MVR", "MWK", "MXN", "MXV", "MYR", "MZN", "NAD", "NGN", "NIO", "NOK", "NPR", "NZD", "OMR", "PAB", "PEN", "PGK", "PHP", "PKR", "PLN", "PYG", "QAR", "RON", "RSD", "RUB", "RUR", "RWF", "SAR", "SBD", "SCR", "SDG", "SEK", "SGD", "SHP", "SLL", "SOS", "SRD", "SSP", "STD", "STN", "SVC", "SYP", "SZL", "THB", "TJS", "TMT", "TND", "TOP", "TRY", "TTD", "TWD", "TZS", "UAH", "UGX", "USD", "USN", "USS", "UYI", "UYU", "UZS", "VEF", "VES", "VND", "VUV", "WST", "XAF", "XAG", "XAU", "XBA", "XBB", "XBC", "XBD", "XCD", "XDR", "XOF", "XPD", "XPF", "XPT", "XSU", "XTS", "XUA", "XXX", "YER", "ZAR", "ZMW", "ZWL", "Companion", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public class CurrencyCode {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ CurrencyCode[] $VALUES;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;
    private static final Map<Integer, CurrencyCode> numericMap;
    private final List<CountryCode> countryList;
    private final String currencyName;
    private final int minorUnit;
    private final int numeric;
    public static final CurrencyCode UNDEFINED = new CurrencyCode("UNDEFINED", 0, "Undefined", -1, -1, new CountryCode[0]);
    public static final CurrencyCode AED = new CurrencyCode("AED", 1, "UAE Dirham", WinError.ERROR_MCA_EXCEPTION, 2, CountryCode.AE);
    public static final CurrencyCode AFN = new CurrencyCode("AFN", 2, "Afghani", 971, 2, CountryCode.AF);
    public static final CurrencyCode ALL = new CurrencyCode("ALL", 3, "Lek", 8, 2, CountryCode.AL);
    public static final CurrencyCode AMD = new CurrencyCode("AMD", 4, "Armenian Dram", 51, 2, CountryCode.AM);
    public static final CurrencyCode ANG = new CurrencyCode("ANG", 5, "Netherlands Antillean Guilder", 532, 2, CountryCode.CW, CountryCode.SX);
    public static final CurrencyCode AOA = new CurrencyCode("AOA", 6, "Kwanza", 973, 2, CountryCode.AO);
    public static final CurrencyCode ARS = new CurrencyCode("ARS", 7, "Argentine Peso", 32, 2, CountryCode.AR);
    public static final CurrencyCode AUD = new CurrencyCode("AUD", 8, "Australian Dollar", 36, 2, CountryCode.AU, CountryCode.CC, CountryCode.CX, CountryCode.HM, CountryCode.KI, CountryCode.NF, CountryCode.NR, CountryCode.TV);
    public static final CurrencyCode AWG = new CurrencyCode("AWG", 9, "Aruban Florin", 533, 2, CountryCode.AW);
    public static final CurrencyCode AZN = new CurrencyCode("AZN", 10, "Azerbaijanian Manat", 944, 2, CountryCode.AZ);
    public static final CurrencyCode BAM = new CurrencyCode("BAM", 11, "Convertible Mark", 977, 2, CountryCode.BA);
    public static final CurrencyCode BBD = new CurrencyCode("BBD", 12, "Barbados Dollar", 52, 2, CountryCode.BB);
    public static final CurrencyCode BDT = new CurrencyCode("BDT", 13, "Taka", 50, 2, CountryCode.BD);
    public static final CurrencyCode BGN = new CurrencyCode("BGN", 14, "Bulgarian Lev", 975, 2, CountryCode.BG);
    public static final CurrencyCode BHD = new CurrencyCode("BHD", 15, "Bahraini Dinar", 48, 3, CountryCode.BH);
    public static final CurrencyCode BIF = new CurrencyCode("BIF", 16, "Burundi Franc", 108, 0, CountryCode.BI);
    public static final CurrencyCode BMD = new CurrencyCode("BMD", 17, "Bermudian Dollar", 60, 2, CountryCode.BM);
    public static final CurrencyCode BND = new CurrencyCode("BND", 18, "Brunei Dollar", 96, 2, CountryCode.BN);
    public static final CurrencyCode BOB = new CurrencyCode("BOB", 19, "Boliviano", 68, 2, CountryCode.BO);
    public static final CurrencyCode BOV = new CurrencyCode("BOV", 20) { // from class: com.stripe.currency.CurrencyCode.BOV
        @Override // com.stripe.currency.CurrencyCode
        public boolean isFund() {
            return true;
        }

        {
            new CountryCode[1][0] = CountryCode.BO;
            DefaultConstructorMarker defaultConstructorMarker = null;
            String str = "Mvdol";
            int i = 984;
            int i2 = 2;
        }
    };
    public static final CurrencyCode BRL = new CurrencyCode("BRL", 21, "Brazilian Real", 986, 2, CountryCode.BR);
    public static final CurrencyCode BSD = new CurrencyCode("BSD", 22, "Bahamian Dollar", 44, 2, CountryCode.BS);
    public static final CurrencyCode BTN = new CurrencyCode("BTN", 23, "Ngultrum", 64, 2, CountryCode.BT);
    public static final CurrencyCode BWP = new CurrencyCode("BWP", 24, "Pula", 72, 2, CountryCode.BW);
    public static final CurrencyCode BYN = new CurrencyCode("BYN", 25, "Belarusian Ruble", 933, 2, CountryCode.BY);

    @Deprecated(message = "")
    public static final CurrencyCode BYR = new CurrencyCode("BYR", 26, "Belarusian Ruble", 974, 0, CountryCode.BY);
    public static final CurrencyCode BZD = new CurrencyCode("BZD", 27, "Belize Dollar", 84, 2, CountryCode.BZ);
    public static final CurrencyCode CAD = new CurrencyCode("CAD", 28, "Canadian Dollar", WinError.ERROR_INVALID_LEVEL, 2, CountryCode.CA);
    public static final CurrencyCode CDF = new CurrencyCode("CDF", 29, "Congolese Franc", 976, 2, CountryCode.CD);
    public static final CurrencyCode CHE = new CurrencyCode("CHE", 30) { // from class: com.stripe.currency.CurrencyCode.CHE
        @Override // com.stripe.currency.CurrencyCode
        public boolean isFund() {
            return true;
        }

        {
            new CountryCode[1][0] = CountryCode.CH;
            DefaultConstructorMarker defaultConstructorMarker = null;
            String str = "WIR Euro";
            int i = 947;
            int i2 = 2;
        }
    };
    public static final CurrencyCode CHF = new CurrencyCode("CHF", 31, "Swiss Franc", WinError.ERROR_RESOURCE_REQUIREMENTS_CHANGED, 2, CountryCode.CH, CountryCode.LI);
    public static final CurrencyCode CHW = new CurrencyCode("CHW", 32) { // from class: com.stripe.currency.CurrencyCode.CHW
        @Override // com.stripe.currency.CurrencyCode
        public boolean isFund() {
            return true;
        }

        {
            new CountryCode[1][0] = CountryCode.CH;
            DefaultConstructorMarker defaultConstructorMarker = null;
            String str = "WIR Franc";
            int i = 948;
            int i2 = 2;
        }
    };
    public static final CurrencyCode CLF = new CurrencyCode("CLF", 33) { // from class: com.stripe.currency.CurrencyCode.CLF
        @Override // com.stripe.currency.CurrencyCode
        public boolean isFund() {
            return true;
        }

        {
            new CountryCode[1][0] = CountryCode.CL;
            DefaultConstructorMarker defaultConstructorMarker = null;
            String str = "Unidad de Fomento";
            int i = 990;
            int i2 = 0;
        }
    };
    public static final CurrencyCode CLP = new CurrencyCode("CLP", 34, "Chilean Peso", WinError.ERROR_TOO_MANY_MUXWAITERS, 0, CountryCode.CL);
    public static final CurrencyCode CNY = new CurrencyCode("CNY", 35, "Yuan Renminbi", WinError.ERROR_SIGNAL_REFUSED, 2, CountryCode.CN);
    public static final CurrencyCode COP = new CurrencyCode("COP", 36, "Colombian Peso", WinError.ERROR_BUSY, 2, CountryCode.CO);
    public static final CurrencyCode COU = new CurrencyCode("COU", 37) { // from class: com.stripe.currency.CurrencyCode.COU
        @Override // com.stripe.currency.CurrencyCode
        public boolean isFund() {
            return true;
        }

        {
            new CountryCode[1][0] = CountryCode.CO;
            DefaultConstructorMarker defaultConstructorMarker = null;
            String str = "Unidad de Valor Real";
            int i = 970;
            int i2 = 2;
        }
    };
    public static final CurrencyCode CRC = new CurrencyCode("CRC", 38, "Costa Rican Colon", WinError.ERROR_INVALID_STARTING_CODESEG, 2, CountryCode.CR);
    public static final CurrencyCode CUC = new CurrencyCode("CUC", 39, "Peso Convertible", 931, 2, CountryCode.CU);
    public static final CurrencyCode CUP = new CurrencyCode("CUP", 40, "Cuban Peso", 192, 2, CountryCode.CU);
    public static final CurrencyCode CVE = new CurrencyCode("CVE", 41, "Cape Verde Escudo", WinError.ERROR_SEEK_ON_DEVICE, 2, CountryCode.CV);
    public static final CurrencyCode CZK = new CurrencyCode("CZK", 42, "Czech Koruna", 203, 2, CountryCode.CZ);
    public static final CurrencyCode DJF = new CurrencyCode("DJF", 43, "Djibouti Franc", 262, 0, CountryCode.DJ);
    public static final CurrencyCode DKK = new CurrencyCode("DKK", 44, "Danish Krone", WinError.ERROR_META_EXPANSION_TOO_LONG, 2, CountryCode.DK, CountryCode.FO, CountryCode.GL);
    public static final CurrencyCode DOP = new CurrencyCode("DOP", 45, "Dominican Peso", WinError.ERROR_TOO_MANY_MODULES, 2, CountryCode.DO);
    public static final CurrencyCode DZD = new CurrencyCode("DZD", 46, "Algerian Dinar", 12, 2, CountryCode.DZ);
    public static final CurrencyCode EGP = new CurrencyCode("EGP", 47, "Egyptian Pound", 818, 2, CountryCode.EG);
    public static final CurrencyCode ERN = new CurrencyCode("ERN", 48, "Nakfa", WinError.ERROR_NO_DATA, 2, CountryCode.ER);
    public static final CurrencyCode ETB = new CurrencyCode("ETB", 49, "Ethiopian Birr", WinError.ERROR_BAD_PIPE, 2, CountryCode.ET);
    public static final CurrencyCode EUR = new CurrencyCode("EUR", 50, "Euro", 978, 2, CountryCode.AD, CountryCode.AT, CountryCode.AX, CountryCode.BE, CountryCode.BL, CountryCode.CY, CountryCode.DE, CountryCode.EE, CountryCode.ES, CountryCode.EU, CountryCode.FI, CountryCode.FR, CountryCode.GF, CountryCode.GP, CountryCode.GR, CountryCode.IE, CountryCode.IT, CountryCode.LT, CountryCode.LU, CountryCode.LV, CountryCode.MC, CountryCode.ME, CountryCode.MF, CountryCode.MQ, CountryCode.MT, CountryCode.NL, CountryCode.PM, CountryCode.PT, CountryCode.RE, CountryCode.SI, CountryCode.SK, CountryCode.SM, CountryCode.TF, CountryCode.VA, CountryCode.XK, CountryCode.YT);
    public static final CurrencyCode FJD = new CurrencyCode("FJD", 51, "Fiji Dollar", 242, 2, CountryCode.FJ);
    public static final CurrencyCode FKP = new CurrencyCode("FKP", 52, "Falkland Islands Pound", 238, 2, CountryCode.FK);
    public static final CurrencyCode GBP = new CurrencyCode("GBP", 53, "Pound Sterling", 826, 2, CountryCode.GB, CountryCode.GG, CountryCode.IM, CountryCode.JE);
    public static final CurrencyCode GEL = new CurrencyCode("GEL", 54, "Lari", 981, 2, CountryCode.GE);
    public static final CurrencyCode GHS = new CurrencyCode("GHS", 55, "Ghana Cedi", 936, 2, CountryCode.GH);
    public static final CurrencyCode GIP = new CurrencyCode("GIP", 56, "Gibraltar Pound", 292, 2, CountryCode.GI);
    public static final CurrencyCode GMD = new CurrencyCode("GMD", 57, "Dalasi", 270, 2, CountryCode.GM);
    public static final CurrencyCode GNF = new CurrencyCode("GNF", 58, "Guinea Franc", 324, 0, CountryCode.GN);
    public static final CurrencyCode GTQ = new CurrencyCode("GTQ", 59, "Quetzal", 320, 2, CountryCode.GT);
    public static final CurrencyCode GYD = new CurrencyCode("GYD", 60, "Guyana Dollar", 328, 2, CountryCode.GY);
    public static final CurrencyCode HKD = new CurrencyCode("HKD", 61, "Hong Kong Dollar", 344, 2, CountryCode.HK);
    public static final CurrencyCode HNL = new CurrencyCode("HNL", 62, "Lempira", 340, 2, CountryCode.HN);
    public static final CurrencyCode HRK = new CurrencyCode("HRK", 63, "Croatian Kuna", 191, 2, CountryCode.HR);
    public static final CurrencyCode HTG = new CurrencyCode("HTG", 64, "Gourde", 332, 2, CountryCode.HT);
    public static final CurrencyCode HUF = new CurrencyCode("HUF", 65, "Forint", 348, 2, CountryCode.HU);
    public static final CurrencyCode IDR = new CurrencyCode("IDR", 66, "Rupiah", 360, 2, CountryCode.ID);
    public static final CurrencyCode ILS = new CurrencyCode("ILS", 67, "New Israeli Sheqel", 376, 2, CountryCode.IL);
    public static final CurrencyCode INR = new CurrencyCode("INR", 68, "Indian Rupee", 356, 2, CountryCode.BT, CountryCode.IN);
    public static final CurrencyCode IQD = new CurrencyCode("IQD", 69, "Iraqi Dinar", 368, 3, CountryCode.IQ);
    public static final CurrencyCode IRR = new CurrencyCode("IRR", 70, "Iranian Rial", 364, 2, CountryCode.IR);
    public static final CurrencyCode ISK = new CurrencyCode("ISK", 71, "Iceland Krona", WinError.ERROR_FAIL_RESTART, 0, CountryCode.IS);
    public static final CurrencyCode JMD = new CurrencyCode("JMD", 72, "Jamaican Dollar", 388, 2, CountryCode.JM);
    public static final CurrencyCode JOD = new CurrencyCode("JOD", 73, "Jordanian Dinar", 400, 3, CountryCode.JO);
    public static final CurrencyCode JPY = new CurrencyCode("JPY", 74, "Yen", 392, 0, CountryCode.JP);
    public static final CurrencyCode KES = new CurrencyCode("KES", 75, "Kenyan Shilling", HttpStatus.SC_NOT_FOUND, 2, CountryCode.KE);
    public static final CurrencyCode KGS = new CurrencyCode("KGS", 76, "Som", HttpStatus.SC_EXPECTATION_FAILED, 2, CountryCode.KG);
    public static final CurrencyCode KHR = new CurrencyCode("KHR", 77, "Riel", 116, 2, CountryCode.KH);
    public static final CurrencyCode KMF = new CurrencyCode("KMF", 78, "Comoro Franc", WinError.ERROR_ATOMIC_LOCKS_NOT_SUPPORTED, 0, CountryCode.KM);
    public static final CurrencyCode KPW = new CurrencyCode("KPW", 79, "North Korean Won", HttpStatus.SC_REQUEST_TIMEOUT, 2, CountryCode.KP);
    public static final CurrencyCode KRW = new CurrencyCode("KRW", 80, "Won", HttpStatus.SC_GONE, 0, CountryCode.KR);
    public static final CurrencyCode KWD = new CurrencyCode("KWD", 81, "Kuwaiti Dinar", HttpStatus.SC_REQUEST_URI_TOO_LONG, 3, CountryCode.KW);
    public static final CurrencyCode KYD = new CurrencyCode("KYD", 82, "Cayman Islands Dollar", 136, 2, CountryCode.KY);
    public static final CurrencyCode KZT = new CurrencyCode("KZT", 83, "Tenge", 398, 2, CountryCode.KZ);
    public static final CurrencyCode LAK = new CurrencyCode("LAK", 84, "Kip", 418, 2, CountryCode.LA);
    public static final CurrencyCode LBP = new CurrencyCode("LBP", 85, "Lebanese Pound", 422, 2, CountryCode.LB);
    public static final CurrencyCode LKR = new CurrencyCode("LKR", 86, "Sri Lanka Rupee", WinError.ERROR_DIR_NOT_ROOT, 2, CountryCode.LK);
    public static final CurrencyCode LRD = new CurrencyCode("LRD", 87, "Liberian Dollar", 430, 2, CountryCode.LR);
    public static final CurrencyCode LSL = new CurrencyCode("LSL", 88, "Loti", 426, 2, CountryCode.LS);

    @Deprecated(message = "")
    public static final CurrencyCode LTL = new CurrencyCode("LTL", 89, "Lithuanian Litas", 440, 2, CountryCode.LT);
    public static final CurrencyCode LYD = new CurrencyCode("LYD", 90, "Libyan Dinar", 434, 3, CountryCode.LY);
    public static final CurrencyCode MAD = new CurrencyCode("MAD", 91, "Moroccan Dirham", 504, 2, CountryCode.EH, CountryCode.MA);
    public static final CurrencyCode MDL = new CurrencyCode("MDL", 92, "Moldovan Leu", 498, 2, CountryCode.MD);
    public static final CurrencyCode MGA = new CurrencyCode("MGA", 93, "Malagasy Ariary", 969, 2, CountryCode.MG);
    public static final CurrencyCode MKD = new CurrencyCode("MKD", 94, "Denar", 807, 2, CountryCode.MK);
    public static final CurrencyCode MMK = new CurrencyCode("MMK", 95, "Kyat", 104, 2, CountryCode.MM);
    public static final CurrencyCode MNT = new CurrencyCode("MNT", 96, "Tugrik", 496, 2, CountryCode.MN);
    public static final CurrencyCode MOP = new CurrencyCode("MOP", 97, "Pataca", 446, 2, CountryCode.MO);

    @Deprecated(message = "")
    public static final CurrencyCode MRO = new CurrencyCode("MRO", 98, "Ouguiya", 478, 2, CountryCode.MR);
    public static final CurrencyCode MRU = new CurrencyCode("MRU", 99, "Ouguiya", PDF417Common.NUMBER_OF_CODEWORDS, 2, CountryCode.MR);
    public static final CurrencyCode MUR = new CurrencyCode("MUR", 100, "Mauritius Rupee", 480, 2, CountryCode.MU);
    public static final CurrencyCode MVR = new CurrencyCode("MVR", 101, "Rufiyaa", 462, 2, CountryCode.MV);
    public static final CurrencyCode MWK = new CurrencyCode("MWK", 102, "Kwacha", 454, 2, CountryCode.MW);
    public static final CurrencyCode MXN = new CurrencyCode("MXN", 103, "Mexican Peso", 484, 2, CountryCode.MX);
    public static final CurrencyCode MXV = new CurrencyCode("MXV", 104) { // from class: com.stripe.currency.CurrencyCode.MXV
        @Override // com.stripe.currency.CurrencyCode
        public boolean isFund() {
            return true;
        }

        {
            new CountryCode[1][0] = CountryCode.MX;
            DefaultConstructorMarker defaultConstructorMarker = null;
            String str = "Mexican Unidad de Inversion (UDI)";
            int i = 979;
            int i2 = 2;
        }
    };
    public static final CurrencyCode MYR = new CurrencyCode("MYR", WinError.ERROR_SEM_OWNER_DIED, "Malaysian Ringgit", 458, 2, CountryCode.MY);
    public static final CurrencyCode MZN = new CurrencyCode("MZN", WinError.ERROR_SEM_USER_LIMIT, "Mozambique Metical", 943, 2, CountryCode.MZ);
    public static final CurrencyCode NAD = new CurrencyCode("NAD", WinError.ERROR_DISK_CHANGE, "Namibia Dollar", 516, 2, CountryCode.NA);
    public static final CurrencyCode NGN = new CurrencyCode("NGN", 108, "Naira", WinError.ERROR_THREAD_NOT_IN_PROCESS, 2, CountryCode.NG);
    public static final CurrencyCode NIO = new CurrencyCode("NIO", 109, "Cordoba Oro", WinError.ERROR_UNEXPECTED_MM_EXTEND_ERR, 2, CountryCode.NI);
    public static final CurrencyCode NOK = new CurrencyCode("NOK", 110, "Norwegian Krone", WinError.ERROR_NO_PAGEFILE, 2, CountryCode.BV, CountryCode.NO, CountryCode.SJ);
    public static final CurrencyCode NPR = new CurrencyCode("NPR", WinError.ERROR_BUFFER_OVERFLOW, "Nepalese Rupee", 524, 2, CountryCode.NP);
    public static final CurrencyCode NZD = new CurrencyCode("NZD", 112, "New Zealand Dollar", WinError.ERROR_CANT_WAIT, 2, CountryCode.CK, CountryCode.NU, CountryCode.NZ, CountryCode.PN, CountryCode.TK);
    public static final CurrencyCode OMR = new CurrencyCode("OMR", WinError.ERROR_NO_MORE_SEARCH_HANDLES, "Rial Omani", 512, 3, CountryCode.OM);
    public static final CurrencyCode PAB = new CurrencyCode("PAB", WinError.ERROR_INVALID_TARGET_HANDLE, "Balboa", WinError.ERROR_DEBUG_ATTACH_FAILED, 2, CountryCode.PA);
    public static final CurrencyCode PEN = new CurrencyCode("PEN", 115, "Nuevo Sol", 604, 2, CountryCode.PE);
    public static final CurrencyCode PGK = new CurrencyCode("PGK", 116, "Kina", WinError.ERROR_NOT_TINY_STREAM, 2, CountryCode.PG);
    public static final CurrencyCode PHP = new CurrencyCode("PHP", WinError.ERROR_INVALID_CATEGORY, "Philippine Peso", 608, 2, CountryCode.PH);
    public static final CurrencyCode PKR = new CurrencyCode("PKR", WinError.ERROR_INVALID_VERIFY_SWITCH, "Pakistan Rupee", WinError.ERROR_BACKUP_CONTROLLER, 2, CountryCode.PK);
    public static final CurrencyCode PLN = new CurrencyCode("PLN", WinError.ERROR_BAD_DRIVER_LEVEL, "Zloty", 985, 2, CountryCode.PL);
    public static final CurrencyCode PYG = new CurrencyCode("PYG", WinError.ERROR_CALL_NOT_IMPLEMENTED, "Guarani", 600, 0, CountryCode.PY);
    public static final CurrencyCode QAR = new CurrencyCode("QAR", WinError.ERROR_SEM_TIMEOUT, "Qatari Rial", WinError.ERROR_CORRUPT_SYSTEM_FILE, 2, CountryCode.QA);
    public static final CurrencyCode RON = new CurrencyCode("RON", 122, "New Romanian Leu", 946, 2, CountryCode.RO);
    public static final CurrencyCode RSD = new CurrencyCode("RSD", 123, "Serbian Dinar", 941, 2, CountryCode.RS);
    public static final CurrencyCode RUB = new CurrencyCode("RUB", WinError.ERROR_INVALID_LEVEL, "Russian Ruble", WinError.ERROR_DS_VERSION_CHECK_FAILURE, 2, CountryCode.RU);

    @Deprecated(message = "")
    public static final CurrencyCode RUR = new CurrencyCode("RUR", WinError.ERROR_NO_VOLUME_LABEL, "Russian Ruble", 810, 2, CountryCode.RU);
    public static final CurrencyCode RWF = new CurrencyCode("RWF", 126, "Rwanda Franc", WinError.ERROR_NOT_SAFE_MODE_DRIVER, 0, CountryCode.RW);
    public static final CurrencyCode SAR = new CurrencyCode("SAR", 127, "Saudi Riyal", WinError.ERROR_LONGJUMP, 2, CountryCode.SA);
    public static final CurrencyCode SBD = new CurrencyCode("SBD", 128, "Solomon Islands Dollar", 90, 2, CountryCode.SB);
    public static final CurrencyCode SCR = new CurrencyCode("SCR", 129, "Seychelles Rupee", WinError.ERROR_DBG_UNABLE_TO_PROVIDE_HANDLE, 2, CountryCode.SC);
    public static final CurrencyCode SDG = new CurrencyCode("SDG", 130, "Sudanese Pound", 938, 2, CountryCode.SD);
    public static final CurrencyCode SEK = new CurrencyCode("SEK", 131, "Swedish Krona", WinError.ERROR_CACHE_PAGE_LOCKED, 2, CountryCode.SE);
    public static final CurrencyCode SGD = new CurrencyCode("SGD", WinError.ERROR_SEEK_ON_DEVICE, "Singapore Dollar", 702, 2, CountryCode.SG);
    public static final CurrencyCode SHP = new CurrencyCode("SHP", WinError.ERROR_IS_JOIN_TARGET, "Saint Helena Pound", WinError.ERROR_DRIVER_FAILED_PRIOR_UNLOAD, 2, CountryCode.SH);
    public static final CurrencyCode SLL = new CurrencyCode("SLL", WinError.ERROR_IS_JOINED, "Leone", WinError.ERROR_DBG_PRINTEXCEPTION_C, 2, CountryCode.SL);
    public static final CurrencyCode SOS = new CurrencyCode("SOS", WinError.ERROR_IS_SUBSTED, "Somali Shilling", 706, 2, CountryCode.SO);
    public static final CurrencyCode SRD = new CurrencyCode("SRD", 136, "Surinam Dollar", 968, 2, CountryCode.SR);
    public static final CurrencyCode SSP = new CurrencyCode("SSP", WinError.ERROR_NOT_SUBSTED, "South Sudanese Pound", WinError.ERROR_FIRMWARE_UPDATED, 2, CountryCode.SS);

    @Deprecated(message = "")
    public static final CurrencyCode STD = new CurrencyCode("STD", WinError.ERROR_JOIN_TO_JOIN, "Dobra", WinError.ERROR_RXACT_COMMIT_NECESSARY, 2, CountryCode.ST);
    public static final CurrencyCode STN = new CurrencyCode("STN", WinError.ERROR_SUBST_TO_SUBST, "Dobra", 930, 2, CountryCode.ST);
    public static final CurrencyCode SVC = new CurrencyCode("SVC", WinError.ERROR_JOIN_TO_SUBST, "El Salvador Colon", WinError.ERROR_BAD_FILE_TYPE, 2, CountryCode.SV);
    public static final CurrencyCode SYP = new CurrencyCode("SYP", WinError.ERROR_SUBST_TO_JOIN, "Syrian Pound", WinError.ERROR_PROCESS_IN_JOB, 2, CountryCode.SY);
    public static final CurrencyCode SZL = new CurrencyCode("SZL", 142, "Lilangeni", WinError.ERROR_PAGE_FAULT_DEMAND_ZERO, 2, CountryCode.SZ);
    public static final CurrencyCode THB = new CurrencyCode("THB", WinError.ERROR_SAME_DRIVE, "Baht", WinError.ERROR_INTERRUPT_STILL_CONNECTED, 2, CountryCode.TH);
    public static final CurrencyCode TJS = new CurrencyCode("TJS", WinError.ERROR_DIR_NOT_ROOT, "Somoni", 972, 2, CountryCode.TJ);
    public static final CurrencyCode TMT = new CurrencyCode("TMT", WinError.ERROR_DIR_NOT_EMPTY, "Turkmenistan New Manat", 934, 2, CountryCode.TM);
    public static final CurrencyCode TND = new CurrencyCode("TND", WinError.ERROR_IS_SUBST_PATH, "Tunisian Dinar", WinError.ERROR_LOST_WRITEBEHIND_DATA_NETWORK_DISCONNECTED, 3, CountryCode.TN);
    public static final CurrencyCode TOP = new CurrencyCode("TOP", WinError.ERROR_IS_JOIN_PATH, "Paʻanga", WinError.ERROR_REQUEST_OUT_OF_SEQUENCE, 2, CountryCode.TO);
    public static final CurrencyCode TRY = new CurrencyCode("TRY", WinError.ERROR_PATH_BUSY, "Turkish Lira", 949, 2, CountryCode.TR);
    public static final CurrencyCode TTD = new CurrencyCode("TTD", WinError.ERROR_IS_SUBST_TARGET, "Trinidad and Tobago Dollar", WinError.ERROR_DISK_REPAIR_DISABLED, 2, CountryCode.TT);
    public static final CurrencyCode TWD = new CurrencyCode("TWD", WinError.ERROR_SYSTEM_TRACE, "New Taiwan Dollar", TypedValues.Custom.TYPE_FLOAT, 2, CountryCode.TW);
    public static final CurrencyCode TZS = new CurrencyCode("TZS", WinError.ERROR_INVALID_EVENT_COUNT, "Tanzanian Shilling", 834, 2, CountryCode.TZ);
    public static final CurrencyCode UAH = new CurrencyCode("UAH", WinError.ERROR_TOO_MANY_MUXWAITERS, "Hryvnia", 980, 2, CountryCode.UA);
    public static final CurrencyCode UGX = new CurrencyCode("UGX", WinError.ERROR_INVALID_LIST_FORMAT, "Uganda Shilling", LogSeverity.EMERGENCY_VALUE, 0, CountryCode.UG);
    public static final CurrencyCode USD = new CurrencyCode("USD", WinError.ERROR_LABEL_TOO_LONG, "US Dollar", 840, 2, CountryCode.AS, CountryCode.BQ, CountryCode.EC, CountryCode.FM, CountryCode.GU, CountryCode.HT, CountryCode.IO, CountryCode.MH, CountryCode.MP, CountryCode.PA, CountryCode.PR, CountryCode.PW, CountryCode.SV, CountryCode.TC, CountryCode.TL, CountryCode.UM, CountryCode.US, CountryCode.VG, CountryCode.VI);
    public static final CurrencyCode USN = new CurrencyCode("USN", 155) { // from class: com.stripe.currency.CurrencyCode.USN
        @Override // com.stripe.currency.CurrencyCode
        public boolean isFund() {
            return true;
        }

        {
            new CountryCode[1][0] = CountryCode.US;
            DefaultConstructorMarker defaultConstructorMarker = null;
            String str = "US Dollar (Next day)";
            int i = WinError.ERROR_IO_PENDING;
            int i2 = 2;
        }
    };
    public static final CurrencyCode USS = new CurrencyCode("USS", WinError.ERROR_SIGNAL_REFUSED) { // from class: com.stripe.currency.CurrencyCode.USS
        @Override // com.stripe.currency.CurrencyCode
        public boolean isFund() {
            return true;
        }

        {
            new CountryCode[1][0] = CountryCode.US;
            DefaultConstructorMarker defaultConstructorMarker = null;
            String str = "US Dollar (Same day)";
            int i = WinError.ERROR_NOACCESS;
            int i2 = 2;
        }
    };
    public static final CurrencyCode UYI = new CurrencyCode("UYI", WinError.ERROR_DISCARDED) { // from class: com.stripe.currency.CurrencyCode.UYI
        @Override // com.stripe.currency.CurrencyCode
        public boolean isFund() {
            return true;
        }

        {
            new CountryCode[1][0] = CountryCode.UY;
            DefaultConstructorMarker defaultConstructorMarker = null;
            String str = "Uruguay Peso en Unidades Indexadas (URUIURUI)";
            int i = 940;
            int i2 = 0;
        }
    };
    public static final CurrencyCode UYU = new CurrencyCode("UYU", WinError.ERROR_NOT_LOCKED, "Peso Uruguayo", 858, 2, CountryCode.UY);
    public static final CurrencyCode UZS = new CurrencyCode("UZS", WinError.ERROR_BAD_THREADID_ADDR, "Uzbekistan Sum", 860, 2, CountryCode.UZ);

    @Deprecated(message = "")
    public static final CurrencyCode VEF = new CurrencyCode("VEF", 160, "Bolivar", 937, 2, CountryCode.VE);
    public static final CurrencyCode VES = new CurrencyCode("VES", 161, "Bolivar Soberano", PDF417Common.MAX_CODEWORDS_IN_BARCODE, 2, CountryCode.VE);
    public static final CurrencyCode VND = new CurrencyCode("VND", 162, "Dong", 704, 0, CountryCode.VN);
    public static final CurrencyCode VUV = new CurrencyCode("VUV", WinUser.VK_RCONTROL, "Vatu", WinError.ERROR_DEVICE_ALREADY_ATTACHED, 0, CountryCode.VU);
    public static final CurrencyCode WST = new CurrencyCode("WST", 164, "Tala", 882, 2, CountryCode.WS);
    public static final CurrencyCode XAF = new CurrencyCode("XAF", WinUser.VK_RMENU, "CFA Franc BEAC", 950, 0, CountryCode.CF, CountryCode.CG, CountryCode.CM, CountryCode.GA, CountryCode.GQ, CountryCode.TD);
    public static final CurrencyCode XAG = new CurrencyCode("XAG", 166) { // from class: com.stripe.currency.CurrencyCode.XAG
        @Override // com.stripe.currency.CurrencyCode
        public boolean isPreciousMetal() {
            return true;
        }

        {
            CountryCode[] countryCodeArr = new CountryCode[0];
            DefaultConstructorMarker defaultConstructorMarker = null;
            String str = "Silver";
            int i = 961;
            int i2 = -1;
        }
    };
    public static final CurrencyCode XAU = new CurrencyCode("XAU", WinError.ERROR_LOCK_FAILED) { // from class: com.stripe.currency.CurrencyCode.XAU
        @Override // com.stripe.currency.CurrencyCode
        public boolean isPreciousMetal() {
            return true;
        }

        {
            CountryCode[] countryCodeArr = new CountryCode[0];
            DefaultConstructorMarker defaultConstructorMarker = null;
            String str = "Gold";
            int i = 959;
            int i2 = -1;
        }
    };
    public static final CurrencyCode XBA = new CurrencyCode("XBA", 168, "Bond Markets Unit European Composite Unit (EURCO)", 955, -1, new CountryCode[0]);
    public static final CurrencyCode XBB = new CurrencyCode("XBB", 169, "Bond Markets Unit European Monetary Unit (E.M.U.-6)", 956, -1, new CountryCode[0]);
    public static final CurrencyCode XBC = new CurrencyCode("XBC", WinError.ERROR_BUSY, "Bond Markets Unit European Unit of Account 9 (E.U.A.-9)", 957, -1, new CountryCode[0]);
    public static final CurrencyCode XBD = new CurrencyCode("XBD", 171, "Bond Markets Unit European Unit of Account 17 (E.U.A.-17)", 958, -1, new CountryCode[0]);
    public static final CurrencyCode XCD = new CurrencyCode("XCD", 172, "East Caribbean Dollar", 951, 2, CountryCode.AG, CountryCode.AI, CountryCode.DM, CountryCode.GD, CountryCode.KN, CountryCode.LC, CountryCode.MS, CountryCode.VC);
    public static final CurrencyCode XDR = new CurrencyCode("XDR", WinError.ERROR_CANCEL_VIOLATION, "SDR (Special Drawing Right)", 960, -1, new CountryCode[0]);
    public static final CurrencyCode XOF = new CurrencyCode("XOF", WinError.ERROR_ATOMIC_LOCKS_NOT_SUPPORTED, "CFA Franc BCEAO", 952, 0, CountryCode.BF, CountryCode.BJ, CountryCode.CI, CountryCode.GW, CountryCode.ML, CountryCode.NE, CountryCode.SN, CountryCode.TG);
    public static final CurrencyCode XPD = new CurrencyCode("XPD", 175) { // from class: com.stripe.currency.CurrencyCode.XPD
        @Override // com.stripe.currency.CurrencyCode
        public boolean isPreciousMetal() {
            return true;
        }

        {
            CountryCode[] countryCodeArr = new CountryCode[0];
            DefaultConstructorMarker defaultConstructorMarker = null;
            String str = "Palladium";
            int i = 964;
            int i2 = -1;
        }
    };
    public static final CurrencyCode XPF = new CurrencyCode("XPF", 176, "CFP Franc", 953, 0, CountryCode.NC, CountryCode.PF, CountryCode.WF);
    public static final CurrencyCode XPT = new CurrencyCode("XPT", 177) { // from class: com.stripe.currency.CurrencyCode.XPT
        @Override // com.stripe.currency.CurrencyCode
        public boolean isPreciousMetal() {
            return true;
        }

        {
            CountryCode[] countryCodeArr = new CountryCode[0];
            DefaultConstructorMarker defaultConstructorMarker = null;
            String str = "Platinum";
            int i = 962;
            int i2 = -1;
        }
    };
    public static final CurrencyCode XSU = new CurrencyCode("XSU", 178, "Sucre", WinError.ERROR_EA_ACCESS_DENIED, -1, new CountryCode[0]);
    public static final CurrencyCode XTS = new CurrencyCode("XTS", 179, "Codes specifically reserved for testing purposes", 963, -1, new CountryCode[0]);
    public static final CurrencyCode XUA = new CurrencyCode("XUA", WinError.ERROR_INVALID_SEGMENT_NUMBER, "ADB Unit of Account", 965, -1, new CountryCode[0]);
    public static final CurrencyCode XXX = new CurrencyCode("XXX", 181, "The codes assigned for transactions where no currency is involved", 999, -1, new CountryCode[0]);
    public static final CurrencyCode YER = new CurrencyCode("YER", WinError.ERROR_INVALID_ORDINAL, "Yemeni Rial", 886, 2, CountryCode.YE);
    public static final CurrencyCode ZAR = new CurrencyCode("ZAR", WinError.ERROR_ALREADY_EXISTS, "Rand", WinError.ERROR_EVENT_DONE, 2, CountryCode.LS, CountryCode.NA, CountryCode.ZA);
    public static final CurrencyCode ZMW = new CurrencyCode("ZMW", 184, "Zambian Kwacha", 967, 2, CountryCode.ZM);
    public static final CurrencyCode ZWL = new CurrencyCode("ZWL", 185, "Zimbabwe Dollar", 932, 2, CountryCode.ZW);

    private static final /* synthetic */ CurrencyCode[] $values() {
        return new CurrencyCode[]{UNDEFINED, AED, AFN, ALL, AMD, ANG, AOA, ARS, AUD, AWG, AZN, BAM, BBD, BDT, BGN, BHD, BIF, BMD, BND, BOB, BOV, BRL, BSD, BTN, BWP, BYN, BYR, BZD, CAD, CDF, CHE, CHF, CHW, CLF, CLP, CNY, COP, COU, CRC, CUC, CUP, CVE, CZK, DJF, DKK, DOP, DZD, EGP, ERN, ETB, EUR, FJD, FKP, GBP, GEL, GHS, GIP, GMD, GNF, GTQ, GYD, HKD, HNL, HRK, HTG, HUF, IDR, ILS, INR, IQD, IRR, ISK, JMD, JOD, JPY, KES, KGS, KHR, KMF, KPW, KRW, KWD, KYD, KZT, LAK, LBP, LKR, LRD, LSL, LTL, LYD, MAD, MDL, MGA, MKD, MMK, MNT, MOP, MRO, MRU, MUR, MVR, MWK, MXN, MXV, MYR, MZN, NAD, NGN, NIO, NOK, NPR, NZD, OMR, PAB, PEN, PGK, PHP, PKR, PLN, PYG, QAR, RON, RSD, RUB, RUR, RWF, SAR, SBD, SCR, SDG, SEK, SGD, SHP, SLL, SOS, SRD, SSP, STD, STN, SVC, SYP, SZL, THB, TJS, TMT, TND, TOP, TRY, TTD, TWD, TZS, UAH, UGX, USD, USN, USS, UYI, UYU, UZS, VEF, VES, VND, VUV, WST, XAF, XAG, XAU, XBA, XBB, XBC, XBD, XCD, XDR, XOF, XPD, XPF, XPT, XSU, XTS, XUA, XXX, YER, ZAR, ZMW, ZWL};
    }

    public /* synthetic */ CurrencyCode(String str, int i, String str2, int i2, int i3, CountryCode[] countryCodeArr, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, i, str2, i2, i3, countryCodeArr);
    }

    public static EnumEntries<CurrencyCode> getEntries() {
        return $ENTRIES;
    }

    public static CurrencyCode valueOf(String str) {
        return (CurrencyCode) Enum.valueOf(CurrencyCode.class, str);
    }

    public static CurrencyCode[] values() {
        return (CurrencyCode[]) $VALUES.clone();
    }

    public boolean isFund() {
        return false;
    }

    public boolean isPreciousMetal() {
        return false;
    }

    private CurrencyCode(String str, int i, String str2, int i2, int i3, CountryCode... countryCodeArr) {
        this.currencyName = str2;
        this.numeric = i2;
        this.minorUnit = i3;
        this.countryList = CollectionsKt.listOf(Arrays.copyOf(countryCodeArr, countryCodeArr.length));
    }

    public final String getCurrencyName() {
        return this.currencyName;
    }

    public final int getNumeric() {
        return this.numeric;
    }

    public final int getMinorUnit() {
        return this.minorUnit;
    }

    static {
        CurrencyCode[] currencyCodeArr$values = $values();
        $VALUES = currencyCodeArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(currencyCodeArr$values);
        INSTANCE = new Companion(null);
        numericMap = new LinkedHashMap();
        for (CurrencyCode currencyCode : getEntries()) {
            numericMap.put(Integer.valueOf(currencyCode.numeric), currencyCode);
        }
    }

    public final List<CountryCode> getCountryList() {
        return this.countryList;
    }

    /* JADX INFO: compiled from: CurrencyCode.kt */
    @Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001c\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\n\u001a\u00020\u000bH\u0002J\u0010\u0010\f\u001a\u0004\u0018\u00010\u00062\u0006\u0010\t\u001a\u00020\u0005J\u0012\u0010\f\u001a\u0004\u0018\u00010\u00062\b\u0010\t\u001a\u0004\u0018\u00010\bJ\u001a\u0010\f\u001a\u0004\u0018\u00010\u00062\b\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\n\u001a\u00020\u000bJ\u0012\u0010\r\u001a\u0004\u0018\u00010\u00062\b\u0010\t\u001a\u0004\u0018\u00010\bJ\u0016\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00060\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011J\u0016\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00060\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\bJ\u001e\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00060\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\b2\u0006\u0010\n\u001a\u00020\u000bJ\u0016\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00060\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\bR\u001a\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcom/stripe/currency/CurrencyCode$Companion;", "", "()V", "numericMap", "", "", "Lcom/stripe/currency/CurrencyCode;", "canonicalize", "", "code", "caseSensitive", "", "getByCode", "getByCodeIgnoreCase", "getByCountry", "", "country", "Lcom/stripe/currency/CountryCode;", "getByCountryIgnoreCase", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final CurrencyCode getByCode(String code) {
            return getByCode(code, true);
        }

        public final CurrencyCode getByCodeIgnoreCase(String code) {
            return getByCode(code, false);
        }

        public final CurrencyCode getByCode(String code, boolean caseSensitive) {
            String strCanonicalize = canonicalize(code, caseSensitive);
            for (CurrencyCode currencyCode : CurrencyCode.values()) {
                if (Intrinsics.areEqual(currencyCode.name(), strCanonicalize)) {
                    return currencyCode;
                }
            }
            return null;
        }

        public final CurrencyCode getByCode(int code) {
            if (code <= 0) {
                return null;
            }
            return (CurrencyCode) CurrencyCode.numericMap.get(Integer.valueOf(code));
        }

        private final String canonicalize(String code, boolean caseSensitive) {
            String str = code;
            if (str == null || str.length() == 0) {
                return null;
            }
            if (caseSensitive) {
                return code;
            }
            String upperCase = code.toUpperCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(upperCase, "toUpperCase(...)");
            return upperCase;
        }

        public final List<CurrencyCode> getByCountry(String country) {
            return getByCountry(country, true);
        }

        public final List<CurrencyCode> getByCountryIgnoreCase(String country) {
            return getByCountry(country, false);
        }

        public final List<CurrencyCode> getByCountry(String country, boolean caseSensitive) {
            return getByCountry(CountryCode.INSTANCE.getByCode(country, caseSensitive));
        }

        public final List<CurrencyCode> getByCountry(CountryCode country) {
            ArrayList arrayList = new ArrayList();
            if (country != null) {
                for (CurrencyCode currencyCode : CurrencyCode.getEntries()) {
                    Iterator<CountryCode> it = currencyCode.getCountryList().iterator();
                    while (it.hasNext()) {
                        if (it.next() == country) {
                            arrayList.add(currencyCode);
                        }
                    }
                }
            }
            return arrayList;
        }
    }
}
