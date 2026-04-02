.class public final enum Lcom/stripe/currency/CountryCode;
.super Ljava/lang/Enum;
.source "CountryCode.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/currency/CountryCode$Assignment;,
        Lcom/stripe/currency/CountryCode$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/currency/CountryCode;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000!\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0003\u0008\u009b\u0002\u0008\u0086\u0081\u0002\u0018\u0000 \u00a2\u00022\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0004\u00a1\u0002\u00a2\u0002B)\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tR\u0011\u0010\n\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000cR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000cR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017j\u0002\u0008\u0018j\u0002\u0008\u0019j\u0002\u0008\u001aj\u0002\u0008\u001bj\u0002\u0008\u001cj\u0002\u0008\u001dj\u0002\u0008\u001ej\u0002\u0008\u001fj\u0002\u0008 j\u0002\u0008!j\u0002\u0008\"j\u0002\u0008#j\u0002\u0008$j\u0002\u0008%j\u0002\u0008&j\u0002\u0008\'j\u0002\u0008(j\u0002\u0008)j\u0002\u0008*j\u0002\u0008+j\u0002\u0008,j\u0002\u0008-j\u0002\u0008.j\u0002\u0008/j\u0002\u00080j\u0002\u00081j\u0002\u00082j\u0002\u00083j\u0002\u00084j\u0002\u00085j\u0002\u00086j\u0002\u00087j\u0002\u00088j\u0002\u00089j\u0002\u0008:j\u0002\u0008;j\u0002\u0008<j\u0002\u0008=j\u0002\u0008>j\u0002\u0008?j\u0002\u0008@j\u0002\u0008Aj\u0002\u0008Bj\u0002\u0008Cj\u0002\u0008Dj\u0002\u0008Ej\u0002\u0008Fj\u0002\u0008Gj\u0002\u0008Hj\u0002\u0008Ij\u0002\u0008Jj\u0002\u0008Kj\u0002\u0008Lj\u0002\u0008Mj\u0002\u0008Nj\u0002\u0008Oj\u0002\u0008Pj\u0002\u0008Qj\u0002\u0008Rj\u0002\u0008Sj\u0002\u0008Tj\u0002\u0008Uj\u0002\u0008Vj\u0002\u0008Wj\u0002\u0008Xj\u0002\u0008Yj\u0002\u0008Zj\u0002\u0008[j\u0002\u0008\\j\u0002\u0008]j\u0002\u0008^j\u0002\u0008_j\u0002\u0008`j\u0002\u0008aj\u0002\u0008bj\u0002\u0008cj\u0002\u0008dj\u0002\u0008ej\u0002\u0008fj\u0002\u0008gj\u0002\u0008hj\u0002\u0008ij\u0002\u0008jj\u0002\u0008kj\u0002\u0008lj\u0002\u0008mj\u0002\u0008nj\u0002\u0008oj\u0002\u0008pj\u0002\u0008qj\u0002\u0008rj\u0002\u0008sj\u0002\u0008tj\u0002\u0008uj\u0002\u0008vj\u0002\u0008wj\u0002\u0008xj\u0002\u0008yj\u0002\u0008zj\u0002\u0008{j\u0002\u0008|j\u0002\u0008}j\u0002\u0008~j\u0002\u0008\u007fj\u0003\u0008\u0080\u0001j\u0003\u0008\u0081\u0001j\u0003\u0008\u0082\u0001j\u0003\u0008\u0083\u0001j\u0003\u0008\u0084\u0001j\u0003\u0008\u0085\u0001j\u0003\u0008\u0086\u0001j\u0003\u0008\u0087\u0001j\u0003\u0008\u0088\u0001j\u0003\u0008\u0089\u0001j\u0003\u0008\u008a\u0001j\u0003\u0008\u008b\u0001j\u0003\u0008\u008c\u0001j\u0003\u0008\u008d\u0001j\u0003\u0008\u008e\u0001j\u0003\u0008\u008f\u0001j\u0003\u0008\u0090\u0001j\u0003\u0008\u0091\u0001j\u0003\u0008\u0092\u0001j\u0003\u0008\u0093\u0001j\u0003\u0008\u0094\u0001j\u0003\u0008\u0095\u0001j\u0003\u0008\u0096\u0001j\u0003\u0008\u0097\u0001j\u0003\u0008\u0098\u0001j\u0003\u0008\u0099\u0001j\u0003\u0008\u009a\u0001j\u0003\u0008\u009b\u0001j\u0003\u0008\u009c\u0001j\u0003\u0008\u009d\u0001j\u0003\u0008\u009e\u0001j\u0003\u0008\u009f\u0001j\u0003\u0008\u00a0\u0001j\u0003\u0008\u00a1\u0001j\u0003\u0008\u00a2\u0001j\u0003\u0008\u00a3\u0001j\u0003\u0008\u00a4\u0001j\u0003\u0008\u00a5\u0001j\u0003\u0008\u00a6\u0001j\u0003\u0008\u00a7\u0001j\u0003\u0008\u00a8\u0001j\u0003\u0008\u00a9\u0001j\u0003\u0008\u00aa\u0001j\u0003\u0008\u00ab\u0001j\u0003\u0008\u00ac\u0001j\u0003\u0008\u00ad\u0001j\u0003\u0008\u00ae\u0001j\u0003\u0008\u00af\u0001j\u0003\u0008\u00b0\u0001j\u0003\u0008\u00b1\u0001j\u0003\u0008\u00b2\u0001j\u0003\u0008\u00b3\u0001j\u0003\u0008\u00b4\u0001j\u0003\u0008\u00b5\u0001j\u0003\u0008\u00b6\u0001j\u0003\u0008\u00b7\u0001j\u0003\u0008\u00b8\u0001j\u0003\u0008\u00b9\u0001j\u0003\u0008\u00ba\u0001j\u0003\u0008\u00bb\u0001j\u0003\u0008\u00bc\u0001j\u0003\u0008\u00bd\u0001j\u0003\u0008\u00be\u0001j\u0003\u0008\u00bf\u0001j\u0003\u0008\u00c0\u0001j\u0003\u0008\u00c1\u0001j\u0003\u0008\u00c2\u0001j\u0003\u0008\u00c3\u0001j\u0003\u0008\u00c4\u0001j\u0003\u0008\u00c5\u0001j\u0003\u0008\u00c6\u0001j\u0003\u0008\u00c7\u0001j\u0003\u0008\u00c8\u0001j\u0003\u0008\u00c9\u0001j\u0003\u0008\u00ca\u0001j\u0003\u0008\u00cb\u0001j\u0003\u0008\u00cc\u0001j\u0003\u0008\u00cd\u0001j\u0003\u0008\u00ce\u0001j\u0003\u0008\u00cf\u0001j\u0003\u0008\u00d0\u0001j\u0003\u0008\u00d1\u0001j\u0003\u0008\u00d2\u0001j\u0003\u0008\u00d3\u0001j\u0003\u0008\u00d4\u0001j\u0003\u0008\u00d5\u0001j\u0003\u0008\u00d6\u0001j\u0003\u0008\u00d7\u0001j\u0003\u0008\u00d8\u0001j\u0003\u0008\u00d9\u0001j\u0003\u0008\u00da\u0001j\u0003\u0008\u00db\u0001j\u0003\u0008\u00dc\u0001j\u0003\u0008\u00dd\u0001j\u0003\u0008\u00de\u0001j\u0003\u0008\u00df\u0001j\u0003\u0008\u00e0\u0001j\u0003\u0008\u00e1\u0001j\u0003\u0008\u00e2\u0001j\u0003\u0008\u00e3\u0001j\u0003\u0008\u00e4\u0001j\u0003\u0008\u00e5\u0001j\u0003\u0008\u00e6\u0001j\u0003\u0008\u00e7\u0001j\u0003\u0008\u00e8\u0001j\u0003\u0008\u00e9\u0001j\u0003\u0008\u00ea\u0001j\u0003\u0008\u00eb\u0001j\u0003\u0008\u00ec\u0001j\u0003\u0008\u00ed\u0001j\u0003\u0008\u00ee\u0001j\u0003\u0008\u00ef\u0001j\u0003\u0008\u00f0\u0001j\u0003\u0008\u00f1\u0001j\u0003\u0008\u00f2\u0001j\u0003\u0008\u00f3\u0001j\u0003\u0008\u00f4\u0001j\u0003\u0008\u00f5\u0001j\u0003\u0008\u00f6\u0001j\u0003\u0008\u00f7\u0001j\u0003\u0008\u00f8\u0001j\u0003\u0008\u00f9\u0001j\u0003\u0008\u00fa\u0001j\u0003\u0008\u00fb\u0001j\u0003\u0008\u00fc\u0001j\u0003\u0008\u00fd\u0001j\u0003\u0008\u00fe\u0001j\u0003\u0008\u00ff\u0001j\u0003\u0008\u0080\u0002j\u0003\u0008\u0081\u0002j\u0003\u0008\u0082\u0002j\u0003\u0008\u0083\u0002j\u0003\u0008\u0084\u0002j\u0003\u0008\u0085\u0002j\u0003\u0008\u0086\u0002j\u0003\u0008\u0087\u0002j\u0003\u0008\u0088\u0002j\u0003\u0008\u0089\u0002j\u0003\u0008\u008a\u0002j\u0003\u0008\u008b\u0002j\u0003\u0008\u008c\u0002j\u0003\u0008\u008d\u0002j\u0003\u0008\u008e\u0002j\u0003\u0008\u008f\u0002j\u0003\u0008\u0090\u0002j\u0003\u0008\u0091\u0002j\u0003\u0008\u0092\u0002j\u0003\u0008\u0093\u0002j\u0003\u0008\u0094\u0002j\u0003\u0008\u0095\u0002j\u0003\u0008\u0096\u0002j\u0003\u0008\u0097\u0002j\u0003\u0008\u0098\u0002j\u0003\u0008\u0099\u0002j\u0003\u0008\u009a\u0002j\u0003\u0008\u009b\u0002j\u0003\u0008\u009c\u0002j\u0003\u0008\u009d\u0002j\u0003\u0008\u009e\u0002j\u0003\u0008\u009f\u0002j\u0003\u0008\u00a0\u0002\u00a8\u0006\u00a3\u0002"
    }
    d2 = {
        "Lcom/stripe/currency/CountryCode;",
        "",
        "countryName",
        "",
        "alpha3",
        "numeric",
        "",
        "assignment",
        "Lcom/stripe/currency/CountryCode$Assignment;",
        "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V",
        "alpha2",
        "getAlpha2",
        "()Ljava/lang/String;",
        "getAlpha3",
        "getCountryName",
        "getNumeric",
        "()I",
        "UNDEFINED",
        "AC",
        "AD",
        "AE",
        "AF",
        "AG",
        "AI",
        "AL",
        "AM",
        "AN",
        "AO",
        "AQ",
        "AR",
        "AS",
        "AT",
        "AU",
        "AW",
        "AX",
        "AZ",
        "BA",
        "BB",
        "BD",
        "BE",
        "BF",
        "BG",
        "BH",
        "BI",
        "BJ",
        "BL",
        "BM",
        "BN",
        "BO",
        "BQ",
        "BR",
        "BS",
        "BT",
        "BU",
        "BV",
        "BW",
        "BY",
        "BZ",
        "CA",
        "CC",
        "CD",
        "CF",
        "CG",
        "CH",
        "CI",
        "CK",
        "CL",
        "CM",
        "CN",
        "CO",
        "CP",
        "CR",
        "CS",
        "CU",
        "CV",
        "CW",
        "CX",
        "CY",
        "CZ",
        "DE",
        "DG",
        "DJ",
        "DK",
        "DM",
        "DO",
        "DZ",
        "EA",
        "EC",
        "EE",
        "EG",
        "EH",
        "ER",
        "ES",
        "ET",
        "EU",
        "EZ",
        "FI",
        "FJ",
        "FK",
        "FM",
        "FO",
        "FR",
        "FX",
        "GA",
        "GB",
        "GD",
        "GE",
        "GF",
        "GG",
        "GH",
        "GI",
        "GL",
        "GM",
        "GN",
        "GP",
        "GQ",
        "GR",
        "GS",
        "GT",
        "GU",
        "GW",
        "GY",
        "HK",
        "HM",
        "HN",
        "HR",
        "HT",
        "HU",
        "IC",
        "ID",
        "IE",
        "IL",
        "IM",
        "IN",
        "IO",
        "IQ",
        "IR",
        "IS",
        "IT",
        "JE",
        "JM",
        "JO",
        "JP",
        "KE",
        "KG",
        "KH",
        "KI",
        "KM",
        "KN",
        "KP",
        "KR",
        "KW",
        "KY",
        "KZ",
        "LA",
        "LB",
        "LC",
        "LI",
        "LK",
        "LR",
        "LS",
        "LT",
        "LU",
        "LV",
        "LY",
        "MA",
        "MC",
        "MD",
        "ME",
        "MF",
        "MG",
        "MH",
        "MK",
        "ML",
        "MM",
        "MN",
        "MO",
        "MP",
        "MQ",
        "MR",
        "MS",
        "MT",
        "MU",
        "MV",
        "MW",
        "MX",
        "MY",
        "MZ",
        "NA",
        "NC",
        "NE",
        "NF",
        "NG",
        "NI",
        "NL",
        "NO",
        "NP",
        "NR",
        "NT",
        "NU",
        "NZ",
        "OM",
        "PA",
        "PE",
        "PF",
        "PG",
        "PH",
        "PK",
        "PL",
        "PM",
        "PN",
        "PR",
        "PS",
        "PT",
        "PW",
        "PY",
        "QA",
        "RE",
        "RO",
        "RS",
        "RU",
        "RW",
        "SA",
        "SB",
        "SC",
        "SD",
        "SE",
        "SF",
        "SG",
        "SH",
        "SI",
        "SJ",
        "SK",
        "SL",
        "SM",
        "SN",
        "SO",
        "SR",
        "SS",
        "ST",
        "SU",
        "SV",
        "SX",
        "SY",
        "SZ",
        "TA",
        "TC",
        "TD",
        "TF",
        "TG",
        "TH",
        "TJ",
        "TK",
        "TL",
        "TM",
        "TN",
        "TO",
        "TP",
        "TR",
        "TT",
        "TV",
        "TW",
        "TZ",
        "UA",
        "UG",
        "UK",
        "UM",
        "US",
        "UY",
        "UZ",
        "VA",
        "VC",
        "VE",
        "VG",
        "VI",
        "VN",
        "VU",
        "WF",
        "WS",
        "XI",
        "XU",
        "XK",
        "YE",
        "YT",
        "YU",
        "ZA",
        "ZM",
        "ZR",
        "ZW",
        "Assignment",
        "Companion",
        "public_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/stripe/currency/CountryCode;

.field public static final enum AC:Lcom/stripe/currency/CountryCode;

.field public static final enum AD:Lcom/stripe/currency/CountryCode;

.field public static final enum AE:Lcom/stripe/currency/CountryCode;

.field public static final enum AF:Lcom/stripe/currency/CountryCode;

.field public static final enum AG:Lcom/stripe/currency/CountryCode;

.field public static final enum AI:Lcom/stripe/currency/CountryCode;

.field public static final enum AL:Lcom/stripe/currency/CountryCode;

.field public static final enum AM:Lcom/stripe/currency/CountryCode;

.field public static final enum AN:Lcom/stripe/currency/CountryCode;

.field public static final enum AO:Lcom/stripe/currency/CountryCode;

.field public static final enum AQ:Lcom/stripe/currency/CountryCode;

.field public static final enum AR:Lcom/stripe/currency/CountryCode;

.field public static final enum AS:Lcom/stripe/currency/CountryCode;

.field public static final enum AT:Lcom/stripe/currency/CountryCode;

.field public static final enum AU:Lcom/stripe/currency/CountryCode;

.field public static final enum AW:Lcom/stripe/currency/CountryCode;

.field public static final enum AX:Lcom/stripe/currency/CountryCode;

.field public static final enum AZ:Lcom/stripe/currency/CountryCode;

.field public static final enum BA:Lcom/stripe/currency/CountryCode;

.field public static final enum BB:Lcom/stripe/currency/CountryCode;

.field public static final enum BD:Lcom/stripe/currency/CountryCode;

.field public static final enum BE:Lcom/stripe/currency/CountryCode;

.field public static final enum BF:Lcom/stripe/currency/CountryCode;

.field public static final enum BG:Lcom/stripe/currency/CountryCode;

.field public static final enum BH:Lcom/stripe/currency/CountryCode;

.field public static final enum BI:Lcom/stripe/currency/CountryCode;

.field public static final enum BJ:Lcom/stripe/currency/CountryCode;

.field public static final enum BL:Lcom/stripe/currency/CountryCode;

.field public static final enum BM:Lcom/stripe/currency/CountryCode;

.field public static final enum BN:Lcom/stripe/currency/CountryCode;

.field public static final enum BO:Lcom/stripe/currency/CountryCode;

.field public static final enum BQ:Lcom/stripe/currency/CountryCode;

.field public static final enum BR:Lcom/stripe/currency/CountryCode;

.field public static final enum BS:Lcom/stripe/currency/CountryCode;

.field public static final enum BT:Lcom/stripe/currency/CountryCode;

.field public static final enum BU:Lcom/stripe/currency/CountryCode;

.field public static final enum BV:Lcom/stripe/currency/CountryCode;

.field public static final enum BW:Lcom/stripe/currency/CountryCode;

.field public static final enum BY:Lcom/stripe/currency/CountryCode;

.field public static final enum BZ:Lcom/stripe/currency/CountryCode;

.field public static final enum CA:Lcom/stripe/currency/CountryCode;

.field public static final enum CC:Lcom/stripe/currency/CountryCode;

.field public static final enum CD:Lcom/stripe/currency/CountryCode;

.field public static final enum CF:Lcom/stripe/currency/CountryCode;

.field public static final enum CG:Lcom/stripe/currency/CountryCode;

.field public static final enum CH:Lcom/stripe/currency/CountryCode;

.field public static final enum CI:Lcom/stripe/currency/CountryCode;

.field public static final enum CK:Lcom/stripe/currency/CountryCode;

.field public static final enum CL:Lcom/stripe/currency/CountryCode;

.field public static final enum CM:Lcom/stripe/currency/CountryCode;

.field public static final enum CN:Lcom/stripe/currency/CountryCode;

.field public static final enum CO:Lcom/stripe/currency/CountryCode;

.field public static final enum CP:Lcom/stripe/currency/CountryCode;

.field public static final enum CR:Lcom/stripe/currency/CountryCode;

.field public static final enum CS:Lcom/stripe/currency/CountryCode;

.field public static final enum CU:Lcom/stripe/currency/CountryCode;

.field public static final enum CV:Lcom/stripe/currency/CountryCode;

.field public static final enum CW:Lcom/stripe/currency/CountryCode;

.field public static final enum CX:Lcom/stripe/currency/CountryCode;

.field public static final enum CY:Lcom/stripe/currency/CountryCode;

.field public static final enum CZ:Lcom/stripe/currency/CountryCode;

.field public static final Companion:Lcom/stripe/currency/CountryCode$Companion;

.field public static final enum DE:Lcom/stripe/currency/CountryCode;

.field public static final enum DG:Lcom/stripe/currency/CountryCode;

.field public static final enum DJ:Lcom/stripe/currency/CountryCode;

.field public static final enum DK:Lcom/stripe/currency/CountryCode;

.field public static final enum DM:Lcom/stripe/currency/CountryCode;

.field public static final enum DO:Lcom/stripe/currency/CountryCode;

.field public static final enum DZ:Lcom/stripe/currency/CountryCode;

.field public static final enum EA:Lcom/stripe/currency/CountryCode;

.field public static final enum EC:Lcom/stripe/currency/CountryCode;

.field public static final enum EE:Lcom/stripe/currency/CountryCode;

.field public static final enum EG:Lcom/stripe/currency/CountryCode;

.field public static final enum EH:Lcom/stripe/currency/CountryCode;

.field public static final enum ER:Lcom/stripe/currency/CountryCode;

.field public static final enum ES:Lcom/stripe/currency/CountryCode;

.field public static final enum ET:Lcom/stripe/currency/CountryCode;

.field public static final enum EU:Lcom/stripe/currency/CountryCode;

.field public static final enum EZ:Lcom/stripe/currency/CountryCode;

.field public static final enum FI:Lcom/stripe/currency/CountryCode;

.field public static final enum FJ:Lcom/stripe/currency/CountryCode;

.field public static final enum FK:Lcom/stripe/currency/CountryCode;

.field public static final enum FM:Lcom/stripe/currency/CountryCode;

.field public static final enum FO:Lcom/stripe/currency/CountryCode;

.field public static final enum FR:Lcom/stripe/currency/CountryCode;

.field public static final enum FX:Lcom/stripe/currency/CountryCode;

.field public static final enum GA:Lcom/stripe/currency/CountryCode;

.field public static final enum GB:Lcom/stripe/currency/CountryCode;

.field public static final enum GD:Lcom/stripe/currency/CountryCode;

.field public static final enum GE:Lcom/stripe/currency/CountryCode;

.field public static final enum GF:Lcom/stripe/currency/CountryCode;

.field public static final enum GG:Lcom/stripe/currency/CountryCode;

.field public static final enum GH:Lcom/stripe/currency/CountryCode;

.field public static final enum GI:Lcom/stripe/currency/CountryCode;

.field public static final enum GL:Lcom/stripe/currency/CountryCode;

.field public static final enum GM:Lcom/stripe/currency/CountryCode;

.field public static final enum GN:Lcom/stripe/currency/CountryCode;

.field public static final enum GP:Lcom/stripe/currency/CountryCode;

.field public static final enum GQ:Lcom/stripe/currency/CountryCode;

.field public static final enum GR:Lcom/stripe/currency/CountryCode;

.field public static final enum GS:Lcom/stripe/currency/CountryCode;

.field public static final enum GT:Lcom/stripe/currency/CountryCode;

.field public static final enum GU:Lcom/stripe/currency/CountryCode;

.field public static final enum GW:Lcom/stripe/currency/CountryCode;

.field public static final enum GY:Lcom/stripe/currency/CountryCode;

.field public static final enum HK:Lcom/stripe/currency/CountryCode;

.field public static final enum HM:Lcom/stripe/currency/CountryCode;

.field public static final enum HN:Lcom/stripe/currency/CountryCode;

.field public static final enum HR:Lcom/stripe/currency/CountryCode;

.field public static final enum HT:Lcom/stripe/currency/CountryCode;

.field public static final enum HU:Lcom/stripe/currency/CountryCode;

.field public static final enum IC:Lcom/stripe/currency/CountryCode;

.field public static final enum ID:Lcom/stripe/currency/CountryCode;

.field public static final enum IE:Lcom/stripe/currency/CountryCode;

.field public static final enum IL:Lcom/stripe/currency/CountryCode;

.field public static final enum IM:Lcom/stripe/currency/CountryCode;

.field public static final enum IN:Lcom/stripe/currency/CountryCode;

.field public static final enum IO:Lcom/stripe/currency/CountryCode;

.field public static final enum IQ:Lcom/stripe/currency/CountryCode;

.field public static final enum IR:Lcom/stripe/currency/CountryCode;

.field public static final enum IS:Lcom/stripe/currency/CountryCode;

.field public static final enum IT:Lcom/stripe/currency/CountryCode;

.field public static final enum JE:Lcom/stripe/currency/CountryCode;

.field public static final enum JM:Lcom/stripe/currency/CountryCode;

.field public static final enum JO:Lcom/stripe/currency/CountryCode;

.field public static final enum JP:Lcom/stripe/currency/CountryCode;

.field public static final enum KE:Lcom/stripe/currency/CountryCode;

.field public static final enum KG:Lcom/stripe/currency/CountryCode;

.field public static final enum KH:Lcom/stripe/currency/CountryCode;

.field public static final enum KI:Lcom/stripe/currency/CountryCode;

.field public static final enum KM:Lcom/stripe/currency/CountryCode;

.field public static final enum KN:Lcom/stripe/currency/CountryCode;

.field public static final enum KP:Lcom/stripe/currency/CountryCode;

.field public static final enum KR:Lcom/stripe/currency/CountryCode;

.field public static final enum KW:Lcom/stripe/currency/CountryCode;

.field public static final enum KY:Lcom/stripe/currency/CountryCode;

.field public static final enum KZ:Lcom/stripe/currency/CountryCode;

.field public static final enum LA:Lcom/stripe/currency/CountryCode;

.field public static final enum LB:Lcom/stripe/currency/CountryCode;

.field public static final enum LC:Lcom/stripe/currency/CountryCode;

.field public static final enum LI:Lcom/stripe/currency/CountryCode;

.field public static final enum LK:Lcom/stripe/currency/CountryCode;

.field public static final enum LR:Lcom/stripe/currency/CountryCode;

.field public static final enum LS:Lcom/stripe/currency/CountryCode;

.field public static final enum LT:Lcom/stripe/currency/CountryCode;

.field public static final enum LU:Lcom/stripe/currency/CountryCode;

.field public static final enum LV:Lcom/stripe/currency/CountryCode;

.field public static final enum LY:Lcom/stripe/currency/CountryCode;

.field public static final enum MA:Lcom/stripe/currency/CountryCode;

.field public static final enum MC:Lcom/stripe/currency/CountryCode;

.field public static final enum MD:Lcom/stripe/currency/CountryCode;

.field public static final enum ME:Lcom/stripe/currency/CountryCode;

.field public static final enum MF:Lcom/stripe/currency/CountryCode;

.field public static final enum MG:Lcom/stripe/currency/CountryCode;

.field public static final enum MH:Lcom/stripe/currency/CountryCode;

.field public static final enum MK:Lcom/stripe/currency/CountryCode;

.field public static final enum ML:Lcom/stripe/currency/CountryCode;

.field public static final enum MM:Lcom/stripe/currency/CountryCode;

.field public static final enum MN:Lcom/stripe/currency/CountryCode;

.field public static final enum MO:Lcom/stripe/currency/CountryCode;

.field public static final enum MP:Lcom/stripe/currency/CountryCode;

.field public static final enum MQ:Lcom/stripe/currency/CountryCode;

.field public static final enum MR:Lcom/stripe/currency/CountryCode;

.field public static final enum MS:Lcom/stripe/currency/CountryCode;

.field public static final enum MT:Lcom/stripe/currency/CountryCode;

.field public static final enum MU:Lcom/stripe/currency/CountryCode;

.field public static final enum MV:Lcom/stripe/currency/CountryCode;

.field public static final enum MW:Lcom/stripe/currency/CountryCode;

.field public static final enum MX:Lcom/stripe/currency/CountryCode;

.field public static final enum MY:Lcom/stripe/currency/CountryCode;

.field public static final enum MZ:Lcom/stripe/currency/CountryCode;

.field public static final enum NA:Lcom/stripe/currency/CountryCode;

.field public static final enum NC:Lcom/stripe/currency/CountryCode;

.field public static final enum NE:Lcom/stripe/currency/CountryCode;

.field public static final enum NF:Lcom/stripe/currency/CountryCode;

.field public static final enum NG:Lcom/stripe/currency/CountryCode;

.field public static final enum NI:Lcom/stripe/currency/CountryCode;

.field public static final enum NL:Lcom/stripe/currency/CountryCode;

.field public static final enum NO:Lcom/stripe/currency/CountryCode;

.field public static final enum NP:Lcom/stripe/currency/CountryCode;

.field public static final enum NR:Lcom/stripe/currency/CountryCode;

.field public static final enum NT:Lcom/stripe/currency/CountryCode;

.field public static final enum NU:Lcom/stripe/currency/CountryCode;

.field public static final enum NZ:Lcom/stripe/currency/CountryCode;

.field public static final enum OM:Lcom/stripe/currency/CountryCode;

.field public static final enum PA:Lcom/stripe/currency/CountryCode;

.field public static final enum PE:Lcom/stripe/currency/CountryCode;

.field public static final enum PF:Lcom/stripe/currency/CountryCode;

.field public static final enum PG:Lcom/stripe/currency/CountryCode;

.field public static final enum PH:Lcom/stripe/currency/CountryCode;

.field public static final enum PK:Lcom/stripe/currency/CountryCode;

.field public static final enum PL:Lcom/stripe/currency/CountryCode;

.field public static final enum PM:Lcom/stripe/currency/CountryCode;

.field public static final enum PN:Lcom/stripe/currency/CountryCode;

.field public static final enum PR:Lcom/stripe/currency/CountryCode;

.field public static final enum PS:Lcom/stripe/currency/CountryCode;

.field public static final enum PT:Lcom/stripe/currency/CountryCode;

.field public static final enum PW:Lcom/stripe/currency/CountryCode;

.field public static final enum PY:Lcom/stripe/currency/CountryCode;

.field public static final enum QA:Lcom/stripe/currency/CountryCode;

.field public static final enum RE:Lcom/stripe/currency/CountryCode;

.field public static final enum RO:Lcom/stripe/currency/CountryCode;

.field public static final enum RS:Lcom/stripe/currency/CountryCode;

.field public static final enum RU:Lcom/stripe/currency/CountryCode;

.field public static final enum RW:Lcom/stripe/currency/CountryCode;

.field public static final enum SA:Lcom/stripe/currency/CountryCode;

.field public static final enum SB:Lcom/stripe/currency/CountryCode;

.field public static final enum SC:Lcom/stripe/currency/CountryCode;

.field public static final enum SD:Lcom/stripe/currency/CountryCode;

.field public static final enum SE:Lcom/stripe/currency/CountryCode;

.field public static final enum SF:Lcom/stripe/currency/CountryCode;

.field public static final enum SG:Lcom/stripe/currency/CountryCode;

.field public static final enum SH:Lcom/stripe/currency/CountryCode;

.field public static final enum SI:Lcom/stripe/currency/CountryCode;

.field public static final enum SJ:Lcom/stripe/currency/CountryCode;

.field public static final enum SK:Lcom/stripe/currency/CountryCode;

.field public static final enum SL:Lcom/stripe/currency/CountryCode;

.field public static final enum SM:Lcom/stripe/currency/CountryCode;

.field public static final enum SN:Lcom/stripe/currency/CountryCode;

.field public static final enum SO:Lcom/stripe/currency/CountryCode;

.field public static final enum SR:Lcom/stripe/currency/CountryCode;

.field public static final enum SS:Lcom/stripe/currency/CountryCode;

.field public static final enum ST:Lcom/stripe/currency/CountryCode;

.field public static final enum SU:Lcom/stripe/currency/CountryCode;

.field public static final enum SV:Lcom/stripe/currency/CountryCode;

.field public static final enum SX:Lcom/stripe/currency/CountryCode;

.field public static final enum SY:Lcom/stripe/currency/CountryCode;

.field public static final enum SZ:Lcom/stripe/currency/CountryCode;

.field public static final enum TA:Lcom/stripe/currency/CountryCode;

.field public static final enum TC:Lcom/stripe/currency/CountryCode;

.field public static final enum TD:Lcom/stripe/currency/CountryCode;

.field public static final enum TF:Lcom/stripe/currency/CountryCode;

.field public static final enum TG:Lcom/stripe/currency/CountryCode;

.field public static final enum TH:Lcom/stripe/currency/CountryCode;

.field public static final enum TJ:Lcom/stripe/currency/CountryCode;

.field public static final enum TK:Lcom/stripe/currency/CountryCode;

.field public static final enum TL:Lcom/stripe/currency/CountryCode;

.field public static final enum TM:Lcom/stripe/currency/CountryCode;

.field public static final enum TN:Lcom/stripe/currency/CountryCode;

.field public static final enum TO:Lcom/stripe/currency/CountryCode;

.field public static final enum TP:Lcom/stripe/currency/CountryCode;

.field public static final enum TR:Lcom/stripe/currency/CountryCode;

.field public static final enum TT:Lcom/stripe/currency/CountryCode;

.field public static final enum TV:Lcom/stripe/currency/CountryCode;

.field public static final enum TW:Lcom/stripe/currency/CountryCode;

.field public static final enum TZ:Lcom/stripe/currency/CountryCode;

.field public static final enum UA:Lcom/stripe/currency/CountryCode;

.field public static final enum UG:Lcom/stripe/currency/CountryCode;

.field public static final enum UK:Lcom/stripe/currency/CountryCode;

.field public static final enum UM:Lcom/stripe/currency/CountryCode;

.field public static final enum UNDEFINED:Lcom/stripe/currency/CountryCode;

.field public static final enum US:Lcom/stripe/currency/CountryCode;

.field public static final enum UY:Lcom/stripe/currency/CountryCode;

.field public static final enum UZ:Lcom/stripe/currency/CountryCode;

.field public static final enum VA:Lcom/stripe/currency/CountryCode;

.field public static final enum VC:Lcom/stripe/currency/CountryCode;

.field public static final enum VE:Lcom/stripe/currency/CountryCode;

.field public static final enum VG:Lcom/stripe/currency/CountryCode;

.field public static final enum VI:Lcom/stripe/currency/CountryCode;

.field public static final enum VN:Lcom/stripe/currency/CountryCode;

.field public static final enum VU:Lcom/stripe/currency/CountryCode;

.field public static final enum WF:Lcom/stripe/currency/CountryCode;

.field public static final enum WS:Lcom/stripe/currency/CountryCode;

.field public static final enum XI:Lcom/stripe/currency/CountryCode;

.field public static final enum XK:Lcom/stripe/currency/CountryCode;

.field public static final enum XU:Lcom/stripe/currency/CountryCode;

.field public static final enum YE:Lcom/stripe/currency/CountryCode;

.field public static final enum YT:Lcom/stripe/currency/CountryCode;

.field public static final enum YU:Lcom/stripe/currency/CountryCode;

.field public static final enum ZA:Lcom/stripe/currency/CountryCode;

.field public static final enum ZM:Lcom/stripe/currency/CountryCode;

.field public static final enum ZR:Lcom/stripe/currency/CountryCode;

.field public static final enum ZW:Lcom/stripe/currency/CountryCode;

.field private static final alpha3Map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/stripe/currency/CountryCode;",
            ">;"
        }
    .end annotation
.end field

.field private static final alpha4Map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/stripe/currency/CountryCode;",
            ">;"
        }
    .end annotation
.end field

.field private static final numericMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/stripe/currency/CountryCode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final alpha2:Ljava/lang/String;

.field private final alpha3:Ljava/lang/String;

.field private final countryName:Ljava/lang/String;

.field private final numeric:I


# direct methods
.method private static final synthetic $values()[Lcom/stripe/currency/CountryCode;
    .locals 3

    const/16 v0, 0x110

    new-array v0, v0, [Lcom/stripe/currency/CountryCode;

    sget-object v1, Lcom/stripe/currency/CountryCode;->UNDEFINED:Lcom/stripe/currency/CountryCode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->AC:Lcom/stripe/currency/CountryCode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->AD:Lcom/stripe/currency/CountryCode;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->AE:Lcom/stripe/currency/CountryCode;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->AF:Lcom/stripe/currency/CountryCode;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->AG:Lcom/stripe/currency/CountryCode;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->AI:Lcom/stripe/currency/CountryCode;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->AL:Lcom/stripe/currency/CountryCode;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->AM:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->AN:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->AO:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->AQ:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->AR:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->AS:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->AT:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->AU:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->AW:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->AX:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->AZ:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->BA:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->BB:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->BD:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->BE:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->BF:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->BG:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->BH:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->BI:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->BJ:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->BL:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->BM:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->BN:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->BO:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->BQ:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x20

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->BR:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x21

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->BS:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x22

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->BT:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x23

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->BU:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x24

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->BV:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x25

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->BW:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x26

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->BY:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x27

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->BZ:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x28

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->CA:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x29

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->CC:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->CD:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->CF:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->CG:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->CH:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->CI:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->CK:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x30

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->CL:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x31

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->CM:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x32

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->CN:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x33

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->CO:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x34

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->CP:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x35

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->CR:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x36

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->CS:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x37

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->CU:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x38

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->CV:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x39

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->CW:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x3a

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->CX:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x3b

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->CY:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x3c

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->CZ:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x3d

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->DE:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x3e

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->DG:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x3f

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->DJ:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x40

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->DK:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x41

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->DM:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x42

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->DO:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x43

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->DZ:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x44

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->EA:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x45

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->EC:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x46

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->EE:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x47

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->EG:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x48

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->EH:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x49

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->ER:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x4a

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->ES:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x4b

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->ET:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x4c

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->EU:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x4d

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->EZ:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x4e

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->FI:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x4f

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->FJ:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x50

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->FK:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x51

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->FM:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x52

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->FO:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x53

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->FR:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x54

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->FX:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x55

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->GA:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x56

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->GB:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x57

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->GD:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x58

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->GE:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x59

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->GF:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x5a

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->GG:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x5b

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->GH:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x5c

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->GI:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x5d

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->GL:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x5e

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->GM:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x5f

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->GN:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x60

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->GP:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x61

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->GQ:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x62

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->GR:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x63

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->GS:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x64

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->GT:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x65

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->GU:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x66

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->GW:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x67

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->GY:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x68

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->HK:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x69

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->HM:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x6a

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->HN:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x6b

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->HR:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x6c

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->HT:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x6d

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->HU:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x6e

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->IC:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x6f

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->ID:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x70

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->IE:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x71

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->IL:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x72

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->IM:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x73

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->IN:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x74

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->IO:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x75

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->IQ:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x76

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->IR:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x77

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->IS:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x78

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->IT:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x79

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->JE:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x7a

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->JM:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x7b

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->JO:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x7c

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->JP:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x7d

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->KE:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x7e

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->KG:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x7f

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->KH:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x80

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->KI:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x81

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->KM:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x82

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->KN:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x83

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->KP:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x84

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->KR:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x85

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->KW:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x86

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->KY:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x87

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->KZ:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x88

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->LA:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x89

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->LB:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x8a

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->LC:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x8b

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->LI:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x8c

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->LK:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x8d

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->LR:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x8e

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->LS:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x8f

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->LT:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x90

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->LU:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x91

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->LV:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x92

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->LY:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x93

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->MA:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x94

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->MC:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x95

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->MD:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x96

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->ME:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x97

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->MF:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x98

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->MG:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x99

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->MH:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x9a

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->MK:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x9b

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->ML:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x9c

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->MM:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x9d

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->MN:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x9e

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->MO:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x9f

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->MP:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0xa0

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->MQ:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0xa1

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->MR:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0xa2

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->MS:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0xa3

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->MT:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0xa4

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->MU:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0xa5

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->MV:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0xa6

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->MW:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0xa7

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->MX:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0xa8

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->MY:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0xa9

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->MZ:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0xaa

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->NA:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0xab

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->NC:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0xac

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->NE:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0xad

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->NF:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0xae

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->NG:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0xaf

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->NI:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0xb0

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->NL:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0xb1

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->NO:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0xb2

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->NP:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0xb3

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->NR:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0xb4

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->NT:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0xb5

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->NU:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0xb6

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->NZ:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0xb7

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->OM:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0xb8

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->PA:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0xb9

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->PE:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0xba

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->PF:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0xbb

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->PG:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0xbc

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->PH:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0xbd

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->PK:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0xbe

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->PL:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0xbf

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->PM:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0xc0

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->PN:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0xc1

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->PR:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0xc2

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->PS:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0xc3

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->PT:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0xc4

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->PW:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0xc5

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->PY:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0xc6

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->QA:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0xc7

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->RE:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0xc8

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->RO:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0xc9

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->RS:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0xca

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->RU:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0xcb

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->RW:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0xcc

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->SA:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0xcd

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->SB:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0xce

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->SC:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0xcf

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->SD:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0xd0

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->SE:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0xd1

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->SF:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0xd2

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->SG:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0xd3

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->SH:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0xd4

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->SI:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0xd5

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->SJ:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0xd6

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->SK:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0xd7

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->SL:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0xd8

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->SM:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0xd9

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->SN:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0xda

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->SO:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0xdb

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->SR:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0xdc

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->SS:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0xdd

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->ST:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0xde

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->SU:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0xdf

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->SV:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0xe0

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->SX:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0xe1

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->SY:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0xe2

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->SZ:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0xe3

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->TA:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0xe4

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->TC:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0xe5

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->TD:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0xe6

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->TF:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0xe7

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->TG:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0xe8

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->TH:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0xe9

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->TJ:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0xea

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->TK:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0xeb

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->TL:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0xec

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->TM:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0xed

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->TN:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0xee

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->TO:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0xef

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->TP:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0xf0

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->TR:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0xf1

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->TT:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0xf2

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->TV:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0xf3

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->TW:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0xf4

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->TZ:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0xf5

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->UA:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0xf6

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->UG:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0xf7

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->UK:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0xf8

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->UM:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0xf9

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->US:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0xfa

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->UY:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0xfb

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->UZ:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0xfc

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->VA:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0xfd

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->VC:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0xfe

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->VE:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0xff

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->VG:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x100

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->VI:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x101

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->VN:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x102

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->VU:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x103

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->WF:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x104

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->WS:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x105

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->XI:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x106

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->XU:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x107

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->XK:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x108

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->YE:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x109

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->YT:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x10a

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->YU:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x10b

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->ZA:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x10c

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->ZM:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x10d

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->ZR:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x10e

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/currency/CountryCode;->ZW:Lcom/stripe/currency/CountryCode;

    const/16 v2, 0x10f

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 14

    .line 118
    new-instance v0, Lcom/stripe/currency/CountryCode;

    const/4 v5, -0x1

    sget-object v6, Lcom/stripe/currency/CountryCode$Assignment;->USER_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v1, "UNDEFINED"

    const/4 v2, 0x0

    const-string v3, "Undefined"

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v0, Lcom/stripe/currency/CountryCode;->UNDEFINED:Lcom/stripe/currency/CountryCode;

    .line 125
    new-instance v1, Lcom/stripe/currency/CountryCode;

    const/4 v6, -0x1

    sget-object v7, Lcom/stripe/currency/CountryCode$Assignment;->EXCEPTIONALLY_RESERVED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v2, "AC"

    const/4 v3, 0x1

    const-string v4, "Ascension Island"

    const-string v5, "ASC"

    invoke-direct/range {v1 .. v7}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v1, Lcom/stripe/currency/CountryCode;->AC:Lcom/stripe/currency/CountryCode;

    .line 132
    new-instance v2, Lcom/stripe/currency/CountryCode;

    const/16 v7, 0x14

    sget-object v8, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v3, "AD"

    const/4 v4, 0x2

    const-string v5, "Andorra"

    const-string v6, "AND"

    invoke-direct/range {v2 .. v8}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v2, Lcom/stripe/currency/CountryCode;->AD:Lcom/stripe/currency/CountryCode;

    .line 139
    new-instance v3, Lcom/stripe/currency/CountryCode;

    const/16 v8, 0x310

    sget-object v9, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v4, "AE"

    const/4 v5, 0x3

    const-string v6, "United Arab Emirates"

    const-string v7, "ARE"

    invoke-direct/range {v3 .. v9}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v3, Lcom/stripe/currency/CountryCode;->AE:Lcom/stripe/currency/CountryCode;

    .line 146
    new-instance v4, Lcom/stripe/currency/CountryCode;

    const/4 v9, 0x4

    sget-object v10, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v5, "AF"

    const/4 v6, 0x4

    const-string v7, "Afghanistan"

    const-string v8, "AFG"

    invoke-direct/range {v4 .. v10}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v4, Lcom/stripe/currency/CountryCode;->AF:Lcom/stripe/currency/CountryCode;

    .line 153
    new-instance v5, Lcom/stripe/currency/CountryCode;

    const/16 v10, 0x1c

    sget-object v11, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v6, "AG"

    const/4 v7, 0x5

    const-string v8, "Antigua and Barbuda"

    const-string v9, "ATG"

    invoke-direct/range {v5 .. v11}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v5, Lcom/stripe/currency/CountryCode;->AG:Lcom/stripe/currency/CountryCode;

    .line 160
    new-instance v6, Lcom/stripe/currency/CountryCode;

    const/16 v11, 0x294

    sget-object v12, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v7, "AI"

    const/4 v8, 0x6

    const-string v9, "Anguilla"

    const-string v10, "AIA"

    invoke-direct/range {v6 .. v12}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v6, Lcom/stripe/currency/CountryCode;->AI:Lcom/stripe/currency/CountryCode;

    .line 167
    new-instance v7, Lcom/stripe/currency/CountryCode;

    const/16 v12, 0x8

    sget-object v13, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v8, "AL"

    const/4 v9, 0x7

    const-string v10, "Albania"

    const-string v11, "ALB"

    invoke-direct/range {v7 .. v13}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v7, Lcom/stripe/currency/CountryCode;->AL:Lcom/stripe/currency/CountryCode;

    .line 174
    new-instance v0, Lcom/stripe/currency/CountryCode;

    const/16 v5, 0x33

    sget-object v6, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v1, "AM"

    const/16 v2, 0x8

    const-string v3, "Armenia"

    const-string v4, "ARM"

    invoke-direct/range {v0 .. v6}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v0, Lcom/stripe/currency/CountryCode;->AM:Lcom/stripe/currency/CountryCode;

    .line 181
    new-instance v1, Lcom/stripe/currency/CountryCode;

    const/16 v6, 0x212

    sget-object v7, Lcom/stripe/currency/CountryCode$Assignment;->TRANSITIONALLY_RESERVED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v2, "AN"

    const/16 v3, 0x9

    const-string v4, "Netherlands Antilles"

    const-string v5, "ANT"

    invoke-direct/range {v1 .. v7}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v1, Lcom/stripe/currency/CountryCode;->AN:Lcom/stripe/currency/CountryCode;

    .line 188
    new-instance v2, Lcom/stripe/currency/CountryCode;

    const/16 v7, 0x18

    sget-object v8, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v3, "AO"

    const/16 v4, 0xa

    const-string v5, "Angola"

    const-string v6, "AGO"

    invoke-direct/range {v2 .. v8}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v2, Lcom/stripe/currency/CountryCode;->AO:Lcom/stripe/currency/CountryCode;

    .line 195
    new-instance v3, Lcom/stripe/currency/CountryCode;

    const/16 v8, 0xa

    sget-object v9, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v4, "AQ"

    const/16 v5, 0xb

    const-string v6, "Antarctica"

    const-string v7, "ATA"

    invoke-direct/range {v3 .. v9}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v3, Lcom/stripe/currency/CountryCode;->AQ:Lcom/stripe/currency/CountryCode;

    .line 202
    new-instance v4, Lcom/stripe/currency/CountryCode;

    const/16 v9, 0x20

    sget-object v10, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v5, "AR"

    const/16 v6, 0xc

    const-string v7, "Argentina"

    const-string v8, "ARG"

    invoke-direct/range {v4 .. v10}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v4, Lcom/stripe/currency/CountryCode;->AR:Lcom/stripe/currency/CountryCode;

    .line 209
    new-instance v5, Lcom/stripe/currency/CountryCode;

    const/16 v10, 0x10

    sget-object v11, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v6, "AS"

    const/16 v7, 0xd

    const-string v8, "American Samoa"

    const-string v9, "ASM"

    invoke-direct/range {v5 .. v11}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v5, Lcom/stripe/currency/CountryCode;->AS:Lcom/stripe/currency/CountryCode;

    .line 216
    new-instance v6, Lcom/stripe/currency/CountryCode;

    const/16 v11, 0x28

    sget-object v12, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v7, "AT"

    const/16 v8, 0xe

    const-string v9, "Austria"

    const-string v10, "AUT"

    invoke-direct/range {v6 .. v12}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v6, Lcom/stripe/currency/CountryCode;->AT:Lcom/stripe/currency/CountryCode;

    .line 223
    new-instance v7, Lcom/stripe/currency/CountryCode;

    const/16 v12, 0x24

    sget-object v13, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v8, "AU"

    const/16 v9, 0xf

    const-string v10, "Australia"

    const-string v11, "AUS"

    invoke-direct/range {v7 .. v13}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v7, Lcom/stripe/currency/CountryCode;->AU:Lcom/stripe/currency/CountryCode;

    .line 230
    new-instance v0, Lcom/stripe/currency/CountryCode;

    const/16 v5, 0x215

    sget-object v6, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v1, "AW"

    const/16 v2, 0x10

    const-string v3, "Aruba"

    const-string v4, "ABW"

    invoke-direct/range {v0 .. v6}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v0, Lcom/stripe/currency/CountryCode;->AW:Lcom/stripe/currency/CountryCode;

    .line 237
    new-instance v1, Lcom/stripe/currency/CountryCode;

    const/16 v6, 0xf8

    sget-object v7, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v2, "AX"

    const/16 v3, 0x11

    const-string v4, "\u00c5land Islands"

    const-string v5, "ALA"

    invoke-direct/range {v1 .. v7}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v1, Lcom/stripe/currency/CountryCode;->AX:Lcom/stripe/currency/CountryCode;

    .line 244
    new-instance v2, Lcom/stripe/currency/CountryCode;

    const/16 v7, 0x1f

    sget-object v8, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v3, "AZ"

    const/16 v4, 0x12

    const-string v5, "Azerbaijan"

    const-string v6, "AZE"

    invoke-direct/range {v2 .. v8}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v2, Lcom/stripe/currency/CountryCode;->AZ:Lcom/stripe/currency/CountryCode;

    .line 251
    new-instance v3, Lcom/stripe/currency/CountryCode;

    const/16 v8, 0x46

    sget-object v9, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v4, "BA"

    const/16 v5, 0x13

    const-string v6, "Bosnia and Herzegovina"

    const-string v7, "BIH"

    invoke-direct/range {v3 .. v9}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v3, Lcom/stripe/currency/CountryCode;->BA:Lcom/stripe/currency/CountryCode;

    .line 258
    new-instance v4, Lcom/stripe/currency/CountryCode;

    const/16 v9, 0x34

    sget-object v10, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v5, "BB"

    const/16 v6, 0x14

    const-string v7, "Barbados"

    const-string v8, "BRB"

    invoke-direct/range {v4 .. v10}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v4, Lcom/stripe/currency/CountryCode;->BB:Lcom/stripe/currency/CountryCode;

    .line 265
    new-instance v5, Lcom/stripe/currency/CountryCode;

    const/16 v10, 0x32

    sget-object v11, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v6, "BD"

    const/16 v7, 0x15

    const-string v8, "Bangladesh"

    const-string v9, "BGD"

    invoke-direct/range {v5 .. v11}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v5, Lcom/stripe/currency/CountryCode;->BD:Lcom/stripe/currency/CountryCode;

    .line 272
    new-instance v6, Lcom/stripe/currency/CountryCode;

    const/16 v11, 0x38

    sget-object v12, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v7, "BE"

    const/16 v8, 0x16

    const-string v9, "Belgium"

    const-string v10, "BEL"

    invoke-direct/range {v6 .. v12}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v6, Lcom/stripe/currency/CountryCode;->BE:Lcom/stripe/currency/CountryCode;

    .line 279
    new-instance v7, Lcom/stripe/currency/CountryCode;

    const/16 v12, 0x356

    sget-object v13, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v8, "BF"

    const/16 v9, 0x17

    const-string v10, "Burkina Faso"

    const-string v11, "BFA"

    invoke-direct/range {v7 .. v13}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v7, Lcom/stripe/currency/CountryCode;->BF:Lcom/stripe/currency/CountryCode;

    .line 286
    new-instance v0, Lcom/stripe/currency/CountryCode;

    const/16 v5, 0x64

    sget-object v6, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v1, "BG"

    const/16 v2, 0x18

    const-string v3, "Bulgaria"

    const-string v4, "BGR"

    invoke-direct/range {v0 .. v6}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v0, Lcom/stripe/currency/CountryCode;->BG:Lcom/stripe/currency/CountryCode;

    .line 293
    new-instance v1, Lcom/stripe/currency/CountryCode;

    const/16 v6, 0x30

    sget-object v7, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v2, "BH"

    const/16 v3, 0x19

    const-string v4, "Bahrain"

    const-string v5, "BHR"

    invoke-direct/range {v1 .. v7}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v1, Lcom/stripe/currency/CountryCode;->BH:Lcom/stripe/currency/CountryCode;

    .line 300
    new-instance v2, Lcom/stripe/currency/CountryCode;

    const/16 v7, 0x6c

    sget-object v8, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v3, "BI"

    const/16 v4, 0x1a

    const-string v5, "Burundi"

    const-string v6, "BDI"

    invoke-direct/range {v2 .. v8}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v2, Lcom/stripe/currency/CountryCode;->BI:Lcom/stripe/currency/CountryCode;

    .line 307
    new-instance v3, Lcom/stripe/currency/CountryCode;

    const/16 v8, 0xcc

    sget-object v9, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v4, "BJ"

    const/16 v5, 0x1b

    const-string v6, "Benin"

    const-string v7, "BEN"

    invoke-direct/range {v3 .. v9}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v3, Lcom/stripe/currency/CountryCode;->BJ:Lcom/stripe/currency/CountryCode;

    .line 314
    new-instance v4, Lcom/stripe/currency/CountryCode;

    const/16 v9, 0x28c

    sget-object v10, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v5, "BL"

    const/16 v6, 0x1c

    const-string v7, "Saint Barth\u00e9lemy"

    const-string v8, "BLM"

    invoke-direct/range {v4 .. v10}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v4, Lcom/stripe/currency/CountryCode;->BL:Lcom/stripe/currency/CountryCode;

    .line 321
    new-instance v5, Lcom/stripe/currency/CountryCode;

    const/16 v10, 0x3c

    sget-object v11, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v6, "BM"

    const/16 v7, 0x1d

    const-string v8, "Bermuda"

    const-string v9, "BMU"

    invoke-direct/range {v5 .. v11}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v5, Lcom/stripe/currency/CountryCode;->BM:Lcom/stripe/currency/CountryCode;

    .line 328
    new-instance v6, Lcom/stripe/currency/CountryCode;

    const/16 v11, 0x60

    sget-object v12, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v7, "BN"

    const/16 v8, 0x1e

    const-string v9, "Brunei Darussalam"

    const-string v10, "BRN"

    invoke-direct/range {v6 .. v12}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v6, Lcom/stripe/currency/CountryCode;->BN:Lcom/stripe/currency/CountryCode;

    .line 335
    new-instance v7, Lcom/stripe/currency/CountryCode;

    const/16 v12, 0x44

    sget-object v13, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v8, "BO"

    const/16 v9, 0x1f

    const-string v10, "Bolivia, Plurinational State of"

    const-string v11, "BOL"

    invoke-direct/range {v7 .. v13}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v7, Lcom/stripe/currency/CountryCode;->BO:Lcom/stripe/currency/CountryCode;

    .line 342
    new-instance v0, Lcom/stripe/currency/CountryCode;

    const/16 v5, 0x217

    sget-object v6, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v1, "BQ"

    const/16 v2, 0x20

    const-string v3, "Bonaire, Sint Eustatius and Saba"

    const-string v4, "BES"

    invoke-direct/range {v0 .. v6}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v0, Lcom/stripe/currency/CountryCode;->BQ:Lcom/stripe/currency/CountryCode;

    .line 349
    new-instance v1, Lcom/stripe/currency/CountryCode;

    const/16 v6, 0x4c

    sget-object v7, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v2, "BR"

    const/16 v3, 0x21

    const-string v4, "Brazil"

    const-string v5, "BRA"

    invoke-direct/range {v1 .. v7}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v1, Lcom/stripe/currency/CountryCode;->BR:Lcom/stripe/currency/CountryCode;

    .line 356
    new-instance v2, Lcom/stripe/currency/CountryCode;

    const/16 v7, 0x2c

    sget-object v8, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v3, "BS"

    const/16 v4, 0x22

    const-string v5, "Bahamas"

    const-string v6, "BHS"

    invoke-direct/range {v2 .. v8}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v2, Lcom/stripe/currency/CountryCode;->BS:Lcom/stripe/currency/CountryCode;

    .line 363
    new-instance v3, Lcom/stripe/currency/CountryCode;

    const/16 v8, 0x40

    sget-object v9, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v4, "BT"

    const/16 v5, 0x23

    const-string v6, "Bhutan"

    const-string v7, "BTN"

    invoke-direct/range {v3 .. v9}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v3, Lcom/stripe/currency/CountryCode;->BT:Lcom/stripe/currency/CountryCode;

    .line 372
    new-instance v4, Lcom/stripe/currency/CountryCode;

    const/16 v9, 0x68

    sget-object v10, Lcom/stripe/currency/CountryCode$Assignment;->TRANSITIONALLY_RESERVED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v5, "BU"

    const/16 v6, 0x24

    const-string v7, "Burma"

    const-string v8, "BUR"

    invoke-direct/range {v4 .. v10}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v4, Lcom/stripe/currency/CountryCode;->BU:Lcom/stripe/currency/CountryCode;

    .line 379
    new-instance v5, Lcom/stripe/currency/CountryCode;

    const/16 v10, 0x4a

    sget-object v11, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v6, "BV"

    const/16 v7, 0x25

    const-string v8, "Bouvet Island"

    const-string v9, "BVT"

    invoke-direct/range {v5 .. v11}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v5, Lcom/stripe/currency/CountryCode;->BV:Lcom/stripe/currency/CountryCode;

    .line 386
    new-instance v6, Lcom/stripe/currency/CountryCode;

    const/16 v11, 0x48

    sget-object v12, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v7, "BW"

    const/16 v8, 0x26

    const-string v9, "Botswana"

    const-string v10, "BWA"

    invoke-direct/range {v6 .. v12}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v6, Lcom/stripe/currency/CountryCode;->BW:Lcom/stripe/currency/CountryCode;

    .line 393
    new-instance v7, Lcom/stripe/currency/CountryCode;

    const/16 v12, 0x70

    sget-object v13, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v8, "BY"

    const/16 v9, 0x27

    const-string v10, "Belarus"

    const-string v11, "BLR"

    invoke-direct/range {v7 .. v13}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v7, Lcom/stripe/currency/CountryCode;->BY:Lcom/stripe/currency/CountryCode;

    .line 400
    new-instance v0, Lcom/stripe/currency/CountryCode;

    const/16 v5, 0x54

    sget-object v6, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v1, "BZ"

    const/16 v2, 0x28

    const-string v3, "Belize"

    const-string v4, "BLZ"

    invoke-direct/range {v0 .. v6}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v0, Lcom/stripe/currency/CountryCode;->BZ:Lcom/stripe/currency/CountryCode;

    .line 407
    new-instance v1, Lcom/stripe/currency/CountryCode;

    const/16 v6, 0x7c

    sget-object v7, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v2, "CA"

    const/16 v3, 0x29

    const-string v4, "Canada"

    const-string v5, "CAN"

    invoke-direct/range {v1 .. v7}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v1, Lcom/stripe/currency/CountryCode;->CA:Lcom/stripe/currency/CountryCode;

    .line 414
    new-instance v2, Lcom/stripe/currency/CountryCode;

    const/16 v7, 0xa6

    sget-object v8, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v3, "CC"

    const/16 v4, 0x2a

    const-string v5, "Cocos (Keeling) Islands"

    const-string v6, "CCK"

    invoke-direct/range {v2 .. v8}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v2, Lcom/stripe/currency/CountryCode;->CC:Lcom/stripe/currency/CountryCode;

    .line 423
    new-instance v3, Lcom/stripe/currency/CountryCode;

    const/16 v8, 0xb4

    sget-object v9, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v4, "CD"

    const/16 v5, 0x2b

    const-string v6, "Congo, the Democratic Republic of the"

    const-string v7, "COD"

    invoke-direct/range {v3 .. v9}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v3, Lcom/stripe/currency/CountryCode;->CD:Lcom/stripe/currency/CountryCode;

    .line 430
    new-instance v4, Lcom/stripe/currency/CountryCode;

    const/16 v9, 0x8c

    sget-object v10, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v5, "CF"

    const/16 v6, 0x2c

    const-string v7, "Central African Republic"

    const-string v8, "CAF"

    invoke-direct/range {v4 .. v10}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v4, Lcom/stripe/currency/CountryCode;->CF:Lcom/stripe/currency/CountryCode;

    .line 437
    new-instance v5, Lcom/stripe/currency/CountryCode;

    const/16 v10, 0xb2

    sget-object v11, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v6, "CG"

    const/16 v7, 0x2d

    const-string v8, "Congo"

    const-string v9, "COG"

    invoke-direct/range {v5 .. v11}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v5, Lcom/stripe/currency/CountryCode;->CG:Lcom/stripe/currency/CountryCode;

    .line 444
    new-instance v6, Lcom/stripe/currency/CountryCode;

    const/16 v11, 0x2f4

    sget-object v12, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v7, "CH"

    const/16 v8, 0x2e

    const-string v9, "Switzerland"

    const-string v10, "CHE"

    invoke-direct/range {v6 .. v12}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v6, Lcom/stripe/currency/CountryCode;->CH:Lcom/stripe/currency/CountryCode;

    .line 451
    new-instance v7, Lcom/stripe/currency/CountryCode;

    const/16 v12, 0x180

    sget-object v13, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v8, "CI"

    const/16 v9, 0x2f

    const-string v10, "C\u00f4te d\'Ivoire"

    const-string v11, "CIV"

    invoke-direct/range {v7 .. v13}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v7, Lcom/stripe/currency/CountryCode;->CI:Lcom/stripe/currency/CountryCode;

    .line 458
    new-instance v0, Lcom/stripe/currency/CountryCode;

    const/16 v5, 0xb8

    sget-object v6, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v1, "CK"

    const/16 v2, 0x30

    const-string v3, "Cook Islands"

    const-string v4, "COK"

    invoke-direct/range {v0 .. v6}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v0, Lcom/stripe/currency/CountryCode;->CK:Lcom/stripe/currency/CountryCode;

    .line 465
    new-instance v1, Lcom/stripe/currency/CountryCode;

    const/16 v6, 0x98

    sget-object v7, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v2, "CL"

    const/16 v3, 0x31

    const-string v4, "Chile"

    const-string v5, "CHL"

    invoke-direct/range {v1 .. v7}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v1, Lcom/stripe/currency/CountryCode;->CL:Lcom/stripe/currency/CountryCode;

    .line 472
    new-instance v2, Lcom/stripe/currency/CountryCode;

    const/16 v7, 0x78

    sget-object v8, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v3, "CM"

    const/16 v4, 0x32

    const-string v5, "Cameroon"

    const-string v6, "CMR"

    invoke-direct/range {v2 .. v8}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v2, Lcom/stripe/currency/CountryCode;->CM:Lcom/stripe/currency/CountryCode;

    .line 479
    new-instance v3, Lcom/stripe/currency/CountryCode;

    const/16 v8, 0x9c

    sget-object v9, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v4, "CN"

    const/16 v5, 0x33

    const-string v6, "China"

    const-string v7, "CHN"

    invoke-direct/range {v3 .. v9}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v3, Lcom/stripe/currency/CountryCode;->CN:Lcom/stripe/currency/CountryCode;

    .line 486
    new-instance v4, Lcom/stripe/currency/CountryCode;

    const/16 v9, 0xaa

    sget-object v10, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v5, "CO"

    const/16 v6, 0x34

    const-string v7, "Colombia"

    const-string v8, "COL"

    invoke-direct/range {v4 .. v10}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v4, Lcom/stripe/currency/CountryCode;->CO:Lcom/stripe/currency/CountryCode;

    .line 493
    new-instance v5, Lcom/stripe/currency/CountryCode;

    const/4 v10, -0x1

    sget-object v11, Lcom/stripe/currency/CountryCode$Assignment;->EXCEPTIONALLY_RESERVED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v6, "CP"

    const/16 v7, 0x35

    const-string v8, "Clipperton Island"

    const-string v9, "CPT"

    invoke-direct/range {v5 .. v11}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v5, Lcom/stripe/currency/CountryCode;->CP:Lcom/stripe/currency/CountryCode;

    .line 500
    new-instance v6, Lcom/stripe/currency/CountryCode;

    const/16 v11, 0xbc

    sget-object v12, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v7, "CR"

    const/16 v8, 0x36

    const-string v9, "Costa Rica"

    const-string v10, "CRI"

    invoke-direct/range {v6 .. v12}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v6, Lcom/stripe/currency/CountryCode;->CR:Lcom/stripe/currency/CountryCode;

    .line 507
    new-instance v7, Lcom/stripe/currency/CountryCode;

    const/16 v12, 0x37b

    sget-object v13, Lcom/stripe/currency/CountryCode$Assignment;->TRANSITIONALLY_RESERVED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v8, "CS"

    const/16 v9, 0x37

    const-string v10, "Serbia and Montenegro"

    const-string v11, "SCG"

    invoke-direct/range {v7 .. v13}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v7, Lcom/stripe/currency/CountryCode;->CS:Lcom/stripe/currency/CountryCode;

    .line 514
    new-instance v0, Lcom/stripe/currency/CountryCode;

    const/16 v5, 0xc0

    sget-object v6, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v1, "CU"

    const/16 v2, 0x38

    const-string v3, "Cuba"

    const-string v4, "CUB"

    invoke-direct/range {v0 .. v6}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v0, Lcom/stripe/currency/CountryCode;->CU:Lcom/stripe/currency/CountryCode;

    .line 521
    new-instance v1, Lcom/stripe/currency/CountryCode;

    const/16 v6, 0x84

    sget-object v7, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v2, "CV"

    const/16 v3, 0x39

    const-string v4, "Cape Verde"

    const-string v5, "CPV"

    invoke-direct/range {v1 .. v7}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v1, Lcom/stripe/currency/CountryCode;->CV:Lcom/stripe/currency/CountryCode;

    .line 528
    new-instance v2, Lcom/stripe/currency/CountryCode;

    const/16 v7, 0x213

    sget-object v8, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v3, "CW"

    const/16 v4, 0x3a

    const-string v5, "Cura\u00e7ao"

    const-string v6, "CUW"

    invoke-direct/range {v2 .. v8}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v2, Lcom/stripe/currency/CountryCode;->CW:Lcom/stripe/currency/CountryCode;

    .line 535
    new-instance v3, Lcom/stripe/currency/CountryCode;

    const/16 v8, 0xa2

    sget-object v9, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v4, "CX"

    const/16 v5, 0x3b

    const-string v6, "Christmas Island"

    const-string v7, "CXR"

    invoke-direct/range {v3 .. v9}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v3, Lcom/stripe/currency/CountryCode;->CX:Lcom/stripe/currency/CountryCode;

    .line 542
    new-instance v4, Lcom/stripe/currency/CountryCode;

    const/16 v9, 0xc4

    sget-object v10, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v5, "CY"

    const/16 v6, 0x3c

    const-string v7, "Cyprus"

    const-string v8, "CYP"

    invoke-direct/range {v4 .. v10}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v4, Lcom/stripe/currency/CountryCode;->CY:Lcom/stripe/currency/CountryCode;

    .line 549
    new-instance v5, Lcom/stripe/currency/CountryCode;

    const/16 v10, 0xcb

    sget-object v11, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v6, "CZ"

    const/16 v7, 0x3d

    const-string v8, "Czech Republic"

    const-string v9, "CZE"

    invoke-direct/range {v5 .. v11}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v5, Lcom/stripe/currency/CountryCode;->CZ:Lcom/stripe/currency/CountryCode;

    .line 556
    new-instance v6, Lcom/stripe/currency/CountryCode;

    const/16 v11, 0x114

    sget-object v12, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v7, "DE"

    const/16 v8, 0x3e

    const-string v9, "Germany"

    const-string v10, "DEU"

    invoke-direct/range {v6 .. v12}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v6, Lcom/stripe/currency/CountryCode;->DE:Lcom/stripe/currency/CountryCode;

    .line 563
    new-instance v7, Lcom/stripe/currency/CountryCode;

    const/4 v12, -0x1

    sget-object v13, Lcom/stripe/currency/CountryCode$Assignment;->EXCEPTIONALLY_RESERVED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v8, "DG"

    const/16 v9, 0x3f

    const-string v10, "Diego Garcia"

    const-string v11, "DGA"

    invoke-direct/range {v7 .. v13}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v7, Lcom/stripe/currency/CountryCode;->DG:Lcom/stripe/currency/CountryCode;

    .line 570
    new-instance v0, Lcom/stripe/currency/CountryCode;

    const/16 v5, 0x106

    sget-object v6, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v1, "DJ"

    const/16 v2, 0x40

    const-string v3, "Djibouti"

    const-string v4, "DJI"

    invoke-direct/range {v0 .. v6}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v0, Lcom/stripe/currency/CountryCode;->DJ:Lcom/stripe/currency/CountryCode;

    .line 577
    new-instance v1, Lcom/stripe/currency/CountryCode;

    const/16 v6, 0xd0

    sget-object v7, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v2, "DK"

    const/16 v3, 0x41

    const-string v4, "Denmark"

    const-string v5, "DNK"

    invoke-direct/range {v1 .. v7}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v1, Lcom/stripe/currency/CountryCode;->DK:Lcom/stripe/currency/CountryCode;

    .line 584
    new-instance v2, Lcom/stripe/currency/CountryCode;

    const/16 v7, 0xd4

    sget-object v8, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v3, "DM"

    const/16 v4, 0x42

    const-string v5, "Dominica"

    const-string v6, "DMA"

    invoke-direct/range {v2 .. v8}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v2, Lcom/stripe/currency/CountryCode;->DM:Lcom/stripe/currency/CountryCode;

    .line 591
    new-instance v3, Lcom/stripe/currency/CountryCode;

    const/16 v8, 0xd6

    sget-object v9, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v4, "DO"

    const/16 v5, 0x43

    const-string v6, "Dominican Republic"

    const-string v7, "DOM"

    invoke-direct/range {v3 .. v9}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v3, Lcom/stripe/currency/CountryCode;->DO:Lcom/stripe/currency/CountryCode;

    .line 598
    new-instance v4, Lcom/stripe/currency/CountryCode;

    const/16 v9, 0xc

    sget-object v10, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v5, "DZ"

    const/16 v6, 0x44

    const-string v7, "Algeria"

    const-string v8, "DZA"

    invoke-direct/range {v4 .. v10}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v4, Lcom/stripe/currency/CountryCode;->DZ:Lcom/stripe/currency/CountryCode;

    .line 606
    new-instance v5, Lcom/stripe/currency/CountryCode;

    const/4 v10, -0x1

    sget-object v11, Lcom/stripe/currency/CountryCode$Assignment;->EXCEPTIONALLY_RESERVED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v6, "EA"

    const/16 v7, 0x45

    const-string v8, "Ceuta, Melilla"

    const/4 v9, 0x0

    invoke-direct/range {v5 .. v11}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v5, Lcom/stripe/currency/CountryCode;->EA:Lcom/stripe/currency/CountryCode;

    .line 613
    new-instance v6, Lcom/stripe/currency/CountryCode;

    const/16 v11, 0xda

    sget-object v12, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v7, "EC"

    const/16 v8, 0x46

    const-string v9, "Ecuador"

    const-string v10, "ECU"

    invoke-direct/range {v6 .. v12}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v6, Lcom/stripe/currency/CountryCode;->EC:Lcom/stripe/currency/CountryCode;

    .line 620
    new-instance v7, Lcom/stripe/currency/CountryCode;

    const/16 v12, 0xe9

    sget-object v13, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v8, "EE"

    const/16 v9, 0x47

    const-string v10, "Estonia"

    const-string v11, "EST"

    invoke-direct/range {v7 .. v13}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v7, Lcom/stripe/currency/CountryCode;->EE:Lcom/stripe/currency/CountryCode;

    .line 627
    new-instance v0, Lcom/stripe/currency/CountryCode;

    const/16 v5, 0x332

    sget-object v6, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v1, "EG"

    const/16 v2, 0x48

    const-string v3, "Egypt"

    const-string v4, "EGY"

    invoke-direct/range {v0 .. v6}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v0, Lcom/stripe/currency/CountryCode;->EG:Lcom/stripe/currency/CountryCode;

    .line 634
    new-instance v1, Lcom/stripe/currency/CountryCode;

    const/16 v6, 0x2dc

    sget-object v7, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v2, "EH"

    const/16 v3, 0x49

    const-string v4, "Western Sahara"

    const-string v5, "ESH"

    invoke-direct/range {v1 .. v7}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v1, Lcom/stripe/currency/CountryCode;->EH:Lcom/stripe/currency/CountryCode;

    .line 641
    new-instance v2, Lcom/stripe/currency/CountryCode;

    const/16 v7, 0xe8

    sget-object v8, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v3, "ER"

    const/16 v4, 0x4a

    const-string v5, "Eritrea"

    const-string v6, "ERI"

    invoke-direct/range {v2 .. v8}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v2, Lcom/stripe/currency/CountryCode;->ER:Lcom/stripe/currency/CountryCode;

    .line 648
    new-instance v3, Lcom/stripe/currency/CountryCode;

    const/16 v8, 0x2d4

    sget-object v9, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v4, "ES"

    const/16 v5, 0x4b

    const-string v6, "Spain"

    const-string v7, "ESP"

    invoke-direct/range {v3 .. v9}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v3, Lcom/stripe/currency/CountryCode;->ES:Lcom/stripe/currency/CountryCode;

    .line 655
    new-instance v4, Lcom/stripe/currency/CountryCode;

    const/16 v9, 0xe7

    sget-object v10, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v5, "ET"

    const/16 v6, 0x4c

    const-string v7, "Ethiopia"

    const-string v8, "ETH"

    invoke-direct/range {v4 .. v10}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v4, Lcom/stripe/currency/CountryCode;->ET:Lcom/stripe/currency/CountryCode;

    .line 662
    new-instance v5, Lcom/stripe/currency/CountryCode;

    const/4 v10, -0x1

    sget-object v11, Lcom/stripe/currency/CountryCode$Assignment;->EXCEPTIONALLY_RESERVED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v6, "EU"

    const/16 v7, 0x4d

    const-string v8, "European Union"

    const/4 v9, 0x0

    invoke-direct/range {v5 .. v11}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v5, Lcom/stripe/currency/CountryCode;->EU:Lcom/stripe/currency/CountryCode;

    .line 669
    new-instance v6, Lcom/stripe/currency/CountryCode;

    const/4 v11, -0x1

    sget-object v12, Lcom/stripe/currency/CountryCode$Assignment;->EXCEPTIONALLY_RESERVED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v7, "EZ"

    const/16 v8, 0x4e

    const-string v9, "Eurozone"

    const/4 v10, 0x0

    invoke-direct/range {v6 .. v12}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v6, Lcom/stripe/currency/CountryCode;->EZ:Lcom/stripe/currency/CountryCode;

    .line 678
    new-instance v7, Lcom/stripe/currency/CountryCode;

    const/16 v12, 0xf6

    sget-object v13, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v8, "FI"

    const/16 v9, 0x4f

    const-string v10, "Finland"

    const-string v11, "FIN"

    invoke-direct/range {v7 .. v13}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v7, Lcom/stripe/currency/CountryCode;->FI:Lcom/stripe/currency/CountryCode;

    .line 685
    new-instance v0, Lcom/stripe/currency/CountryCode;

    const/16 v5, 0xf2

    sget-object v6, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v1, "FJ"

    const/16 v2, 0x50

    const-string v3, "Fiji"

    const-string v4, "FJI"

    invoke-direct/range {v0 .. v6}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v0, Lcom/stripe/currency/CountryCode;->FJ:Lcom/stripe/currency/CountryCode;

    .line 692
    new-instance v1, Lcom/stripe/currency/CountryCode;

    const/16 v6, 0xee

    sget-object v7, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v2, "FK"

    const/16 v3, 0x51

    const-string v4, "Falkland Islands (Malvinas)"

    const-string v5, "FLK"

    invoke-direct/range {v1 .. v7}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v1, Lcom/stripe/currency/CountryCode;->FK:Lcom/stripe/currency/CountryCode;

    .line 699
    new-instance v2, Lcom/stripe/currency/CountryCode;

    const/16 v7, 0x247

    sget-object v8, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v3, "FM"

    const/16 v4, 0x52

    const-string v5, "Micronesia, Federated States of"

    const-string v6, "FSM"

    invoke-direct/range {v2 .. v8}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v2, Lcom/stripe/currency/CountryCode;->FM:Lcom/stripe/currency/CountryCode;

    .line 706
    new-instance v3, Lcom/stripe/currency/CountryCode;

    const/16 v8, 0xea

    sget-object v9, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v4, "FO"

    const/16 v5, 0x53

    const-string v6, "Faroe Islands"

    const-string v7, "FRO"

    invoke-direct/range {v3 .. v9}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v3, Lcom/stripe/currency/CountryCode;->FO:Lcom/stripe/currency/CountryCode;

    .line 713
    new-instance v4, Lcom/stripe/currency/CountryCode;

    const/16 v9, 0xfa

    sget-object v10, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v5, "FR"

    const/16 v6, 0x54

    const-string v7, "France"

    const-string v8, "FRA"

    invoke-direct/range {v4 .. v10}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v4, Lcom/stripe/currency/CountryCode;->FR:Lcom/stripe/currency/CountryCode;

    .line 720
    new-instance v5, Lcom/stripe/currency/CountryCode;

    const/16 v10, 0xf9

    sget-object v11, Lcom/stripe/currency/CountryCode$Assignment;->EXCEPTIONALLY_RESERVED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v6, "FX"

    const/16 v7, 0x55

    const-string v8, "France, Metropolitan"

    const-string v9, "FXX"

    invoke-direct/range {v5 .. v11}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v5, Lcom/stripe/currency/CountryCode;->FX:Lcom/stripe/currency/CountryCode;

    .line 727
    new-instance v6, Lcom/stripe/currency/CountryCode;

    const/16 v11, 0x10a

    sget-object v12, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v7, "GA"

    const/16 v8, 0x56

    const-string v9, "Gabon"

    const-string v10, "GAB"

    invoke-direct/range {v6 .. v12}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v6, Lcom/stripe/currency/CountryCode;->GA:Lcom/stripe/currency/CountryCode;

    .line 736
    new-instance v7, Lcom/stripe/currency/CountryCode;

    const/16 v12, 0x33a

    sget-object v13, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v8, "GB"

    const/16 v9, 0x57

    const-string v10, "United Kingdom"

    const-string v11, "GBR"

    invoke-direct/range {v7 .. v13}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v7, Lcom/stripe/currency/CountryCode;->GB:Lcom/stripe/currency/CountryCode;

    .line 743
    new-instance v0, Lcom/stripe/currency/CountryCode;

    const/16 v5, 0x134

    sget-object v6, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v1, "GD"

    const/16 v2, 0x58

    const-string v3, "Grenada"

    const-string v4, "GRD"

    invoke-direct/range {v0 .. v6}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v0, Lcom/stripe/currency/CountryCode;->GD:Lcom/stripe/currency/CountryCode;

    .line 750
    new-instance v1, Lcom/stripe/currency/CountryCode;

    const/16 v6, 0x10c

    sget-object v7, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v2, "GE"

    const/16 v3, 0x59

    const-string v4, "Georgia"

    const-string v5, "GEO"

    invoke-direct/range {v1 .. v7}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v1, Lcom/stripe/currency/CountryCode;->GE:Lcom/stripe/currency/CountryCode;

    .line 757
    new-instance v2, Lcom/stripe/currency/CountryCode;

    const/16 v7, 0xfe

    sget-object v8, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v3, "GF"

    const/16 v4, 0x5a

    const-string v5, "French Guiana"

    const-string v6, "GUF"

    invoke-direct/range {v2 .. v8}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v2, Lcom/stripe/currency/CountryCode;->GF:Lcom/stripe/currency/CountryCode;

    .line 764
    new-instance v3, Lcom/stripe/currency/CountryCode;

    const/16 v8, 0x33f

    sget-object v9, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v4, "GG"

    const/16 v5, 0x5b

    const-string v6, "Guernsey"

    const-string v7, "GGY"

    invoke-direct/range {v3 .. v9}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v3, Lcom/stripe/currency/CountryCode;->GG:Lcom/stripe/currency/CountryCode;

    .line 771
    new-instance v4, Lcom/stripe/currency/CountryCode;

    const/16 v9, 0x120

    sget-object v10, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v5, "GH"

    const/16 v6, 0x5c

    const-string v7, "Ghana"

    const-string v8, "GHA"

    invoke-direct/range {v4 .. v10}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v4, Lcom/stripe/currency/CountryCode;->GH:Lcom/stripe/currency/CountryCode;

    .line 778
    new-instance v5, Lcom/stripe/currency/CountryCode;

    const/16 v10, 0x124

    sget-object v11, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v6, "GI"

    const/16 v7, 0x5d

    const-string v8, "Gibraltar"

    const-string v9, "GIB"

    invoke-direct/range {v5 .. v11}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v5, Lcom/stripe/currency/CountryCode;->GI:Lcom/stripe/currency/CountryCode;

    .line 785
    new-instance v6, Lcom/stripe/currency/CountryCode;

    const/16 v11, 0x130

    sget-object v12, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v7, "GL"

    const/16 v8, 0x5e

    const-string v9, "Greenland"

    const-string v10, "GRL"

    invoke-direct/range {v6 .. v12}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v6, Lcom/stripe/currency/CountryCode;->GL:Lcom/stripe/currency/CountryCode;

    .line 792
    new-instance v7, Lcom/stripe/currency/CountryCode;

    const/16 v12, 0x10e

    sget-object v13, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v8, "GM"

    const/16 v9, 0x5f

    const-string v10, "Gambia"

    const-string v11, "GMB"

    invoke-direct/range {v7 .. v13}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v7, Lcom/stripe/currency/CountryCode;->GM:Lcom/stripe/currency/CountryCode;

    .line 799
    new-instance v0, Lcom/stripe/currency/CountryCode;

    const/16 v5, 0x144

    sget-object v6, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v1, "GN"

    const/16 v2, 0x60

    const-string v3, "Guinea"

    const-string v4, "GIN"

    invoke-direct/range {v0 .. v6}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v0, Lcom/stripe/currency/CountryCode;->GN:Lcom/stripe/currency/CountryCode;

    .line 806
    new-instance v1, Lcom/stripe/currency/CountryCode;

    const/16 v6, 0x138

    sget-object v7, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v2, "GP"

    const/16 v3, 0x61

    const-string v4, "Guadeloupe"

    const-string v5, "GLP"

    invoke-direct/range {v1 .. v7}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v1, Lcom/stripe/currency/CountryCode;->GP:Lcom/stripe/currency/CountryCode;

    .line 813
    new-instance v2, Lcom/stripe/currency/CountryCode;

    const/16 v7, 0xe2

    sget-object v8, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v3, "GQ"

    const/16 v4, 0x62

    const-string v5, "Equatorial Guinea"

    const-string v6, "GNQ"

    invoke-direct/range {v2 .. v8}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v2, Lcom/stripe/currency/CountryCode;->GQ:Lcom/stripe/currency/CountryCode;

    .line 820
    new-instance v3, Lcom/stripe/currency/CountryCode;

    const/16 v8, 0x12c

    sget-object v9, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v4, "GR"

    const/16 v5, 0x63

    const-string v6, "Greece"

    const-string v7, "GRC"

    invoke-direct/range {v3 .. v9}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v3, Lcom/stripe/currency/CountryCode;->GR:Lcom/stripe/currency/CountryCode;

    .line 827
    new-instance v4, Lcom/stripe/currency/CountryCode;

    const/16 v9, 0xef

    sget-object v10, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v5, "GS"

    const/16 v6, 0x64

    const-string v7, "South Georgia and the South Sandwich Islands"

    const-string v8, "SGS"

    invoke-direct/range {v4 .. v10}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v4, Lcom/stripe/currency/CountryCode;->GS:Lcom/stripe/currency/CountryCode;

    .line 834
    new-instance v5, Lcom/stripe/currency/CountryCode;

    const/16 v10, 0x140

    sget-object v11, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v6, "GT"

    const/16 v7, 0x65

    const-string v8, "Guatemala"

    const-string v9, "GTM"

    invoke-direct/range {v5 .. v11}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v5, Lcom/stripe/currency/CountryCode;->GT:Lcom/stripe/currency/CountryCode;

    .line 841
    new-instance v6, Lcom/stripe/currency/CountryCode;

    const/16 v11, 0x13c

    sget-object v12, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v7, "GU"

    const/16 v8, 0x66

    const-string v9, "Guam"

    const-string v10, "GUM"

    invoke-direct/range {v6 .. v12}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v6, Lcom/stripe/currency/CountryCode;->GU:Lcom/stripe/currency/CountryCode;

    .line 848
    new-instance v7, Lcom/stripe/currency/CountryCode;

    const/16 v12, 0x270

    sget-object v13, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v8, "GW"

    const/16 v9, 0x67

    const-string v10, "Guinea-Bissau"

    const-string v11, "GNB"

    invoke-direct/range {v7 .. v13}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v7, Lcom/stripe/currency/CountryCode;->GW:Lcom/stripe/currency/CountryCode;

    .line 855
    new-instance v0, Lcom/stripe/currency/CountryCode;

    const/16 v5, 0x148

    sget-object v6, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v1, "GY"

    const/16 v2, 0x68

    const-string v3, "Guyana"

    const-string v4, "GUY"

    invoke-direct/range {v0 .. v6}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v0, Lcom/stripe/currency/CountryCode;->GY:Lcom/stripe/currency/CountryCode;

    .line 862
    new-instance v1, Lcom/stripe/currency/CountryCode;

    const/16 v6, 0x158

    sget-object v7, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v2, "HK"

    const/16 v3, 0x69

    const-string v4, "Hong Kong"

    const-string v5, "HKG"

    invoke-direct/range {v1 .. v7}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v1, Lcom/stripe/currency/CountryCode;->HK:Lcom/stripe/currency/CountryCode;

    .line 869
    new-instance v2, Lcom/stripe/currency/CountryCode;

    const/16 v7, 0x14e

    sget-object v8, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v3, "HM"

    const/16 v4, 0x6a

    const-string v5, "Heard Island and McDonald Islands"

    const-string v6, "HMD"

    invoke-direct/range {v2 .. v8}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v2, Lcom/stripe/currency/CountryCode;->HM:Lcom/stripe/currency/CountryCode;

    .line 876
    new-instance v3, Lcom/stripe/currency/CountryCode;

    const/16 v8, 0x154

    sget-object v9, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v4, "HN"

    const/16 v5, 0x6b

    const-string v6, "Honduras"

    const-string v7, "HND"

    invoke-direct/range {v3 .. v9}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v3, Lcom/stripe/currency/CountryCode;->HN:Lcom/stripe/currency/CountryCode;

    .line 883
    new-instance v4, Lcom/stripe/currency/CountryCode;

    const/16 v9, 0xbf

    sget-object v10, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v5, "HR"

    const/16 v6, 0x6c

    const-string v7, "Croatia"

    const-string v8, "HRV"

    invoke-direct/range {v4 .. v10}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v4, Lcom/stripe/currency/CountryCode;->HR:Lcom/stripe/currency/CountryCode;

    .line 890
    new-instance v5, Lcom/stripe/currency/CountryCode;

    const/16 v10, 0x14c

    sget-object v11, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v6, "HT"

    const/16 v7, 0x6d

    const-string v8, "Haiti"

    const-string v9, "HTI"

    invoke-direct/range {v5 .. v11}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v5, Lcom/stripe/currency/CountryCode;->HT:Lcom/stripe/currency/CountryCode;

    .line 897
    new-instance v6, Lcom/stripe/currency/CountryCode;

    const/16 v11, 0x15c

    sget-object v12, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v7, "HU"

    const/16 v8, 0x6e

    const-string v9, "Hungary"

    const-string v10, "HUN"

    invoke-direct/range {v6 .. v12}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v6, Lcom/stripe/currency/CountryCode;->HU:Lcom/stripe/currency/CountryCode;

    .line 904
    new-instance v7, Lcom/stripe/currency/CountryCode;

    const/4 v12, -0x1

    sget-object v13, Lcom/stripe/currency/CountryCode$Assignment;->EXCEPTIONALLY_RESERVED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v8, "IC"

    const/16 v9, 0x6f

    const-string v10, "Canary Islands"

    const/4 v11, 0x0

    invoke-direct/range {v7 .. v13}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v7, Lcom/stripe/currency/CountryCode;->IC:Lcom/stripe/currency/CountryCode;

    .line 911
    new-instance v0, Lcom/stripe/currency/CountryCode;

    const/16 v5, 0x168

    sget-object v6, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v1, "ID"

    const/16 v2, 0x70

    const-string v3, "Indonesia"

    const-string v4, "IDN"

    invoke-direct/range {v0 .. v6}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v0, Lcom/stripe/currency/CountryCode;->ID:Lcom/stripe/currency/CountryCode;

    .line 918
    new-instance v1, Lcom/stripe/currency/CountryCode;

    const/16 v6, 0x174

    sget-object v7, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v2, "IE"

    const/16 v3, 0x71

    const-string v4, "Ireland"

    const-string v5, "IRL"

    invoke-direct/range {v1 .. v7}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v1, Lcom/stripe/currency/CountryCode;->IE:Lcom/stripe/currency/CountryCode;

    .line 925
    new-instance v2, Lcom/stripe/currency/CountryCode;

    const/16 v7, 0x178

    sget-object v8, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v3, "IL"

    const/16 v4, 0x72

    const-string v5, "Israel"

    const-string v6, "ISR"

    invoke-direct/range {v2 .. v8}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v2, Lcom/stripe/currency/CountryCode;->IL:Lcom/stripe/currency/CountryCode;

    .line 932
    new-instance v3, Lcom/stripe/currency/CountryCode;

    const/16 v8, 0x341

    sget-object v9, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v4, "IM"

    const/16 v5, 0x73

    const-string v6, "Isle of Man"

    const-string v7, "IMN"

    invoke-direct/range {v3 .. v9}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v3, Lcom/stripe/currency/CountryCode;->IM:Lcom/stripe/currency/CountryCode;

    .line 939
    new-instance v4, Lcom/stripe/currency/CountryCode;

    const/16 v9, 0x164

    sget-object v10, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v5, "IN"

    const/16 v6, 0x74

    const-string v7, "India"

    const-string v8, "IND"

    invoke-direct/range {v4 .. v10}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v4, Lcom/stripe/currency/CountryCode;->IN:Lcom/stripe/currency/CountryCode;

    .line 946
    new-instance v5, Lcom/stripe/currency/CountryCode;

    const/16 v10, 0x56

    sget-object v11, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v6, "IO"

    const/16 v7, 0x75

    const-string v8, "British Indian Ocean Territory"

    const-string v9, "IOT"

    invoke-direct/range {v5 .. v11}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v5, Lcom/stripe/currency/CountryCode;->IO:Lcom/stripe/currency/CountryCode;

    .line 953
    new-instance v6, Lcom/stripe/currency/CountryCode;

    const/16 v11, 0x170

    sget-object v12, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v7, "IQ"

    const/16 v8, 0x76

    const-string v9, "Iraq"

    const-string v10, "IRQ"

    invoke-direct/range {v6 .. v12}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v6, Lcom/stripe/currency/CountryCode;->IQ:Lcom/stripe/currency/CountryCode;

    .line 960
    new-instance v7, Lcom/stripe/currency/CountryCode;

    const/16 v12, 0x16c

    sget-object v13, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v8, "IR"

    const/16 v9, 0x77

    const-string v10, "Iran, Islamic Republic of"

    const-string v11, "IRN"

    invoke-direct/range {v7 .. v13}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v7, Lcom/stripe/currency/CountryCode;->IR:Lcom/stripe/currency/CountryCode;

    .line 967
    new-instance v0, Lcom/stripe/currency/CountryCode;

    const/16 v5, 0x160

    sget-object v6, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v1, "IS"

    const/16 v2, 0x78

    const-string v3, "Iceland"

    const-string v4, "ISL"

    invoke-direct/range {v0 .. v6}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v0, Lcom/stripe/currency/CountryCode;->IS:Lcom/stripe/currency/CountryCode;

    .line 974
    new-instance v1, Lcom/stripe/currency/CountryCode;

    const/16 v6, 0x17c

    sget-object v7, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v2, "IT"

    const/16 v3, 0x79

    const-string v4, "Italy"

    const-string v5, "ITA"

    invoke-direct/range {v1 .. v7}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v1, Lcom/stripe/currency/CountryCode;->IT:Lcom/stripe/currency/CountryCode;

    .line 981
    new-instance v2, Lcom/stripe/currency/CountryCode;

    const/16 v7, 0x340

    sget-object v8, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v3, "JE"

    const/16 v4, 0x7a

    const-string v5, "Jersey"

    const-string v6, "JEY"

    invoke-direct/range {v2 .. v8}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v2, Lcom/stripe/currency/CountryCode;->JE:Lcom/stripe/currency/CountryCode;

    .line 988
    new-instance v3, Lcom/stripe/currency/CountryCode;

    const/16 v8, 0x184

    sget-object v9, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v4, "JM"

    const/16 v5, 0x7b

    const-string v6, "Jamaica"

    const-string v7, "JAM"

    invoke-direct/range {v3 .. v9}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v3, Lcom/stripe/currency/CountryCode;->JM:Lcom/stripe/currency/CountryCode;

    .line 995
    new-instance v4, Lcom/stripe/currency/CountryCode;

    const/16 v9, 0x190

    sget-object v10, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v5, "JO"

    const/16 v6, 0x7c

    const-string v7, "Jordan"

    const-string v8, "JOR"

    invoke-direct/range {v4 .. v10}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v4, Lcom/stripe/currency/CountryCode;->JO:Lcom/stripe/currency/CountryCode;

    .line 1002
    new-instance v5, Lcom/stripe/currency/CountryCode;

    const/16 v10, 0x188

    sget-object v11, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v6, "JP"

    const/16 v7, 0x7d

    const-string v8, "Japan"

    const-string v9, "JPN"

    invoke-direct/range {v5 .. v11}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v5, Lcom/stripe/currency/CountryCode;->JP:Lcom/stripe/currency/CountryCode;

    .line 1009
    new-instance v6, Lcom/stripe/currency/CountryCode;

    const/16 v11, 0x194

    sget-object v12, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v7, "KE"

    const/16 v8, 0x7e

    const-string v9, "Kenya"

    const-string v10, "KEN"

    invoke-direct/range {v6 .. v12}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v6, Lcom/stripe/currency/CountryCode;->KE:Lcom/stripe/currency/CountryCode;

    .line 1016
    new-instance v7, Lcom/stripe/currency/CountryCode;

    const/16 v12, 0x1a1

    sget-object v13, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v8, "KG"

    const/16 v9, 0x7f

    const-string v10, "Kyrgyzstan"

    const-string v11, "KGZ"

    invoke-direct/range {v7 .. v13}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v7, Lcom/stripe/currency/CountryCode;->KG:Lcom/stripe/currency/CountryCode;

    .line 1023
    new-instance v0, Lcom/stripe/currency/CountryCode;

    const/16 v5, 0x74

    sget-object v6, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v1, "KH"

    const/16 v2, 0x80

    const-string v3, "Cambodia"

    const-string v4, "KHM"

    invoke-direct/range {v0 .. v6}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v0, Lcom/stripe/currency/CountryCode;->KH:Lcom/stripe/currency/CountryCode;

    .line 1030
    new-instance v1, Lcom/stripe/currency/CountryCode;

    const/16 v6, 0x128

    sget-object v7, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v2, "KI"

    const/16 v3, 0x81

    const-string v4, "Kiribati"

    const-string v5, "KIR"

    invoke-direct/range {v1 .. v7}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v1, Lcom/stripe/currency/CountryCode;->KI:Lcom/stripe/currency/CountryCode;

    .line 1037
    new-instance v2, Lcom/stripe/currency/CountryCode;

    const/16 v7, 0xae

    sget-object v8, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v3, "KM"

    const/16 v4, 0x82

    const-string v5, "Comoros"

    const-string v6, "COM"

    invoke-direct/range {v2 .. v8}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v2, Lcom/stripe/currency/CountryCode;->KM:Lcom/stripe/currency/CountryCode;

    .line 1044
    new-instance v3, Lcom/stripe/currency/CountryCode;

    const/16 v8, 0x293

    sget-object v9, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v4, "KN"

    const/16 v5, 0x83

    const-string v6, "Saint Kitts and Nevis"

    const-string v7, "KNA"

    invoke-direct/range {v3 .. v9}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v3, Lcom/stripe/currency/CountryCode;->KN:Lcom/stripe/currency/CountryCode;

    .line 1051
    new-instance v4, Lcom/stripe/currency/CountryCode;

    const/16 v9, 0x198

    sget-object v10, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v5, "KP"

    const/16 v6, 0x84

    const-string v7, "Korea, Democratic People\'s Republic of"

    const-string v8, "PRK"

    invoke-direct/range {v4 .. v10}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v4, Lcom/stripe/currency/CountryCode;->KP:Lcom/stripe/currency/CountryCode;

    .line 1058
    new-instance v5, Lcom/stripe/currency/CountryCode;

    const/16 v10, 0x19a

    sget-object v11, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v6, "KR"

    const/16 v7, 0x85

    const-string v8, "Korea, Republic of"

    const-string v9, "KOR"

    invoke-direct/range {v5 .. v11}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v5, Lcom/stripe/currency/CountryCode;->KR:Lcom/stripe/currency/CountryCode;

    .line 1065
    new-instance v6, Lcom/stripe/currency/CountryCode;

    const/16 v11, 0x19e

    sget-object v12, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v7, "KW"

    const/16 v8, 0x86

    const-string v9, "Kuwait"

    const-string v10, "KWT"

    invoke-direct/range {v6 .. v12}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v6, Lcom/stripe/currency/CountryCode;->KW:Lcom/stripe/currency/CountryCode;

    .line 1072
    new-instance v7, Lcom/stripe/currency/CountryCode;

    const/16 v12, 0x88

    sget-object v13, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v8, "KY"

    const/16 v9, 0x87

    const-string v10, "Cayman Islands"

    const-string v11, "CYM"

    invoke-direct/range {v7 .. v13}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v7, Lcom/stripe/currency/CountryCode;->KY:Lcom/stripe/currency/CountryCode;

    .line 1079
    new-instance v0, Lcom/stripe/currency/CountryCode;

    const/16 v5, 0x18e

    sget-object v6, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v1, "KZ"

    const/16 v2, 0x88

    const-string v3, "Kazakhstan"

    const-string v4, "KAZ"

    invoke-direct/range {v0 .. v6}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v0, Lcom/stripe/currency/CountryCode;->KZ:Lcom/stripe/currency/CountryCode;

    .line 1086
    new-instance v1, Lcom/stripe/currency/CountryCode;

    const/16 v6, 0x1a2

    sget-object v7, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v2, "LA"

    const/16 v3, 0x89

    const-string v4, "Lao People\'s Democratic Republic"

    const-string v5, "LAO"

    invoke-direct/range {v1 .. v7}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v1, Lcom/stripe/currency/CountryCode;->LA:Lcom/stripe/currency/CountryCode;

    .line 1093
    new-instance v2, Lcom/stripe/currency/CountryCode;

    const/16 v7, 0x1a6

    sget-object v8, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v3, "LB"

    const/16 v4, 0x8a

    const-string v5, "Lebanon"

    const-string v6, "LBN"

    invoke-direct/range {v2 .. v8}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v2, Lcom/stripe/currency/CountryCode;->LB:Lcom/stripe/currency/CountryCode;

    .line 1100
    new-instance v3, Lcom/stripe/currency/CountryCode;

    const/16 v8, 0x296

    sget-object v9, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v4, "LC"

    const/16 v5, 0x8b

    const-string v6, "Saint Lucia"

    const-string v7, "LCA"

    invoke-direct/range {v3 .. v9}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v3, Lcom/stripe/currency/CountryCode;->LC:Lcom/stripe/currency/CountryCode;

    .line 1107
    new-instance v4, Lcom/stripe/currency/CountryCode;

    const/16 v9, 0x1b6

    sget-object v10, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v5, "LI"

    const/16 v6, 0x8c

    const-string v7, "Liechtenstein"

    const-string v8, "LIE"

    invoke-direct/range {v4 .. v10}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v4, Lcom/stripe/currency/CountryCode;->LI:Lcom/stripe/currency/CountryCode;

    .line 1114
    new-instance v5, Lcom/stripe/currency/CountryCode;

    const/16 v10, 0x90

    sget-object v11, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v6, "LK"

    const/16 v7, 0x8d

    const-string v8, "Sri Lanka"

    const-string v9, "LKA"

    invoke-direct/range {v5 .. v11}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v5, Lcom/stripe/currency/CountryCode;->LK:Lcom/stripe/currency/CountryCode;

    .line 1121
    new-instance v6, Lcom/stripe/currency/CountryCode;

    const/16 v11, 0x1ae

    sget-object v12, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v7, "LR"

    const/16 v8, 0x8e

    const-string v9, "Liberia"

    const-string v10, "LBR"

    invoke-direct/range {v6 .. v12}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v6, Lcom/stripe/currency/CountryCode;->LR:Lcom/stripe/currency/CountryCode;

    .line 1128
    new-instance v7, Lcom/stripe/currency/CountryCode;

    const/16 v12, 0x1aa

    sget-object v13, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v8, "LS"

    const/16 v9, 0x8f

    const-string v10, "Lesotho"

    const-string v11, "LSO"

    invoke-direct/range {v7 .. v13}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v7, Lcom/stripe/currency/CountryCode;->LS:Lcom/stripe/currency/CountryCode;

    .line 1135
    new-instance v0, Lcom/stripe/currency/CountryCode;

    const/16 v5, 0x1b8

    sget-object v6, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v1, "LT"

    const/16 v2, 0x90

    const-string v3, "Lithuania"

    const-string v4, "LTU"

    invoke-direct/range {v0 .. v6}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v0, Lcom/stripe/currency/CountryCode;->LT:Lcom/stripe/currency/CountryCode;

    .line 1142
    new-instance v1, Lcom/stripe/currency/CountryCode;

    const/16 v6, 0x1ba

    sget-object v7, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v2, "LU"

    const/16 v3, 0x91

    const-string v4, "Luxembourg"

    const-string v5, "LUX"

    invoke-direct/range {v1 .. v7}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v1, Lcom/stripe/currency/CountryCode;->LU:Lcom/stripe/currency/CountryCode;

    .line 1149
    new-instance v2, Lcom/stripe/currency/CountryCode;

    const/16 v7, 0x1ac

    sget-object v8, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v3, "LV"

    const/16 v4, 0x92

    const-string v5, "Latvia"

    const-string v6, "LVA"

    invoke-direct/range {v2 .. v8}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v2, Lcom/stripe/currency/CountryCode;->LV:Lcom/stripe/currency/CountryCode;

    .line 1156
    new-instance v3, Lcom/stripe/currency/CountryCode;

    const/16 v8, 0x1b2

    sget-object v9, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v4, "LY"

    const/16 v5, 0x93

    const-string v6, "Libya"

    const-string v7, "LBY"

    invoke-direct/range {v3 .. v9}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v3, Lcom/stripe/currency/CountryCode;->LY:Lcom/stripe/currency/CountryCode;

    .line 1163
    new-instance v4, Lcom/stripe/currency/CountryCode;

    const/16 v9, 0x1f8

    sget-object v10, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v5, "MA"

    const/16 v6, 0x94

    const-string v7, "Morocco"

    const-string v8, "MAR"

    invoke-direct/range {v4 .. v10}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v4, Lcom/stripe/currency/CountryCode;->MA:Lcom/stripe/currency/CountryCode;

    .line 1170
    new-instance v5, Lcom/stripe/currency/CountryCode;

    const/16 v10, 0x1ec

    sget-object v11, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v6, "MC"

    const/16 v7, 0x95

    const-string v8, "Monaco"

    const-string v9, "MCO"

    invoke-direct/range {v5 .. v11}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v5, Lcom/stripe/currency/CountryCode;->MC:Lcom/stripe/currency/CountryCode;

    .line 1177
    new-instance v6, Lcom/stripe/currency/CountryCode;

    const/16 v11, 0x1f2

    sget-object v12, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v7, "MD"

    const/16 v8, 0x96

    const-string v9, "Moldova, Republic of"

    const-string v10, "MDA"

    invoke-direct/range {v6 .. v12}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v6, Lcom/stripe/currency/CountryCode;->MD:Lcom/stripe/currency/CountryCode;

    .line 1184
    new-instance v7, Lcom/stripe/currency/CountryCode;

    const/16 v12, 0x1f3

    sget-object v13, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v8, "ME"

    const/16 v9, 0x97

    const-string v10, "Montenegro"

    const-string v11, "MNE"

    invoke-direct/range {v7 .. v13}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v7, Lcom/stripe/currency/CountryCode;->ME:Lcom/stripe/currency/CountryCode;

    .line 1191
    new-instance v0, Lcom/stripe/currency/CountryCode;

    const/16 v5, 0x297

    sget-object v6, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v1, "MF"

    const/16 v2, 0x98

    const-string v3, "Saint Martin (French part)"

    const-string v4, "MAF"

    invoke-direct/range {v0 .. v6}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v0, Lcom/stripe/currency/CountryCode;->MF:Lcom/stripe/currency/CountryCode;

    .line 1198
    new-instance v1, Lcom/stripe/currency/CountryCode;

    const/16 v6, 0x1c2

    sget-object v7, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v2, "MG"

    const/16 v3, 0x99

    const-string v4, "Madagascar"

    const-string v5, "MDG"

    invoke-direct/range {v1 .. v7}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v1, Lcom/stripe/currency/CountryCode;->MG:Lcom/stripe/currency/CountryCode;

    .line 1205
    new-instance v2, Lcom/stripe/currency/CountryCode;

    const/16 v7, 0x248

    sget-object v8, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v3, "MH"

    const/16 v4, 0x9a

    const-string v5, "Marshall Islands"

    const-string v6, "MHL"

    invoke-direct/range {v2 .. v8}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v2, Lcom/stripe/currency/CountryCode;->MH:Lcom/stripe/currency/CountryCode;

    .line 1212
    new-instance v3, Lcom/stripe/currency/CountryCode;

    const/16 v8, 0x327

    sget-object v9, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v4, "MK"

    const/16 v5, 0x9b

    const-string v6, "North Macedonia, Republic of"

    const-string v7, "MKD"

    invoke-direct/range {v3 .. v9}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v3, Lcom/stripe/currency/CountryCode;->MK:Lcom/stripe/currency/CountryCode;

    .line 1219
    new-instance v4, Lcom/stripe/currency/CountryCode;

    const/16 v9, 0x1d2

    sget-object v10, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v5, "ML"

    const/16 v6, 0x9c

    const-string v7, "Mali"

    const-string v8, "MLI"

    invoke-direct/range {v4 .. v10}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v4, Lcom/stripe/currency/CountryCode;->ML:Lcom/stripe/currency/CountryCode;

    .line 1228
    new-instance v5, Lcom/stripe/currency/CountryCode;

    const/16 v10, 0x68

    sget-object v11, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v6, "MM"

    const/16 v7, 0x9d

    const-string v8, "Myanmar"

    const-string v9, "MMR"

    invoke-direct/range {v5 .. v11}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v5, Lcom/stripe/currency/CountryCode;->MM:Lcom/stripe/currency/CountryCode;

    .line 1235
    new-instance v6, Lcom/stripe/currency/CountryCode;

    const/16 v11, 0x1f0

    sget-object v12, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v7, "MN"

    const/16 v8, 0x9e

    const-string v9, "Mongolia"

    const-string v10, "MNG"

    invoke-direct/range {v6 .. v12}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v6, Lcom/stripe/currency/CountryCode;->MN:Lcom/stripe/currency/CountryCode;

    .line 1242
    new-instance v7, Lcom/stripe/currency/CountryCode;

    const/16 v12, 0x1be

    sget-object v13, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v8, "MO"

    const/16 v9, 0x9f

    const-string v10, "Macao"

    const-string v11, "MAC"

    invoke-direct/range {v7 .. v13}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v7, Lcom/stripe/currency/CountryCode;->MO:Lcom/stripe/currency/CountryCode;

    .line 1249
    new-instance v0, Lcom/stripe/currency/CountryCode;

    const/16 v5, 0x244

    sget-object v6, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v1, "MP"

    const/16 v2, 0xa0

    const-string v3, "Northern Mariana Islands"

    const-string v4, "MNP"

    invoke-direct/range {v0 .. v6}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v0, Lcom/stripe/currency/CountryCode;->MP:Lcom/stripe/currency/CountryCode;

    .line 1256
    new-instance v1, Lcom/stripe/currency/CountryCode;

    const/16 v6, 0x1da

    sget-object v7, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v2, "MQ"

    const/16 v3, 0xa1

    const-string v4, "Martinique"

    const-string v5, "MTQ"

    invoke-direct/range {v1 .. v7}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v1, Lcom/stripe/currency/CountryCode;->MQ:Lcom/stripe/currency/CountryCode;

    .line 1263
    new-instance v2, Lcom/stripe/currency/CountryCode;

    const/16 v7, 0x1de

    sget-object v8, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v3, "MR"

    const/16 v4, 0xa2

    const-string v5, "Mauritania"

    const-string v6, "MRT"

    invoke-direct/range {v2 .. v8}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v2, Lcom/stripe/currency/CountryCode;->MR:Lcom/stripe/currency/CountryCode;

    .line 1270
    new-instance v3, Lcom/stripe/currency/CountryCode;

    const/16 v8, 0x1f4

    sget-object v9, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v4, "MS"

    const/16 v5, 0xa3

    const-string v6, "Montserrat"

    const-string v7, "MSR"

    invoke-direct/range {v3 .. v9}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v3, Lcom/stripe/currency/CountryCode;->MS:Lcom/stripe/currency/CountryCode;

    .line 1277
    new-instance v4, Lcom/stripe/currency/CountryCode;

    const/16 v9, 0x1d6

    sget-object v10, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v5, "MT"

    const/16 v6, 0xa4

    const-string v7, "Malta"

    const-string v8, "MLT"

    invoke-direct/range {v4 .. v10}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v4, Lcom/stripe/currency/CountryCode;->MT:Lcom/stripe/currency/CountryCode;

    .line 1284
    new-instance v5, Lcom/stripe/currency/CountryCode;

    const/16 v10, 0x1e0

    sget-object v11, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v6, "MU"

    const/16 v7, 0xa5

    const-string v8, "Mauritius"

    const-string v9, "MUS"

    invoke-direct/range {v5 .. v11}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v5, Lcom/stripe/currency/CountryCode;->MU:Lcom/stripe/currency/CountryCode;

    .line 1291
    new-instance v6, Lcom/stripe/currency/CountryCode;

    const/16 v11, 0x1ce

    sget-object v12, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v7, "MV"

    const/16 v8, 0xa6

    const-string v9, "Maldives"

    const-string v10, "MDV"

    invoke-direct/range {v6 .. v12}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v6, Lcom/stripe/currency/CountryCode;->MV:Lcom/stripe/currency/CountryCode;

    .line 1298
    new-instance v7, Lcom/stripe/currency/CountryCode;

    const/16 v12, 0x1c6

    sget-object v13, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v8, "MW"

    const/16 v9, 0xa7

    const-string v10, "Malawi"

    const-string v11, "MWI"

    invoke-direct/range {v7 .. v13}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v7, Lcom/stripe/currency/CountryCode;->MW:Lcom/stripe/currency/CountryCode;

    .line 1305
    new-instance v0, Lcom/stripe/currency/CountryCode;

    const/16 v5, 0x1e4

    sget-object v6, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v1, "MX"

    const/16 v2, 0xa8

    const-string v3, "Mexico"

    const-string v4, "MEX"

    invoke-direct/range {v0 .. v6}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v0, Lcom/stripe/currency/CountryCode;->MX:Lcom/stripe/currency/CountryCode;

    .line 1312
    new-instance v1, Lcom/stripe/currency/CountryCode;

    const/16 v6, 0x1ca

    sget-object v7, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v2, "MY"

    const/16 v3, 0xa9

    const-string v4, "Malaysia"

    const-string v5, "MYS"

    invoke-direct/range {v1 .. v7}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v1, Lcom/stripe/currency/CountryCode;->MY:Lcom/stripe/currency/CountryCode;

    .line 1319
    new-instance v2, Lcom/stripe/currency/CountryCode;

    const/16 v7, 0x1fc

    sget-object v8, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v3, "MZ"

    const/16 v4, 0xaa

    const-string v5, "Mozambique"

    const-string v6, "MOZ"

    invoke-direct/range {v2 .. v8}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v2, Lcom/stripe/currency/CountryCode;->MZ:Lcom/stripe/currency/CountryCode;

    .line 1326
    new-instance v3, Lcom/stripe/currency/CountryCode;

    const/16 v8, 0x204

    sget-object v9, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v4, "NA"

    const/16 v5, 0xab

    const-string v6, "Namibia"

    const-string v7, "NAM"

    invoke-direct/range {v3 .. v9}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v3, Lcom/stripe/currency/CountryCode;->NA:Lcom/stripe/currency/CountryCode;

    .line 1333
    new-instance v4, Lcom/stripe/currency/CountryCode;

    const/16 v9, 0x21c

    sget-object v10, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v5, "NC"

    const/16 v6, 0xac

    const-string v7, "New Caledonia"

    const-string v8, "NCL"

    invoke-direct/range {v4 .. v10}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v4, Lcom/stripe/currency/CountryCode;->NC:Lcom/stripe/currency/CountryCode;

    .line 1340
    new-instance v5, Lcom/stripe/currency/CountryCode;

    const/16 v10, 0x232

    sget-object v11, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v6, "NE"

    const/16 v7, 0xad

    const-string v8, "Niger"

    const-string v9, "NER"

    invoke-direct/range {v5 .. v11}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v5, Lcom/stripe/currency/CountryCode;->NE:Lcom/stripe/currency/CountryCode;

    .line 1347
    new-instance v6, Lcom/stripe/currency/CountryCode;

    const/16 v11, 0x23e

    sget-object v12, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v7, "NF"

    const/16 v8, 0xae

    const-string v9, "Norfolk Island"

    const-string v10, "NFK"

    invoke-direct/range {v6 .. v12}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v6, Lcom/stripe/currency/CountryCode;->NF:Lcom/stripe/currency/CountryCode;

    .line 1354
    new-instance v7, Lcom/stripe/currency/CountryCode;

    const/16 v12, 0x236

    sget-object v13, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v8, "NG"

    const/16 v9, 0xaf

    const-string v10, "Nigeria"

    const-string v11, "NGA"

    invoke-direct/range {v7 .. v13}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v7, Lcom/stripe/currency/CountryCode;->NG:Lcom/stripe/currency/CountryCode;

    .line 1361
    new-instance v0, Lcom/stripe/currency/CountryCode;

    const/16 v5, 0x22e

    sget-object v6, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v1, "NI"

    const/16 v2, 0xb0

    const-string v3, "Nicaragua"

    const-string v4, "NIC"

    invoke-direct/range {v0 .. v6}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v0, Lcom/stripe/currency/CountryCode;->NI:Lcom/stripe/currency/CountryCode;

    .line 1368
    new-instance v1, Lcom/stripe/currency/CountryCode;

    const/16 v6, 0x210

    sget-object v7, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v2, "NL"

    const/16 v3, 0xb1

    const-string v4, "Netherlands"

    const-string v5, "NLD"

    invoke-direct/range {v1 .. v7}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v1, Lcom/stripe/currency/CountryCode;->NL:Lcom/stripe/currency/CountryCode;

    .line 1375
    new-instance v2, Lcom/stripe/currency/CountryCode;

    const/16 v7, 0x242

    sget-object v8, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v3, "NO"

    const/16 v4, 0xb2

    const-string v5, "Norway"

    const-string v6, "NOR"

    invoke-direct/range {v2 .. v8}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v2, Lcom/stripe/currency/CountryCode;->NO:Lcom/stripe/currency/CountryCode;

    .line 1382
    new-instance v3, Lcom/stripe/currency/CountryCode;

    const/16 v8, 0x20c

    sget-object v9, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v4, "NP"

    const/16 v5, 0xb3

    const-string v6, "Nepal"

    const-string v7, "NPL"

    invoke-direct/range {v3 .. v9}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v3, Lcom/stripe/currency/CountryCode;->NP:Lcom/stripe/currency/CountryCode;

    .line 1389
    new-instance v4, Lcom/stripe/currency/CountryCode;

    const/16 v9, 0x208

    sget-object v10, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v5, "NR"

    const/16 v6, 0xb4

    const-string v7, "Nauru"

    const-string v8, "NRU"

    invoke-direct/range {v4 .. v10}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v4, Lcom/stripe/currency/CountryCode;->NR:Lcom/stripe/currency/CountryCode;

    .line 1396
    new-instance v5, Lcom/stripe/currency/CountryCode;

    const/16 v10, 0x218

    sget-object v11, Lcom/stripe/currency/CountryCode$Assignment;->TRANSITIONALLY_RESERVED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v6, "NT"

    const/16 v7, 0xb5

    const-string v8, "Neutral Zone"

    const-string v9, "NTZ"

    invoke-direct/range {v5 .. v11}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v5, Lcom/stripe/currency/CountryCode;->NT:Lcom/stripe/currency/CountryCode;

    .line 1403
    new-instance v6, Lcom/stripe/currency/CountryCode;

    const/16 v11, 0x23a

    sget-object v12, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v7, "NU"

    const/16 v8, 0xb6

    const-string v9, "Niue"

    const-string v10, "NIU"

    invoke-direct/range {v6 .. v12}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v6, Lcom/stripe/currency/CountryCode;->NU:Lcom/stripe/currency/CountryCode;

    .line 1410
    new-instance v7, Lcom/stripe/currency/CountryCode;

    const/16 v12, 0x22a

    sget-object v13, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v8, "NZ"

    const/16 v9, 0xb7

    const-string v10, "New Zealand"

    const-string v11, "NZL"

    invoke-direct/range {v7 .. v13}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v7, Lcom/stripe/currency/CountryCode;->NZ:Lcom/stripe/currency/CountryCode;

    .line 1417
    new-instance v0, Lcom/stripe/currency/CountryCode;

    const/16 v5, 0x200

    sget-object v6, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v1, "OM"

    const/16 v2, 0xb8

    const-string v3, "Oman"

    const-string v4, "OMN"

    invoke-direct/range {v0 .. v6}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v0, Lcom/stripe/currency/CountryCode;->OM:Lcom/stripe/currency/CountryCode;

    .line 1424
    new-instance v1, Lcom/stripe/currency/CountryCode;

    const/16 v6, 0x24f

    sget-object v7, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v2, "PA"

    const/16 v3, 0xb9

    const-string v4, "Panama"

    const-string v5, "PAN"

    invoke-direct/range {v1 .. v7}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v1, Lcom/stripe/currency/CountryCode;->PA:Lcom/stripe/currency/CountryCode;

    .line 1431
    new-instance v2, Lcom/stripe/currency/CountryCode;

    const/16 v7, 0x25c

    sget-object v8, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v3, "PE"

    const/16 v4, 0xba

    const-string v5, "Peru"

    const-string v6, "PER"

    invoke-direct/range {v2 .. v8}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v2, Lcom/stripe/currency/CountryCode;->PE:Lcom/stripe/currency/CountryCode;

    .line 1438
    new-instance v3, Lcom/stripe/currency/CountryCode;

    const/16 v8, 0x102

    sget-object v9, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v4, "PF"

    const/16 v5, 0xbb

    const-string v6, "French Polynesia"

    const-string v7, "PYF"

    invoke-direct/range {v3 .. v9}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v3, Lcom/stripe/currency/CountryCode;->PF:Lcom/stripe/currency/CountryCode;

    .line 1445
    new-instance v4, Lcom/stripe/currency/CountryCode;

    const/16 v9, 0x256

    sget-object v10, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v5, "PG"

    const/16 v6, 0xbc

    const-string v7, "Papua New Guinea"

    const-string v8, "PNG"

    invoke-direct/range {v4 .. v10}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v4, Lcom/stripe/currency/CountryCode;->PG:Lcom/stripe/currency/CountryCode;

    .line 1452
    new-instance v5, Lcom/stripe/currency/CountryCode;

    const/16 v10, 0x260

    sget-object v11, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v6, "PH"

    const/16 v7, 0xbd

    const-string v8, "Philippines"

    const-string v9, "PHL"

    invoke-direct/range {v5 .. v11}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v5, Lcom/stripe/currency/CountryCode;->PH:Lcom/stripe/currency/CountryCode;

    .line 1459
    new-instance v6, Lcom/stripe/currency/CountryCode;

    const/16 v11, 0x24a

    sget-object v12, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v7, "PK"

    const/16 v8, 0xbe

    const-string v9, "Pakistan"

    const-string v10, "PAK"

    invoke-direct/range {v6 .. v12}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v6, Lcom/stripe/currency/CountryCode;->PK:Lcom/stripe/currency/CountryCode;

    .line 1466
    new-instance v7, Lcom/stripe/currency/CountryCode;

    const/16 v12, 0x268

    sget-object v13, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v8, "PL"

    const/16 v9, 0xbf

    const-string v10, "Poland"

    const-string v11, "POL"

    invoke-direct/range {v7 .. v13}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v7, Lcom/stripe/currency/CountryCode;->PL:Lcom/stripe/currency/CountryCode;

    .line 1473
    new-instance v0, Lcom/stripe/currency/CountryCode;

    const/16 v5, 0x29a

    sget-object v6, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v1, "PM"

    const/16 v2, 0xc0

    const-string v3, "Saint Pierre and Miquelon"

    const-string v4, "SPM"

    invoke-direct/range {v0 .. v6}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v0, Lcom/stripe/currency/CountryCode;->PM:Lcom/stripe/currency/CountryCode;

    .line 1480
    new-instance v1, Lcom/stripe/currency/CountryCode;

    const/16 v6, 0x264

    sget-object v7, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v2, "PN"

    const/16 v3, 0xc1

    const-string v4, "Pitcairn"

    const-string v5, "PCN"

    invoke-direct/range {v1 .. v7}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v1, Lcom/stripe/currency/CountryCode;->PN:Lcom/stripe/currency/CountryCode;

    .line 1487
    new-instance v2, Lcom/stripe/currency/CountryCode;

    const/16 v7, 0x276

    sget-object v8, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v3, "PR"

    const/16 v4, 0xc2

    const-string v5, "Puerto Rico"

    const-string v6, "PRI"

    invoke-direct/range {v2 .. v8}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v2, Lcom/stripe/currency/CountryCode;->PR:Lcom/stripe/currency/CountryCode;

    .line 1494
    new-instance v3, Lcom/stripe/currency/CountryCode;

    const/16 v8, 0x113

    sget-object v9, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v4, "PS"

    const/16 v5, 0xc3

    const-string v6, "Palestine, State of"

    const-string v7, "PSE"

    invoke-direct/range {v3 .. v9}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v3, Lcom/stripe/currency/CountryCode;->PS:Lcom/stripe/currency/CountryCode;

    .line 1501
    new-instance v4, Lcom/stripe/currency/CountryCode;

    const/16 v9, 0x26c

    sget-object v10, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v5, "PT"

    const/16 v6, 0xc4

    const-string v7, "Portugal"

    const-string v8, "PRT"

    invoke-direct/range {v4 .. v10}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v4, Lcom/stripe/currency/CountryCode;->PT:Lcom/stripe/currency/CountryCode;

    .line 1508
    new-instance v5, Lcom/stripe/currency/CountryCode;

    const/16 v10, 0x249

    sget-object v11, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v6, "PW"

    const/16 v7, 0xc5

    const-string v8, "Palau"

    const-string v9, "PLW"

    invoke-direct/range {v5 .. v11}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v5, Lcom/stripe/currency/CountryCode;->PW:Lcom/stripe/currency/CountryCode;

    .line 1515
    new-instance v6, Lcom/stripe/currency/CountryCode;

    const/16 v11, 0x258

    sget-object v12, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v7, "PY"

    const/16 v8, 0xc6

    const-string v9, "Paraguay"

    const-string v10, "PRY"

    invoke-direct/range {v6 .. v12}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v6, Lcom/stripe/currency/CountryCode;->PY:Lcom/stripe/currency/CountryCode;

    .line 1522
    new-instance v7, Lcom/stripe/currency/CountryCode;

    const/16 v12, 0x27a

    sget-object v13, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v8, "QA"

    const/16 v9, 0xc7

    const-string v10, "Qatar"

    const-string v11, "QAT"

    invoke-direct/range {v7 .. v13}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v7, Lcom/stripe/currency/CountryCode;->QA:Lcom/stripe/currency/CountryCode;

    .line 1529
    new-instance v0, Lcom/stripe/currency/CountryCode;

    const/16 v5, 0x27e

    sget-object v6, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v1, "RE"

    const/16 v2, 0xc8

    const-string v3, "R\u00e9union"

    const-string v4, "REU"

    invoke-direct/range {v0 .. v6}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v0, Lcom/stripe/currency/CountryCode;->RE:Lcom/stripe/currency/CountryCode;

    .line 1536
    new-instance v1, Lcom/stripe/currency/CountryCode;

    const/16 v6, 0x282

    sget-object v7, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v2, "RO"

    const/16 v3, 0xc9

    const-string v4, "Romania"

    const-string v5, "ROU"

    invoke-direct/range {v1 .. v7}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v1, Lcom/stripe/currency/CountryCode;->RO:Lcom/stripe/currency/CountryCode;

    .line 1543
    new-instance v2, Lcom/stripe/currency/CountryCode;

    const/16 v7, 0x2b0

    sget-object v8, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v3, "RS"

    const/16 v4, 0xca

    const-string v5, "Serbia"

    const-string v6, "SRB"

    invoke-direct/range {v2 .. v8}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v2, Lcom/stripe/currency/CountryCode;->RS:Lcom/stripe/currency/CountryCode;

    .line 1550
    new-instance v3, Lcom/stripe/currency/CountryCode;

    const/16 v8, 0x283

    sget-object v9, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v4, "RU"

    const/16 v5, 0xcb

    const-string v6, "Russian Federation"

    const-string v7, "RUS"

    invoke-direct/range {v3 .. v9}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v3, Lcom/stripe/currency/CountryCode;->RU:Lcom/stripe/currency/CountryCode;

    .line 1557
    new-instance v4, Lcom/stripe/currency/CountryCode;

    const/16 v9, 0x286

    sget-object v10, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v5, "RW"

    const/16 v6, 0xcc

    const-string v7, "Rwanda"

    const-string v8, "RWA"

    invoke-direct/range {v4 .. v10}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v4, Lcom/stripe/currency/CountryCode;->RW:Lcom/stripe/currency/CountryCode;

    .line 1564
    new-instance v5, Lcom/stripe/currency/CountryCode;

    const/16 v10, 0x2aa

    sget-object v11, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v6, "SA"

    const/16 v7, 0xcd

    const-string v8, "Saudi Arabia"

    const-string v9, "SAU"

    invoke-direct/range {v5 .. v11}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v5, Lcom/stripe/currency/CountryCode;->SA:Lcom/stripe/currency/CountryCode;

    .line 1571
    new-instance v6, Lcom/stripe/currency/CountryCode;

    const/16 v11, 0x5a

    sget-object v12, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v7, "SB"

    const/16 v8, 0xce

    const-string v9, "Solomon Islands"

    const-string v10, "SLB"

    invoke-direct/range {v6 .. v12}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v6, Lcom/stripe/currency/CountryCode;->SB:Lcom/stripe/currency/CountryCode;

    .line 1578
    new-instance v7, Lcom/stripe/currency/CountryCode;

    const/16 v12, 0x2b2

    sget-object v13, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v8, "SC"

    const/16 v9, 0xcf

    const-string v10, "Seychelles"

    const-string v11, "SYC"

    invoke-direct/range {v7 .. v13}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v7, Lcom/stripe/currency/CountryCode;->SC:Lcom/stripe/currency/CountryCode;

    .line 1585
    new-instance v0, Lcom/stripe/currency/CountryCode;

    const/16 v5, 0x2d9

    sget-object v6, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v1, "SD"

    const/16 v2, 0xd0

    const-string v3, "Sudan"

    const-string v4, "SDN"

    invoke-direct/range {v0 .. v6}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v0, Lcom/stripe/currency/CountryCode;->SD:Lcom/stripe/currency/CountryCode;

    .line 1592
    new-instance v1, Lcom/stripe/currency/CountryCode;

    const/16 v6, 0x2f0

    sget-object v7, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v2, "SE"

    const/16 v3, 0xd1

    const-string v4, "Sweden"

    const-string v5, "SWE"

    invoke-direct/range {v1 .. v7}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v1, Lcom/stripe/currency/CountryCode;->SE:Lcom/stripe/currency/CountryCode;

    .line 1601
    new-instance v2, Lcom/stripe/currency/CountryCode;

    const/16 v7, 0xf6

    sget-object v8, Lcom/stripe/currency/CountryCode$Assignment;->TRANSITIONALLY_RESERVED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v3, "SF"

    const/16 v4, 0xd2

    const-string v5, "Finland"

    const-string v6, "FIN"

    invoke-direct/range {v2 .. v8}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v2, Lcom/stripe/currency/CountryCode;->SF:Lcom/stripe/currency/CountryCode;

    .line 1608
    new-instance v3, Lcom/stripe/currency/CountryCode;

    const/16 v8, 0x2be

    sget-object v9, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v4, "SG"

    const/16 v5, 0xd3

    const-string v6, "Singapore"

    const-string v7, "SGP"

    invoke-direct/range {v3 .. v9}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v3, Lcom/stripe/currency/CountryCode;->SG:Lcom/stripe/currency/CountryCode;

    .line 1615
    new-instance v4, Lcom/stripe/currency/CountryCode;

    const/16 v9, 0x28e

    sget-object v10, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v5, "SH"

    const/16 v6, 0xd4

    const-string v7, "Saint Helena, Ascension and Tristan da Cunha"

    const-string v8, "SHN"

    invoke-direct/range {v4 .. v10}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v4, Lcom/stripe/currency/CountryCode;->SH:Lcom/stripe/currency/CountryCode;

    .line 1622
    new-instance v5, Lcom/stripe/currency/CountryCode;

    const/16 v10, 0x2c1

    sget-object v11, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v6, "SI"

    const/16 v7, 0xd5

    const-string v8, "Slovenia"

    const-string v9, "SVN"

    invoke-direct/range {v5 .. v11}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v5, Lcom/stripe/currency/CountryCode;->SI:Lcom/stripe/currency/CountryCode;

    .line 1629
    new-instance v6, Lcom/stripe/currency/CountryCode;

    const/16 v11, 0x2e8

    sget-object v12, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v7, "SJ"

    const/16 v8, 0xd6

    const-string v9, "Svalbard and Jan Mayen"

    const-string v10, "SJM"

    invoke-direct/range {v6 .. v12}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v6, Lcom/stripe/currency/CountryCode;->SJ:Lcom/stripe/currency/CountryCode;

    .line 1636
    new-instance v7, Lcom/stripe/currency/CountryCode;

    const/16 v12, 0x2bf

    sget-object v13, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v8, "SK"

    const/16 v9, 0xd7

    const-string v10, "Slovakia"

    const-string v11, "SVK"

    invoke-direct/range {v7 .. v13}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v7, Lcom/stripe/currency/CountryCode;->SK:Lcom/stripe/currency/CountryCode;

    .line 1643
    new-instance v0, Lcom/stripe/currency/CountryCode;

    const/16 v5, 0x2b6

    sget-object v6, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v1, "SL"

    const/16 v2, 0xd8

    const-string v3, "Sierra Leone"

    const-string v4, "SLE"

    invoke-direct/range {v0 .. v6}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v0, Lcom/stripe/currency/CountryCode;->SL:Lcom/stripe/currency/CountryCode;

    .line 1650
    new-instance v1, Lcom/stripe/currency/CountryCode;

    const/16 v6, 0x2a2

    sget-object v7, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v2, "SM"

    const/16 v3, 0xd9

    const-string v4, "San Marino"

    const-string v5, "SMR"

    invoke-direct/range {v1 .. v7}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v1, Lcom/stripe/currency/CountryCode;->SM:Lcom/stripe/currency/CountryCode;

    .line 1657
    new-instance v2, Lcom/stripe/currency/CountryCode;

    const/16 v7, 0x2ae

    sget-object v8, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v3, "SN"

    const/16 v4, 0xda

    const-string v5, "Senegal"

    const-string v6, "SEN"

    invoke-direct/range {v2 .. v8}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v2, Lcom/stripe/currency/CountryCode;->SN:Lcom/stripe/currency/CountryCode;

    .line 1664
    new-instance v3, Lcom/stripe/currency/CountryCode;

    const/16 v8, 0x2c2

    sget-object v9, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v4, "SO"

    const/16 v5, 0xdb

    const-string v6, "Somalia"

    const-string v7, "SOM"

    invoke-direct/range {v3 .. v9}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v3, Lcom/stripe/currency/CountryCode;->SO:Lcom/stripe/currency/CountryCode;

    .line 1671
    new-instance v4, Lcom/stripe/currency/CountryCode;

    const/16 v9, 0x2e4

    sget-object v10, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v5, "SR"

    const/16 v6, 0xdc

    const-string v7, "Suriname"

    const-string v8, "SUR"

    invoke-direct/range {v4 .. v10}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v4, Lcom/stripe/currency/CountryCode;->SR:Lcom/stripe/currency/CountryCode;

    .line 1678
    new-instance v5, Lcom/stripe/currency/CountryCode;

    const/16 v10, 0x2d8

    sget-object v11, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v6, "SS"

    const/16 v7, 0xdd

    const-string v8, "South Sudan"

    const-string v9, "SSD"

    invoke-direct/range {v5 .. v11}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v5, Lcom/stripe/currency/CountryCode;->SS:Lcom/stripe/currency/CountryCode;

    .line 1685
    new-instance v6, Lcom/stripe/currency/CountryCode;

    const/16 v11, 0x2a6

    sget-object v12, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v7, "ST"

    const/16 v8, 0xde

    const-string v9, "Sao Tome and Principe"

    const-string v10, "STP"

    invoke-direct/range {v6 .. v12}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v6, Lcom/stripe/currency/CountryCode;->ST:Lcom/stripe/currency/CountryCode;

    .line 1692
    new-instance v7, Lcom/stripe/currency/CountryCode;

    const/16 v12, 0x32a

    sget-object v13, Lcom/stripe/currency/CountryCode$Assignment;->EXCEPTIONALLY_RESERVED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v8, "SU"

    const/16 v9, 0xdf

    const-string v10, "USSR"

    const-string v11, "SUN"

    invoke-direct/range {v7 .. v13}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v7, Lcom/stripe/currency/CountryCode;->SU:Lcom/stripe/currency/CountryCode;

    .line 1699
    new-instance v0, Lcom/stripe/currency/CountryCode;

    const/16 v5, 0xde

    sget-object v6, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v1, "SV"

    const/16 v2, 0xe0

    const-string v3, "El Salvador"

    const-string v4, "SLV"

    invoke-direct/range {v0 .. v6}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v0, Lcom/stripe/currency/CountryCode;->SV:Lcom/stripe/currency/CountryCode;

    .line 1706
    new-instance v1, Lcom/stripe/currency/CountryCode;

    const/16 v6, 0x216

    sget-object v7, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v2, "SX"

    const/16 v3, 0xe1

    const-string v4, "Sint Maarten (Dutch part)"

    const-string v5, "SXM"

    invoke-direct/range {v1 .. v7}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v1, Lcom/stripe/currency/CountryCode;->SX:Lcom/stripe/currency/CountryCode;

    .line 1713
    new-instance v2, Lcom/stripe/currency/CountryCode;

    const/16 v7, 0x2f8

    sget-object v8, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v3, "SY"

    const/16 v4, 0xe2

    const-string v5, "Syrian Arab Republic"

    const-string v6, "SYR"

    invoke-direct/range {v2 .. v8}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v2, Lcom/stripe/currency/CountryCode;->SY:Lcom/stripe/currency/CountryCode;

    .line 1720
    new-instance v3, Lcom/stripe/currency/CountryCode;

    const/16 v8, 0x2ec

    sget-object v9, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v4, "SZ"

    const/16 v5, 0xe3

    const-string v6, "Eswatini"

    const-string v7, "SWZ"

    invoke-direct/range {v3 .. v9}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v3, Lcom/stripe/currency/CountryCode;->SZ:Lcom/stripe/currency/CountryCode;

    .line 1727
    new-instance v4, Lcom/stripe/currency/CountryCode;

    const/4 v9, -0x1

    sget-object v10, Lcom/stripe/currency/CountryCode$Assignment;->EXCEPTIONALLY_RESERVED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v5, "TA"

    const/16 v6, 0xe4

    const-string v7, "Tristan da Cunha"

    const-string v8, "TAA"

    invoke-direct/range {v4 .. v10}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v4, Lcom/stripe/currency/CountryCode;->TA:Lcom/stripe/currency/CountryCode;

    .line 1734
    new-instance v5, Lcom/stripe/currency/CountryCode;

    const/16 v10, 0x31c

    sget-object v11, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v6, "TC"

    const/16 v7, 0xe5

    const-string v8, "Turks and Caicos Islands"

    const-string v9, "TCA"

    invoke-direct/range {v5 .. v11}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v5, Lcom/stripe/currency/CountryCode;->TC:Lcom/stripe/currency/CountryCode;

    .line 1741
    new-instance v6, Lcom/stripe/currency/CountryCode;

    const/16 v11, 0x94

    sget-object v12, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v7, "TD"

    const/16 v8, 0xe6

    const-string v9, "Chad"

    const-string v10, "TCD"

    invoke-direct/range {v6 .. v12}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v6, Lcom/stripe/currency/CountryCode;->TD:Lcom/stripe/currency/CountryCode;

    .line 1748
    new-instance v7, Lcom/stripe/currency/CountryCode;

    const/16 v12, 0x104

    sget-object v13, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v8, "TF"

    const/16 v9, 0xe7

    const-string v10, "French Southern Territories"

    const-string v11, "ATF"

    invoke-direct/range {v7 .. v13}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v7, Lcom/stripe/currency/CountryCode;->TF:Lcom/stripe/currency/CountryCode;

    .line 1755
    new-instance v0, Lcom/stripe/currency/CountryCode;

    const/16 v5, 0x300

    sget-object v6, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v1, "TG"

    const/16 v2, 0xe8

    const-string v3, "Togo"

    const-string v4, "TGO"

    invoke-direct/range {v0 .. v6}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v0, Lcom/stripe/currency/CountryCode;->TG:Lcom/stripe/currency/CountryCode;

    .line 1762
    new-instance v1, Lcom/stripe/currency/CountryCode;

    const/16 v6, 0x2fc

    sget-object v7, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v2, "TH"

    const/16 v3, 0xe9

    const-string v4, "Thailand"

    const-string v5, "THA"

    invoke-direct/range {v1 .. v7}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v1, Lcom/stripe/currency/CountryCode;->TH:Lcom/stripe/currency/CountryCode;

    .line 1769
    new-instance v2, Lcom/stripe/currency/CountryCode;

    const/16 v7, 0x2fa

    sget-object v8, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v3, "TJ"

    const/16 v4, 0xea

    const-string v5, "Tajikistan"

    const-string v6, "TJK"

    invoke-direct/range {v2 .. v8}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v2, Lcom/stripe/currency/CountryCode;->TJ:Lcom/stripe/currency/CountryCode;

    .line 1776
    new-instance v3, Lcom/stripe/currency/CountryCode;

    const/16 v8, 0x304

    sget-object v9, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v4, "TK"

    const/16 v5, 0xeb

    const-string v6, "Tokelau"

    const-string v7, "TKL"

    invoke-direct/range {v3 .. v9}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v3, Lcom/stripe/currency/CountryCode;->TK:Lcom/stripe/currency/CountryCode;

    .line 1785
    new-instance v4, Lcom/stripe/currency/CountryCode;

    const/16 v9, 0x272

    sget-object v10, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v5, "TL"

    const/16 v6, 0xec

    const-string v7, "Timor-Leste"

    const-string v8, "TLS"

    invoke-direct/range {v4 .. v10}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v4, Lcom/stripe/currency/CountryCode;->TL:Lcom/stripe/currency/CountryCode;

    .line 1792
    new-instance v5, Lcom/stripe/currency/CountryCode;

    const/16 v10, 0x31b

    sget-object v11, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v6, "TM"

    const/16 v7, 0xed

    const-string v8, "Turkmenistan"

    const-string v9, "TKM"

    invoke-direct/range {v5 .. v11}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v5, Lcom/stripe/currency/CountryCode;->TM:Lcom/stripe/currency/CountryCode;

    .line 1799
    new-instance v6, Lcom/stripe/currency/CountryCode;

    const/16 v11, 0x314

    sget-object v12, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v7, "TN"

    const/16 v8, 0xee

    const-string v9, "Tunisia"

    const-string v10, "TUN"

    invoke-direct/range {v6 .. v12}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v6, Lcom/stripe/currency/CountryCode;->TN:Lcom/stripe/currency/CountryCode;

    .line 1806
    new-instance v7, Lcom/stripe/currency/CountryCode;

    const/16 v12, 0x308

    sget-object v13, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v8, "TO"

    const/16 v9, 0xef

    const-string v10, "Tonga"

    const-string v11, "TON"

    invoke-direct/range {v7 .. v13}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v7, Lcom/stripe/currency/CountryCode;->TO:Lcom/stripe/currency/CountryCode;

    .line 1813
    new-instance v0, Lcom/stripe/currency/CountryCode;

    const/16 v5, 0x272

    sget-object v6, Lcom/stripe/currency/CountryCode$Assignment;->TRANSITIONALLY_RESERVED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v1, "TP"

    const/16 v2, 0xf0

    const-string v3, "East Timor"

    const-string v4, "TMP"

    invoke-direct/range {v0 .. v6}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v0, Lcom/stripe/currency/CountryCode;->TP:Lcom/stripe/currency/CountryCode;

    .line 1820
    new-instance v1, Lcom/stripe/currency/CountryCode;

    const/16 v6, 0x318

    sget-object v7, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v2, "TR"

    const/16 v3, 0xf1

    const-string v4, "Turkey"

    const-string v5, "TUR"

    invoke-direct/range {v1 .. v7}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v1, Lcom/stripe/currency/CountryCode;->TR:Lcom/stripe/currency/CountryCode;

    .line 1827
    new-instance v2, Lcom/stripe/currency/CountryCode;

    const/16 v7, 0x30c

    sget-object v8, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v3, "TT"

    const/16 v4, 0xf2

    const-string v5, "Trinidad and Tobago"

    const-string v6, "TTO"

    invoke-direct/range {v2 .. v8}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v2, Lcom/stripe/currency/CountryCode;->TT:Lcom/stripe/currency/CountryCode;

    .line 1834
    new-instance v3, Lcom/stripe/currency/CountryCode;

    const/16 v8, 0x31e

    sget-object v9, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v4, "TV"

    const/16 v5, 0xf3

    const-string v6, "Tuvalu"

    const-string v7, "TUV"

    invoke-direct/range {v3 .. v9}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v3, Lcom/stripe/currency/CountryCode;->TV:Lcom/stripe/currency/CountryCode;

    .line 1841
    new-instance v4, Lcom/stripe/currency/CountryCode;

    const/16 v9, 0x9e

    sget-object v10, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v5, "TW"

    const/16 v6, 0xf4

    const-string v7, "Taiwan, Province of China"

    const-string v8, "TWN"

    invoke-direct/range {v4 .. v10}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v4, Lcom/stripe/currency/CountryCode;->TW:Lcom/stripe/currency/CountryCode;

    .line 1848
    new-instance v5, Lcom/stripe/currency/CountryCode;

    const/16 v10, 0x342

    sget-object v11, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v6, "TZ"

    const/16 v7, 0xf5

    const-string v8, "Tanzania, United Republic of"

    const-string v9, "TZA"

    invoke-direct/range {v5 .. v11}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v5, Lcom/stripe/currency/CountryCode;->TZ:Lcom/stripe/currency/CountryCode;

    .line 1855
    new-instance v6, Lcom/stripe/currency/CountryCode;

    const/16 v11, 0x324

    sget-object v12, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v7, "UA"

    const/16 v8, 0xf6

    const-string v9, "Ukraine"

    const-string v10, "UKR"

    invoke-direct/range {v6 .. v12}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v6, Lcom/stripe/currency/CountryCode;->UA:Lcom/stripe/currency/CountryCode;

    .line 1862
    new-instance v7, Lcom/stripe/currency/CountryCode;

    const/16 v12, 0x320

    sget-object v13, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v8, "UG"

    const/16 v9, 0xf7

    const-string v10, "Uganda"

    const-string v11, "UGA"

    invoke-direct/range {v7 .. v13}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v7, Lcom/stripe/currency/CountryCode;->UG:Lcom/stripe/currency/CountryCode;

    .line 1871
    new-instance v0, Lcom/stripe/currency/CountryCode;

    const/16 v5, 0x33a

    sget-object v6, Lcom/stripe/currency/CountryCode$Assignment;->EXCEPTIONALLY_RESERVED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v1, "UK"

    const/16 v2, 0xf8

    const-string v3, "United Kingdom"

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v0, Lcom/stripe/currency/CountryCode;->UK:Lcom/stripe/currency/CountryCode;

    .line 1878
    new-instance v1, Lcom/stripe/currency/CountryCode;

    const/16 v6, 0x245

    sget-object v7, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v2, "UM"

    const/16 v3, 0xf9

    const-string v4, "United States Minor Outlying Islands"

    const-string v5, "UMI"

    invoke-direct/range {v1 .. v7}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v1, Lcom/stripe/currency/CountryCode;->UM:Lcom/stripe/currency/CountryCode;

    .line 1885
    new-instance v2, Lcom/stripe/currency/CountryCode;

    const/16 v7, 0x348

    sget-object v8, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v3, "US"

    const/16 v4, 0xfa

    const-string v5, "United States"

    const-string v6, "USA"

    invoke-direct/range {v2 .. v8}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v2, Lcom/stripe/currency/CountryCode;->US:Lcom/stripe/currency/CountryCode;

    .line 1892
    new-instance v3, Lcom/stripe/currency/CountryCode;

    const/16 v8, 0x35a

    sget-object v9, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v4, "UY"

    const/16 v5, 0xfb

    const-string v6, "Uruguay"

    const-string v7, "URY"

    invoke-direct/range {v3 .. v9}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v3, Lcom/stripe/currency/CountryCode;->UY:Lcom/stripe/currency/CountryCode;

    .line 1899
    new-instance v4, Lcom/stripe/currency/CountryCode;

    const/16 v9, 0x35c

    sget-object v10, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v5, "UZ"

    const/16 v6, 0xfc

    const-string v7, "Uzbekistan"

    const-string v8, "UZB"

    invoke-direct/range {v4 .. v10}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v4, Lcom/stripe/currency/CountryCode;->UZ:Lcom/stripe/currency/CountryCode;

    .line 1906
    new-instance v5, Lcom/stripe/currency/CountryCode;

    const/16 v10, 0x150

    sget-object v11, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v6, "VA"

    const/16 v7, 0xfd

    const-string v8, "Holy See (Vatican City State)"

    const-string v9, "VAT"

    invoke-direct/range {v5 .. v11}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v5, Lcom/stripe/currency/CountryCode;->VA:Lcom/stripe/currency/CountryCode;

    .line 1913
    new-instance v6, Lcom/stripe/currency/CountryCode;

    const/16 v11, 0x29e

    sget-object v12, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v7, "VC"

    const/16 v8, 0xfe

    const-string v9, "Saint Vincent and the Grenadines"

    const-string v10, "VCT"

    invoke-direct/range {v6 .. v12}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v6, Lcom/stripe/currency/CountryCode;->VC:Lcom/stripe/currency/CountryCode;

    .line 1920
    new-instance v7, Lcom/stripe/currency/CountryCode;

    const/16 v12, 0x35e

    sget-object v13, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v8, "VE"

    const/16 v9, 0xff

    const-string v10, "Venezuela, Bolivarian Republic of"

    const-string v11, "VEN"

    invoke-direct/range {v7 .. v13}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v7, Lcom/stripe/currency/CountryCode;->VE:Lcom/stripe/currency/CountryCode;

    .line 1927
    new-instance v0, Lcom/stripe/currency/CountryCode;

    const/16 v5, 0x5c

    sget-object v6, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v1, "VG"

    const/16 v2, 0x100

    const-string v3, "Virgin Islands, British"

    const-string v4, "VGB"

    invoke-direct/range {v0 .. v6}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v0, Lcom/stripe/currency/CountryCode;->VG:Lcom/stripe/currency/CountryCode;

    .line 1934
    new-instance v1, Lcom/stripe/currency/CountryCode;

    const/16 v6, 0x352

    sget-object v7, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v2, "VI"

    const/16 v3, 0x101

    const-string v4, "Virgin Islands, U.S."

    const-string v5, "VIR"

    invoke-direct/range {v1 .. v7}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v1, Lcom/stripe/currency/CountryCode;->VI:Lcom/stripe/currency/CountryCode;

    .line 1941
    new-instance v2, Lcom/stripe/currency/CountryCode;

    const/16 v7, 0x2c0

    sget-object v8, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v3, "VN"

    const/16 v4, 0x102

    const-string v5, "Viet Nam"

    const-string v6, "VNM"

    invoke-direct/range {v2 .. v8}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v2, Lcom/stripe/currency/CountryCode;->VN:Lcom/stripe/currency/CountryCode;

    .line 1948
    new-instance v3, Lcom/stripe/currency/CountryCode;

    const/16 v8, 0x224

    sget-object v9, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v4, "VU"

    const/16 v5, 0x103

    const-string v6, "Vanuatu"

    const-string v7, "VUT"

    invoke-direct/range {v3 .. v9}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v3, Lcom/stripe/currency/CountryCode;->VU:Lcom/stripe/currency/CountryCode;

    .line 1955
    new-instance v4, Lcom/stripe/currency/CountryCode;

    const/16 v9, 0x36c

    sget-object v10, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v5, "WF"

    const/16 v6, 0x104

    const-string v7, "Wallis and Futuna"

    const-string v8, "WLF"

    invoke-direct/range {v4 .. v10}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v4, Lcom/stripe/currency/CountryCode;->WF:Lcom/stripe/currency/CountryCode;

    .line 1962
    new-instance v5, Lcom/stripe/currency/CountryCode;

    const/16 v10, 0x372

    sget-object v11, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v6, "WS"

    const/16 v7, 0x105

    const-string v8, "Samoa"

    const-string v9, "WSM"

    invoke-direct/range {v5 .. v11}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v5, Lcom/stripe/currency/CountryCode;->WS:Lcom/stripe/currency/CountryCode;

    .line 1969
    new-instance v6, Lcom/stripe/currency/CountryCode;

    const/4 v11, -0x1

    sget-object v12, Lcom/stripe/currency/CountryCode$Assignment;->USER_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v7, "XI"

    const/16 v8, 0x106

    const-string v9, "Northern Ireland"

    const-string v10, "XXI"

    invoke-direct/range {v6 .. v12}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v6, Lcom/stripe/currency/CountryCode;->XI:Lcom/stripe/currency/CountryCode;

    .line 1976
    new-instance v7, Lcom/stripe/currency/CountryCode;

    const/4 v12, -0x1

    sget-object v13, Lcom/stripe/currency/CountryCode$Assignment;->USER_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v8, "XU"

    const/16 v9, 0x107

    const-string v10, "United Kingdom (excluding Northern Ireland)"

    const-string v11, "XXU"

    invoke-direct/range {v7 .. v13}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v7, Lcom/stripe/currency/CountryCode;->XU:Lcom/stripe/currency/CountryCode;

    .line 1983
    new-instance v0, Lcom/stripe/currency/CountryCode;

    const/4 v5, -0x1

    sget-object v6, Lcom/stripe/currency/CountryCode$Assignment;->USER_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v1, "XK"

    const/16 v2, 0x108

    const-string v3, "Kosovo, Republic of"

    const-string v4, "XKX"

    invoke-direct/range {v0 .. v6}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v0, Lcom/stripe/currency/CountryCode;->XK:Lcom/stripe/currency/CountryCode;

    .line 1990
    new-instance v1, Lcom/stripe/currency/CountryCode;

    const/16 v6, 0x377

    sget-object v7, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v2, "YE"

    const/16 v3, 0x109

    const-string v4, "Yemen"

    const-string v5, "YEM"

    invoke-direct/range {v1 .. v7}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v1, Lcom/stripe/currency/CountryCode;->YE:Lcom/stripe/currency/CountryCode;

    .line 1997
    new-instance v2, Lcom/stripe/currency/CountryCode;

    const/16 v7, 0xaf

    sget-object v8, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v3, "YT"

    const/16 v4, 0x10a

    const-string v5, "Mayotte"

    const-string v6, "MYT"

    invoke-direct/range {v2 .. v8}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v2, Lcom/stripe/currency/CountryCode;->YT:Lcom/stripe/currency/CountryCode;

    .line 2004
    new-instance v3, Lcom/stripe/currency/CountryCode;

    const/16 v8, 0x37a

    sget-object v9, Lcom/stripe/currency/CountryCode$Assignment;->TRANSITIONALLY_RESERVED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v4, "YU"

    const/16 v5, 0x10b

    const-string v6, "Yugoslavia"

    const-string v7, "YUG"

    invoke-direct/range {v3 .. v9}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v3, Lcom/stripe/currency/CountryCode;->YU:Lcom/stripe/currency/CountryCode;

    .line 2011
    new-instance v4, Lcom/stripe/currency/CountryCode;

    const/16 v9, 0x2c6

    sget-object v10, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v5, "ZA"

    const/16 v6, 0x10c

    const-string v7, "South Africa"

    const-string v8, "ZAF"

    invoke-direct/range {v4 .. v10}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v4, Lcom/stripe/currency/CountryCode;->ZA:Lcom/stripe/currency/CountryCode;

    .line 2018
    new-instance v5, Lcom/stripe/currency/CountryCode;

    const/16 v10, 0x37e

    sget-object v11, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v6, "ZM"

    const/16 v7, 0x10d

    const-string v8, "Zambia"

    const-string v9, "ZMB"

    invoke-direct/range {v5 .. v11}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v5, Lcom/stripe/currency/CountryCode;->ZM:Lcom/stripe/currency/CountryCode;

    .line 2027
    new-instance v6, Lcom/stripe/currency/CountryCode;

    const/16 v11, 0xb4

    sget-object v12, Lcom/stripe/currency/CountryCode$Assignment;->TRANSITIONALLY_RESERVED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v7, "ZR"

    const/16 v8, 0x10e

    const-string v9, "Zaire"

    const-string v10, "ZAR"

    invoke-direct/range {v6 .. v12}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v6, Lcom/stripe/currency/CountryCode;->ZR:Lcom/stripe/currency/CountryCode;

    .line 2034
    new-instance v7, Lcom/stripe/currency/CountryCode;

    const/16 v12, 0x2cc

    sget-object v13, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    const-string v8, "ZW"

    const/16 v9, 0x10f

    const-string v10, "Zimbabwe"

    const-string v11, "ZWE"

    invoke-direct/range {v7 .. v13}, Lcom/stripe/currency/CountryCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V

    sput-object v7, Lcom/stripe/currency/CountryCode;->ZW:Lcom/stripe/currency/CountryCode;

    invoke-static {}, Lcom/stripe/currency/CountryCode;->$values()[Lcom/stripe/currency/CountryCode;

    move-result-object v0

    sput-object v0, Lcom/stripe/currency/CountryCode;->$VALUES:[Lcom/stripe/currency/CountryCode;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/stripe/currency/CountryCode;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/stripe/currency/CountryCode$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/currency/CountryCode$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/currency/CountryCode;->Companion:Lcom/stripe/currency/CountryCode$Companion;

    .line 2093
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    sput-object v0, Lcom/stripe/currency/CountryCode;->alpha3Map:Ljava/util/Map;

    .line 2094
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    sput-object v0, Lcom/stripe/currency/CountryCode;->alpha4Map:Ljava/util/Map;

    .line 2095
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    sput-object v0, Lcom/stripe/currency/CountryCode;->numericMap:Ljava/util/Map;

    .line 2098
    invoke-static {}, Lcom/stripe/currency/CountryCode;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/enums/EnumEntries;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/currency/CountryCode;

    .line 2099
    iget-object v2, v1, Lcom/stripe/currency/CountryCode;->alpha3:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 2100
    sget-object v3, Lcom/stripe/currency/CountryCode;->alpha3Map:Ljava/util/Map;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2103
    :cond_1
    iget v2, v1, Lcom/stripe/currency/CountryCode;->numeric:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 2104
    sget-object v3, Lcom/stripe/currency/CountryCode;->numericMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2109
    :cond_2
    sget-object v0, Lcom/stripe/currency/CountryCode;->alpha3Map:Ljava/util/Map;

    sget-object v1, Lcom/stripe/currency/CountryCode;->FI:Lcom/stripe/currency/CountryCode;

    const-string v2, "FIN"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2112
    sget-object v0, Lcom/stripe/currency/CountryCode;->alpha4Map:Ljava/util/Map;

    const-string v2, "ANHH"

    sget-object v3, Lcom/stripe/currency/CountryCode;->AN:Lcom/stripe/currency/CountryCode;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2113
    const-string v2, "BUMM"

    sget-object v3, Lcom/stripe/currency/CountryCode;->BU:Lcom/stripe/currency/CountryCode;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2114
    const-string v2, "CSXX"

    sget-object v3, Lcom/stripe/currency/CountryCode;->CS:Lcom/stripe/currency/CountryCode;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2115
    const-string v2, "NTHH"

    sget-object v3, Lcom/stripe/currency/CountryCode;->NT:Lcom/stripe/currency/CountryCode;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2116
    const-string v2, "TPTL"

    sget-object v3, Lcom/stripe/currency/CountryCode;->TP:Lcom/stripe/currency/CountryCode;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2117
    const-string v2, "YUCS"

    sget-object v3, Lcom/stripe/currency/CountryCode;->YU:Lcom/stripe/currency/CountryCode;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2118
    const-string v2, "ZRCD"

    sget-object v3, Lcom/stripe/currency/CountryCode;->ZR:Lcom/stripe/currency/CountryCode;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2121
    sget-object v0, Lcom/stripe/currency/CountryCode;->numericMap:Ljava/util/Map;

    const/16 v2, 0x68

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/stripe/currency/CountryCode;->MM:Lcom/stripe/currency/CountryCode;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0xb4

    .line 2124
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/stripe/currency/CountryCode;->CD:Lcom/stripe/currency/CountryCode;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0xf6

    .line 2127
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x33a

    .line 2130
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/stripe/currency/CountryCode;->GB:Lcom/stripe/currency/CountryCode;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x272

    .line 2133
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/stripe/currency/CountryCode;->TL:Lcom/stripe/currency/CountryCode;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x118

    .line 2136
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/stripe/currency/CountryCode;->DE:Lcom/stripe/currency/CountryCode;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/stripe/currency/CountryCode$Assignment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/stripe/currency/CountryCode$Assignment;",
            ")V"
        }
    .end annotation

    .line 80
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 89
    iput-object p3, p0, Lcom/stripe/currency/CountryCode;->countryName:Ljava/lang/String;

    .line 99
    iput-object p4, p0, Lcom/stripe/currency/CountryCode;->alpha3:Ljava/lang/String;

    .line 109
    iput p5, p0, Lcom/stripe/currency/CountryCode;->numeric:I

    .line 2090
    invoke-virtual {p0}, Lcom/stripe/currency/CountryCode;->name()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/currency/CountryCode;->alpha2:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getAlpha3Map$cp()Ljava/util/Map;
    .locals 1

    .line 80
    sget-object v0, Lcom/stripe/currency/CountryCode;->alpha3Map:Ljava/util/Map;

    return-object v0
.end method

.method public static final synthetic access$getAlpha4Map$cp()Ljava/util/Map;
    .locals 1

    .line 80
    sget-object v0, Lcom/stripe/currency/CountryCode;->alpha4Map:Ljava/util/Map;

    return-object v0
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/stripe/currency/CountryCode;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/stripe/currency/CountryCode;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/currency/CountryCode;
    .locals 1

    const-class v0, Lcom/stripe/currency/CountryCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/currency/CountryCode;

    return-object p0
.end method

.method public static values()[Lcom/stripe/currency/CountryCode;
    .locals 1

    sget-object v0, Lcom/stripe/currency/CountryCode;->$VALUES:[Lcom/stripe/currency/CountryCode;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/currency/CountryCode;

    return-object v0
.end method


# virtual methods
.method public final getAlpha2()Ljava/lang/String;
    .locals 1

    .line 2090
    iget-object v0, p0, Lcom/stripe/currency/CountryCode;->alpha2:Ljava/lang/String;

    return-object v0
.end method

.method public final getAlpha3()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/stripe/currency/CountryCode;->alpha3:Ljava/lang/String;

    return-object v0
.end method

.method public final getCountryName()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/stripe/currency/CountryCode;->countryName:Ljava/lang/String;

    return-object v0
.end method

.method public final getNumeric()I
    .locals 1

    .line 109
    iget v0, p0, Lcom/stripe/currency/CountryCode;->numeric:I

    return v0
.end method
