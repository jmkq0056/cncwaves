package com.stripe.proto.java.globalization;

import androidx.recyclerview.widget.ItemTouchHelper;
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
import org.apache.http.HttpStatus;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: Country.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0017\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0003\b\u0080\u0002\b\u0086\u0081\u0002\u0018\u0000 \u0083\u00022\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0002\u0083\u0002B\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019j\u0002\b\u001aj\u0002\b\u001bj\u0002\b\u001cj\u0002\b\u001dj\u0002\b\u001ej\u0002\b\u001fj\u0002\b j\u0002\b!j\u0002\b\"j\u0002\b#j\u0002\b$j\u0002\b%j\u0002\b&j\u0002\b'j\u0002\b(j\u0002\b)j\u0002\b*j\u0002\b+j\u0002\b,j\u0002\b-j\u0002\b.j\u0002\b/j\u0002\b0j\u0002\b1j\u0002\b2j\u0002\b3j\u0002\b4j\u0002\b5j\u0002\b6j\u0002\b7j\u0002\b8j\u0002\b9j\u0002\b:j\u0002\b;j\u0002\b<j\u0002\b=j\u0002\b>j\u0002\b?j\u0002\b@j\u0002\bAj\u0002\bBj\u0002\bCj\u0002\bDj\u0002\bEj\u0002\bFj\u0002\bGj\u0002\bHj\u0002\bIj\u0002\bJj\u0002\bKj\u0002\bLj\u0002\bMj\u0002\bNj\u0002\bOj\u0002\bPj\u0002\bQj\u0002\bRj\u0002\bSj\u0002\bTj\u0002\bUj\u0002\bVj\u0002\bWj\u0002\bXj\u0002\bYj\u0002\bZj\u0002\b[j\u0002\b\\j\u0002\b]j\u0002\b^j\u0002\b_j\u0002\b`j\u0002\baj\u0002\bbj\u0002\bcj\u0002\bdj\u0002\bej\u0002\bfj\u0002\bgj\u0002\bhj\u0002\bij\u0002\bjj\u0002\bkj\u0002\blj\u0002\bmj\u0002\bnj\u0002\boj\u0002\bpj\u0002\bqj\u0002\brj\u0002\bsj\u0002\btj\u0002\buj\u0002\bvj\u0002\bwj\u0002\bxj\u0002\byj\u0002\bzj\u0002\b{j\u0002\b|j\u0002\b}j\u0002\b~j\u0002\b\u007fj\u0003\b\u0080\u0001j\u0003\b\u0081\u0001j\u0003\b\u0082\u0001j\u0003\b\u0083\u0001j\u0003\b\u0084\u0001j\u0003\b\u0085\u0001j\u0003\b\u0086\u0001j\u0003\b\u0087\u0001j\u0003\b\u0088\u0001j\u0003\b\u0089\u0001j\u0003\b\u008a\u0001j\u0003\b\u008b\u0001j\u0003\b\u008c\u0001j\u0003\b\u008d\u0001j\u0003\b\u008e\u0001j\u0003\b\u008f\u0001j\u0003\b\u0090\u0001j\u0003\b\u0091\u0001j\u0003\b\u0092\u0001j\u0003\b\u0093\u0001j\u0003\b\u0094\u0001j\u0003\b\u0095\u0001j\u0003\b\u0096\u0001j\u0003\b\u0097\u0001j\u0003\b\u0098\u0001j\u0003\b\u0099\u0001j\u0003\b\u009a\u0001j\u0003\b\u009b\u0001j\u0003\b\u009c\u0001j\u0003\b\u009d\u0001j\u0003\b\u009e\u0001j\u0003\b\u009f\u0001j\u0003\b \u0001j\u0003\b¡\u0001j\u0003\b¢\u0001j\u0003\b£\u0001j\u0003\b¤\u0001j\u0003\b¥\u0001j\u0003\b¦\u0001j\u0003\b§\u0001j\u0003\b¨\u0001j\u0003\b©\u0001j\u0003\bª\u0001j\u0003\b«\u0001j\u0003\b¬\u0001j\u0003\b\u00ad\u0001j\u0003\b®\u0001j\u0003\b¯\u0001j\u0003\b°\u0001j\u0003\b±\u0001j\u0003\b²\u0001j\u0003\b³\u0001j\u0003\b´\u0001j\u0003\bµ\u0001j\u0003\b¶\u0001j\u0003\b·\u0001j\u0003\b¸\u0001j\u0003\b¹\u0001j\u0003\bº\u0001j\u0003\b»\u0001j\u0003\b¼\u0001j\u0003\b½\u0001j\u0003\b¾\u0001j\u0003\b¿\u0001j\u0003\bÀ\u0001j\u0003\bÁ\u0001j\u0003\bÂ\u0001j\u0003\bÃ\u0001j\u0003\bÄ\u0001j\u0003\bÅ\u0001j\u0003\bÆ\u0001j\u0003\bÇ\u0001j\u0003\bÈ\u0001j\u0003\bÉ\u0001j\u0003\bÊ\u0001j\u0003\bË\u0001j\u0003\bÌ\u0001j\u0003\bÍ\u0001j\u0003\bÎ\u0001j\u0003\bÏ\u0001j\u0003\bÐ\u0001j\u0003\bÑ\u0001j\u0003\bÒ\u0001j\u0003\bÓ\u0001j\u0003\bÔ\u0001j\u0003\bÕ\u0001j\u0003\bÖ\u0001j\u0003\b×\u0001j\u0003\bØ\u0001j\u0003\bÙ\u0001j\u0003\bÚ\u0001j\u0003\bÛ\u0001j\u0003\bÜ\u0001j\u0003\bÝ\u0001j\u0003\bÞ\u0001j\u0003\bß\u0001j\u0003\bà\u0001j\u0003\bá\u0001j\u0003\bâ\u0001j\u0003\bã\u0001j\u0003\bä\u0001j\u0003\bå\u0001j\u0003\bæ\u0001j\u0003\bç\u0001j\u0003\bè\u0001j\u0003\bé\u0001j\u0003\bê\u0001j\u0003\bë\u0001j\u0003\bì\u0001j\u0003\bí\u0001j\u0003\bî\u0001j\u0003\bï\u0001j\u0003\bð\u0001j\u0003\bñ\u0001j\u0003\bò\u0001j\u0003\bó\u0001j\u0003\bô\u0001j\u0003\bõ\u0001j\u0003\bö\u0001j\u0003\b÷\u0001j\u0003\bø\u0001j\u0003\bù\u0001j\u0003\bú\u0001j\u0003\bû\u0001j\u0003\bü\u0001j\u0003\bý\u0001j\u0003\bþ\u0001j\u0003\bÿ\u0001j\u0003\b\u0080\u0002j\u0003\b\u0081\u0002j\u0003\b\u0082\u0002¨\u0006\u0084\u0002"}, d2 = {"Lcom/stripe/proto/java/globalization/Country;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "COUNTRY_INVALID", "COUNTRY_AD", "COUNTRY_AE", "COUNTRY_AF", "COUNTRY_AG", "COUNTRY_AI", "COUNTRY_AL", "COUNTRY_AM", "COUNTRY_AO", "COUNTRY_AQ", "COUNTRY_AR", "COUNTRY_AS", "COUNTRY_AT", "COUNTRY_AU", "COUNTRY_AW", "COUNTRY_AX", "COUNTRY_AZ", "COUNTRY_BA", "COUNTRY_BB", "COUNTRY_BD", "COUNTRY_BE", "COUNTRY_BF", "COUNTRY_BG", "COUNTRY_BH", "COUNTRY_BI", "COUNTRY_BJ", "COUNTRY_BL", "COUNTRY_BM", "COUNTRY_BN", "COUNTRY_BO", "COUNTRY_BQ", "COUNTRY_BR", "COUNTRY_BS", "COUNTRY_BT", "COUNTRY_BV", "COUNTRY_BW", "COUNTRY_BY", "COUNTRY_BZ", "COUNTRY_CA", "COUNTRY_CC", "COUNTRY_CD", "COUNTRY_CF", "COUNTRY_CG", "COUNTRY_CH", "COUNTRY_CI", "COUNTRY_CK", "COUNTRY_CL", "COUNTRY_CM", "COUNTRY_CN", "COUNTRY_CO", "COUNTRY_CR", "COUNTRY_CU", "COUNTRY_CV", "COUNTRY_CW", "COUNTRY_CX", "COUNTRY_CY", "COUNTRY_CZ", "COUNTRY_DE", "COUNTRY_DJ", "COUNTRY_DK", "COUNTRY_DM", "COUNTRY_DO", "COUNTRY_DZ", "COUNTRY_EC", "COUNTRY_EE", "COUNTRY_EG", "COUNTRY_EH", "COUNTRY_ER", "COUNTRY_ES", "COUNTRY_ET", "COUNTRY_FI", "COUNTRY_FJ", "COUNTRY_FK", "COUNTRY_FM", "COUNTRY_FO", "COUNTRY_FR", "COUNTRY_GA", "COUNTRY_GB", "COUNTRY_GD", "COUNTRY_GE", "COUNTRY_GF", "COUNTRY_GG", "COUNTRY_GH", "COUNTRY_GI", "COUNTRY_GL", "COUNTRY_GM", "COUNTRY_GN", "COUNTRY_GP", "COUNTRY_GQ", "COUNTRY_GR", "COUNTRY_GS", "COUNTRY_GT", "COUNTRY_GU", "COUNTRY_GW", "COUNTRY_GY", "COUNTRY_HK", "COUNTRY_HM", "COUNTRY_HN", "COUNTRY_HR", "COUNTRY_HT", "COUNTRY_HU", "COUNTRY_ID", "COUNTRY_IE", "COUNTRY_IL", "COUNTRY_IM", "COUNTRY_IN", "COUNTRY_IO", "COUNTRY_IQ", "COUNTRY_IR", "COUNTRY_IS", "COUNTRY_IT", "COUNTRY_JE", "COUNTRY_JM", "COUNTRY_JO", "COUNTRY_JP", "COUNTRY_KE", "COUNTRY_KG", "COUNTRY_KH", "COUNTRY_KI", "COUNTRY_KM", "COUNTRY_KN", "COUNTRY_KP", "COUNTRY_KR", "COUNTRY_KW", "COUNTRY_KY", "COUNTRY_KZ", "COUNTRY_LA", "COUNTRY_LB", "COUNTRY_LC", "COUNTRY_LI", "COUNTRY_LK", "COUNTRY_LR", "COUNTRY_LS", "COUNTRY_LT", "COUNTRY_LU", "COUNTRY_LV", "COUNTRY_LY", "COUNTRY_MA", "COUNTRY_MC", "COUNTRY_MD", "COUNTRY_ME", "COUNTRY_MF", "COUNTRY_MG", "COUNTRY_MH", "COUNTRY_MK", "COUNTRY_ML", "COUNTRY_MM", "COUNTRY_MN", "COUNTRY_MO", "COUNTRY_MP", "COUNTRY_MQ", "COUNTRY_MR", "COUNTRY_MS", "COUNTRY_MT", "COUNTRY_MU", "COUNTRY_MV", "COUNTRY_MW", "COUNTRY_MX", "COUNTRY_MY", "COUNTRY_MZ", "COUNTRY_NA", "COUNTRY_NC", "COUNTRY_NE", "COUNTRY_NF", "COUNTRY_NG", "COUNTRY_NI", "COUNTRY_NL", "COUNTRY_NO", "COUNTRY_NP", "COUNTRY_NR", "COUNTRY_NU", "COUNTRY_NZ", "COUNTRY_OM", "COUNTRY_PA", "COUNTRY_PE", "COUNTRY_PF", "COUNTRY_PG", "COUNTRY_PH", "COUNTRY_PK", "COUNTRY_PL", "COUNTRY_PM", "COUNTRY_PN", "COUNTRY_PR", "COUNTRY_PS", "COUNTRY_PT", "COUNTRY_PW", "COUNTRY_PY", "COUNTRY_QA", "COUNTRY_QZ", "COUNTRY_RE", "COUNTRY_RO", "COUNTRY_RS", "COUNTRY_RU", "COUNTRY_RW", "COUNTRY_SA", "COUNTRY_SB", "COUNTRY_SC", "COUNTRY_SD", "COUNTRY_SE", "COUNTRY_SG", "COUNTRY_SH", "COUNTRY_SI", "COUNTRY_SJ", "COUNTRY_SK", "COUNTRY_SL", "COUNTRY_SM", "COUNTRY_SN", "COUNTRY_SO", "COUNTRY_SR", "COUNTRY_SS", "COUNTRY_ST", "COUNTRY_SV", "COUNTRY_SX", "COUNTRY_SY", "COUNTRY_SZ", "COUNTRY_TC", "COUNTRY_TD", "COUNTRY_TF", "COUNTRY_TG", "COUNTRY_TH", "COUNTRY_TJ", "COUNTRY_TK", "COUNTRY_TL", "COUNTRY_TM", "COUNTRY_TN", "COUNTRY_TO", "COUNTRY_TR", "COUNTRY_TT", "COUNTRY_TV", "COUNTRY_TW", "COUNTRY_TZ", "COUNTRY_UA", "COUNTRY_UG", "COUNTRY_UM", "COUNTRY_US", "COUNTRY_UY", "COUNTRY_UZ", "COUNTRY_VA", "COUNTRY_VC", "COUNTRY_VE", "COUNTRY_VG", "COUNTRY_VI", "COUNTRY_VN", "COUNTRY_VU", "COUNTRY_WF", "COUNTRY_WS", "COUNTRY_YE", "COUNTRY_YT", "COUNTRY_ZA", "COUNTRY_ZM", "COUNTRY_ZW", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class Country implements WireEnum {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ Country[] $VALUES;
    public static final ProtoAdapter<Country> ADAPTER;
    public static final Country COUNTRY_AD;
    public static final Country COUNTRY_AE;
    public static final Country COUNTRY_AF;
    public static final Country COUNTRY_AG;
    public static final Country COUNTRY_AI;
    public static final Country COUNTRY_AL;
    public static final Country COUNTRY_AM;
    public static final Country COUNTRY_AO;
    public static final Country COUNTRY_AQ;
    public static final Country COUNTRY_AR;
    public static final Country COUNTRY_AS;
    public static final Country COUNTRY_AT;
    public static final Country COUNTRY_AU;
    public static final Country COUNTRY_AW;
    public static final Country COUNTRY_AX;
    public static final Country COUNTRY_AZ;
    public static final Country COUNTRY_BA;
    public static final Country COUNTRY_BB;
    public static final Country COUNTRY_BD;
    public static final Country COUNTRY_BE;
    public static final Country COUNTRY_BF;
    public static final Country COUNTRY_BG;
    public static final Country COUNTRY_BH;
    public static final Country COUNTRY_BI;
    public static final Country COUNTRY_BJ;
    public static final Country COUNTRY_BL;
    public static final Country COUNTRY_BM;
    public static final Country COUNTRY_BN;
    public static final Country COUNTRY_BO;
    public static final Country COUNTRY_BQ;
    public static final Country COUNTRY_BR;
    public static final Country COUNTRY_BS;
    public static final Country COUNTRY_BT;
    public static final Country COUNTRY_BV;
    public static final Country COUNTRY_BW;
    public static final Country COUNTRY_BY;
    public static final Country COUNTRY_BZ;
    public static final Country COUNTRY_CA;
    public static final Country COUNTRY_CC;
    public static final Country COUNTRY_CD;
    public static final Country COUNTRY_CF;
    public static final Country COUNTRY_CG;
    public static final Country COUNTRY_CH;
    public static final Country COUNTRY_CI;
    public static final Country COUNTRY_CK;
    public static final Country COUNTRY_CL;
    public static final Country COUNTRY_CM;
    public static final Country COUNTRY_CN;
    public static final Country COUNTRY_CO;
    public static final Country COUNTRY_CR;
    public static final Country COUNTRY_CU;
    public static final Country COUNTRY_CV;
    public static final Country COUNTRY_CW;
    public static final Country COUNTRY_CX;
    public static final Country COUNTRY_CY;
    public static final Country COUNTRY_CZ;
    public static final Country COUNTRY_DE;
    public static final Country COUNTRY_DJ;
    public static final Country COUNTRY_DK;
    public static final Country COUNTRY_DM;
    public static final Country COUNTRY_DO;
    public static final Country COUNTRY_DZ;
    public static final Country COUNTRY_EC;
    public static final Country COUNTRY_EE;
    public static final Country COUNTRY_EG;
    public static final Country COUNTRY_EH;
    public static final Country COUNTRY_ER;
    public static final Country COUNTRY_ES;
    public static final Country COUNTRY_ET;
    public static final Country COUNTRY_FI;
    public static final Country COUNTRY_FJ;
    public static final Country COUNTRY_FK;
    public static final Country COUNTRY_FM;
    public static final Country COUNTRY_FO;
    public static final Country COUNTRY_FR;
    public static final Country COUNTRY_GA;
    public static final Country COUNTRY_GB;
    public static final Country COUNTRY_GD;
    public static final Country COUNTRY_GE;
    public static final Country COUNTRY_GF;
    public static final Country COUNTRY_GG;
    public static final Country COUNTRY_GH;
    public static final Country COUNTRY_GI;
    public static final Country COUNTRY_GL;
    public static final Country COUNTRY_GM;
    public static final Country COUNTRY_GN;
    public static final Country COUNTRY_GP;
    public static final Country COUNTRY_GQ;
    public static final Country COUNTRY_GR;
    public static final Country COUNTRY_GS;
    public static final Country COUNTRY_GT;
    public static final Country COUNTRY_GU;
    public static final Country COUNTRY_GW;
    public static final Country COUNTRY_GY;
    public static final Country COUNTRY_HK;
    public static final Country COUNTRY_HM;
    public static final Country COUNTRY_HN;
    public static final Country COUNTRY_HR;
    public static final Country COUNTRY_HT;
    public static final Country COUNTRY_HU;
    public static final Country COUNTRY_ID;
    public static final Country COUNTRY_IE;
    public static final Country COUNTRY_IL;
    public static final Country COUNTRY_IM;
    public static final Country COUNTRY_IN;
    public static final Country COUNTRY_INVALID;
    public static final Country COUNTRY_IO;
    public static final Country COUNTRY_IQ;
    public static final Country COUNTRY_IR;
    public static final Country COUNTRY_IS;
    public static final Country COUNTRY_IT;
    public static final Country COUNTRY_JE;
    public static final Country COUNTRY_JM;
    public static final Country COUNTRY_JO;
    public static final Country COUNTRY_JP;
    public static final Country COUNTRY_KE;
    public static final Country COUNTRY_KG;
    public static final Country COUNTRY_KH;
    public static final Country COUNTRY_KI;
    public static final Country COUNTRY_KM;
    public static final Country COUNTRY_KN;
    public static final Country COUNTRY_KP;
    public static final Country COUNTRY_KR;
    public static final Country COUNTRY_KW;
    public static final Country COUNTRY_KY;
    public static final Country COUNTRY_KZ;
    public static final Country COUNTRY_LA;
    public static final Country COUNTRY_LB;
    public static final Country COUNTRY_LC;
    public static final Country COUNTRY_LI;
    public static final Country COUNTRY_LK;
    public static final Country COUNTRY_LR;
    public static final Country COUNTRY_LS;
    public static final Country COUNTRY_LT;
    public static final Country COUNTRY_LU;
    public static final Country COUNTRY_LV;
    public static final Country COUNTRY_LY;
    public static final Country COUNTRY_MA;
    public static final Country COUNTRY_MC;
    public static final Country COUNTRY_MD;
    public static final Country COUNTRY_ME;
    public static final Country COUNTRY_MF;
    public static final Country COUNTRY_MG;
    public static final Country COUNTRY_MH;
    public static final Country COUNTRY_MK;
    public static final Country COUNTRY_ML;
    public static final Country COUNTRY_MM;
    public static final Country COUNTRY_MN;
    public static final Country COUNTRY_MO;
    public static final Country COUNTRY_MP;
    public static final Country COUNTRY_MQ;
    public static final Country COUNTRY_MR;
    public static final Country COUNTRY_MS;
    public static final Country COUNTRY_MT;
    public static final Country COUNTRY_MU;
    public static final Country COUNTRY_MV;
    public static final Country COUNTRY_MW;
    public static final Country COUNTRY_MX;
    public static final Country COUNTRY_MY;
    public static final Country COUNTRY_MZ;
    public static final Country COUNTRY_NA;
    public static final Country COUNTRY_NC;
    public static final Country COUNTRY_NE;
    public static final Country COUNTRY_NF;
    public static final Country COUNTRY_NG;
    public static final Country COUNTRY_NI;
    public static final Country COUNTRY_NL;
    public static final Country COUNTRY_NO;
    public static final Country COUNTRY_NP;
    public static final Country COUNTRY_NR;
    public static final Country COUNTRY_NU;
    public static final Country COUNTRY_NZ;
    public static final Country COUNTRY_OM;
    public static final Country COUNTRY_PA;
    public static final Country COUNTRY_PE;
    public static final Country COUNTRY_PF;
    public static final Country COUNTRY_PG;
    public static final Country COUNTRY_PH;
    public static final Country COUNTRY_PK;
    public static final Country COUNTRY_PL;
    public static final Country COUNTRY_PM;
    public static final Country COUNTRY_PN;
    public static final Country COUNTRY_PR;
    public static final Country COUNTRY_PS;
    public static final Country COUNTRY_PT;
    public static final Country COUNTRY_PW;
    public static final Country COUNTRY_PY;
    public static final Country COUNTRY_QA;
    public static final Country COUNTRY_QZ;
    public static final Country COUNTRY_RE;
    public static final Country COUNTRY_RO;
    public static final Country COUNTRY_RS;
    public static final Country COUNTRY_RU;
    public static final Country COUNTRY_RW;
    public static final Country COUNTRY_SA;
    public static final Country COUNTRY_SB;
    public static final Country COUNTRY_SC;
    public static final Country COUNTRY_SD;
    public static final Country COUNTRY_SE;
    public static final Country COUNTRY_SG;
    public static final Country COUNTRY_SH;
    public static final Country COUNTRY_SI;
    public static final Country COUNTRY_SJ;
    public static final Country COUNTRY_SK;
    public static final Country COUNTRY_SL;
    public static final Country COUNTRY_SM;
    public static final Country COUNTRY_SN;
    public static final Country COUNTRY_SO;
    public static final Country COUNTRY_SR;
    public static final Country COUNTRY_SS;
    public static final Country COUNTRY_ST;
    public static final Country COUNTRY_SV;
    public static final Country COUNTRY_SX;
    public static final Country COUNTRY_SY;
    public static final Country COUNTRY_SZ;
    public static final Country COUNTRY_TC;
    public static final Country COUNTRY_TD;
    public static final Country COUNTRY_TF;
    public static final Country COUNTRY_TG;
    public static final Country COUNTRY_TH;
    public static final Country COUNTRY_TJ;
    public static final Country COUNTRY_TK;
    public static final Country COUNTRY_TL;
    public static final Country COUNTRY_TM;
    public static final Country COUNTRY_TN;
    public static final Country COUNTRY_TO;
    public static final Country COUNTRY_TR;
    public static final Country COUNTRY_TT;
    public static final Country COUNTRY_TV;
    public static final Country COUNTRY_TW;
    public static final Country COUNTRY_TZ;
    public static final Country COUNTRY_UA;
    public static final Country COUNTRY_UG;
    public static final Country COUNTRY_UM;
    public static final Country COUNTRY_US;
    public static final Country COUNTRY_UY;
    public static final Country COUNTRY_UZ;
    public static final Country COUNTRY_VA;
    public static final Country COUNTRY_VC;
    public static final Country COUNTRY_VE;
    public static final Country COUNTRY_VG;
    public static final Country COUNTRY_VI;
    public static final Country COUNTRY_VN;
    public static final Country COUNTRY_VU;
    public static final Country COUNTRY_WF;
    public static final Country COUNTRY_WS;
    public static final Country COUNTRY_YE;
    public static final Country COUNTRY_YT;
    public static final Country COUNTRY_ZA;
    public static final Country COUNTRY_ZM;
    public static final Country COUNTRY_ZW;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;
    private final int value;

    private static final /* synthetic */ Country[] $values() {
        return new Country[]{COUNTRY_INVALID, COUNTRY_AD, COUNTRY_AE, COUNTRY_AF, COUNTRY_AG, COUNTRY_AI, COUNTRY_AL, COUNTRY_AM, COUNTRY_AO, COUNTRY_AQ, COUNTRY_AR, COUNTRY_AS, COUNTRY_AT, COUNTRY_AU, COUNTRY_AW, COUNTRY_AX, COUNTRY_AZ, COUNTRY_BA, COUNTRY_BB, COUNTRY_BD, COUNTRY_BE, COUNTRY_BF, COUNTRY_BG, COUNTRY_BH, COUNTRY_BI, COUNTRY_BJ, COUNTRY_BL, COUNTRY_BM, COUNTRY_BN, COUNTRY_BO, COUNTRY_BQ, COUNTRY_BR, COUNTRY_BS, COUNTRY_BT, COUNTRY_BV, COUNTRY_BW, COUNTRY_BY, COUNTRY_BZ, COUNTRY_CA, COUNTRY_CC, COUNTRY_CD, COUNTRY_CF, COUNTRY_CG, COUNTRY_CH, COUNTRY_CI, COUNTRY_CK, COUNTRY_CL, COUNTRY_CM, COUNTRY_CN, COUNTRY_CO, COUNTRY_CR, COUNTRY_CU, COUNTRY_CV, COUNTRY_CW, COUNTRY_CX, COUNTRY_CY, COUNTRY_CZ, COUNTRY_DE, COUNTRY_DJ, COUNTRY_DK, COUNTRY_DM, COUNTRY_DO, COUNTRY_DZ, COUNTRY_EC, COUNTRY_EE, COUNTRY_EG, COUNTRY_EH, COUNTRY_ER, COUNTRY_ES, COUNTRY_ET, COUNTRY_FI, COUNTRY_FJ, COUNTRY_FK, COUNTRY_FM, COUNTRY_FO, COUNTRY_FR, COUNTRY_GA, COUNTRY_GB, COUNTRY_GD, COUNTRY_GE, COUNTRY_GF, COUNTRY_GG, COUNTRY_GH, COUNTRY_GI, COUNTRY_GL, COUNTRY_GM, COUNTRY_GN, COUNTRY_GP, COUNTRY_GQ, COUNTRY_GR, COUNTRY_GS, COUNTRY_GT, COUNTRY_GU, COUNTRY_GW, COUNTRY_GY, COUNTRY_HK, COUNTRY_HM, COUNTRY_HN, COUNTRY_HR, COUNTRY_HT, COUNTRY_HU, COUNTRY_ID, COUNTRY_IE, COUNTRY_IL, COUNTRY_IM, COUNTRY_IN, COUNTRY_IO, COUNTRY_IQ, COUNTRY_IR, COUNTRY_IS, COUNTRY_IT, COUNTRY_JE, COUNTRY_JM, COUNTRY_JO, COUNTRY_JP, COUNTRY_KE, COUNTRY_KG, COUNTRY_KH, COUNTRY_KI, COUNTRY_KM, COUNTRY_KN, COUNTRY_KP, COUNTRY_KR, COUNTRY_KW, COUNTRY_KY, COUNTRY_KZ, COUNTRY_LA, COUNTRY_LB, COUNTRY_LC, COUNTRY_LI, COUNTRY_LK, COUNTRY_LR, COUNTRY_LS, COUNTRY_LT, COUNTRY_LU, COUNTRY_LV, COUNTRY_LY, COUNTRY_MA, COUNTRY_MC, COUNTRY_MD, COUNTRY_ME, COUNTRY_MF, COUNTRY_MG, COUNTRY_MH, COUNTRY_MK, COUNTRY_ML, COUNTRY_MM, COUNTRY_MN, COUNTRY_MO, COUNTRY_MP, COUNTRY_MQ, COUNTRY_MR, COUNTRY_MS, COUNTRY_MT, COUNTRY_MU, COUNTRY_MV, COUNTRY_MW, COUNTRY_MX, COUNTRY_MY, COUNTRY_MZ, COUNTRY_NA, COUNTRY_NC, COUNTRY_NE, COUNTRY_NF, COUNTRY_NG, COUNTRY_NI, COUNTRY_NL, COUNTRY_NO, COUNTRY_NP, COUNTRY_NR, COUNTRY_NU, COUNTRY_NZ, COUNTRY_OM, COUNTRY_PA, COUNTRY_PE, COUNTRY_PF, COUNTRY_PG, COUNTRY_PH, COUNTRY_PK, COUNTRY_PL, COUNTRY_PM, COUNTRY_PN, COUNTRY_PR, COUNTRY_PS, COUNTRY_PT, COUNTRY_PW, COUNTRY_PY, COUNTRY_QA, COUNTRY_QZ, COUNTRY_RE, COUNTRY_RO, COUNTRY_RS, COUNTRY_RU, COUNTRY_RW, COUNTRY_SA, COUNTRY_SB, COUNTRY_SC, COUNTRY_SD, COUNTRY_SE, COUNTRY_SG, COUNTRY_SH, COUNTRY_SI, COUNTRY_SJ, COUNTRY_SK, COUNTRY_SL, COUNTRY_SM, COUNTRY_SN, COUNTRY_SO, COUNTRY_SR, COUNTRY_SS, COUNTRY_ST, COUNTRY_SV, COUNTRY_SX, COUNTRY_SY, COUNTRY_SZ, COUNTRY_TC, COUNTRY_TD, COUNTRY_TF, COUNTRY_TG, COUNTRY_TH, COUNTRY_TJ, COUNTRY_TK, COUNTRY_TL, COUNTRY_TM, COUNTRY_TN, COUNTRY_TO, COUNTRY_TR, COUNTRY_TT, COUNTRY_TV, COUNTRY_TW, COUNTRY_TZ, COUNTRY_UA, COUNTRY_UG, COUNTRY_UM, COUNTRY_US, COUNTRY_UY, COUNTRY_UZ, COUNTRY_VA, COUNTRY_VC, COUNTRY_VE, COUNTRY_VG, COUNTRY_VI, COUNTRY_VN, COUNTRY_VU, COUNTRY_WF, COUNTRY_WS, COUNTRY_YE, COUNTRY_YT, COUNTRY_ZA, COUNTRY_ZM, COUNTRY_ZW};
    }

    @JvmStatic
    public static final Country fromValue(int i) {
        return INSTANCE.fromValue(i);
    }

    public static EnumEntries<Country> getEntries() {
        return $ENTRIES;
    }

    public static Country valueOf(String str) {
        return (Country) Enum.valueOf(Country.class, str);
    }

    public static Country[] values() {
        return (Country[]) $VALUES.clone();
    }

    private Country(String str, int i, int i2) {
        this.value = i2;
    }

    @Override // com.squareup.wire.WireEnum
    public int getValue() {
        return this.value;
    }

    static {
        final Country country = new Country("COUNTRY_INVALID", 0, 0);
        COUNTRY_INVALID = country;
        COUNTRY_AD = new Country("COUNTRY_AD", 1, 1);
        COUNTRY_AE = new Country("COUNTRY_AE", 2, 2);
        COUNTRY_AF = new Country("COUNTRY_AF", 3, 3);
        COUNTRY_AG = new Country("COUNTRY_AG", 4, 4);
        COUNTRY_AI = new Country("COUNTRY_AI", 5, 5);
        COUNTRY_AL = new Country("COUNTRY_AL", 6, 6);
        COUNTRY_AM = new Country("COUNTRY_AM", 7, 7);
        COUNTRY_AO = new Country("COUNTRY_AO", 8, 8);
        COUNTRY_AQ = new Country("COUNTRY_AQ", 9, 9);
        COUNTRY_AR = new Country("COUNTRY_AR", 10, 10);
        COUNTRY_AS = new Country("COUNTRY_AS", 11, 11);
        COUNTRY_AT = new Country("COUNTRY_AT", 12, 12);
        COUNTRY_AU = new Country("COUNTRY_AU", 13, 13);
        COUNTRY_AW = new Country("COUNTRY_AW", 14, 14);
        COUNTRY_AX = new Country("COUNTRY_AX", 15, 15);
        COUNTRY_AZ = new Country("COUNTRY_AZ", 16, 16);
        COUNTRY_BA = new Country("COUNTRY_BA", 17, 17);
        COUNTRY_BB = new Country("COUNTRY_BB", 18, 18);
        COUNTRY_BD = new Country("COUNTRY_BD", 19, 19);
        COUNTRY_BE = new Country("COUNTRY_BE", 20, 20);
        COUNTRY_BF = new Country("COUNTRY_BF", 21, 21);
        COUNTRY_BG = new Country("COUNTRY_BG", 22, 22);
        COUNTRY_BH = new Country("COUNTRY_BH", 23, 23);
        COUNTRY_BI = new Country("COUNTRY_BI", 24, 24);
        COUNTRY_BJ = new Country("COUNTRY_BJ", 25, 25);
        COUNTRY_BL = new Country("COUNTRY_BL", 26, 26);
        COUNTRY_BM = new Country("COUNTRY_BM", 27, 27);
        COUNTRY_BN = new Country("COUNTRY_BN", 28, 28);
        COUNTRY_BO = new Country("COUNTRY_BO", 29, 29);
        COUNTRY_BQ = new Country("COUNTRY_BQ", 30, 30);
        COUNTRY_BR = new Country("COUNTRY_BR", 31, 31);
        COUNTRY_BS = new Country("COUNTRY_BS", 32, 32);
        COUNTRY_BT = new Country("COUNTRY_BT", 33, 33);
        COUNTRY_BV = new Country("COUNTRY_BV", 34, 34);
        COUNTRY_BW = new Country("COUNTRY_BW", 35, 35);
        COUNTRY_BY = new Country("COUNTRY_BY", 36, 36);
        COUNTRY_BZ = new Country("COUNTRY_BZ", 37, 37);
        COUNTRY_CA = new Country("COUNTRY_CA", 38, 38);
        COUNTRY_CC = new Country("COUNTRY_CC", 39, 39);
        COUNTRY_CD = new Country("COUNTRY_CD", 40, 40);
        COUNTRY_CF = new Country("COUNTRY_CF", 41, 41);
        COUNTRY_CG = new Country("COUNTRY_CG", 42, 42);
        COUNTRY_CH = new Country("COUNTRY_CH", 43, 43);
        COUNTRY_CI = new Country("COUNTRY_CI", 44, 44);
        COUNTRY_CK = new Country("COUNTRY_CK", 45, 45);
        COUNTRY_CL = new Country("COUNTRY_CL", 46, 46);
        COUNTRY_CM = new Country("COUNTRY_CM", 47, 47);
        COUNTRY_CN = new Country("COUNTRY_CN", 48, 48);
        COUNTRY_CO = new Country("COUNTRY_CO", 49, 49);
        COUNTRY_CR = new Country("COUNTRY_CR", 50, 50);
        COUNTRY_CU = new Country("COUNTRY_CU", 51, 51);
        COUNTRY_CV = new Country("COUNTRY_CV", 52, 52);
        COUNTRY_CW = new Country("COUNTRY_CW", 53, 53);
        COUNTRY_CX = new Country("COUNTRY_CX", 54, 54);
        COUNTRY_CY = new Country("COUNTRY_CY", 55, 55);
        COUNTRY_CZ = new Country("COUNTRY_CZ", 56, 56);
        COUNTRY_DE = new Country("COUNTRY_DE", 57, 57);
        COUNTRY_DJ = new Country("COUNTRY_DJ", 58, 58);
        COUNTRY_DK = new Country("COUNTRY_DK", 59, 59);
        COUNTRY_DM = new Country("COUNTRY_DM", 60, 60);
        COUNTRY_DO = new Country("COUNTRY_DO", 61, 61);
        COUNTRY_DZ = new Country("COUNTRY_DZ", 62, 62);
        COUNTRY_EC = new Country("COUNTRY_EC", 63, 63);
        COUNTRY_EE = new Country("COUNTRY_EE", 64, 64);
        COUNTRY_EG = new Country("COUNTRY_EG", 65, 65);
        COUNTRY_EH = new Country("COUNTRY_EH", 66, 66);
        COUNTRY_ER = new Country("COUNTRY_ER", 67, 67);
        COUNTRY_ES = new Country("COUNTRY_ES", 68, 68);
        COUNTRY_ET = new Country("COUNTRY_ET", 69, 69);
        COUNTRY_FI = new Country("COUNTRY_FI", 70, 70);
        COUNTRY_FJ = new Country("COUNTRY_FJ", 71, 71);
        COUNTRY_FK = new Country("COUNTRY_FK", 72, 72);
        COUNTRY_FM = new Country("COUNTRY_FM", 73, 73);
        COUNTRY_FO = new Country("COUNTRY_FO", 74, 74);
        COUNTRY_FR = new Country("COUNTRY_FR", 75, 75);
        COUNTRY_GA = new Country("COUNTRY_GA", 76, 76);
        COUNTRY_GB = new Country("COUNTRY_GB", 77, 77);
        COUNTRY_GD = new Country("COUNTRY_GD", 78, 78);
        COUNTRY_GE = new Country("COUNTRY_GE", 79, 79);
        COUNTRY_GF = new Country("COUNTRY_GF", 80, 80);
        COUNTRY_GG = new Country("COUNTRY_GG", 81, 81);
        COUNTRY_GH = new Country("COUNTRY_GH", 82, 82);
        COUNTRY_GI = new Country("COUNTRY_GI", 83, 83);
        COUNTRY_GL = new Country("COUNTRY_GL", 84, 84);
        COUNTRY_GM = new Country("COUNTRY_GM", 85, 85);
        COUNTRY_GN = new Country("COUNTRY_GN", 86, 86);
        COUNTRY_GP = new Country("COUNTRY_GP", 87, 87);
        COUNTRY_GQ = new Country("COUNTRY_GQ", 88, 88);
        COUNTRY_GR = new Country("COUNTRY_GR", 89, 89);
        COUNTRY_GS = new Country("COUNTRY_GS", 90, 90);
        COUNTRY_GT = new Country("COUNTRY_GT", 91, 91);
        COUNTRY_GU = new Country("COUNTRY_GU", 92, 92);
        COUNTRY_GW = new Country("COUNTRY_GW", 93, 93);
        COUNTRY_GY = new Country("COUNTRY_GY", 94, 94);
        COUNTRY_HK = new Country("COUNTRY_HK", 95, 95);
        COUNTRY_HM = new Country("COUNTRY_HM", 96, 96);
        COUNTRY_HN = new Country("COUNTRY_HN", 97, 97);
        COUNTRY_HR = new Country("COUNTRY_HR", 98, 98);
        COUNTRY_HT = new Country("COUNTRY_HT", 99, 99);
        COUNTRY_HU = new Country("COUNTRY_HU", 100, 100);
        COUNTRY_ID = new Country("COUNTRY_ID", 101, 101);
        COUNTRY_IE = new Country("COUNTRY_IE", 102, 102);
        COUNTRY_IL = new Country("COUNTRY_IL", 103, 103);
        COUNTRY_IM = new Country("COUNTRY_IM", 104, 104);
        COUNTRY_IN = new Country("COUNTRY_IN", WinError.ERROR_SEM_OWNER_DIED, WinError.ERROR_SEM_OWNER_DIED);
        COUNTRY_IO = new Country("COUNTRY_IO", WinError.ERROR_SEM_USER_LIMIT, WinError.ERROR_SEM_USER_LIMIT);
        COUNTRY_IQ = new Country("COUNTRY_IQ", WinError.ERROR_DISK_CHANGE, WinError.ERROR_DISK_CHANGE);
        COUNTRY_IR = new Country("COUNTRY_IR", 108, 108);
        COUNTRY_IS = new Country("COUNTRY_IS", 109, 109);
        COUNTRY_IT = new Country("COUNTRY_IT", 110, 110);
        COUNTRY_JE = new Country("COUNTRY_JE", WinError.ERROR_BUFFER_OVERFLOW, WinError.ERROR_BUFFER_OVERFLOW);
        COUNTRY_JM = new Country("COUNTRY_JM", 112, 112);
        COUNTRY_JO = new Country("COUNTRY_JO", WinError.ERROR_NO_MORE_SEARCH_HANDLES, WinError.ERROR_NO_MORE_SEARCH_HANDLES);
        COUNTRY_JP = new Country("COUNTRY_JP", WinError.ERROR_INVALID_TARGET_HANDLE, WinError.ERROR_INVALID_TARGET_HANDLE);
        COUNTRY_KE = new Country("COUNTRY_KE", 115, 115);
        COUNTRY_KG = new Country("COUNTRY_KG", 116, 116);
        COUNTRY_KH = new Country("COUNTRY_KH", WinError.ERROR_INVALID_CATEGORY, WinError.ERROR_INVALID_CATEGORY);
        COUNTRY_KI = new Country("COUNTRY_KI", WinError.ERROR_INVALID_VERIFY_SWITCH, WinError.ERROR_INVALID_VERIFY_SWITCH);
        COUNTRY_KM = new Country("COUNTRY_KM", WinError.ERROR_BAD_DRIVER_LEVEL, WinError.ERROR_BAD_DRIVER_LEVEL);
        COUNTRY_KN = new Country("COUNTRY_KN", WinError.ERROR_CALL_NOT_IMPLEMENTED, WinError.ERROR_CALL_NOT_IMPLEMENTED);
        COUNTRY_KP = new Country("COUNTRY_KP", WinError.ERROR_SEM_TIMEOUT, WinError.ERROR_SEM_TIMEOUT);
        COUNTRY_KR = new Country("COUNTRY_KR", 122, 122);
        COUNTRY_KW = new Country("COUNTRY_KW", 123, 123);
        COUNTRY_KY = new Country("COUNTRY_KY", WinError.ERROR_INVALID_LEVEL, WinError.ERROR_INVALID_LEVEL);
        COUNTRY_KZ = new Country("COUNTRY_KZ", WinError.ERROR_NO_VOLUME_LABEL, WinError.ERROR_NO_VOLUME_LABEL);
        COUNTRY_LA = new Country("COUNTRY_LA", 126, 126);
        COUNTRY_LB = new Country("COUNTRY_LB", 127, 127);
        COUNTRY_LC = new Country("COUNTRY_LC", 128, 128);
        COUNTRY_LI = new Country("COUNTRY_LI", 129, 129);
        COUNTRY_LK = new Country("COUNTRY_LK", 130, 130);
        COUNTRY_LR = new Country("COUNTRY_LR", 131, 131);
        COUNTRY_LS = new Country("COUNTRY_LS", WinError.ERROR_SEEK_ON_DEVICE, WinError.ERROR_SEEK_ON_DEVICE);
        COUNTRY_LT = new Country("COUNTRY_LT", WinError.ERROR_IS_JOIN_TARGET, WinError.ERROR_IS_JOIN_TARGET);
        COUNTRY_LU = new Country("COUNTRY_LU", WinError.ERROR_IS_JOINED, WinError.ERROR_IS_JOINED);
        COUNTRY_LV = new Country("COUNTRY_LV", WinError.ERROR_IS_SUBSTED, WinError.ERROR_IS_SUBSTED);
        COUNTRY_LY = new Country("COUNTRY_LY", 136, 136);
        COUNTRY_MA = new Country("COUNTRY_MA", WinError.ERROR_NOT_SUBSTED, WinError.ERROR_NOT_SUBSTED);
        COUNTRY_MC = new Country("COUNTRY_MC", WinError.ERROR_JOIN_TO_JOIN, WinError.ERROR_JOIN_TO_JOIN);
        COUNTRY_MD = new Country("COUNTRY_MD", WinError.ERROR_SUBST_TO_SUBST, WinError.ERROR_SUBST_TO_SUBST);
        COUNTRY_ME = new Country("COUNTRY_ME", WinError.ERROR_JOIN_TO_SUBST, WinError.ERROR_JOIN_TO_SUBST);
        COUNTRY_MF = new Country("COUNTRY_MF", WinError.ERROR_SUBST_TO_JOIN, WinError.ERROR_SUBST_TO_JOIN);
        COUNTRY_MG = new Country("COUNTRY_MG", 142, 142);
        COUNTRY_MH = new Country("COUNTRY_MH", WinError.ERROR_SAME_DRIVE, WinError.ERROR_SAME_DRIVE);
        COUNTRY_MK = new Country("COUNTRY_MK", WinError.ERROR_DIR_NOT_ROOT, WinError.ERROR_DIR_NOT_ROOT);
        COUNTRY_ML = new Country("COUNTRY_ML", WinError.ERROR_DIR_NOT_EMPTY, WinError.ERROR_DIR_NOT_EMPTY);
        COUNTRY_MM = new Country("COUNTRY_MM", WinError.ERROR_IS_SUBST_PATH, WinError.ERROR_IS_SUBST_PATH);
        COUNTRY_MN = new Country("COUNTRY_MN", WinError.ERROR_IS_JOIN_PATH, WinError.ERROR_IS_JOIN_PATH);
        COUNTRY_MO = new Country("COUNTRY_MO", WinError.ERROR_PATH_BUSY, WinError.ERROR_PATH_BUSY);
        COUNTRY_MP = new Country("COUNTRY_MP", WinError.ERROR_IS_SUBST_TARGET, WinError.ERROR_IS_SUBST_TARGET);
        COUNTRY_MQ = new Country("COUNTRY_MQ", WinError.ERROR_SYSTEM_TRACE, WinError.ERROR_SYSTEM_TRACE);
        COUNTRY_MR = new Country("COUNTRY_MR", WinError.ERROR_INVALID_EVENT_COUNT, WinError.ERROR_INVALID_EVENT_COUNT);
        COUNTRY_MS = new Country("COUNTRY_MS", WinError.ERROR_TOO_MANY_MUXWAITERS, WinError.ERROR_TOO_MANY_MUXWAITERS);
        COUNTRY_MT = new Country("COUNTRY_MT", WinError.ERROR_INVALID_LIST_FORMAT, WinError.ERROR_INVALID_LIST_FORMAT);
        COUNTRY_MU = new Country("COUNTRY_MU", WinError.ERROR_LABEL_TOO_LONG, WinError.ERROR_LABEL_TOO_LONG);
        COUNTRY_MV = new Country("COUNTRY_MV", 155, 155);
        COUNTRY_MW = new Country("COUNTRY_MW", WinError.ERROR_SIGNAL_REFUSED, WinError.ERROR_SIGNAL_REFUSED);
        COUNTRY_MX = new Country("COUNTRY_MX", WinError.ERROR_DISCARDED, WinError.ERROR_DISCARDED);
        COUNTRY_MY = new Country("COUNTRY_MY", WinError.ERROR_NOT_LOCKED, WinError.ERROR_NOT_LOCKED);
        COUNTRY_MZ = new Country("COUNTRY_MZ", WinError.ERROR_BAD_THREADID_ADDR, WinError.ERROR_BAD_THREADID_ADDR);
        COUNTRY_NA = new Country("COUNTRY_NA", 160, 160);
        COUNTRY_NC = new Country("COUNTRY_NC", 161, 161);
        COUNTRY_NE = new Country("COUNTRY_NE", 162, 162);
        COUNTRY_NF = new Country("COUNTRY_NF", WinUser.VK_RCONTROL, WinUser.VK_RCONTROL);
        COUNTRY_NG = new Country("COUNTRY_NG", 164, 164);
        COUNTRY_NI = new Country("COUNTRY_NI", WinUser.VK_RMENU, WinUser.VK_RMENU);
        COUNTRY_NL = new Country("COUNTRY_NL", 166, 166);
        COUNTRY_NO = new Country("COUNTRY_NO", WinError.ERROR_LOCK_FAILED, WinError.ERROR_LOCK_FAILED);
        COUNTRY_NP = new Country("COUNTRY_NP", 168, 168);
        COUNTRY_NR = new Country("COUNTRY_NR", 169, 169);
        COUNTRY_NU = new Country("COUNTRY_NU", WinError.ERROR_BUSY, WinError.ERROR_BUSY);
        COUNTRY_NZ = new Country("COUNTRY_NZ", 171, 171);
        COUNTRY_OM = new Country("COUNTRY_OM", 172, 172);
        COUNTRY_PA = new Country("COUNTRY_PA", WinError.ERROR_CANCEL_VIOLATION, WinError.ERROR_CANCEL_VIOLATION);
        COUNTRY_PE = new Country("COUNTRY_PE", WinError.ERROR_ATOMIC_LOCKS_NOT_SUPPORTED, WinError.ERROR_ATOMIC_LOCKS_NOT_SUPPORTED);
        COUNTRY_PF = new Country("COUNTRY_PF", 175, 175);
        COUNTRY_PG = new Country("COUNTRY_PG", 176, 176);
        COUNTRY_PH = new Country("COUNTRY_PH", 177, 177);
        COUNTRY_PK = new Country("COUNTRY_PK", 178, 178);
        COUNTRY_PL = new Country("COUNTRY_PL", 179, 179);
        COUNTRY_PM = new Country("COUNTRY_PM", WinError.ERROR_INVALID_SEGMENT_NUMBER, WinError.ERROR_INVALID_SEGMENT_NUMBER);
        COUNTRY_PN = new Country("COUNTRY_PN", 181, 181);
        COUNTRY_PR = new Country("COUNTRY_PR", WinError.ERROR_INVALID_ORDINAL, WinError.ERROR_INVALID_ORDINAL);
        COUNTRY_PS = new Country("COUNTRY_PS", WinError.ERROR_ALREADY_EXISTS, WinError.ERROR_ALREADY_EXISTS);
        COUNTRY_PT = new Country("COUNTRY_PT", 184, 184);
        COUNTRY_PW = new Country("COUNTRY_PW", 185, 185);
        COUNTRY_PY = new Country("COUNTRY_PY", WinError.ERROR_INVALID_FLAG_NUMBER, WinError.ERROR_INVALID_FLAG_NUMBER);
        COUNTRY_QA = new Country("COUNTRY_QA", WinError.ERROR_SEM_NOT_FOUND, WinError.ERROR_SEM_NOT_FOUND);
        COUNTRY_QZ = new Country("COUNTRY_QZ", WinError.ERROR_INVALID_STARTING_CODESEG, WinError.ERROR_INVALID_STARTING_CODESEG);
        COUNTRY_RE = new Country("COUNTRY_RE", WinError.ERROR_INVALID_STACKSEG, WinError.ERROR_INVALID_STACKSEG);
        COUNTRY_RO = new Country("COUNTRY_RO", WinError.ERROR_INVALID_MODULETYPE, WinError.ERROR_INVALID_MODULETYPE);
        COUNTRY_RS = new Country("COUNTRY_RS", 191, 191);
        COUNTRY_RU = new Country("COUNTRY_RU", 192, 192);
        COUNTRY_RW = new Country("COUNTRY_RW", WinError.ERROR_BAD_EXE_FORMAT, WinError.ERROR_BAD_EXE_FORMAT);
        COUNTRY_SA = new Country("COUNTRY_SA", WinError.ERROR_ITERATED_DATA_EXCEEDS_64k, WinError.ERROR_ITERATED_DATA_EXCEEDS_64k);
        COUNTRY_SB = new Country("COUNTRY_SB", WinError.ERROR_INVALID_MINALLOCSIZE, WinError.ERROR_INVALID_MINALLOCSIZE);
        COUNTRY_SC = new Country("COUNTRY_SC", WinError.ERROR_DYNLINK_FROM_INVALID_RING, WinError.ERROR_DYNLINK_FROM_INVALID_RING);
        COUNTRY_SD = new Country("COUNTRY_SD", WinError.ERROR_IOPL_NOT_ENABLED, WinError.ERROR_IOPL_NOT_ENABLED);
        COUNTRY_SE = new Country("COUNTRY_SE", WinError.ERROR_INVALID_SEGDPL, WinError.ERROR_INVALID_SEGDPL);
        COUNTRY_SG = new Country("COUNTRY_SG", WinError.ERROR_AUTODATASEG_EXCEEDS_64k, WinError.ERROR_AUTODATASEG_EXCEEDS_64k);
        COUNTRY_SH = new Country("COUNTRY_SH", 200, 200);
        COUNTRY_SI = new Country("COUNTRY_SI", 201, 201);
        COUNTRY_SJ = new Country("COUNTRY_SJ", 202, 202);
        COUNTRY_SK = new Country("COUNTRY_SK", 203, 203);
        COUNTRY_SL = new Country("COUNTRY_SL", HttpStatus.SC_NO_CONTENT, HttpStatus.SC_NO_CONTENT);
        COUNTRY_SM = new Country("COUNTRY_SM", 205, 205);
        COUNTRY_SN = new Country("COUNTRY_SN", 206, 206);
        COUNTRY_SO = new Country("COUNTRY_SO", 207, 207);
        COUNTRY_SR = new Country("COUNTRY_SR", WinError.ERROR_META_EXPANSION_TOO_LONG, WinError.ERROR_META_EXPANSION_TOO_LONG);
        COUNTRY_SS = new Country("COUNTRY_SS", WinError.ERROR_INVALID_SIGNAL_NUMBER, WinError.ERROR_INVALID_SIGNAL_NUMBER);
        COUNTRY_ST = new Country("COUNTRY_ST", WinError.ERROR_THREAD_1_INACTIVE, WinError.ERROR_THREAD_1_INACTIVE);
        COUNTRY_SV = new Country("COUNTRY_SV", 211, 211);
        COUNTRY_SX = new Country("COUNTRY_SX", WinError.ERROR_LOCKED, WinError.ERROR_LOCKED);
        COUNTRY_SY = new Country("COUNTRY_SY", 213, 213);
        COUNTRY_SZ = new Country("COUNTRY_SZ", WinError.ERROR_TOO_MANY_MODULES, WinError.ERROR_TOO_MANY_MODULES);
        COUNTRY_TC = new Country("COUNTRY_TC", WinError.ERROR_NESTING_NOT_ALLOWED, WinError.ERROR_NESTING_NOT_ALLOWED);
        COUNTRY_TD = new Country("COUNTRY_TD", WinError.ERROR_EXE_MACHINE_TYPE_MISMATCH, WinError.ERROR_EXE_MACHINE_TYPE_MISMATCH);
        COUNTRY_TF = new Country("COUNTRY_TF", WinError.ERROR_EXE_CANNOT_MODIFY_SIGNED_BINARY, WinError.ERROR_EXE_CANNOT_MODIFY_SIGNED_BINARY);
        COUNTRY_TG = new Country("COUNTRY_TG", WinError.ERROR_EXE_CANNOT_MODIFY_STRONG_SIGNED_BINARY, WinError.ERROR_EXE_CANNOT_MODIFY_STRONG_SIGNED_BINARY);
        COUNTRY_TH = new Country("COUNTRY_TH", 219, 219);
        COUNTRY_TJ = new Country("COUNTRY_TJ", WinError.ERROR_FILE_CHECKED_OUT, WinError.ERROR_FILE_CHECKED_OUT);
        COUNTRY_TK = new Country("COUNTRY_TK", WinError.ERROR_CHECKOUT_REQUIRED, WinError.ERROR_CHECKOUT_REQUIRED);
        COUNTRY_TL = new Country("COUNTRY_TL", WinError.ERROR_BAD_FILE_TYPE, WinError.ERROR_BAD_FILE_TYPE);
        COUNTRY_TM = new Country("COUNTRY_TM", WinError.ERROR_FILE_TOO_LARGE, WinError.ERROR_FILE_TOO_LARGE);
        COUNTRY_TN = new Country("COUNTRY_TN", WinError.ERROR_FORMS_AUTH_REQUIRED, WinError.ERROR_FORMS_AUTH_REQUIRED);
        COUNTRY_TO = new Country("COUNTRY_TO", WinError.ERROR_VIRUS_INFECTED, WinError.ERROR_VIRUS_INFECTED);
        COUNTRY_TR = new Country("COUNTRY_TR", WinError.ERROR_VIRUS_DELETED, WinError.ERROR_VIRUS_DELETED);
        COUNTRY_TT = new Country("COUNTRY_TT", 227, 227);
        COUNTRY_TV = new Country("COUNTRY_TV", 228, 228);
        COUNTRY_TW = new Country("COUNTRY_TW", WinError.ERROR_PIPE_LOCAL, WinError.ERROR_PIPE_LOCAL);
        COUNTRY_TZ = new Country("COUNTRY_TZ", WinError.ERROR_BAD_PIPE, WinError.ERROR_BAD_PIPE);
        COUNTRY_UA = new Country("COUNTRY_UA", WinError.ERROR_PIPE_BUSY, WinError.ERROR_PIPE_BUSY);
        COUNTRY_UG = new Country("COUNTRY_UG", WinError.ERROR_NO_DATA, WinError.ERROR_NO_DATA);
        COUNTRY_UM = new Country("COUNTRY_UM", WinError.ERROR_PIPE_NOT_CONNECTED, WinError.ERROR_PIPE_NOT_CONNECTED);
        COUNTRY_US = new Country("COUNTRY_US", WinError.ERROR_MORE_DATA, WinError.ERROR_MORE_DATA);
        COUNTRY_UY = new Country("COUNTRY_UY", 235, 235);
        COUNTRY_UZ = new Country("COUNTRY_UZ", 236, 236);
        COUNTRY_VA = new Country("COUNTRY_VA", 237, 237);
        COUNTRY_VC = new Country("COUNTRY_VC", 238, 238);
        COUNTRY_VE = new Country("COUNTRY_VE", 239, 239);
        COUNTRY_VG = new Country("COUNTRY_VG", 240, 240);
        COUNTRY_VI = new Country("COUNTRY_VI", 241, 241);
        COUNTRY_VN = new Country("COUNTRY_VN", 242, 242);
        COUNTRY_VU = new Country("COUNTRY_VU", 243, 243);
        COUNTRY_WF = new Country("COUNTRY_WF", 244, 244);
        COUNTRY_WS = new Country("COUNTRY_WS", 245, 245);
        COUNTRY_YE = new Country("COUNTRY_YE", 246, 246);
        COUNTRY_YT = new Country("COUNTRY_YT", 247, 247);
        COUNTRY_ZA = new Country("COUNTRY_ZA", 248, 248);
        COUNTRY_ZM = new Country("COUNTRY_ZM", 249, 249);
        COUNTRY_ZW = new Country("COUNTRY_ZW", ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION, ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION);
        Country[] countryArr$values = $values();
        $VALUES = countryArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(countryArr$values);
        INSTANCE = new Companion(null);
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Country.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new EnumAdapter<Country>(orCreateKotlinClass, syntax, country) { // from class: com.stripe.proto.java.globalization.Country$Companion$ADAPTER$1
            {
                Country country2 = country;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.squareup.wire.EnumAdapter
            public Country fromValue(int value) {
                return Country.INSTANCE.fromValue(value);
            }
        };
    }

    /* JADX INFO: compiled from: Country.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/java/globalization/Country$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/java/globalization/Country;", "fromValue", "value", "", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final Country fromValue(int value) {
            switch (value) {
                case 0:
                    return Country.COUNTRY_INVALID;
                case 1:
                    return Country.COUNTRY_AD;
                case 2:
                    return Country.COUNTRY_AE;
                case 3:
                    return Country.COUNTRY_AF;
                case 4:
                    return Country.COUNTRY_AG;
                case 5:
                    return Country.COUNTRY_AI;
                case 6:
                    return Country.COUNTRY_AL;
                case 7:
                    return Country.COUNTRY_AM;
                case 8:
                    return Country.COUNTRY_AO;
                case 9:
                    return Country.COUNTRY_AQ;
                case 10:
                    return Country.COUNTRY_AR;
                case 11:
                    return Country.COUNTRY_AS;
                case 12:
                    return Country.COUNTRY_AT;
                case 13:
                    return Country.COUNTRY_AU;
                case 14:
                    return Country.COUNTRY_AW;
                case 15:
                    return Country.COUNTRY_AX;
                case 16:
                    return Country.COUNTRY_AZ;
                case 17:
                    return Country.COUNTRY_BA;
                case 18:
                    return Country.COUNTRY_BB;
                case 19:
                    return Country.COUNTRY_BD;
                case 20:
                    return Country.COUNTRY_BE;
                case 21:
                    return Country.COUNTRY_BF;
                case 22:
                    return Country.COUNTRY_BG;
                case 23:
                    return Country.COUNTRY_BH;
                case 24:
                    return Country.COUNTRY_BI;
                case 25:
                    return Country.COUNTRY_BJ;
                case 26:
                    return Country.COUNTRY_BL;
                case 27:
                    return Country.COUNTRY_BM;
                case 28:
                    return Country.COUNTRY_BN;
                case 29:
                    return Country.COUNTRY_BO;
                case 30:
                    return Country.COUNTRY_BQ;
                case 31:
                    return Country.COUNTRY_BR;
                case 32:
                    return Country.COUNTRY_BS;
                case 33:
                    return Country.COUNTRY_BT;
                case 34:
                    return Country.COUNTRY_BV;
                case 35:
                    return Country.COUNTRY_BW;
                case 36:
                    return Country.COUNTRY_BY;
                case 37:
                    return Country.COUNTRY_BZ;
                case 38:
                    return Country.COUNTRY_CA;
                case 39:
                    return Country.COUNTRY_CC;
                case 40:
                    return Country.COUNTRY_CD;
                case 41:
                    return Country.COUNTRY_CF;
                case 42:
                    return Country.COUNTRY_CG;
                case 43:
                    return Country.COUNTRY_CH;
                case 44:
                    return Country.COUNTRY_CI;
                case 45:
                    return Country.COUNTRY_CK;
                case 46:
                    return Country.COUNTRY_CL;
                case 47:
                    return Country.COUNTRY_CM;
                case 48:
                    return Country.COUNTRY_CN;
                case 49:
                    return Country.COUNTRY_CO;
                case 50:
                    return Country.COUNTRY_CR;
                case 51:
                    return Country.COUNTRY_CU;
                case 52:
                    return Country.COUNTRY_CV;
                case 53:
                    return Country.COUNTRY_CW;
                case 54:
                    return Country.COUNTRY_CX;
                case 55:
                    return Country.COUNTRY_CY;
                case 56:
                    return Country.COUNTRY_CZ;
                case 57:
                    return Country.COUNTRY_DE;
                case 58:
                    return Country.COUNTRY_DJ;
                case 59:
                    return Country.COUNTRY_DK;
                case 60:
                    return Country.COUNTRY_DM;
                case 61:
                    return Country.COUNTRY_DO;
                case 62:
                    return Country.COUNTRY_DZ;
                case 63:
                    return Country.COUNTRY_EC;
                case 64:
                    return Country.COUNTRY_EE;
                case 65:
                    return Country.COUNTRY_EG;
                case 66:
                    return Country.COUNTRY_EH;
                case 67:
                    return Country.COUNTRY_ER;
                case 68:
                    return Country.COUNTRY_ES;
                case 69:
                    return Country.COUNTRY_ET;
                case 70:
                    return Country.COUNTRY_FI;
                case 71:
                    return Country.COUNTRY_FJ;
                case 72:
                    return Country.COUNTRY_FK;
                case 73:
                    return Country.COUNTRY_FM;
                case 74:
                    return Country.COUNTRY_FO;
                case 75:
                    return Country.COUNTRY_FR;
                case 76:
                    return Country.COUNTRY_GA;
                case 77:
                    return Country.COUNTRY_GB;
                case 78:
                    return Country.COUNTRY_GD;
                case 79:
                    return Country.COUNTRY_GE;
                case 80:
                    return Country.COUNTRY_GF;
                case 81:
                    return Country.COUNTRY_GG;
                case 82:
                    return Country.COUNTRY_GH;
                case 83:
                    return Country.COUNTRY_GI;
                case 84:
                    return Country.COUNTRY_GL;
                case WinError.ERROR_ALREADY_ASSIGNED /* 85 */:
                    return Country.COUNTRY_GM;
                case 86:
                    return Country.COUNTRY_GN;
                case 87:
                    return Country.COUNTRY_GP;
                case 88:
                    return Country.COUNTRY_GQ;
                case 89:
                    return Country.COUNTRY_GR;
                case 90:
                    return Country.COUNTRY_GS;
                case WinUser.SM_MOUSEHORIZONTALWHEELPRESENT /* 91 */:
                    return Country.COUNTRY_GT;
                case WinUser.SM_CXPADDEDBORDER /* 92 */:
                    return Country.COUNTRY_GU;
                case 93:
                    return Country.COUNTRY_GW;
                case 94:
                    return Country.COUNTRY_GY;
                case XAttr.ENOTSUP /* 95 */:
                    return Country.COUNTRY_HK;
                case WinNT.LANG_KASHMIRI /* 96 */:
                    return Country.COUNTRY_HM;
                case 97:
                    return Country.COUNTRY_HN;
                case 98:
                    return Country.COUNTRY_HR;
                case 99:
                    return Country.COUNTRY_HT;
                case 100:
                    return Country.COUNTRY_HU;
                case 101:
                    return Country.COUNTRY_ID;
                case 102:
                    return Country.COUNTRY_IE;
                case 103:
                    return Country.COUNTRY_IL;
                case 104:
                    return Country.COUNTRY_IM;
                case WinError.ERROR_SEM_OWNER_DIED /* 105 */:
                    return Country.COUNTRY_IN;
                case WinError.ERROR_SEM_USER_LIMIT /* 106 */:
                    return Country.COUNTRY_IO;
                case WinError.ERROR_DISK_CHANGE /* 107 */:
                    return Country.COUNTRY_IQ;
                case 108:
                    return Country.COUNTRY_IR;
                case 109:
                    return Country.COUNTRY_IS;
                case 110:
                    return Country.COUNTRY_IT;
                case WinError.ERROR_BUFFER_OVERFLOW /* 111 */:
                    return Country.COUNTRY_JE;
                case 112:
                    return Country.COUNTRY_JM;
                case WinError.ERROR_NO_MORE_SEARCH_HANDLES /* 113 */:
                    return Country.COUNTRY_JO;
                case WinError.ERROR_INVALID_TARGET_HANDLE /* 114 */:
                    return Country.COUNTRY_JP;
                case 115:
                    return Country.COUNTRY_KE;
                case 116:
                    return Country.COUNTRY_KG;
                case WinError.ERROR_INVALID_CATEGORY /* 117 */:
                    return Country.COUNTRY_KH;
                case WinError.ERROR_INVALID_VERIFY_SWITCH /* 118 */:
                    return Country.COUNTRY_KI;
                case WinError.ERROR_BAD_DRIVER_LEVEL /* 119 */:
                    return Country.COUNTRY_KM;
                case WinError.ERROR_CALL_NOT_IMPLEMENTED /* 120 */:
                    return Country.COUNTRY_KN;
                case WinError.ERROR_SEM_TIMEOUT /* 121 */:
                    return Country.COUNTRY_KP;
                case 122:
                    return Country.COUNTRY_KR;
                case 123:
                    return Country.COUNTRY_KW;
                case WinError.ERROR_INVALID_LEVEL /* 124 */:
                    return Country.COUNTRY_KY;
                case WinError.ERROR_NO_VOLUME_LABEL /* 125 */:
                    return Country.COUNTRY_KZ;
                case 126:
                    return Country.COUNTRY_LA;
                case 127:
                    return Country.COUNTRY_LB;
                case 128:
                    return Country.COUNTRY_LC;
                case 129:
                    return Country.COUNTRY_LI;
                case 130:
                    return Country.COUNTRY_LK;
                case 131:
                    return Country.COUNTRY_LR;
                case WinError.ERROR_SEEK_ON_DEVICE /* 132 */:
                    return Country.COUNTRY_LS;
                case WinError.ERROR_IS_JOIN_TARGET /* 133 */:
                    return Country.COUNTRY_LT;
                case WinError.ERROR_IS_JOINED /* 134 */:
                    return Country.COUNTRY_LU;
                case WinError.ERROR_IS_SUBSTED /* 135 */:
                    return Country.COUNTRY_LV;
                case 136:
                    return Country.COUNTRY_LY;
                case WinError.ERROR_NOT_SUBSTED /* 137 */:
                    return Country.COUNTRY_MA;
                case WinError.ERROR_JOIN_TO_JOIN /* 138 */:
                    return Country.COUNTRY_MC;
                case WinError.ERROR_SUBST_TO_SUBST /* 139 */:
                    return Country.COUNTRY_MD;
                case WinError.ERROR_JOIN_TO_SUBST /* 140 */:
                    return Country.COUNTRY_ME;
                case WinError.ERROR_SUBST_TO_JOIN /* 141 */:
                    return Country.COUNTRY_MF;
                case 142:
                    return Country.COUNTRY_MG;
                case WinError.ERROR_SAME_DRIVE /* 143 */:
                    return Country.COUNTRY_MH;
                case WinError.ERROR_DIR_NOT_ROOT /* 144 */:
                    return Country.COUNTRY_MK;
                case WinError.ERROR_DIR_NOT_EMPTY /* 145 */:
                    return Country.COUNTRY_ML;
                case WinError.ERROR_IS_SUBST_PATH /* 146 */:
                    return Country.COUNTRY_MM;
                case WinError.ERROR_IS_JOIN_PATH /* 147 */:
                    return Country.COUNTRY_MN;
                case WinError.ERROR_PATH_BUSY /* 148 */:
                    return Country.COUNTRY_MO;
                case WinError.ERROR_IS_SUBST_TARGET /* 149 */:
                    return Country.COUNTRY_MP;
                case WinError.ERROR_SYSTEM_TRACE /* 150 */:
                    return Country.COUNTRY_MQ;
                case WinError.ERROR_INVALID_EVENT_COUNT /* 151 */:
                    return Country.COUNTRY_MR;
                case WinError.ERROR_TOO_MANY_MUXWAITERS /* 152 */:
                    return Country.COUNTRY_MS;
                case WinError.ERROR_INVALID_LIST_FORMAT /* 153 */:
                    return Country.COUNTRY_MT;
                case WinError.ERROR_LABEL_TOO_LONG /* 154 */:
                    return Country.COUNTRY_MU;
                case 155:
                    return Country.COUNTRY_MV;
                case WinError.ERROR_SIGNAL_REFUSED /* 156 */:
                    return Country.COUNTRY_MW;
                case WinError.ERROR_DISCARDED /* 157 */:
                    return Country.COUNTRY_MX;
                case WinError.ERROR_NOT_LOCKED /* 158 */:
                    return Country.COUNTRY_MY;
                case WinError.ERROR_BAD_THREADID_ADDR /* 159 */:
                    return Country.COUNTRY_MZ;
                case 160:
                    return Country.COUNTRY_NA;
                case 161:
                    return Country.COUNTRY_NC;
                case 162:
                    return Country.COUNTRY_NE;
                case WinUser.VK_RCONTROL /* 163 */:
                    return Country.COUNTRY_NF;
                case 164:
                    return Country.COUNTRY_NG;
                case WinUser.VK_RMENU /* 165 */:
                    return Country.COUNTRY_NI;
                case 166:
                    return Country.COUNTRY_NL;
                case WinError.ERROR_LOCK_FAILED /* 167 */:
                    return Country.COUNTRY_NO;
                case 168:
                    return Country.COUNTRY_NP;
                case 169:
                    return Country.COUNTRY_NR;
                case WinError.ERROR_BUSY /* 170 */:
                    return Country.COUNTRY_NU;
                case 171:
                    return Country.COUNTRY_NZ;
                case 172:
                    return Country.COUNTRY_OM;
                case WinError.ERROR_CANCEL_VIOLATION /* 173 */:
                    return Country.COUNTRY_PA;
                case WinError.ERROR_ATOMIC_LOCKS_NOT_SUPPORTED /* 174 */:
                    return Country.COUNTRY_PE;
                case 175:
                    return Country.COUNTRY_PF;
                case 176:
                    return Country.COUNTRY_PG;
                case 177:
                    return Country.COUNTRY_PH;
                case 178:
                    return Country.COUNTRY_PK;
                case 179:
                    return Country.COUNTRY_PL;
                case WinError.ERROR_INVALID_SEGMENT_NUMBER /* 180 */:
                    return Country.COUNTRY_PM;
                case 181:
                    return Country.COUNTRY_PN;
                case WinError.ERROR_INVALID_ORDINAL /* 182 */:
                    return Country.COUNTRY_PR;
                case WinError.ERROR_ALREADY_EXISTS /* 183 */:
                    return Country.COUNTRY_PS;
                case 184:
                    return Country.COUNTRY_PT;
                case 185:
                    return Country.COUNTRY_PW;
                case WinError.ERROR_INVALID_FLAG_NUMBER /* 186 */:
                    return Country.COUNTRY_PY;
                case WinError.ERROR_SEM_NOT_FOUND /* 187 */:
                    return Country.COUNTRY_QA;
                case WinError.ERROR_INVALID_STARTING_CODESEG /* 188 */:
                    return Country.COUNTRY_QZ;
                case WinError.ERROR_INVALID_STACKSEG /* 189 */:
                    return Country.COUNTRY_RE;
                case WinError.ERROR_INVALID_MODULETYPE /* 190 */:
                    return Country.COUNTRY_RO;
                case 191:
                    return Country.COUNTRY_RS;
                case 192:
                    return Country.COUNTRY_RU;
                case WinError.ERROR_BAD_EXE_FORMAT /* 193 */:
                    return Country.COUNTRY_RW;
                case WinError.ERROR_ITERATED_DATA_EXCEEDS_64k /* 194 */:
                    return Country.COUNTRY_SA;
                case WinError.ERROR_INVALID_MINALLOCSIZE /* 195 */:
                    return Country.COUNTRY_SB;
                case WinError.ERROR_DYNLINK_FROM_INVALID_RING /* 196 */:
                    return Country.COUNTRY_SC;
                case WinError.ERROR_IOPL_NOT_ENABLED /* 197 */:
                    return Country.COUNTRY_SD;
                case WinError.ERROR_INVALID_SEGDPL /* 198 */:
                    return Country.COUNTRY_SE;
                case WinError.ERROR_AUTODATASEG_EXCEEDS_64k /* 199 */:
                    return Country.COUNTRY_SG;
                case 200:
                    return Country.COUNTRY_SH;
                case 201:
                    return Country.COUNTRY_SI;
                case 202:
                    return Country.COUNTRY_SJ;
                case 203:
                    return Country.COUNTRY_SK;
                case HttpStatus.SC_NO_CONTENT /* 204 */:
                    return Country.COUNTRY_SL;
                case 205:
                    return Country.COUNTRY_SM;
                case 206:
                    return Country.COUNTRY_SN;
                case 207:
                    return Country.COUNTRY_SO;
                case WinError.ERROR_META_EXPANSION_TOO_LONG /* 208 */:
                    return Country.COUNTRY_SR;
                case WinError.ERROR_INVALID_SIGNAL_NUMBER /* 209 */:
                    return Country.COUNTRY_SS;
                case WinError.ERROR_THREAD_1_INACTIVE /* 210 */:
                    return Country.COUNTRY_ST;
                case 211:
                    return Country.COUNTRY_SV;
                case WinError.ERROR_LOCKED /* 212 */:
                    return Country.COUNTRY_SX;
                case 213:
                    return Country.COUNTRY_SY;
                case WinError.ERROR_TOO_MANY_MODULES /* 214 */:
                    return Country.COUNTRY_SZ;
                case WinError.ERROR_NESTING_NOT_ALLOWED /* 215 */:
                    return Country.COUNTRY_TC;
                case WinError.ERROR_EXE_MACHINE_TYPE_MISMATCH /* 216 */:
                    return Country.COUNTRY_TD;
                case WinError.ERROR_EXE_CANNOT_MODIFY_SIGNED_BINARY /* 217 */:
                    return Country.COUNTRY_TF;
                case WinError.ERROR_EXE_CANNOT_MODIFY_STRONG_SIGNED_BINARY /* 218 */:
                    return Country.COUNTRY_TG;
                case 219:
                    return Country.COUNTRY_TH;
                case WinError.ERROR_FILE_CHECKED_OUT /* 220 */:
                    return Country.COUNTRY_TJ;
                case WinError.ERROR_CHECKOUT_REQUIRED /* 221 */:
                    return Country.COUNTRY_TK;
                case WinError.ERROR_BAD_FILE_TYPE /* 222 */:
                    return Country.COUNTRY_TL;
                case WinError.ERROR_FILE_TOO_LARGE /* 223 */:
                    return Country.COUNTRY_TM;
                case WinError.ERROR_FORMS_AUTH_REQUIRED /* 224 */:
                    return Country.COUNTRY_TN;
                case WinError.ERROR_VIRUS_INFECTED /* 225 */:
                    return Country.COUNTRY_TO;
                case WinError.ERROR_VIRUS_DELETED /* 226 */:
                    return Country.COUNTRY_TR;
                case 227:
                    return Country.COUNTRY_TT;
                case 228:
                    return Country.COUNTRY_TV;
                case WinError.ERROR_PIPE_LOCAL /* 229 */:
                    return Country.COUNTRY_TW;
                case WinError.ERROR_BAD_PIPE /* 230 */:
                    return Country.COUNTRY_TZ;
                case WinError.ERROR_PIPE_BUSY /* 231 */:
                    return Country.COUNTRY_UA;
                case WinError.ERROR_NO_DATA /* 232 */:
                    return Country.COUNTRY_UG;
                case WinError.ERROR_PIPE_NOT_CONNECTED /* 233 */:
                    return Country.COUNTRY_UM;
                case WinError.ERROR_MORE_DATA /* 234 */:
                    return Country.COUNTRY_US;
                case 235:
                    return Country.COUNTRY_UY;
                case 236:
                    return Country.COUNTRY_UZ;
                case 237:
                    return Country.COUNTRY_VA;
                case 238:
                    return Country.COUNTRY_VC;
                case 239:
                    return Country.COUNTRY_VE;
                case 240:
                    return Country.COUNTRY_VG;
                case 241:
                    return Country.COUNTRY_VI;
                case 242:
                    return Country.COUNTRY_VN;
                case 243:
                    return Country.COUNTRY_VU;
                case 244:
                    return Country.COUNTRY_WF;
                case 245:
                    return Country.COUNTRY_WS;
                case 246:
                    return Country.COUNTRY_YE;
                case 247:
                    return Country.COUNTRY_YT;
                case 248:
                    return Country.COUNTRY_ZA;
                case 249:
                    return Country.COUNTRY_ZM;
                case ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION /* 250 */:
                    return Country.COUNTRY_ZW;
                default:
                    return null;
            }
        }
    }
}
