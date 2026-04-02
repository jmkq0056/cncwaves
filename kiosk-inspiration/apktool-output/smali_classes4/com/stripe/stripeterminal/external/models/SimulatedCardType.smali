.class public final enum Lcom/stripe/stripeterminal/external/models/SimulatedCardType;
.super Ljava/lang/Enum;
.source "SimulatedCardType.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/stripeterminal/external/models/SimulatedCardType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008(\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u001f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0007R\u001c\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000bR\u001c\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u000c\u0010\t\u001a\u0004\u0008\r\u0010\u000eR\u001c\u0010\u0006\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u000f\u0010\t\u001a\u0004\u0008\u0010\u0010\u000ej\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017j\u0002\u0008\u0018j\u0002\u0008\u0019j\u0002\u0008\u001aj\u0002\u0008\u001bj\u0002\u0008\u001cj\u0002\u0008\u001dj\u0002\u0008\u001ej\u0002\u0008\u001fj\u0002\u0008 j\u0002\u0008!j\u0002\u0008\"j\u0002\u0008#j\u0002\u0008$j\u0002\u0008%j\u0002\u0008&j\u0002\u0008\'j\u0002\u0008(j\u0002\u0008)j\u0002\u0008*j\u0002\u0008+j\u0002\u0008,\u00a8\u0006-"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/external/models/SimulatedCardType;",
        "",
        "cardNumber",
        "",
        "expMonth",
        "",
        "expYear",
        "(Ljava/lang/String;ILjava/lang/String;II)V",
        "getCardNumber$annotations",
        "()V",
        "getCardNumber",
        "()Ljava/lang/String;",
        "getExpMonth$annotations",
        "getExpMonth",
        "()I",
        "getExpYear$annotations",
        "getExpYear",
        "VISA",
        "VISA_DEBIT",
        "MASTERCARD",
        "MASTERCARD_DEBIT",
        "MASTERCARD_PREPAID",
        "AMEX",
        "AMEX_2",
        "DISCOVER",
        "DISCOVER_2",
        "DINERS",
        "DINERS_14_DIGITS",
        "JCB",
        "UNION_PAY",
        "INTERAC",
        "EFTPOS_AU_DEBIT",
        "VISA_US_COMMON_DEBIT",
        "CHARGE_DECLINED",
        "CHARGE_DECLINED_INSUFFICIENT_FUNDS",
        "CHARGE_DECLINED_LOST_CARD",
        "CHARGE_DECLINED_STOLEN_CARD",
        "CHARGE_DECLINED_EXPIRED_CARD",
        "CHARGE_DECLINED_PROCESSING_ERROR",
        "EFTPOS_AU_VISA_DEBIT",
        "EFTPOS_AU_DEBIT_MASTERCARD",
        "OFFLINE_PIN_CVM",
        "OFFLINE_PIN_SCA_RETRY",
        "ONLINE_PIN_CVM",
        "ONLINE_PIN_SCA_RETRY",
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

.field private static final synthetic $VALUES:[Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

.field public static final enum AMEX:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

.field public static final enum AMEX_2:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

.field public static final enum CHARGE_DECLINED:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

.field public static final enum CHARGE_DECLINED_EXPIRED_CARD:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

.field public static final enum CHARGE_DECLINED_INSUFFICIENT_FUNDS:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

.field public static final enum CHARGE_DECLINED_LOST_CARD:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

.field public static final enum CHARGE_DECLINED_PROCESSING_ERROR:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

.field public static final enum CHARGE_DECLINED_STOLEN_CARD:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

.field public static final enum DINERS:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

.field public static final enum DINERS_14_DIGITS:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

.field public static final enum DISCOVER:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

.field public static final enum DISCOVER_2:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

.field public static final enum EFTPOS_AU_DEBIT:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

.field public static final enum EFTPOS_AU_DEBIT_MASTERCARD:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

.field public static final enum EFTPOS_AU_VISA_DEBIT:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

.field public static final enum INTERAC:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

.field public static final enum JCB:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

.field public static final enum MASTERCARD:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

.field public static final enum MASTERCARD_DEBIT:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

.field public static final enum MASTERCARD_PREPAID:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

.field public static final enum OFFLINE_PIN_CVM:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

.field public static final enum OFFLINE_PIN_SCA_RETRY:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

.field public static final enum ONLINE_PIN_CVM:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

.field public static final enum ONLINE_PIN_SCA_RETRY:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

.field public static final enum UNION_PAY:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

.field public static final enum VISA:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

.field public static final enum VISA_DEBIT:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

.field public static final enum VISA_US_COMMON_DEBIT:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;


# instance fields
.field private final cardNumber:Ljava/lang/String;

.field private final expMonth:I

.field private final expYear:I


# direct methods
.method private static final synthetic $values()[Lcom/stripe/stripeterminal/external/models/SimulatedCardType;
    .locals 29

    sget-object v1, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->VISA:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    sget-object v2, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->VISA_DEBIT:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    sget-object v3, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->MASTERCARD:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    sget-object v4, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->MASTERCARD_DEBIT:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    sget-object v5, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->MASTERCARD_PREPAID:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    sget-object v6, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->AMEX:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    sget-object v7, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->AMEX_2:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    sget-object v8, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->DISCOVER:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    sget-object v9, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->DISCOVER_2:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    sget-object v10, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->DINERS:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    sget-object v11, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->DINERS_14_DIGITS:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    sget-object v12, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->JCB:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    sget-object v13, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->UNION_PAY:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    sget-object v14, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->INTERAC:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    sget-object v15, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->EFTPOS_AU_DEBIT:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    sget-object v16, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->VISA_US_COMMON_DEBIT:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    sget-object v17, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->CHARGE_DECLINED:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    sget-object v18, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->CHARGE_DECLINED_INSUFFICIENT_FUNDS:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    sget-object v19, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->CHARGE_DECLINED_LOST_CARD:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    sget-object v20, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->CHARGE_DECLINED_STOLEN_CARD:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    sget-object v21, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->CHARGE_DECLINED_EXPIRED_CARD:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    sget-object v22, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->CHARGE_DECLINED_PROCESSING_ERROR:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    sget-object v23, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->EFTPOS_AU_VISA_DEBIT:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    sget-object v24, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->EFTPOS_AU_DEBIT_MASTERCARD:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    sget-object v25, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->OFFLINE_PIN_CVM:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    sget-object v26, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->OFFLINE_PIN_SCA_RETRY:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    sget-object v27, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->ONLINE_PIN_CVM:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    sget-object v28, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->ONLINE_PIN_SCA_RETRY:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    filled-new-array/range {v1 .. v28}, [Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 12

    .line 16
    new-instance v0, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    const/16 v4, 0xc

    const/16 v5, 0x1e

    const-string v1, "VISA"

    const/4 v2, 0x0

    const-string v3, "4242424242424242"

    invoke-direct/range {v0 .. v5}, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->VISA:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    .line 21
    new-instance v1, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    const/16 v5, 0xc

    const/16 v6, 0x1e

    const-string v2, "VISA_DEBIT"

    const/4 v3, 0x1

    const-string v4, "4000056655665556"

    invoke-direct/range {v1 .. v6}, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v1, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->VISA_DEBIT:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    .line 26
    new-instance v2, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    const/16 v6, 0xc

    const/16 v7, 0x1e

    const-string v3, "MASTERCARD"

    const/4 v4, 0x2

    const-string v5, "5555555555554444"

    invoke-direct/range {v2 .. v7}, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v2, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->MASTERCARD:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    .line 31
    new-instance v3, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    const/16 v7, 0xc

    const/16 v8, 0x1e

    const-string v4, "MASTERCARD_DEBIT"

    const/4 v5, 0x3

    const-string v6, "5200828282828210"

    invoke-direct/range {v3 .. v8}, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v3, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->MASTERCARD_DEBIT:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    .line 36
    new-instance v4, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    const/16 v8, 0xc

    const/16 v9, 0x1e

    const-string v5, "MASTERCARD_PREPAID"

    const/4 v6, 0x4

    const-string v7, "5105105105105100"

    invoke-direct/range {v4 .. v9}, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v4, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->MASTERCARD_PREPAID:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    .line 41
    new-instance v5, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    const/16 v9, 0xc

    const/16 v10, 0x1e

    const-string v6, "AMEX"

    const/4 v7, 0x5

    const-string v8, "378282246310005"

    invoke-direct/range {v5 .. v10}, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v5, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->AMEX:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    .line 46
    new-instance v6, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    const/16 v10, 0xc

    const/16 v11, 0x1e

    const-string v7, "AMEX_2"

    const/4 v8, 0x6

    const-string v9, "371449635398431"

    invoke-direct/range {v6 .. v11}, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v6, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->AMEX_2:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    .line 51
    new-instance v0, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    const/16 v4, 0xc

    const/16 v5, 0x1e

    const-string v1, "DISCOVER"

    const/4 v2, 0x7

    const-string v3, "6011111111111117"

    invoke-direct/range {v0 .. v5}, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->DISCOVER:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    .line 56
    new-instance v1, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    const/16 v5, 0xc

    const/16 v6, 0x1e

    const-string v2, "DISCOVER_2"

    const/16 v3, 0x8

    const-string v4, "6011000990139424"

    invoke-direct/range {v1 .. v6}, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v1, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->DISCOVER_2:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    .line 61
    new-instance v2, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    const/16 v6, 0xc

    const/16 v7, 0x1e

    const-string v3, "DINERS"

    const/16 v4, 0x9

    const-string v5, "3056930009020004"

    invoke-direct/range {v2 .. v7}, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v2, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->DINERS:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    .line 66
    new-instance v3, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    const/16 v7, 0xc

    const/16 v8, 0x1e

    const-string v4, "DINERS_14_DIGITS"

    const/16 v5, 0xa

    const-string v6, "36227206271667"

    invoke-direct/range {v3 .. v8}, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v3, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->DINERS_14_DIGITS:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    .line 71
    new-instance v4, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    const/16 v8, 0xc

    const/16 v9, 0x1e

    const-string v5, "JCB"

    const/16 v6, 0xb

    const-string v7, "3566002020360505"

    invoke-direct/range {v4 .. v9}, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v4, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->JCB:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    .line 76
    new-instance v5, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    const/16 v9, 0xc

    const/16 v10, 0x1e

    const-string v6, "UNION_PAY"

    const/16 v7, 0xc

    const-string v8, "6200000000000005"

    invoke-direct/range {v5 .. v10}, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v5, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->UNION_PAY:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    .line 81
    new-instance v6, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    const/16 v10, 0xc

    const-string v7, "INTERAC"

    const/16 v8, 0xd

    const-string v9, "4506445006931933"

    invoke-direct/range {v6 .. v11}, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v6, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->INTERAC:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    .line 86
    new-instance v0, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    const/16 v4, 0xc

    const/16 v5, 0x1e

    const-string v1, "EFTPOS_AU_DEBIT"

    const/16 v2, 0xe

    const-string v3, "6280000360000978"

    invoke-direct/range {v0 .. v5}, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->EFTPOS_AU_DEBIT:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    .line 91
    new-instance v1, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    const/16 v5, 0xc

    const/16 v6, 0x1e

    const-string v2, "VISA_US_COMMON_DEBIT"

    const/16 v3, 0xf

    const-string v4, "4000058400000048"

    invoke-direct/range {v1 .. v6}, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v1, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->VISA_US_COMMON_DEBIT:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    .line 97
    new-instance v2, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    const/16 v6, 0xc

    const/16 v7, 0x1e

    const-string v3, "CHARGE_DECLINED"

    const/16 v4, 0x10

    const-string v5, "4000000000000002"

    invoke-direct/range {v2 .. v7}, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v2, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->CHARGE_DECLINED:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    .line 103
    new-instance v3, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    const/16 v7, 0xc

    const/16 v8, 0x1e

    const-string v4, "CHARGE_DECLINED_INSUFFICIENT_FUNDS"

    const/16 v5, 0x11

    const-string v6, "4000000000009995"

    invoke-direct/range {v3 .. v8}, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v3, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->CHARGE_DECLINED_INSUFFICIENT_FUNDS:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    .line 108
    new-instance v4, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    const/16 v8, 0xc

    const/16 v9, 0x1e

    const-string v5, "CHARGE_DECLINED_LOST_CARD"

    const/16 v6, 0x12

    const-string v7, "4000000000009987"

    invoke-direct/range {v4 .. v9}, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v4, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->CHARGE_DECLINED_LOST_CARD:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    .line 114
    new-instance v5, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    const/16 v9, 0xc

    const/16 v10, 0x1e

    const-string v6, "CHARGE_DECLINED_STOLEN_CARD"

    const/16 v7, 0x13

    const-string v8, "4000000000009979"

    invoke-direct/range {v5 .. v10}, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v5, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->CHARGE_DECLINED_STOLEN_CARD:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    .line 119
    new-instance v6, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    const/16 v10, 0xa

    const/16 v11, 0x14

    const-string v7, "CHARGE_DECLINED_EXPIRED_CARD"

    const/16 v8, 0x14

    const-string v9, "4000000000000069"

    invoke-direct/range {v6 .. v11}, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v6, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->CHARGE_DECLINED_EXPIRED_CARD:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    .line 124
    new-instance v0, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    const/16 v4, 0xc

    const/16 v5, 0x1e

    const-string v1, "CHARGE_DECLINED_PROCESSING_ERROR"

    const/16 v2, 0x15

    const-string v3, "4000000000000119"

    invoke-direct/range {v0 .. v5}, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->CHARGE_DECLINED_PROCESSING_ERROR:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    .line 129
    new-instance v1, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    const/16 v5, 0xc

    const/16 v6, 0x1e

    const-string v2, "EFTPOS_AU_VISA_DEBIT"

    const/16 v3, 0x16

    const-string v4, "4000050360000001"

    invoke-direct/range {v1 .. v6}, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v1, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->EFTPOS_AU_VISA_DEBIT:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    .line 134
    new-instance v2, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    const/16 v6, 0xc

    const/16 v7, 0x1e

    const-string v3, "EFTPOS_AU_DEBIT_MASTERCARD"

    const/16 v4, 0x17

    const-string v5, "5555050360000080"

    invoke-direct/range {v2 .. v7}, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v2, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->EFTPOS_AU_DEBIT_MASTERCARD:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    .line 139
    new-instance v3, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    const/16 v7, 0xc

    const/16 v8, 0x1e

    const-string v4, "OFFLINE_PIN_CVM"

    const/16 v5, 0x18

    const-string v6, "4001007020000002"

    invoke-direct/range {v3 .. v8}, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v3, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->OFFLINE_PIN_CVM:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    .line 146
    new-instance v4, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    const/16 v8, 0xc

    const/16 v9, 0x1e

    const-string v5, "OFFLINE_PIN_SCA_RETRY"

    const/16 v6, 0x19

    const-string v7, "4000008260000075"

    invoke-direct/range {v4 .. v9}, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v4, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->OFFLINE_PIN_SCA_RETRY:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    .line 151
    new-instance v5, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    const/16 v9, 0xc

    const/16 v10, 0x1e

    const-string v6, "ONLINE_PIN_CVM"

    const/16 v7, 0x1a

    const-string v8, "4001000360000005"

    invoke-direct/range {v5 .. v10}, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v5, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->ONLINE_PIN_CVM:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    .line 158
    new-instance v6, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    const/16 v10, 0xc

    const/16 v11, 0x1e

    const-string v7, "ONLINE_PIN_SCA_RETRY"

    const/16 v8, 0x1b

    const-string v9, "4000002760000008"

    invoke-direct/range {v6 .. v11}, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v6, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->ONLINE_PIN_SCA_RETRY:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    invoke-static {}, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->$values()[Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    move-result-object v0

    sput-object v0, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->$VALUES:[Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 9
    iput-object p3, p0, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->cardNumber:Ljava/lang/String;

    .line 10
    iput p4, p0, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->expMonth:I

    .line 11
    iput p5, p0, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->expYear:I

    return-void
.end method

.method public static synthetic getCardNumber$annotations()V
    .locals 0

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/stripe/stripeterminal/external/models/SimulatedCardType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static synthetic getExpMonth$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getExpYear$annotations()V
    .locals 0

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/SimulatedCardType;
    .locals 1

    const-class v0, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    return-object p0
.end method

.method public static values()[Lcom/stripe/stripeterminal/external/models/SimulatedCardType;
    .locals 1

    sget-object v0, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->$VALUES:[Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    return-object v0
.end method


# virtual methods
.method public final getCardNumber()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->cardNumber:Ljava/lang/String;

    return-object v0
.end method

.method public final getExpMonth()I
    .locals 1

    .line 10
    iget v0, p0, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->expMonth:I

    return v0
.end method

.method public final getExpYear()I
    .locals 1

    .line 11
    iget v0, p0, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->expYear:I

    return v0
.end method
