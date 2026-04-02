package com.stripe.currency;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.recyclerview.widget.ItemTouchHelper;
import com.google.logging.type.LogSeverity;
import com.google.zxing.client.result.ExpandedProductParsedResult;
import com.sun.jna.Function;
import com.sun.jna.platform.win32.WinError;
import com.sun.jna.platform.win32.WinUser;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.apache.http.HttpStatus;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: CountryCode.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000!\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0003\b\u009b\u0002\b\u0086\u0081\u0002\u0018\u0000 ¢\u00022\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0004¡\u0002¢\u0002B)\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tR\u0011\u0010\n\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\fR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\fR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019j\u0002\b\u001aj\u0002\b\u001bj\u0002\b\u001cj\u0002\b\u001dj\u0002\b\u001ej\u0002\b\u001fj\u0002\b j\u0002\b!j\u0002\b\"j\u0002\b#j\u0002\b$j\u0002\b%j\u0002\b&j\u0002\b'j\u0002\b(j\u0002\b)j\u0002\b*j\u0002\b+j\u0002\b,j\u0002\b-j\u0002\b.j\u0002\b/j\u0002\b0j\u0002\b1j\u0002\b2j\u0002\b3j\u0002\b4j\u0002\b5j\u0002\b6j\u0002\b7j\u0002\b8j\u0002\b9j\u0002\b:j\u0002\b;j\u0002\b<j\u0002\b=j\u0002\b>j\u0002\b?j\u0002\b@j\u0002\bAj\u0002\bBj\u0002\bCj\u0002\bDj\u0002\bEj\u0002\bFj\u0002\bGj\u0002\bHj\u0002\bIj\u0002\bJj\u0002\bKj\u0002\bLj\u0002\bMj\u0002\bNj\u0002\bOj\u0002\bPj\u0002\bQj\u0002\bRj\u0002\bSj\u0002\bTj\u0002\bUj\u0002\bVj\u0002\bWj\u0002\bXj\u0002\bYj\u0002\bZj\u0002\b[j\u0002\b\\j\u0002\b]j\u0002\b^j\u0002\b_j\u0002\b`j\u0002\baj\u0002\bbj\u0002\bcj\u0002\bdj\u0002\bej\u0002\bfj\u0002\bgj\u0002\bhj\u0002\bij\u0002\bjj\u0002\bkj\u0002\blj\u0002\bmj\u0002\bnj\u0002\boj\u0002\bpj\u0002\bqj\u0002\brj\u0002\bsj\u0002\btj\u0002\buj\u0002\bvj\u0002\bwj\u0002\bxj\u0002\byj\u0002\bzj\u0002\b{j\u0002\b|j\u0002\b}j\u0002\b~j\u0002\b\u007fj\u0003\b\u0080\u0001j\u0003\b\u0081\u0001j\u0003\b\u0082\u0001j\u0003\b\u0083\u0001j\u0003\b\u0084\u0001j\u0003\b\u0085\u0001j\u0003\b\u0086\u0001j\u0003\b\u0087\u0001j\u0003\b\u0088\u0001j\u0003\b\u0089\u0001j\u0003\b\u008a\u0001j\u0003\b\u008b\u0001j\u0003\b\u008c\u0001j\u0003\b\u008d\u0001j\u0003\b\u008e\u0001j\u0003\b\u008f\u0001j\u0003\b\u0090\u0001j\u0003\b\u0091\u0001j\u0003\b\u0092\u0001j\u0003\b\u0093\u0001j\u0003\b\u0094\u0001j\u0003\b\u0095\u0001j\u0003\b\u0096\u0001j\u0003\b\u0097\u0001j\u0003\b\u0098\u0001j\u0003\b\u0099\u0001j\u0003\b\u009a\u0001j\u0003\b\u009b\u0001j\u0003\b\u009c\u0001j\u0003\b\u009d\u0001j\u0003\b\u009e\u0001j\u0003\b\u009f\u0001j\u0003\b \u0001j\u0003\b¡\u0001j\u0003\b¢\u0001j\u0003\b£\u0001j\u0003\b¤\u0001j\u0003\b¥\u0001j\u0003\b¦\u0001j\u0003\b§\u0001j\u0003\b¨\u0001j\u0003\b©\u0001j\u0003\bª\u0001j\u0003\b«\u0001j\u0003\b¬\u0001j\u0003\b\u00ad\u0001j\u0003\b®\u0001j\u0003\b¯\u0001j\u0003\b°\u0001j\u0003\b±\u0001j\u0003\b²\u0001j\u0003\b³\u0001j\u0003\b´\u0001j\u0003\bµ\u0001j\u0003\b¶\u0001j\u0003\b·\u0001j\u0003\b¸\u0001j\u0003\b¹\u0001j\u0003\bº\u0001j\u0003\b»\u0001j\u0003\b¼\u0001j\u0003\b½\u0001j\u0003\b¾\u0001j\u0003\b¿\u0001j\u0003\bÀ\u0001j\u0003\bÁ\u0001j\u0003\bÂ\u0001j\u0003\bÃ\u0001j\u0003\bÄ\u0001j\u0003\bÅ\u0001j\u0003\bÆ\u0001j\u0003\bÇ\u0001j\u0003\bÈ\u0001j\u0003\bÉ\u0001j\u0003\bÊ\u0001j\u0003\bË\u0001j\u0003\bÌ\u0001j\u0003\bÍ\u0001j\u0003\bÎ\u0001j\u0003\bÏ\u0001j\u0003\bÐ\u0001j\u0003\bÑ\u0001j\u0003\bÒ\u0001j\u0003\bÓ\u0001j\u0003\bÔ\u0001j\u0003\bÕ\u0001j\u0003\bÖ\u0001j\u0003\b×\u0001j\u0003\bØ\u0001j\u0003\bÙ\u0001j\u0003\bÚ\u0001j\u0003\bÛ\u0001j\u0003\bÜ\u0001j\u0003\bÝ\u0001j\u0003\bÞ\u0001j\u0003\bß\u0001j\u0003\bà\u0001j\u0003\bá\u0001j\u0003\bâ\u0001j\u0003\bã\u0001j\u0003\bä\u0001j\u0003\bå\u0001j\u0003\bæ\u0001j\u0003\bç\u0001j\u0003\bè\u0001j\u0003\bé\u0001j\u0003\bê\u0001j\u0003\bë\u0001j\u0003\bì\u0001j\u0003\bí\u0001j\u0003\bî\u0001j\u0003\bï\u0001j\u0003\bð\u0001j\u0003\bñ\u0001j\u0003\bò\u0001j\u0003\bó\u0001j\u0003\bô\u0001j\u0003\bõ\u0001j\u0003\bö\u0001j\u0003\b÷\u0001j\u0003\bø\u0001j\u0003\bù\u0001j\u0003\bú\u0001j\u0003\bû\u0001j\u0003\bü\u0001j\u0003\bý\u0001j\u0003\bþ\u0001j\u0003\bÿ\u0001j\u0003\b\u0080\u0002j\u0003\b\u0081\u0002j\u0003\b\u0082\u0002j\u0003\b\u0083\u0002j\u0003\b\u0084\u0002j\u0003\b\u0085\u0002j\u0003\b\u0086\u0002j\u0003\b\u0087\u0002j\u0003\b\u0088\u0002j\u0003\b\u0089\u0002j\u0003\b\u008a\u0002j\u0003\b\u008b\u0002j\u0003\b\u008c\u0002j\u0003\b\u008d\u0002j\u0003\b\u008e\u0002j\u0003\b\u008f\u0002j\u0003\b\u0090\u0002j\u0003\b\u0091\u0002j\u0003\b\u0092\u0002j\u0003\b\u0093\u0002j\u0003\b\u0094\u0002j\u0003\b\u0095\u0002j\u0003\b\u0096\u0002j\u0003\b\u0097\u0002j\u0003\b\u0098\u0002j\u0003\b\u0099\u0002j\u0003\b\u009a\u0002j\u0003\b\u009b\u0002j\u0003\b\u009c\u0002j\u0003\b\u009d\u0002j\u0003\b\u009e\u0002j\u0003\b\u009f\u0002j\u0003\b \u0002¨\u0006£\u0002"}, d2 = {"Lcom/stripe/currency/CountryCode;", "", "countryName", "", "alpha3", "numeric", "", "assignment", "Lcom/stripe/currency/CountryCode$Assignment;", "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V", "alpha2", "getAlpha2", "()Ljava/lang/String;", "getAlpha3", "getCountryName", "getNumeric", "()I", "UNDEFINED", "AC", "AD", "AE", "AF", "AG", "AI", "AL", "AM", "AN", "AO", "AQ", "AR", "AS", "AT", "AU", "AW", "AX", "AZ", "BA", "BB", "BD", "BE", "BF", "BG", "BH", "BI", "BJ", "BL", "BM", "BN", "BO", "BQ", "BR", "BS", "BT", "BU", "BV", "BW", "BY", "BZ", "CA", "CC", "CD", "CF", "CG", "CH", "CI", "CK", "CL", "CM", "CN", "CO", "CP", "CR", "CS", "CU", "CV", "CW", "CX", "CY", "CZ", "DE", "DG", "DJ", "DK", "DM", "DO", "DZ", "EA", "EC", "EE", "EG", "EH", "ER", "ES", "ET", "EU", "EZ", "FI", "FJ", "FK", "FM", "FO", "FR", "FX", "GA", "GB", "GD", "GE", "GF", "GG", "GH", "GI", "GL", "GM", "GN", "GP", "GQ", "GR", "GS", "GT", "GU", "GW", "GY", "HK", "HM", "HN", "HR", "HT", "HU", "IC", "ID", "IE", "IL", "IM", "IN", "IO", "IQ", "IR", "IS", "IT", "JE", "JM", "JO", "JP", "KE", ExpandedProductParsedResult.KILOGRAM, "KH", "KI", "KM", "KN", "KP", "KR", "KW", "KY", "KZ", "LA", ExpandedProductParsedResult.POUND, "LC", "LI", "LK", "LR", "LS", "LT", "LU", "LV", "LY", "MA", "MC", "MD", "ME", "MF", "MG", "MH", "MK", "ML", "MM", "MN", "MO", "MP", "MQ", "MR", "MS", "MT", "MU", "MV", "MW", "MX", "MY", "MZ", "NA", "NC", "NE", "NF", "NG", "NI", "NL", "NO", "NP", "NR", "NT", "NU", "NZ", "OM", "PA", "PE", "PF", "PG", "PH", "PK", "PL", "PM", "PN", "PR", "PS", "PT", "PW", "PY", "QA", "RE", "RO", "RS", "RU", "RW", "SA", "SB", "SC", "SD", "SE", "SF", "SG", "SH", "SI", "SJ", "SK", "SL", "SM", "SN", "SO", "SR", "SS", "ST", "SU", "SV", "SX", "SY", "SZ", "TA", "TC", "TD", "TF", "TG", "TH", "TJ", "TK", "TL", "TM", "TN", "TO", "TP", "TR", "TT", "TV", "TW", "TZ", "UA", "UG", "UK", "UM", "US", "UY", "UZ", "VA", "VC", "VE", "VG", "VI", "VN", "VU", "WF", "WS", "XI", "XU", "XK", "YE", "YT", "YU", "ZA", "ZM", "ZR", "ZW", "Assignment", "Companion", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CountryCode {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ CountryCode[] $VALUES;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;
    private static final Map<String, CountryCode> alpha3Map;
    private static final Map<String, CountryCode> alpha4Map;
    private static final Map<Integer, CountryCode> numericMap;
    private final String alpha2 = name();
    private final String alpha3;
    private final String countryName;
    private final int numeric;
    public static final CountryCode UNDEFINED = new CountryCode("UNDEFINED", 0, "Undefined", null, -1, Assignment.USER_ASSIGNED);
    public static final CountryCode AC = new CountryCode("AC", 1, "Ascension Island", "ASC", -1, Assignment.EXCEPTIONALLY_RESERVED);
    public static final CountryCode AD = new CountryCode("AD", 2, "Andorra", "AND", 20, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode AE = new CountryCode("AE", 3, "United Arab Emirates", "ARE", WinError.ERROR_MCA_EXCEPTION, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode AF = new CountryCode("AF", 4, "Afghanistan", "AFG", 4, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode AG = new CountryCode("AG", 5, "Antigua and Barbuda", "ATG", 28, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode AI = new CountryCode("AI", 6, "Anguilla", "AIA", 660, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode AL = new CountryCode("AL", 7, "Albania", "ALB", 8, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode AM = new CountryCode("AM", 8, "Armenia", "ARM", 51, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode AN = new CountryCode("AN", 9, "Netherlands Antilles", "ANT", 530, Assignment.TRANSITIONALLY_RESERVED);
    public static final CountryCode AO = new CountryCode("AO", 10, "Angola", "AGO", 24, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode AQ = new CountryCode("AQ", 11, "Antarctica", "ATA", 10, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode AR = new CountryCode("AR", 12, "Argentina", "ARG", 32, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode AS = new CountryCode("AS", 13, "American Samoa", "ASM", 16, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode AT = new CountryCode("AT", 14, "Austria", "AUT", 40, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode AU = new CountryCode("AU", 15, "Australia", "AUS", 36, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode AW = new CountryCode("AW", 16, "Aruba", "ABW", 533, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode AX = new CountryCode("AX", 17, "Åland Islands", "ALA", 248, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode AZ = new CountryCode("AZ", 18, "Azerbaijan", "AZE", 31, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode BA = new CountryCode("BA", 19, "Bosnia and Herzegovina", "BIH", 70, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode BB = new CountryCode("BB", 20, "Barbados", "BRB", 52, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode BD = new CountryCode("BD", 21, "Bangladesh", "BGD", 50, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode BE = new CountryCode("BE", 22, "Belgium", "BEL", 56, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode BF = new CountryCode("BF", 23, "Burkina Faso", "BFA", 854, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode BG = new CountryCode("BG", 24, "Bulgaria", "BGR", 100, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode BH = new CountryCode("BH", 25, "Bahrain", "BHR", 48, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode BI = new CountryCode("BI", 26, "Burundi", "BDI", 108, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode BJ = new CountryCode("BJ", 27, "Benin", "BEN", HttpStatus.SC_NO_CONTENT, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode BL = new CountryCode("BL", 28, "Saint Barthélemy", "BLM", WinError.ERROR_DRIVER_DATABASE_ERROR, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode BM = new CountryCode("BM", 29, "Bermuda", "BMU", 60, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode BN = new CountryCode("BN", 30, "Brunei Darussalam", "BRN", 96, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode BO = new CountryCode("BO", 31, "Bolivia, Plurinational State of", "BOL", 68, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode BQ = new CountryCode("BQ", 32, "Bonaire, Sint Eustatius and Saba", "BES", WinError.ERROR_PIPE_CONNECTED, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode BR = new CountryCode("BR", 33, "Brazil", "BRA", 76, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode BS = new CountryCode("BS", 34, "Bahamas", "BHS", 44, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode BT = new CountryCode("BT", 35, "Bhutan", "BTN", 64, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode BU = new CountryCode("BU", 36, "Burma", "BUR", 104, Assignment.TRANSITIONALLY_RESERVED);
    public static final CountryCode BV = new CountryCode("BV", 37, "Bouvet Island", "BVT", 74, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode BW = new CountryCode("BW", 38, "Botswana", "BWA", 72, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode BY = new CountryCode("BY", 39, "Belarus", "BLR", 112, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode BZ = new CountryCode("BZ", 40, "Belize", "BLZ", 84, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode CA = new CountryCode("CA", 41, "Canada", "CAN", WinError.ERROR_INVALID_LEVEL, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode CC = new CountryCode("CC", 42, "Cocos (Keeling) Islands", "CCK", 166, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode CD = new CountryCode("CD", 43, "Congo, the Democratic Republic of the", "COD", WinError.ERROR_INVALID_SEGMENT_NUMBER, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode CF = new CountryCode("CF", 44, "Central African Republic", "CAF", WinError.ERROR_JOIN_TO_SUBST, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode CG = new CountryCode("CG", 45, "Congo", "COG", 178, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode CH = new CountryCode("CH", 46, "Switzerland", "CHE", WinError.ERROR_RESOURCE_REQUIREMENTS_CHANGED, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode CI = new CountryCode("CI", 47, "Côte d'Ivoire", "CIV", Function.USE_VARARGS, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode CK = new CountryCode("CK", 48, "Cook Islands", "COK", 184, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode CL = new CountryCode("CL", 49, "Chile", "CHL", WinError.ERROR_TOO_MANY_MUXWAITERS, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode CM = new CountryCode("CM", 50, "Cameroon", "CMR", WinError.ERROR_CALL_NOT_IMPLEMENTED, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode CN = new CountryCode("CN", 51, "China", "CHN", WinError.ERROR_SIGNAL_REFUSED, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode CO = new CountryCode("CO", 52, "Colombia", "COL", WinError.ERROR_BUSY, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode CP = new CountryCode("CP", 53, "Clipperton Island", "CPT", -1, Assignment.EXCEPTIONALLY_RESERVED);
    public static final CountryCode CR = new CountryCode("CR", 54, "Costa Rica", "CRI", WinError.ERROR_INVALID_STARTING_CODESEG, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode CS = new CountryCode("CS", 55, "Serbia and Montenegro", "SCG", 891, Assignment.TRANSITIONALLY_RESERVED);
    public static final CountryCode CU = new CountryCode("CU", 56, "Cuba", "CUB", 192, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode CV = new CountryCode("CV", 57, "Cape Verde", "CPV", WinError.ERROR_SEEK_ON_DEVICE, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode CW = new CountryCode("CW", 58, "Curaçao", "CUW", 531, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode CX = new CountryCode("CX", 59, "Christmas Island", "CXR", 162, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode CY = new CountryCode("CY", 60, "Cyprus", "CYP", WinError.ERROR_DYNLINK_FROM_INVALID_RING, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode CZ = new CountryCode("CZ", 61, "Czech Republic", "CZE", 203, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode DE = new CountryCode("DE", 62, "Germany", "DEU", WinError.ERROR_EA_FILE_CORRUPT, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode DG = new CountryCode("DG", 63, "Diego Garcia", "DGA", -1, Assignment.EXCEPTIONALLY_RESERVED);
    public static final CountryCode DJ = new CountryCode("DJ", 64, "Djibouti", "DJI", 262, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode DK = new CountryCode("DK", 65, "Denmark", "DNK", WinError.ERROR_META_EXPANSION_TOO_LONG, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode DM = new CountryCode("DM", 66, "Dominica", "DMA", WinError.ERROR_LOCKED, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode DO = new CountryCode("DO", 67, "Dominican Republic", "DOM", WinError.ERROR_TOO_MANY_MODULES, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode DZ = new CountryCode("DZ", 68, "Algeria", "DZA", 12, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode EA = new CountryCode("EA", 69, "Ceuta, Melilla", null, -1, Assignment.EXCEPTIONALLY_RESERVED);
    public static final CountryCode EC = new CountryCode("EC", 70, "Ecuador", "ECU", WinError.ERROR_EXE_CANNOT_MODIFY_STRONG_SIGNED_BINARY, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode EE = new CountryCode("EE", 71, "Estonia", "EST", WinError.ERROR_PIPE_NOT_CONNECTED, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode EG = new CountryCode("EG", 72, "Egypt", "EGY", 818, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode EH = new CountryCode("EH", 73, "Western Sahara", "ESH", WinError.ERROR_WAIT_2, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode ER = new CountryCode("ER", 74, "Eritrea", "ERI", WinError.ERROR_NO_DATA, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode ES = new CountryCode("ES", 75, "Spain", "ESP", WinError.ERROR_CARDBUS_NOT_SUPPORTED, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode ET = new CountryCode("ET", 76, "Ethiopia", "ETH", WinError.ERROR_PIPE_BUSY, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode EU = new CountryCode("EU", 77, "European Union", null, -1, Assignment.EXCEPTIONALLY_RESERVED);
    public static final CountryCode EZ = new CountryCode("EZ", 78, "Eurozone", null, -1, Assignment.EXCEPTIONALLY_RESERVED);
    public static final CountryCode FI = new CountryCode("FI", 79, "Finland", "FIN", 246, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode FJ = new CountryCode("FJ", 80, "Fiji", "FJI", 242, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode FK = new CountryCode("FK", 81, "Falkland Islands (Malvinas)", "FLK", 238, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode FM = new CountryCode("FM", 82, "Micronesia, Federated States of", "FSM", WinError.ERROR_UNDEFINED_CHARACTER, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode FO = new CountryCode("FO", 83, "Faroe Islands", "FRO", WinError.ERROR_MORE_DATA, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode FR = new CountryCode("FR", 84, "France", "FRA", ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode FX = new CountryCode("FX", 85, "France, Metropolitan", "FXX", 249, Assignment.EXCEPTIONALLY_RESERVED);
    public static final CountryCode GA = new CountryCode("GA", 86, "Gabon", "GAB", WinError.ERROR_CANNOT_COPY, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode GB = new CountryCode("GB", 87, "United Kingdom", "GBR", 826, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode GD = new CountryCode("GD", 88, "Grenada", "GRD", 308, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode GE = new CountryCode("GE", 89, "Georgia", "GEO", 268, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode GF = new CountryCode("GF", 90, "French Guiana", "GUF", WinError.ERROR_INVALID_EA_NAME, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode GG = new CountryCode("GG", 91, "Guernsey", "GGY", 831, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode GH = new CountryCode("GH", 92, "Ghana", "GHA", WinError.ERROR_NOT_OWNER, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode GI = new CountryCode("GI", 93, "Gibraltar", "GIB", 292, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode GL = new CountryCode("GL", 94, "Greenland", "GRL", 304, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode GM = new CountryCode("GM", 95, "Gambia", "GMB", 270, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode GN = new CountryCode("GN", 96, "Guinea", "GIN", 324, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode GP = new CountryCode("GP", 97, "Guadeloupe", "GLP", 312, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode GQ = new CountryCode("GQ", 98, "Equatorial Guinea", "GNQ", WinError.ERROR_VIRUS_DELETED, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode GR = new CountryCode("GR", 99, "Greece", "GRC", 300, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode GS = new CountryCode("GS", 100, "South Georgia and the South Sandwich Islands", "SGS", 239, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode GT = new CountryCode("GT", 101, "Guatemala", "GTM", 320, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode GU = new CountryCode("GU", 102, "Guam", "GUM", TypedValues.AttributesType.TYPE_PATH_ROTATE, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode GW = new CountryCode("GW", 103, "Guinea-Bissau", "GNB", WinError.ERROR_DLL_INIT_FAILED_LOGOFF, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode GY = new CountryCode("GY", 104, "Guyana", "GUY", 328, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode HK = new CountryCode("HK", WinError.ERROR_SEM_OWNER_DIED, "Hong Kong", "HKG", 344, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode HM = new CountryCode("HM", WinError.ERROR_SEM_USER_LIMIT, "Heard Island and McDonald Islands", "HMD", 334, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode HN = new CountryCode("HN", WinError.ERROR_DISK_CHANGE, "Honduras", "HND", 340, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode HR = new CountryCode("HR", 108, "Croatia", "HRV", 191, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode HT = new CountryCode("HT", 109, "Haiti", "HTI", 332, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode HU = new CountryCode("HU", 110, "Hungary", "HUN", 348, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode IC = new CountryCode("IC", WinError.ERROR_BUFFER_OVERFLOW, "Canary Islands", null, -1, Assignment.EXCEPTIONALLY_RESERVED);
    public static final CountryCode ID = new CountryCode("ID", 112, "Indonesia", "IDN", 360, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode IE = new CountryCode("IE", WinError.ERROR_NO_MORE_SEARCH_HANDLES, "Ireland", "IRL", 372, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode IL = new CountryCode("IL", WinError.ERROR_INVALID_TARGET_HANDLE, "Israel", "ISR", 376, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode IM = new CountryCode("IM", 115, "Isle of Man", "IMN", 833, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode IN = new CountryCode("IN", 116, "India", "IND", 356, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode IO = new CountryCode("IO", WinError.ERROR_INVALID_CATEGORY, "British Indian Ocean Territory", "IOT", 86, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode IQ = new CountryCode("IQ", WinError.ERROR_INVALID_VERIFY_SWITCH, "Iraq", "IRQ", 368, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode IR = new CountryCode("IR", WinError.ERROR_BAD_DRIVER_LEVEL, "Iran, Islamic Republic of", "IRN", 364, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode IS = new CountryCode("IS", WinError.ERROR_CALL_NOT_IMPLEMENTED, "Iceland", "ISL", WinError.ERROR_FAIL_RESTART, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode IT = new CountryCode("IT", WinError.ERROR_SEM_TIMEOUT, "Italy", "ITA", 380, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode JE = new CountryCode("JE", 122, "Jersey", "JEY", 832, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode JM = new CountryCode("JM", 123, "Jamaica", "JAM", 388, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode JO = new CountryCode("JO", WinError.ERROR_INVALID_LEVEL, "Jordan", "JOR", 400, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode JP = new CountryCode("JP", WinError.ERROR_NO_VOLUME_LABEL, "Japan", "JPN", 392, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode KE = new CountryCode("KE", 126, "Kenya", "KEN", HttpStatus.SC_NOT_FOUND, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode KG = new CountryCode(ExpandedProductParsedResult.KILOGRAM, 127, "Kyrgyzstan", "KGZ", HttpStatus.SC_EXPECTATION_FAILED, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode KH = new CountryCode("KH", 128, "Cambodia", "KHM", 116, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode KI = new CountryCode("KI", 129, "Kiribati", "KIR", 296, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode KM = new CountryCode("KM", 130, "Comoros", "COM", WinError.ERROR_ATOMIC_LOCKS_NOT_SUPPORTED, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode KN = new CountryCode("KN", 131, "Saint Kitts and Nevis", "KNA", 659, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode KP = new CountryCode("KP", WinError.ERROR_SEEK_ON_DEVICE, "Korea, Democratic People's Republic of", "PRK", HttpStatus.SC_REQUEST_TIMEOUT, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode KR = new CountryCode("KR", WinError.ERROR_IS_JOIN_TARGET, "Korea, Republic of", "KOR", HttpStatus.SC_GONE, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode KW = new CountryCode("KW", WinError.ERROR_IS_JOINED, "Kuwait", "KWT", HttpStatus.SC_REQUEST_URI_TOO_LONG, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode KY = new CountryCode("KY", WinError.ERROR_IS_SUBSTED, "Cayman Islands", "CYM", 136, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode KZ = new CountryCode("KZ", 136, "Kazakhstan", "KAZ", 398, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode LA = new CountryCode("LA", WinError.ERROR_NOT_SUBSTED, "Lao People's Democratic Republic", "LAO", 418, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode LB = new CountryCode(ExpandedProductParsedResult.POUND, WinError.ERROR_JOIN_TO_JOIN, "Lebanon", "LBN", 422, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode LC = new CountryCode("LC", WinError.ERROR_SUBST_TO_SUBST, "Saint Lucia", "LCA", 662, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode LI = new CountryCode("LI", WinError.ERROR_JOIN_TO_SUBST, "Liechtenstein", "LIE", 438, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode LK = new CountryCode("LK", WinError.ERROR_SUBST_TO_JOIN, "Sri Lanka", "LKA", WinError.ERROR_DIR_NOT_ROOT, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode LR = new CountryCode("LR", 142, "Liberia", "LBR", 430, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode LS = new CountryCode("LS", WinError.ERROR_SAME_DRIVE, "Lesotho", "LSO", 426, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode LT = new CountryCode("LT", WinError.ERROR_DIR_NOT_ROOT, "Lithuania", "LTU", 440, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode LU = new CountryCode("LU", WinError.ERROR_DIR_NOT_EMPTY, "Luxembourg", "LUX", 442, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode LV = new CountryCode("LV", WinError.ERROR_IS_SUBST_PATH, "Latvia", "LVA", 428, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode LY = new CountryCode("LY", WinError.ERROR_IS_JOIN_PATH, "Libya", "LBY", 434, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode MA = new CountryCode("MA", WinError.ERROR_PATH_BUSY, "Morocco", "MAR", 504, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode MC = new CountryCode("MC", WinError.ERROR_IS_SUBST_TARGET, "Monaco", "MCO", 492, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode MD = new CountryCode("MD", WinError.ERROR_SYSTEM_TRACE, "Moldova, Republic of", "MDA", 498, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode ME = new CountryCode("ME", WinError.ERROR_INVALID_EVENT_COUNT, "Montenegro", "MNE", 499, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode MF = new CountryCode("MF", WinError.ERROR_TOO_MANY_MUXWAITERS, "Saint Martin (French part)", "MAF", 663, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode MG = new CountryCode("MG", WinError.ERROR_INVALID_LIST_FORMAT, "Madagascar", "MDG", 450, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode MH = new CountryCode("MH", WinError.ERROR_LABEL_TOO_LONG, "Marshall Islands", "MHL", WinError.ERROR_FLOPPY_VOLUME, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode MK = new CountryCode("MK", 155, "North Macedonia, Republic of", "MKD", 807, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode ML = new CountryCode("ML", WinError.ERROR_SIGNAL_REFUSED, "Mali", "MLI", 466, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode MM = new CountryCode("MM", WinError.ERROR_DISCARDED, "Myanmar", "MMR", 104, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode MN = new CountryCode("MN", WinError.ERROR_NOT_LOCKED, "Mongolia", "MNG", 496, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode MO = new CountryCode("MO", WinError.ERROR_BAD_THREADID_ADDR, "Macao", "MAC", 446, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode MP = new CountryCode("MP", 160, "Northern Mariana Islands", "MNP", WinError.ERROR_NO_EVENT_PAIR, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode MQ = new CountryCode("MQ", 161, "Martinique", "MTQ", 474, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode MR = new CountryCode("MR", 162, "Mauritania", "MRT", 478, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode MS = new CountryCode("MS", WinUser.VK_RCONTROL, "Montserrat", "MSR", 500, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode MT = new CountryCode("MT", 164, "Malta", "MLT", 470, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode MU = new CountryCode("MU", WinUser.VK_RMENU, "Mauritius", "MUS", 480, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode MV = new CountryCode("MV", 166, "Maldives", "MDV", 462, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode MW = new CountryCode("MW", WinError.ERROR_LOCK_FAILED, "Malawi", "MWI", 454, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode MX = new CountryCode("MX", 168, "Mexico", "MEX", 484, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode MY = new CountryCode("MY", 169, "Malaysia", "MYS", 458, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode MZ = new CountryCode("MZ", WinError.ERROR_BUSY, "Mozambique", "MOZ", TypedValues.PositionType.TYPE_CURVE_FIT, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode NA = new CountryCode("NA", 171, "Namibia", "NAM", 516, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode NC = new CountryCode("NC", 172, "New Caledonia", "NCL", WinError.ERROR_WX86_ERROR, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode NE = new CountryCode("NE", WinError.ERROR_CANCEL_VIOLATION, "Niger", "NER", 562, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode NF = new CountryCode("NF", WinError.ERROR_ATOMIC_LOCKS_NOT_SUPPORTED, "Norfolk Island", "NFK", WinError.ERROR_UNHANDLED_EXCEPTION, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode NG = new CountryCode("NG", 175, "Nigeria", "NGA", WinError.ERROR_THREAD_NOT_IN_PROCESS, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode NI = new CountryCode("NI", 176, "Nicaragua", "NIC", WinError.ERROR_UNEXPECTED_MM_EXTEND_ERR, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode NL = new CountryCode("NL", 177, "Netherlands", "NLD", 528, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode NO = new CountryCode("NO", 178, "Norway", "NOR", WinError.ERROR_NO_PAGEFILE, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode NP = new CountryCode("NP", 179, "Nepal", "NPL", 524, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode NR = new CountryCode("NR", WinError.ERROR_INVALID_SEGMENT_NUMBER, "Nauru", "NRU", 520, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode NT = new CountryCode("NT", 181, "Neutral Zone", "NTZ", WinError.ERROR_PIPE_LISTENING, Assignment.TRANSITIONALLY_RESERVED);
    public static final CountryCode NU = new CountryCode("NU", WinError.ERROR_INVALID_ORDINAL, "Niue", "NIU", WinError.ERROR_NET_OPEN_FAILED, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode NZ = new CountryCode("NZ", WinError.ERROR_ALREADY_EXISTS, "New Zealand", "NZL", WinError.ERROR_CANT_WAIT, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode OM = new CountryCode("OM", 184, "Oman", "OMN", 512, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode PA = new CountryCode("PA", 185, "Panama", "PAN", WinError.ERROR_SYSTEM_PROCESS_TERMINATED, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode PE = new CountryCode("PE", WinError.ERROR_INVALID_FLAG_NUMBER, "Peru", "PER", 604, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode PF = new CountryCode("PF", WinError.ERROR_SEM_NOT_FOUND, "French Polynesia", "PYF", 258, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode PG = new CountryCode("PG", WinError.ERROR_INVALID_STARTING_CODESEG, "Papua New Guinea", "PNG", WinError.ERROR_NOT_TINY_STREAM, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode PH = new CountryCode("PH", WinError.ERROR_INVALID_STACKSEG, "Philippines", "PHL", 608, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode PK = new CountryCode("PK", WinError.ERROR_INVALID_MODULETYPE, "Pakistan", "PAK", WinError.ERROR_BACKUP_CONTROLLER, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode PL = new CountryCode("PL", 191, "Poland", "POL", WinError.ERROR_PWD_TOO_RECENT, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode PM = new CountryCode("PM", 192, "Saint Pierre and Miquelon", "SPM", 666, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode PN = new CountryCode("PN", WinError.ERROR_BAD_EXE_FORMAT, "Pitcairn", "PCN", 612, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode PR = new CountryCode("PR", WinError.ERROR_ITERATED_DATA_EXCEEDS_64k, "Puerto Rico", "PRI", WinError.ERROR_FLOAT_MULTIPLE_FAULTS, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode PS = new CountryCode("PS", WinError.ERROR_INVALID_MINALLOCSIZE, "Palestine, State of", "PSE", WinError.ERROR_EAS_DIDNT_FIT, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode PT = new CountryCode("PT", WinError.ERROR_DYNLINK_FROM_INVALID_RING, "Portugal", "PRT", WinError.ERROR_INVALID_PLUGPLAY_DEVICE_PATH, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode PW = new CountryCode("PW", WinError.ERROR_IOPL_NOT_ENABLED, "Palau", "PLW", WinError.ERROR_BIOS_FAILED_TO_CONNECT_INTERRUPT, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode PY = new CountryCode("PY", WinError.ERROR_INVALID_SEGDPL, "Paraguay", "PRY", 600, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode QA = new CountryCode("QA", WinError.ERROR_AUTODATASEG_EXCEEDS_64k, "Qatar", "QAT", WinError.ERROR_CORRUPT_SYSTEM_FILE, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode RE = new CountryCode("RE", 200, "Réunion", "REU", WinError.ERROR_PNP_REBOOT_REQUIRED, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode RO = new CountryCode("RO", 201, "Romania", "ROU", WinError.ERROR_PORT_NOT_SET, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode RS = new CountryCode("RS", 202, "Serbia", "SRB", WinError.ERROR_DBG_EXCEPTION_NOT_HANDLED, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode RU = new CountryCode("RU", 203, "Russian Federation", "RUS", WinError.ERROR_DS_VERSION_CHECK_FAILURE, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode RW = new CountryCode("RW", HttpStatus.SC_NO_CONTENT, "Rwanda", "RWA", WinError.ERROR_NOT_SAFE_MODE_DRIVER, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode SA = new CountryCode("SA", 205, "Saudi Arabia", "SAU", WinError.ERROR_LONGJUMP, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode SB = new CountryCode("SB", 206, "Solomon Islands", "SLB", 90, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode SC = new CountryCode("SC", 207, "Seychelles", "SYC", WinError.ERROR_DBG_UNABLE_TO_PROVIDE_HANDLE, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode SD = new CountryCode("SD", WinError.ERROR_META_EXPANSION_TOO_LONG, "Sudan", "SDN", WinError.ERROR_DRIVERS_LEAKING_LOCKED_PAGES, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode SE = new CountryCode("SE", WinError.ERROR_INVALID_SIGNAL_NUMBER, "Sweden", "SWE", WinError.ERROR_CACHE_PAGE_LOCKED, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode SF = new CountryCode("SF", WinError.ERROR_THREAD_1_INACTIVE, "Finland", "FIN", 246, Assignment.TRANSITIONALLY_RESERVED);
    public static final CountryCode SG = new CountryCode("SG", 211, "Singapore", "SGP", 702, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode SH = new CountryCode("SH", WinError.ERROR_LOCKED, "Saint Helena, Ascension and Tristan da Cunha", "SHN", WinError.ERROR_DRIVER_FAILED_PRIOR_UNLOAD, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode SI = new CountryCode("SI", 213, "Slovenia", "SVN", 705, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode SJ = new CountryCode("SJ", WinError.ERROR_TOO_MANY_MODULES, "Svalbard and Jan Mayen", "SJM", WinError.ERROR_RXACT_COMMITTED, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode SK = new CountryCode("SK", WinError.ERROR_NESTING_NOT_ALLOWED, "Slovakia", "SVK", WinError.ERROR_BAD_CURRENT_DIRECTORY, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode SL = new CountryCode("SL", WinError.ERROR_EXE_MACHINE_TYPE_MISMATCH, "Sierra Leone", "SLE", WinError.ERROR_DBG_PRINTEXCEPTION_C, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode SM = new CountryCode("SM", WinError.ERROR_EXE_CANNOT_MODIFY_SIGNED_BINARY, "San Marino", "SMR", WinError.ERROR_PNP_INVALID_ID, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode SN = new CountryCode("SN", WinError.ERROR_EXE_CANNOT_MODIFY_STRONG_SIGNED_BINARY, "Senegal", "SEN", WinError.ERROR_DLL_MIGHT_BE_INSECURE, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode SO = new CountryCode("SO", 219, "Somalia", "SOM", 706, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode SR = new CountryCode("SR", WinError.ERROR_FILE_CHECKED_OUT, "Suriname", "SUR", WinError.ERROR_ELEVATION_REQUIRED, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode SS = new CountryCode("SS", WinError.ERROR_CHECKOUT_REQUIRED, "South Sudan", "SSD", WinError.ERROR_FIRMWARE_UPDATED, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode ST = new CountryCode("ST", WinError.ERROR_BAD_FILE_TYPE, "Sao Tome and Principe", "STP", WinError.ERROR_RXACT_COMMIT_NECESSARY, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode SU = new CountryCode("SU", WinError.ERROR_FILE_TOO_LARGE, "USSR", "SUN", 810, Assignment.EXCEPTIONALLY_RESERVED);
    public static final CountryCode SV = new CountryCode("SV", WinError.ERROR_FORMS_AUTH_REQUIRED, "El Salvador", "SLV", WinError.ERROR_BAD_FILE_TYPE, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode SX = new CountryCode("SX", WinError.ERROR_VIRUS_INFECTED, "Sint Maarten (Dutch part)", "SXM", WinError.ERROR_ARITHMETIC_OVERFLOW, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode SY = new CountryCode("SY", WinError.ERROR_VIRUS_DELETED, "Syrian Arab Republic", "SYR", WinError.ERROR_PROCESS_IN_JOB, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode SZ = new CountryCode("SZ", 227, "Eswatini", "SWZ", WinError.ERROR_PAGE_FAULT_DEMAND_ZERO, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode TA = new CountryCode("TA", 228, "Tristan da Cunha", "TAA", -1, Assignment.EXCEPTIONALLY_RESERVED);
    public static final CountryCode TC = new CountryCode("TC", WinError.ERROR_PIPE_LOCAL, "Turks and Caicos Islands", "TCA", 796, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode TD = new CountryCode("TD", WinError.ERROR_BAD_PIPE, "Chad", "TCD", WinError.ERROR_PATH_BUSY, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode TF = new CountryCode("TF", WinError.ERROR_PIPE_BUSY, "French Southern Territories", "ATF", 260, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode TG = new CountryCode("TG", WinError.ERROR_NO_DATA, "Togo", "TGO", 768, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode TH = new CountryCode("TH", WinError.ERROR_PIPE_NOT_CONNECTED, "Thailand", "THA", WinError.ERROR_INTERRUPT_STILL_CONNECTED, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode TJ = new CountryCode("TJ", WinError.ERROR_MORE_DATA, "Tajikistan", "TJK", WinError.ERROR_FSFILTER_OP_COMPLETED_SUCCESSFULLY, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode TK = new CountryCode("TK", 235, "Tokelau", "TKL", WinError.ERROR_ROWSNOTRELEASED, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode TL = new CountryCode("TL", 236, "Timor-Leste", "TLS", WinError.ERROR_NO_MORE_MATCHES, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode TM = new CountryCode("TM", 237, "Turkmenistan", "TKM", 795, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode TN = new CountryCode("TN", 238, "Tunisia", "TUN", WinError.ERROR_LOST_WRITEBEHIND_DATA_NETWORK_DISCONNECTED, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode TO = new CountryCode("TO", 239, "Tonga", "TON", WinError.ERROR_REQUEST_OUT_OF_SEQUENCE, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode TP = new CountryCode("TP", 240, "East Timor", "TMP", WinError.ERROR_NO_MORE_MATCHES, Assignment.TRANSITIONALLY_RESERVED);
    public static final CountryCode TR = new CountryCode("TR", 241, "Turkey", "TUR", 792, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode TT = new CountryCode("TT", 242, "Trinidad and Tobago", "TTO", WinError.ERROR_DISK_REPAIR_DISABLED, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode TV = new CountryCode("TV", 243, "Tuvalu", "TUV", 798, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode TW = new CountryCode("TW", 244, "Taiwan, Province of China", "TWN", WinError.ERROR_NOT_LOCKED, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode TZ = new CountryCode("TZ", 245, "Tanzania, United Republic of", "TZA", 834, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode UA = new CountryCode("UA", 246, "Ukraine", "UKR", 804, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode UG = new CountryCode("UG", 247, "Uganda", "UGA", LogSeverity.EMERGENCY_VALUE, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode UK = new CountryCode("UK", 248, "United Kingdom", null, 826, Assignment.EXCEPTIONALLY_RESERVED);
    public static final CountryCode UM = new CountryCode("UM", 249, "United States Minor Outlying Islands", "UMI", WinError.ERROR_DOMAIN_CTRLR_CONFIG_ERROR, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode US = new CountryCode("US", ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION, "United States", "USA", 840, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode UY = new CountryCode("UY", 251, "Uruguay", "URY", 858, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode UZ = new CountryCode("UZ", 252, "Uzbekistan", "UZB", 860, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode VA = new CountryCode("VA", 253, "Holy See (Vatican City State)", "VAT", 336, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode VC = new CountryCode("VC", WinError.ERROR_INVALID_EA_NAME, "Saint Vincent and the Grenadines", "VCT", WinError.ERROR_WOW_ASSERTION, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode VE = new CountryCode("VE", 255, "Venezuela, Bolivarian Republic of", "VEN", 862, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode VG = new CountryCode("VG", 256, "Virgin Islands, British", "VGB", 92, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode VI = new CountryCode("VI", 257, "Virgin Islands, U.S.", "VIR", 850, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode VN = new CountryCode("VN", 258, "Viet Nam", "VNM", 704, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode VU = new CountryCode("VU", 259, "Vanuatu", "VUT", WinError.ERROR_DEVICE_ALREADY_ATTACHED, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode WF = new CountryCode("WF", 260, "Wallis and Futuna", "WLF", 876, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode WS = new CountryCode("WS", WinUser.WM_SYSKEYUP, "Samoa", "WSM", 882, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode XI = new CountryCode("XI", 262, "Northern Ireland", "XXI", -1, Assignment.USER_ASSIGNED);
    public static final CountryCode XU = new CountryCode("XU", 263, "United Kingdom (excluding Northern Ireland)", "XXU", -1, Assignment.USER_ASSIGNED);
    public static final CountryCode XK = new CountryCode("XK", 264, "Kosovo, Republic of", "XKX", -1, Assignment.USER_ASSIGNED);
    public static final CountryCode YE = new CountryCode("YE", 265, "Yemen", "YEM", 887, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode YT = new CountryCode("YT", WinError.ERROR_CANNOT_COPY, "Mayotte", "MYT", 175, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode YU = new CountryCode("YU", WinError.ERROR_DIRECTORY, "Yugoslavia", "YUG", 890, Assignment.TRANSITIONALLY_RESERVED);
    public static final CountryCode ZA = new CountryCode("ZA", 268, "South Africa", "ZAF", WinError.ERROR_EVENT_DONE, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode ZM = new CountryCode("ZM", 269, "Zambia", "ZMB", 894, Assignment.OFFICIALLY_ASSIGNED);
    public static final CountryCode ZR = new CountryCode("ZR", 270, "Zaire", "ZAR", WinError.ERROR_INVALID_SEGMENT_NUMBER, Assignment.TRANSITIONALLY_RESERVED);
    public static final CountryCode ZW = new CountryCode("ZW", 271, "Zimbabwe", "ZWE", WinError.ERROR_SERVICE_NOTIFICATION, Assignment.OFFICIALLY_ASSIGNED);

    private static final /* synthetic */ CountryCode[] $values() {
        return new CountryCode[]{UNDEFINED, AC, AD, AE, AF, AG, AI, AL, AM, AN, AO, AQ, AR, AS, AT, AU, AW, AX, AZ, BA, BB, BD, BE, BF, BG, BH, BI, BJ, BL, BM, BN, BO, BQ, BR, BS, BT, BU, BV, BW, BY, BZ, CA, CC, CD, CF, CG, CH, CI, CK, CL, CM, CN, CO, CP, CR, CS, CU, CV, CW, CX, CY, CZ, DE, DG, DJ, DK, DM, DO, DZ, EA, EC, EE, EG, EH, ER, ES, ET, EU, EZ, FI, FJ, FK, FM, FO, FR, FX, GA, GB, GD, GE, GF, GG, GH, GI, GL, GM, GN, GP, GQ, GR, GS, GT, GU, GW, GY, HK, HM, HN, HR, HT, HU, IC, ID, IE, IL, IM, IN, IO, IQ, IR, IS, IT, JE, JM, JO, JP, KE, KG, KH, KI, KM, KN, KP, KR, KW, KY, KZ, LA, LB, LC, LI, LK, LR, LS, LT, LU, LV, LY, MA, MC, MD, ME, MF, MG, MH, MK, ML, MM, MN, MO, MP, MQ, MR, MS, MT, MU, MV, MW, MX, MY, MZ, NA, NC, NE, NF, NG, NI, NL, NO, NP, NR, NT, NU, NZ, OM, PA, PE, PF, PG, PH, PK, PL, PM, PN, PR, PS, PT, PW, PY, QA, RE, RO, RS, RU, RW, SA, SB, SC, SD, SE, SF, SG, SH, SI, SJ, SK, SL, SM, SN, SO, SR, SS, ST, SU, SV, SX, SY, SZ, TA, TC, TD, TF, TG, TH, TJ, TK, TL, TM, TN, TO, TP, TR, TT, TV, TW, TZ, UA, UG, UK, UM, US, UY, UZ, VA, VC, VE, VG, VI, VN, VU, WF, WS, XI, XU, XK, YE, YT, YU, ZA, ZM, ZR, ZW};
    }

    public static EnumEntries<CountryCode> getEntries() {
        return $ENTRIES;
    }

    public static CountryCode valueOf(String str) {
        return (CountryCode) Enum.valueOf(CountryCode.class, str);
    }

    public static CountryCode[] values() {
        return (CountryCode[]) $VALUES.clone();
    }

    private CountryCode(String str, int i, String str2, String str3, int i2, Assignment assignment) {
        this.countryName = str2;
        this.alpha3 = str3;
        this.numeric = i2;
    }

    public final String getCountryName() {
        return this.countryName;
    }

    public final String getAlpha3() {
        return this.alpha3;
    }

    public final int getNumeric() {
        return this.numeric;
    }

    static {
        CountryCode[] countryCodeArr$values = $values();
        $VALUES = countryCodeArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(countryCodeArr$values);
        INSTANCE = new Companion(null);
        alpha3Map = new LinkedHashMap();
        alpha4Map = new LinkedHashMap();
        numericMap = new LinkedHashMap();
        for (CountryCode countryCode : getEntries()) {
            String str = countryCode.alpha3;
            if (str != null) {
                alpha3Map.put(str, countryCode);
            }
            int i = countryCode.numeric;
            if (i != -1) {
                numericMap.put(Integer.valueOf(i), countryCode);
            }
        }
        Map<String, CountryCode> map = alpha3Map;
        CountryCode countryCode2 = FI;
        map.put("FIN", countryCode2);
        Map<String, CountryCode> map2 = alpha4Map;
        map2.put("ANHH", AN);
        map2.put("BUMM", BU);
        map2.put("CSXX", CS);
        map2.put("NTHH", NT);
        map2.put("TPTL", TP);
        map2.put("YUCS", YU);
        map2.put("ZRCD", ZR);
        Map<Integer, CountryCode> map3 = numericMap;
        map3.put(104, MM);
        map3.put(Integer.valueOf(WinError.ERROR_INVALID_SEGMENT_NUMBER), CD);
        map3.put(246, countryCode2);
        map3.put(826, GB);
        map3.put(Integer.valueOf(WinError.ERROR_NO_MORE_MATCHES), TL);
        map3.put(280, DE);
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: CountryCode.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\b\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\b¨\u0006\t"}, d2 = {"Lcom/stripe/currency/CountryCode$Assignment;", "", "(Ljava/lang/String;I)V", "OFFICIALLY_ASSIGNED", "USER_ASSIGNED", "EXCEPTIONALLY_RESERVED", "TRANSITIONALLY_RESERVED", "INDETERMINATELY_RESERVED", "NOT_USED", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Assignment {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ Assignment[] $VALUES;
        public static final Assignment OFFICIALLY_ASSIGNED = new Assignment("OFFICIALLY_ASSIGNED", 0);
        public static final Assignment USER_ASSIGNED = new Assignment("USER_ASSIGNED", 1);
        public static final Assignment EXCEPTIONALLY_RESERVED = new Assignment("EXCEPTIONALLY_RESERVED", 2);
        public static final Assignment TRANSITIONALLY_RESERVED = new Assignment("TRANSITIONALLY_RESERVED", 3);
        public static final Assignment INDETERMINATELY_RESERVED = new Assignment("INDETERMINATELY_RESERVED", 4);
        public static final Assignment NOT_USED = new Assignment("NOT_USED", 5);

        private static final /* synthetic */ Assignment[] $values() {
            return new Assignment[]{OFFICIALLY_ASSIGNED, USER_ASSIGNED, EXCEPTIONALLY_RESERVED, TRANSITIONALLY_RESERVED, INDETERMINATELY_RESERVED, NOT_USED};
        }

        public static EnumEntries<Assignment> getEntries() {
            return $ENTRIES;
        }

        public static Assignment valueOf(String str) {
            return (Assignment) Enum.valueOf(Assignment.class, str);
        }

        public static Assignment[] values() {
            return (Assignment[]) $VALUES.clone();
        }

        private Assignment(String str, int i) {
        }

        static {
            Assignment[] assignmentArr$values = $values();
            $VALUES = assignmentArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(assignmentArr$values);
        }
    }

    public final String getAlpha2() {
        return this.alpha2;
    }

    /* JADX INFO: compiled from: CountryCode.kt */
    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\n\u001a\u0004\u0018\u00010\u00052\b\u0010\u000b\u001a\u0004\u0018\u00010\u00052\u0006\u0010\f\u001a\u00020\rJ\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u00062\b\u0010\u000b\u001a\u0004\u0018\u00010\u0005J\u0014\u0010\u000f\u001a\u0004\u0018\u00010\u00062\b\u0010\u000b\u001a\u0004\u0018\u00010\u0005H\u0002J\u0014\u0010\u0010\u001a\u0004\u0018\u00010\u00062\b\u0010\u000b\u001a\u0004\u0018\u00010\u0005H\u0002J\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u00062\b\u0010\u000b\u001a\u0004\u0018\u00010\u0005J\u001a\u0010\u0011\u001a\u0004\u0018\u00010\u00062\b\u0010\u000b\u001a\u0004\u0018\u00010\u00052\u0006\u0010\f\u001a\u00020\rR\u001a\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00060\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lcom/stripe/currency/CountryCode$Companion;", "", "()V", "alpha3Map", "", "", "Lcom/stripe/currency/CountryCode;", "alpha4Map", "numericMap", "", "canonicalize", "code", "caseSensitive", "", "getByAlpha2Code", "getByAlpha3Code", "getByAlpha4Code", "getByCode", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final CountryCode getByCode(String code) {
            return getByCode(code, true);
        }

        public final CountryCode getByCode(String code, boolean caseSensitive) {
            if (code == null) {
                return null;
            }
            int length = code.length();
            if (length == 2) {
                return getByAlpha2Code(canonicalize(code, caseSensitive));
            }
            if (length == 3) {
                return getByAlpha3Code(canonicalize(code, caseSensitive));
            }
            if (length == 4) {
                return getByAlpha4Code(canonicalize(code, caseSensitive));
            }
            if (length == 9 && Intrinsics.areEqual("UNDEFINED", canonicalize(code, caseSensitive))) {
                return CountryCode.UNDEFINED;
            }
            return null;
        }

        public final String canonicalize(String code, boolean caseSensitive) {
            if (code == null || code.length() == 0) {
                return null;
            }
            if (caseSensitive) {
                return code;
            }
            String upperCase = code.toUpperCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(upperCase, "toUpperCase(...)");
            return upperCase;
        }

        public final CountryCode getByAlpha2Code(String code) {
            for (CountryCode countryCode : CountryCode.values()) {
                if (Intrinsics.areEqual(countryCode.name(), code)) {
                    return countryCode;
                }
            }
            return null;
        }

        private final CountryCode getByAlpha3Code(String code) {
            return (CountryCode) CountryCode.alpha3Map.get(code);
        }

        private final CountryCode getByAlpha4Code(String code) {
            return (CountryCode) CountryCode.alpha4Map.get(code);
        }
    }
}
