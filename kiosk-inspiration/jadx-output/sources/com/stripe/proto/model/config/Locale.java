package com.stripe.proto.model.config;

import com.google.zxing.client.result.ExpandedProductParsedResult;
import com.squareup.wire.EnumAdapter;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireEnum;
import com.sun.jna.platform.linux.XAttr;
import com.sun.jna.platform.win32.WinError;
import com.sun.jna.platform.win32.WinNT;
import com.sun.jna.platform.win32.WinUser;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: Locale.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0017\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0003\b¿\u0001\b\u0086\u0081\u0002\u0018\u0000 Â\u00012\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0002Â\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019j\u0002\b\u001aj\u0002\b\u001bj\u0002\b\u001cj\u0002\b\u001dj\u0002\b\u001ej\u0002\b\u001fj\u0002\b j\u0002\b!j\u0002\b\"j\u0002\b#j\u0002\b$j\u0002\b%j\u0002\b&j\u0002\b'j\u0002\b(j\u0002\b)j\u0002\b*j\u0002\b+j\u0002\b,j\u0002\b-j\u0002\b.j\u0002\b/j\u0002\b0j\u0002\b1j\u0002\b2j\u0002\b3j\u0002\b4j\u0002\b5j\u0002\b6j\u0002\b7j\u0002\b8j\u0002\b9j\u0002\b:j\u0002\b;j\u0002\b<j\u0002\b=j\u0002\b>j\u0002\b?j\u0002\b@j\u0002\bAj\u0002\bBj\u0002\bCj\u0002\bDj\u0002\bEj\u0002\bFj\u0002\bGj\u0002\bHj\u0002\bIj\u0002\bJj\u0002\bKj\u0002\bLj\u0002\bMj\u0002\bNj\u0002\bOj\u0002\bPj\u0002\bQj\u0002\bRj\u0002\bSj\u0002\bTj\u0002\bUj\u0002\bVj\u0002\bWj\u0002\bXj\u0002\bYj\u0002\bZj\u0002\b[j\u0002\b\\j\u0002\b]j\u0002\b^j\u0002\b_j\u0002\b`j\u0002\baj\u0002\bbj\u0002\bcj\u0002\bdj\u0002\bej\u0002\bfj\u0002\bgj\u0002\bhj\u0002\bij\u0002\bjj\u0002\bkj\u0002\blj\u0002\bmj\u0002\bnj\u0002\boj\u0002\bpj\u0002\bqj\u0002\brj\u0002\bsj\u0002\btj\u0002\buj\u0002\bvj\u0002\bwj\u0002\bxj\u0002\byj\u0002\bzj\u0002\b{j\u0002\b|j\u0002\b}j\u0002\b~j\u0002\b\u007fj\u0003\b\u0080\u0001j\u0003\b\u0081\u0001j\u0003\b\u0082\u0001j\u0003\b\u0083\u0001j\u0003\b\u0084\u0001j\u0003\b\u0085\u0001j\u0003\b\u0086\u0001j\u0003\b\u0087\u0001j\u0003\b\u0088\u0001j\u0003\b\u0089\u0001j\u0003\b\u008a\u0001j\u0003\b\u008b\u0001j\u0003\b\u008c\u0001j\u0003\b\u008d\u0001j\u0003\b\u008e\u0001j\u0003\b\u008f\u0001j\u0003\b\u0090\u0001j\u0003\b\u0091\u0001j\u0003\b\u0092\u0001j\u0003\b\u0093\u0001j\u0003\b\u0094\u0001j\u0003\b\u0095\u0001j\u0003\b\u0096\u0001j\u0003\b\u0097\u0001j\u0003\b\u0098\u0001j\u0003\b\u0099\u0001j\u0003\b\u009a\u0001j\u0003\b\u009b\u0001j\u0003\b\u009c\u0001j\u0003\b\u009d\u0001j\u0003\b\u009e\u0001j\u0003\b\u009f\u0001j\u0003\b \u0001j\u0003\b¡\u0001j\u0003\b¢\u0001j\u0003\b£\u0001j\u0003\b¤\u0001j\u0003\b¥\u0001j\u0003\b¦\u0001j\u0003\b§\u0001j\u0003\b¨\u0001j\u0003\b©\u0001j\u0003\bª\u0001j\u0003\b«\u0001j\u0003\b¬\u0001j\u0003\b\u00ad\u0001j\u0003\b®\u0001j\u0003\b¯\u0001j\u0003\b°\u0001j\u0003\b±\u0001j\u0003\b²\u0001j\u0003\b³\u0001j\u0003\b´\u0001j\u0003\bµ\u0001j\u0003\b¶\u0001j\u0003\b·\u0001j\u0003\b¸\u0001j\u0003\b¹\u0001j\u0003\bº\u0001j\u0003\b»\u0001j\u0003\b¼\u0001j\u0003\b½\u0001j\u0003\b¾\u0001j\u0003\b¿\u0001j\u0003\bÀ\u0001j\u0003\bÁ\u0001¨\u0006Ã\u0001"}, d2 = {"Lcom/stripe/proto/model/config/Locale;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "INVALID_LOCALE", "AB", "AA", "AF", "AK", "SQ", "AM", "AR", "AN", "HY", "AS", "AV", "AE", "AY", "AZ", "BM", "BA", "EU", "BE", "BN", "BH", "BI", "BS", "BR", "BG", "MY", "CA", "CH", "CE", "NY", "ZH", "CU", "CV", "KW", "CO", "CR", "HR", "CS", "DA", "DV", "NL", "DZ", "EN", "EO", "ET", "EE", "FO", "FJ", "FI", "FR", "FF", "GD", "GL", "LG", "KA", "DE", "EL", "GN", "GU", "HT", "HA", "HE", "HI", "HO", "HU", "IS", "IO", "IG", "ID", "IA", "IE", "IU", "IK", "GA", "IT", "JA", "JV", "KL", "KN", "KR", "KS", "KK", "KI", "RW", "KY", "KV", ExpandedProductParsedResult.KILOGRAM, "KO", "KJ", "KU", "LO", "LA", "LV", "LI", "LN", "LT", "LU", ExpandedProductParsedResult.POUND, "MK", "MG", "MS", "ML", "NT", "GV", "MI", "MR", "MH", "MN", "NA", "NV", "NG", "NE", "ND", "SE", "NO", "NB", "NN", "OC", "OJ", "OR", "OM", "OS", "PI", "PA", "PS", "FA", "PL", "PT", "QU", "RO", "RM", "RN", "RU", "SM", "SG", "SA", "SC", "SR", "SN", "II", "SD", "SI", "SK", "SL", "SO", "NR", "ST", "ES", "SU", "SW", "SS", "SV", "TL", "TY", "TG", "TA", "TT", "TE", "TH", "BO", "TI", "TO", "TS", "TN", "TR", "TK", "TW", "UG", "UK", "UR", "VE", "VI", "VO", "WA", "CY", "FY", "WO", "XH", "YI", "YO", "ZA", "ZU", "FR_CA", "EN_CA", "EN_GB", "CS_CZ", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class Locale implements WireEnum {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ Locale[] $VALUES;
    public static final Locale AA;
    public static final Locale AB;
    public static final ProtoAdapter<Locale> ADAPTER;
    public static final Locale AE;
    public static final Locale AF;
    public static final Locale AK;
    public static final Locale AM;
    public static final Locale AN;
    public static final Locale AR;
    public static final Locale AS;
    public static final Locale AV;
    public static final Locale AY;
    public static final Locale AZ;
    public static final Locale BA;
    public static final Locale BE;
    public static final Locale BG;
    public static final Locale BH;
    public static final Locale BI;
    public static final Locale BM;
    public static final Locale BN;
    public static final Locale BO;
    public static final Locale BR;
    public static final Locale BS;
    public static final Locale CA;
    public static final Locale CE;
    public static final Locale CH;
    public static final Locale CO;
    public static final Locale CR;
    public static final Locale CS;
    public static final Locale CS_CZ;
    public static final Locale CU;
    public static final Locale CV;
    public static final Locale CY;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;
    public static final Locale DA;
    public static final Locale DE;
    public static final Locale DV;
    public static final Locale DZ;
    public static final Locale EE;
    public static final Locale EL;
    public static final Locale EN;
    public static final Locale EN_CA;
    public static final Locale EN_GB;
    public static final Locale EO;
    public static final Locale ES;
    public static final Locale ET;
    public static final Locale EU;
    public static final Locale FA;
    public static final Locale FF;
    public static final Locale FI;
    public static final Locale FJ;
    public static final Locale FO;
    public static final Locale FR;
    public static final Locale FR_CA;
    public static final Locale FY;
    public static final Locale GA;
    public static final Locale GD;
    public static final Locale GL;
    public static final Locale GN;
    public static final Locale GU;
    public static final Locale GV;
    public static final Locale HA;
    public static final Locale HE;
    public static final Locale HI;
    public static final Locale HO;
    public static final Locale HR;
    public static final Locale HT;
    public static final Locale HU;
    public static final Locale HY;
    public static final Locale IA;
    public static final Locale ID;
    public static final Locale IE;
    public static final Locale IG;
    public static final Locale II;
    public static final Locale IK;
    public static final Locale INVALID_LOCALE;
    public static final Locale IO;
    public static final Locale IS;
    public static final Locale IT;
    public static final Locale IU;
    public static final Locale JA;
    public static final Locale JV;
    public static final Locale KA;
    public static final Locale KG;
    public static final Locale KI;
    public static final Locale KJ;
    public static final Locale KK;
    public static final Locale KL;
    public static final Locale KN;
    public static final Locale KO;
    public static final Locale KR;
    public static final Locale KS;
    public static final Locale KU;
    public static final Locale KV;
    public static final Locale KW;
    public static final Locale KY;
    public static final Locale LA;
    public static final Locale LB;
    public static final Locale LG;
    public static final Locale LI;
    public static final Locale LN;
    public static final Locale LO;
    public static final Locale LT;
    public static final Locale LU;
    public static final Locale LV;
    public static final Locale MG;
    public static final Locale MH;
    public static final Locale MI;
    public static final Locale MK;
    public static final Locale ML;
    public static final Locale MN;
    public static final Locale MR;
    public static final Locale MS;
    public static final Locale MY;
    public static final Locale NA;
    public static final Locale NB;
    public static final Locale ND;
    public static final Locale NE;
    public static final Locale NG;
    public static final Locale NL;
    public static final Locale NN;
    public static final Locale NO;
    public static final Locale NR;
    public static final Locale NT;
    public static final Locale NV;
    public static final Locale NY;
    public static final Locale OC;
    public static final Locale OJ;
    public static final Locale OM;
    public static final Locale OR;
    public static final Locale OS;
    public static final Locale PA;
    public static final Locale PI;
    public static final Locale PL;
    public static final Locale PS;
    public static final Locale PT;
    public static final Locale QU;
    public static final Locale RM;
    public static final Locale RN;
    public static final Locale RO;
    public static final Locale RU;
    public static final Locale RW;
    public static final Locale SA;
    public static final Locale SC;
    public static final Locale SD;
    public static final Locale SE;
    public static final Locale SG;
    public static final Locale SI;
    public static final Locale SK;
    public static final Locale SL;
    public static final Locale SM;
    public static final Locale SN;
    public static final Locale SO;
    public static final Locale SQ;
    public static final Locale SR;
    public static final Locale SS;
    public static final Locale ST;
    public static final Locale SU;
    public static final Locale SV;
    public static final Locale SW;
    public static final Locale TA;
    public static final Locale TE;
    public static final Locale TG;
    public static final Locale TH;
    public static final Locale TI;
    public static final Locale TK;
    public static final Locale TL;
    public static final Locale TN;
    public static final Locale TO;
    public static final Locale TR;
    public static final Locale TS;
    public static final Locale TT;
    public static final Locale TW;
    public static final Locale TY;
    public static final Locale UG;
    public static final Locale UK;
    public static final Locale UR;
    public static final Locale VE;
    public static final Locale VI;
    public static final Locale VO;
    public static final Locale WA;
    public static final Locale WO;
    public static final Locale XH;
    public static final Locale YI;
    public static final Locale YO;
    public static final Locale ZA;
    public static final Locale ZH;
    public static final Locale ZU;
    private final int value;

    private static final /* synthetic */ Locale[] $values() {
        return new Locale[]{INVALID_LOCALE, AB, AA, AF, AK, SQ, AM, AR, AN, HY, AS, AV, AE, AY, AZ, BM, BA, EU, BE, BN, BH, BI, BS, BR, BG, MY, CA, CH, CE, NY, ZH, CU, CV, KW, CO, CR, HR, CS, DA, DV, NL, DZ, EN, EO, ET, EE, FO, FJ, FI, FR, FF, GD, GL, LG, KA, DE, EL, GN, GU, HT, HA, HE, HI, HO, HU, IS, IO, IG, ID, IA, IE, IU, IK, GA, IT, JA, JV, KL, KN, KR, KS, KK, KI, RW, KY, KV, KG, KO, KJ, KU, LO, LA, LV, LI, LN, LT, LU, LB, MK, MG, MS, ML, NT, GV, MI, MR, MH, MN, NA, NV, NG, NE, ND, SE, NO, NB, NN, OC, OJ, OR, OM, OS, PI, PA, PS, FA, PL, PT, QU, RO, RM, RN, RU, SM, SG, SA, SC, SR, SN, II, SD, SI, SK, SL, SO, NR, ST, ES, SU, SW, SS, SV, TL, TY, TG, TA, TT, TE, TH, BO, TI, TO, TS, TN, TR, TK, TW, UG, UK, UR, VE, VI, VO, WA, CY, FY, WO, XH, YI, YO, ZA, ZU, FR_CA, EN_CA, EN_GB, CS_CZ};
    }

    @JvmStatic
    public static final Locale fromValue(int i) {
        return INSTANCE.fromValue(i);
    }

    public static EnumEntries<Locale> getEntries() {
        return $ENTRIES;
    }

    public static Locale valueOf(String str) {
        return (Locale) Enum.valueOf(Locale.class, str);
    }

    public static Locale[] values() {
        return (Locale[]) $VALUES.clone();
    }

    private Locale(String str, int i, int i2) {
        this.value = i2;
    }

    @Override // com.squareup.wire.WireEnum
    public int getValue() {
        return this.value;
    }

    static {
        final Locale locale = new Locale("INVALID_LOCALE", 0, 0);
        INVALID_LOCALE = locale;
        AB = new Locale("AB", 1, 1);
        AA = new Locale("AA", 2, 2);
        AF = new Locale("AF", 3, 3);
        AK = new Locale("AK", 4, 4);
        SQ = new Locale("SQ", 5, 5);
        AM = new Locale("AM", 6, 6);
        AR = new Locale("AR", 7, 7);
        AN = new Locale("AN", 8, 8);
        HY = new Locale("HY", 9, 9);
        AS = new Locale("AS", 10, 10);
        AV = new Locale("AV", 11, 11);
        AE = new Locale("AE", 12, 12);
        AY = new Locale("AY", 13, 13);
        AZ = new Locale("AZ", 14, 14);
        BM = new Locale("BM", 15, 15);
        BA = new Locale("BA", 16, 16);
        EU = new Locale("EU", 17, 17);
        BE = new Locale("BE", 18, 18);
        BN = new Locale("BN", 19, 19);
        BH = new Locale("BH", 20, 20);
        BI = new Locale("BI", 21, 21);
        BS = new Locale("BS", 22, 22);
        BR = new Locale("BR", 23, 23);
        BG = new Locale("BG", 24, 24);
        MY = new Locale("MY", 25, 25);
        CA = new Locale("CA", 26, 26);
        CH = new Locale("CH", 27, 27);
        CE = new Locale("CE", 28, 28);
        NY = new Locale("NY", 29, 29);
        ZH = new Locale("ZH", 30, 30);
        CU = new Locale("CU", 31, 31);
        CV = new Locale("CV", 32, 32);
        KW = new Locale("KW", 33, 33);
        CO = new Locale("CO", 34, 34);
        CR = new Locale("CR", 35, 35);
        HR = new Locale("HR", 36, 36);
        CS = new Locale("CS", 37, 37);
        DA = new Locale("DA", 38, 38);
        DV = new Locale("DV", 39, 39);
        NL = new Locale("NL", 40, 40);
        DZ = new Locale("DZ", 41, 41);
        EN = new Locale("EN", 42, 42);
        EO = new Locale("EO", 43, 43);
        ET = new Locale("ET", 44, 44);
        EE = new Locale("EE", 45, 45);
        FO = new Locale("FO", 46, 46);
        FJ = new Locale("FJ", 47, 47);
        FI = new Locale("FI", 48, 48);
        FR = new Locale("FR", 49, 49);
        FF = new Locale("FF", 50, 50);
        GD = new Locale("GD", 51, 51);
        GL = new Locale("GL", 52, 52);
        LG = new Locale("LG", 53, 53);
        KA = new Locale("KA", 54, 54);
        DE = new Locale("DE", 55, 55);
        EL = new Locale("EL", 56, 56);
        GN = new Locale("GN", 57, 57);
        GU = new Locale("GU", 58, 58);
        HT = new Locale("HT", 59, 59);
        HA = new Locale("HA", 60, 60);
        HE = new Locale("HE", 61, 61);
        HI = new Locale("HI", 62, 63);
        HO = new Locale("HO", 63, 64);
        HU = new Locale("HU", 64, 65);
        IS = new Locale("IS", 65, 66);
        IO = new Locale("IO", 66, 67);
        IG = new Locale("IG", 67, 68);
        ID = new Locale("ID", 68, 69);
        IA = new Locale("IA", 69, 70);
        IE = new Locale("IE", 70, 71);
        IU = new Locale("IU", 71, 72);
        IK = new Locale("IK", 72, 73);
        GA = new Locale("GA", 73, 74);
        IT = new Locale("IT", 74, 75);
        JA = new Locale("JA", 75, 76);
        JV = new Locale("JV", 76, 77);
        KL = new Locale("KL", 77, 78);
        KN = new Locale("KN", 78, 79);
        KR = new Locale("KR", 79, 80);
        KS = new Locale("KS", 80, 81);
        KK = new Locale("KK", 81, 82);
        KI = new Locale("KI", 82, 83);
        RW = new Locale("RW", 83, 84);
        KY = new Locale("KY", 84, 85);
        KV = new Locale("KV", 85, 86);
        KG = new Locale(ExpandedProductParsedResult.KILOGRAM, 86, 87);
        KO = new Locale("KO", 87, 88);
        KJ = new Locale("KJ", 88, 89);
        KU = new Locale("KU", 89, 90);
        LO = new Locale("LO", 90, 91);
        LA = new Locale("LA", 91, 92);
        LV = new Locale("LV", 92, 93);
        LI = new Locale("LI", 93, 94);
        LN = new Locale("LN", 94, 95);
        LT = new Locale("LT", 95, 96);
        LU = new Locale("LU", 96, 97);
        LB = new Locale(ExpandedProductParsedResult.POUND, 97, 98);
        MK = new Locale("MK", 98, 99);
        MG = new Locale("MG", 99, 100);
        MS = new Locale("MS", 100, 101);
        ML = new Locale("ML", 101, 102);
        NT = new Locale("NT", 102, 103);
        GV = new Locale("GV", 103, 104);
        MI = new Locale("MI", 104, WinError.ERROR_SEM_OWNER_DIED);
        MR = new Locale("MR", WinError.ERROR_SEM_OWNER_DIED, WinError.ERROR_SEM_USER_LIMIT);
        MH = new Locale("MH", WinError.ERROR_SEM_USER_LIMIT, WinError.ERROR_DISK_CHANGE);
        MN = new Locale("MN", WinError.ERROR_DISK_CHANGE, 108);
        NA = new Locale("NA", 108, 109);
        NV = new Locale("NV", 109, 110);
        NG = new Locale("NG", 110, WinError.ERROR_BUFFER_OVERFLOW);
        NE = new Locale("NE", WinError.ERROR_BUFFER_OVERFLOW, 112);
        ND = new Locale("ND", 112, WinError.ERROR_NO_MORE_SEARCH_HANDLES);
        SE = new Locale("SE", WinError.ERROR_NO_MORE_SEARCH_HANDLES, WinError.ERROR_INVALID_TARGET_HANDLE);
        NO = new Locale("NO", WinError.ERROR_INVALID_TARGET_HANDLE, 115);
        NB = new Locale("NB", 115, 116);
        NN = new Locale("NN", 116, WinError.ERROR_INVALID_CATEGORY);
        OC = new Locale("OC", WinError.ERROR_INVALID_CATEGORY, WinError.ERROR_INVALID_VERIFY_SWITCH);
        OJ = new Locale("OJ", WinError.ERROR_INVALID_VERIFY_SWITCH, WinError.ERROR_BAD_DRIVER_LEVEL);
        OR = new Locale("OR", WinError.ERROR_BAD_DRIVER_LEVEL, WinError.ERROR_CALL_NOT_IMPLEMENTED);
        OM = new Locale("OM", WinError.ERROR_CALL_NOT_IMPLEMENTED, WinError.ERROR_SEM_TIMEOUT);
        OS = new Locale("OS", WinError.ERROR_SEM_TIMEOUT, 122);
        PI = new Locale("PI", 122, 123);
        PA = new Locale("PA", 123, WinError.ERROR_INVALID_LEVEL);
        PS = new Locale("PS", WinError.ERROR_INVALID_LEVEL, WinError.ERROR_NO_VOLUME_LABEL);
        FA = new Locale("FA", WinError.ERROR_NO_VOLUME_LABEL, 126);
        PL = new Locale("PL", 126, 127);
        PT = new Locale("PT", 127, 128);
        QU = new Locale("QU", 128, 129);
        RO = new Locale("RO", 129, 130);
        RM = new Locale("RM", 130, 131);
        RN = new Locale("RN", 131, WinError.ERROR_SEEK_ON_DEVICE);
        RU = new Locale("RU", WinError.ERROR_SEEK_ON_DEVICE, WinError.ERROR_IS_JOIN_TARGET);
        SM = new Locale("SM", WinError.ERROR_IS_JOIN_TARGET, WinError.ERROR_IS_JOINED);
        SG = new Locale("SG", WinError.ERROR_IS_JOINED, WinError.ERROR_IS_SUBSTED);
        SA = new Locale("SA", WinError.ERROR_IS_SUBSTED, 136);
        SC = new Locale("SC", 136, WinError.ERROR_NOT_SUBSTED);
        SR = new Locale("SR", WinError.ERROR_NOT_SUBSTED, WinError.ERROR_JOIN_TO_JOIN);
        SN = new Locale("SN", WinError.ERROR_JOIN_TO_JOIN, WinError.ERROR_SUBST_TO_SUBST);
        II = new Locale("II", WinError.ERROR_SUBST_TO_SUBST, WinError.ERROR_JOIN_TO_SUBST);
        SD = new Locale("SD", WinError.ERROR_JOIN_TO_SUBST, WinError.ERROR_SUBST_TO_JOIN);
        SI = new Locale("SI", WinError.ERROR_SUBST_TO_JOIN, 142);
        SK = new Locale("SK", 142, WinError.ERROR_SAME_DRIVE);
        SL = new Locale("SL", WinError.ERROR_SAME_DRIVE, WinError.ERROR_DIR_NOT_ROOT);
        SO = new Locale("SO", WinError.ERROR_DIR_NOT_ROOT, WinError.ERROR_DIR_NOT_EMPTY);
        NR = new Locale("NR", WinError.ERROR_DIR_NOT_EMPTY, WinError.ERROR_IS_SUBST_PATH);
        ST = new Locale("ST", WinError.ERROR_IS_SUBST_PATH, WinError.ERROR_IS_JOIN_PATH);
        ES = new Locale("ES", WinError.ERROR_IS_JOIN_PATH, WinError.ERROR_PATH_BUSY);
        SU = new Locale("SU", WinError.ERROR_PATH_BUSY, WinError.ERROR_IS_SUBST_TARGET);
        SW = new Locale("SW", WinError.ERROR_IS_SUBST_TARGET, WinError.ERROR_SYSTEM_TRACE);
        SS = new Locale("SS", WinError.ERROR_SYSTEM_TRACE, WinError.ERROR_INVALID_EVENT_COUNT);
        SV = new Locale("SV", WinError.ERROR_INVALID_EVENT_COUNT, WinError.ERROR_TOO_MANY_MUXWAITERS);
        TL = new Locale("TL", WinError.ERROR_TOO_MANY_MUXWAITERS, WinError.ERROR_INVALID_LIST_FORMAT);
        TY = new Locale("TY", WinError.ERROR_INVALID_LIST_FORMAT, WinError.ERROR_LABEL_TOO_LONG);
        TG = new Locale("TG", WinError.ERROR_LABEL_TOO_LONG, 155);
        TA = new Locale("TA", 155, WinError.ERROR_SIGNAL_REFUSED);
        TT = new Locale("TT", WinError.ERROR_SIGNAL_REFUSED, WinError.ERROR_DISCARDED);
        TE = new Locale("TE", WinError.ERROR_DISCARDED, WinError.ERROR_NOT_LOCKED);
        TH = new Locale("TH", WinError.ERROR_NOT_LOCKED, WinError.ERROR_BAD_THREADID_ADDR);
        BO = new Locale("BO", WinError.ERROR_BAD_THREADID_ADDR, 160);
        TI = new Locale("TI", 160, 161);
        TO = new Locale("TO", 161, 162);
        TS = new Locale("TS", 162, WinUser.VK_RCONTROL);
        TN = new Locale("TN", WinUser.VK_RCONTROL, 164);
        TR = new Locale("TR", 164, WinUser.VK_RMENU);
        TK = new Locale("TK", WinUser.VK_RMENU, 166);
        TW = new Locale("TW", 166, WinError.ERROR_LOCK_FAILED);
        UG = new Locale("UG", WinError.ERROR_LOCK_FAILED, 168);
        UK = new Locale("UK", 168, 169);
        UR = new Locale("UR", 169, WinError.ERROR_BUSY);
        VE = new Locale("VE", WinError.ERROR_BUSY, 171);
        VI = new Locale("VI", 171, 172);
        VO = new Locale("VO", 172, WinError.ERROR_CANCEL_VIOLATION);
        WA = new Locale("WA", WinError.ERROR_CANCEL_VIOLATION, WinError.ERROR_ATOMIC_LOCKS_NOT_SUPPORTED);
        CY = new Locale("CY", WinError.ERROR_ATOMIC_LOCKS_NOT_SUPPORTED, 175);
        FY = new Locale("FY", 175, 176);
        WO = new Locale("WO", 176, 177);
        XH = new Locale("XH", 177, 178);
        YI = new Locale("YI", 178, 179);
        YO = new Locale("YO", 179, WinError.ERROR_INVALID_SEGMENT_NUMBER);
        ZA = new Locale("ZA", WinError.ERROR_INVALID_SEGMENT_NUMBER, 181);
        ZU = new Locale("ZU", 181, WinError.ERROR_INVALID_ORDINAL);
        FR_CA = new Locale("FR_CA", WinError.ERROR_INVALID_ORDINAL, WinError.ERROR_ALREADY_EXISTS);
        EN_CA = new Locale("EN_CA", WinError.ERROR_ALREADY_EXISTS, 184);
        EN_GB = new Locale("EN_GB", 184, 185);
        CS_CZ = new Locale("CS_CZ", 185, WinError.ERROR_INVALID_FLAG_NUMBER);
        Locale[] localeArr$values = $values();
        $VALUES = localeArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(localeArr$values);
        INSTANCE = new Companion(null);
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Locale.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new EnumAdapter<Locale>(orCreateKotlinClass, syntax, locale) { // from class: com.stripe.proto.model.config.Locale$Companion$ADAPTER$1
            {
                Locale locale2 = locale;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.squareup.wire.EnumAdapter
            public Locale fromValue(int value) {
                return Locale.INSTANCE.fromValue(value);
            }
        };
    }

    /* JADX INFO: compiled from: Locale.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/model/config/Locale$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/config/Locale;", "fromValue", "value", "", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final Locale fromValue(int value) {
            switch (value) {
                case 0:
                    return Locale.INVALID_LOCALE;
                case 1:
                    return Locale.AB;
                case 2:
                    return Locale.AA;
                case 3:
                    return Locale.AF;
                case 4:
                    return Locale.AK;
                case 5:
                    return Locale.SQ;
                case 6:
                    return Locale.AM;
                case 7:
                    return Locale.AR;
                case 8:
                    return Locale.AN;
                case 9:
                    return Locale.HY;
                case 10:
                    return Locale.AS;
                case 11:
                    return Locale.AV;
                case 12:
                    return Locale.AE;
                case 13:
                    return Locale.AY;
                case 14:
                    return Locale.AZ;
                case 15:
                    return Locale.BM;
                case 16:
                    return Locale.BA;
                case 17:
                    return Locale.EU;
                case 18:
                    return Locale.BE;
                case 19:
                    return Locale.BN;
                case 20:
                    return Locale.BH;
                case 21:
                    return Locale.BI;
                case 22:
                    return Locale.BS;
                case 23:
                    return Locale.BR;
                case 24:
                    return Locale.BG;
                case 25:
                    return Locale.MY;
                case 26:
                    return Locale.CA;
                case 27:
                    return Locale.CH;
                case 28:
                    return Locale.CE;
                case 29:
                    return Locale.NY;
                case 30:
                    return Locale.ZH;
                case 31:
                    return Locale.CU;
                case 32:
                    return Locale.CV;
                case 33:
                    return Locale.KW;
                case 34:
                    return Locale.CO;
                case 35:
                    return Locale.CR;
                case 36:
                    return Locale.HR;
                case 37:
                    return Locale.CS;
                case 38:
                    return Locale.DA;
                case 39:
                    return Locale.DV;
                case 40:
                    return Locale.NL;
                case 41:
                    return Locale.DZ;
                case 42:
                    return Locale.EN;
                case 43:
                    return Locale.EO;
                case 44:
                    return Locale.ET;
                case 45:
                    return Locale.EE;
                case 46:
                    return Locale.FO;
                case 47:
                    return Locale.FJ;
                case 48:
                    return Locale.FI;
                case 49:
                    return Locale.FR;
                case 50:
                    return Locale.FF;
                case 51:
                    return Locale.GD;
                case 52:
                    return Locale.GL;
                case 53:
                    return Locale.LG;
                case 54:
                    return Locale.KA;
                case 55:
                    return Locale.DE;
                case 56:
                    return Locale.EL;
                case 57:
                    return Locale.GN;
                case 58:
                    return Locale.GU;
                case 59:
                    return Locale.HT;
                case 60:
                    return Locale.HA;
                case 61:
                    return Locale.HE;
                case 62:
                default:
                    return null;
                case 63:
                    return Locale.HI;
                case 64:
                    return Locale.HO;
                case 65:
                    return Locale.HU;
                case 66:
                    return Locale.IS;
                case 67:
                    return Locale.IO;
                case 68:
                    return Locale.IG;
                case 69:
                    return Locale.ID;
                case 70:
                    return Locale.IA;
                case 71:
                    return Locale.IE;
                case 72:
                    return Locale.IU;
                case 73:
                    return Locale.IK;
                case 74:
                    return Locale.GA;
                case 75:
                    return Locale.IT;
                case 76:
                    return Locale.JA;
                case 77:
                    return Locale.JV;
                case 78:
                    return Locale.KL;
                case 79:
                    return Locale.KN;
                case 80:
                    return Locale.KR;
                case 81:
                    return Locale.KS;
                case 82:
                    return Locale.KK;
                case 83:
                    return Locale.KI;
                case 84:
                    return Locale.RW;
                case WinError.ERROR_ALREADY_ASSIGNED /* 85 */:
                    return Locale.KY;
                case 86:
                    return Locale.KV;
                case 87:
                    return Locale.KG;
                case 88:
                    return Locale.KO;
                case 89:
                    return Locale.KJ;
                case 90:
                    return Locale.KU;
                case WinUser.SM_MOUSEHORIZONTALWHEELPRESENT /* 91 */:
                    return Locale.LO;
                case WinUser.SM_CXPADDEDBORDER /* 92 */:
                    return Locale.LA;
                case 93:
                    return Locale.LV;
                case 94:
                    return Locale.LI;
                case XAttr.ENOTSUP /* 95 */:
                    return Locale.LN;
                case WinNT.LANG_KASHMIRI /* 96 */:
                    return Locale.LT;
                case 97:
                    return Locale.LU;
                case 98:
                    return Locale.LB;
                case 99:
                    return Locale.MK;
                case 100:
                    return Locale.MG;
                case 101:
                    return Locale.MS;
                case 102:
                    return Locale.ML;
                case 103:
                    return Locale.NT;
                case 104:
                    return Locale.GV;
                case WinError.ERROR_SEM_OWNER_DIED /* 105 */:
                    return Locale.MI;
                case WinError.ERROR_SEM_USER_LIMIT /* 106 */:
                    return Locale.MR;
                case WinError.ERROR_DISK_CHANGE /* 107 */:
                    return Locale.MH;
                case 108:
                    return Locale.MN;
                case 109:
                    return Locale.NA;
                case 110:
                    return Locale.NV;
                case WinError.ERROR_BUFFER_OVERFLOW /* 111 */:
                    return Locale.NG;
                case 112:
                    return Locale.NE;
                case WinError.ERROR_NO_MORE_SEARCH_HANDLES /* 113 */:
                    return Locale.ND;
                case WinError.ERROR_INVALID_TARGET_HANDLE /* 114 */:
                    return Locale.SE;
                case 115:
                    return Locale.NO;
                case 116:
                    return Locale.NB;
                case WinError.ERROR_INVALID_CATEGORY /* 117 */:
                    return Locale.NN;
                case WinError.ERROR_INVALID_VERIFY_SWITCH /* 118 */:
                    return Locale.OC;
                case WinError.ERROR_BAD_DRIVER_LEVEL /* 119 */:
                    return Locale.OJ;
                case WinError.ERROR_CALL_NOT_IMPLEMENTED /* 120 */:
                    return Locale.OR;
                case WinError.ERROR_SEM_TIMEOUT /* 121 */:
                    return Locale.OM;
                case 122:
                    return Locale.OS;
                case 123:
                    return Locale.PI;
                case WinError.ERROR_INVALID_LEVEL /* 124 */:
                    return Locale.PA;
                case WinError.ERROR_NO_VOLUME_LABEL /* 125 */:
                    return Locale.PS;
                case 126:
                    return Locale.FA;
                case 127:
                    return Locale.PL;
                case 128:
                    return Locale.PT;
                case 129:
                    return Locale.QU;
                case 130:
                    return Locale.RO;
                case 131:
                    return Locale.RM;
                case WinError.ERROR_SEEK_ON_DEVICE /* 132 */:
                    return Locale.RN;
                case WinError.ERROR_IS_JOIN_TARGET /* 133 */:
                    return Locale.RU;
                case WinError.ERROR_IS_JOINED /* 134 */:
                    return Locale.SM;
                case WinError.ERROR_IS_SUBSTED /* 135 */:
                    return Locale.SG;
                case 136:
                    return Locale.SA;
                case WinError.ERROR_NOT_SUBSTED /* 137 */:
                    return Locale.SC;
                case WinError.ERROR_JOIN_TO_JOIN /* 138 */:
                    return Locale.SR;
                case WinError.ERROR_SUBST_TO_SUBST /* 139 */:
                    return Locale.SN;
                case WinError.ERROR_JOIN_TO_SUBST /* 140 */:
                    return Locale.II;
                case WinError.ERROR_SUBST_TO_JOIN /* 141 */:
                    return Locale.SD;
                case 142:
                    return Locale.SI;
                case WinError.ERROR_SAME_DRIVE /* 143 */:
                    return Locale.SK;
                case WinError.ERROR_DIR_NOT_ROOT /* 144 */:
                    return Locale.SL;
                case WinError.ERROR_DIR_NOT_EMPTY /* 145 */:
                    return Locale.SO;
                case WinError.ERROR_IS_SUBST_PATH /* 146 */:
                    return Locale.NR;
                case WinError.ERROR_IS_JOIN_PATH /* 147 */:
                    return Locale.ST;
                case WinError.ERROR_PATH_BUSY /* 148 */:
                    return Locale.ES;
                case WinError.ERROR_IS_SUBST_TARGET /* 149 */:
                    return Locale.SU;
                case WinError.ERROR_SYSTEM_TRACE /* 150 */:
                    return Locale.SW;
                case WinError.ERROR_INVALID_EVENT_COUNT /* 151 */:
                    return Locale.SS;
                case WinError.ERROR_TOO_MANY_MUXWAITERS /* 152 */:
                    return Locale.SV;
                case WinError.ERROR_INVALID_LIST_FORMAT /* 153 */:
                    return Locale.TL;
                case WinError.ERROR_LABEL_TOO_LONG /* 154 */:
                    return Locale.TY;
                case 155:
                    return Locale.TG;
                case WinError.ERROR_SIGNAL_REFUSED /* 156 */:
                    return Locale.TA;
                case WinError.ERROR_DISCARDED /* 157 */:
                    return Locale.TT;
                case WinError.ERROR_NOT_LOCKED /* 158 */:
                    return Locale.TE;
                case WinError.ERROR_BAD_THREADID_ADDR /* 159 */:
                    return Locale.TH;
                case 160:
                    return Locale.BO;
                case 161:
                    return Locale.TI;
                case 162:
                    return Locale.TO;
                case WinUser.VK_RCONTROL /* 163 */:
                    return Locale.TS;
                case 164:
                    return Locale.TN;
                case WinUser.VK_RMENU /* 165 */:
                    return Locale.TR;
                case 166:
                    return Locale.TK;
                case WinError.ERROR_LOCK_FAILED /* 167 */:
                    return Locale.TW;
                case 168:
                    return Locale.UG;
                case 169:
                    return Locale.UK;
                case WinError.ERROR_BUSY /* 170 */:
                    return Locale.UR;
                case 171:
                    return Locale.VE;
                case 172:
                    return Locale.VI;
                case WinError.ERROR_CANCEL_VIOLATION /* 173 */:
                    return Locale.VO;
                case WinError.ERROR_ATOMIC_LOCKS_NOT_SUPPORTED /* 174 */:
                    return Locale.WA;
                case 175:
                    return Locale.CY;
                case 176:
                    return Locale.FY;
                case 177:
                    return Locale.WO;
                case 178:
                    return Locale.XH;
                case 179:
                    return Locale.YI;
                case WinError.ERROR_INVALID_SEGMENT_NUMBER /* 180 */:
                    return Locale.YO;
                case 181:
                    return Locale.ZA;
                case WinError.ERROR_INVALID_ORDINAL /* 182 */:
                    return Locale.ZU;
                case WinError.ERROR_ALREADY_EXISTS /* 183 */:
                    return Locale.FR_CA;
                case 184:
                    return Locale.EN_CA;
                case 185:
                    return Locale.EN_GB;
                case WinError.ERROR_INVALID_FLAG_NUMBER /* 186 */:
                    return Locale.CS_CZ;
            }
        }
    }
}
