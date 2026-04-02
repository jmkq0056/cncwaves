.class public final enum Lcom/stripe/hardware/paymentcollection/RecoverableError;
.super Ljava/lang/Enum;
.source "RecoverableError.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/hardware/paymentcollection/RecoverableError$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/hardware/paymentcollection/RecoverableError;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008#\u0008\u0086\u0081\u0002\u0018\u0000 #2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001#B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017j\u0002\u0008\u0018j\u0002\u0008\u0019j\u0002\u0008\u001aj\u0002\u0008\u001bj\u0002\u0008\u001cj\u0002\u0008\u001dj\u0002\u0008\u001ej\u0002\u0008\u001fj\u0002\u0008 j\u0002\u0008!j\u0002\u0008\"\u00a8\u0006$"
    }
    d2 = {
        "Lcom/stripe/hardware/paymentcollection/RecoverableError;",
        "",
        "(Ljava/lang/String;I)V",
        "CHIP_CARD_MUST_BE_INSERTED_FOR_SCA",
        "CHIP_CARD_INSERTED_INCORRECTLY",
        "CHECK_MOBILE_DEVICE",
        "CONTACTLESS_LIMIT_EXCEEDED",
        "CARD_BLOCKED",
        "EMPTY_CANDIDATE_LIST",
        "INSERT_OR_SWIPE_REQUIRED",
        "MULTIPLE_CARDS_DETECTED",
        "DECLINED",
        "CHIP_CARD_SWIPED",
        "SWIPE_FAILED",
        "INVALID_CARD",
        "BAD_TAP_READ",
        "TOO_MANY_TAPS",
        "CARD_REMOVED_TOO_SOON",
        "CARD_NOT_ADMITTED",
        "INVALID_TRANSACTION",
        "INVALID_CARD_NUMBER",
        "SYSTEM_MALFUNCTION",
        "EXPIRED_CARD",
        "TRANSACTION_NOT_PERMITTED",
        "INVALID_FUNCTION",
        "WRONG_CARD",
        "TERMINAL_NOT_PERMITTED",
        "ORIGINAL_AMOUNT_INCORRECT",
        "CARD_NOT_READABLE",
        "AUTHENTICATION_REQUIRED",
        "NOT_ACCEPTED_TRY_AGAIN",
        "DECLINED_CODE_05",
        "CARD_ERROR",
        "NOT_ACCEPTED",
        "PROCESSING_ERROR",
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

.field private static final synthetic $VALUES:[Lcom/stripe/hardware/paymentcollection/RecoverableError;

.field public static final enum AUTHENTICATION_REQUIRED:Lcom/stripe/hardware/paymentcollection/RecoverableError;

.field public static final enum BAD_TAP_READ:Lcom/stripe/hardware/paymentcollection/RecoverableError;

.field public static final enum CARD_BLOCKED:Lcom/stripe/hardware/paymentcollection/RecoverableError;

.field public static final enum CARD_ERROR:Lcom/stripe/hardware/paymentcollection/RecoverableError;

.field public static final enum CARD_NOT_ADMITTED:Lcom/stripe/hardware/paymentcollection/RecoverableError;

.field public static final enum CARD_NOT_READABLE:Lcom/stripe/hardware/paymentcollection/RecoverableError;

.field public static final enum CARD_REMOVED_TOO_SOON:Lcom/stripe/hardware/paymentcollection/RecoverableError;

.field public static final enum CHECK_MOBILE_DEVICE:Lcom/stripe/hardware/paymentcollection/RecoverableError;

.field public static final enum CHIP_CARD_INSERTED_INCORRECTLY:Lcom/stripe/hardware/paymentcollection/RecoverableError;

.field public static final enum CHIP_CARD_MUST_BE_INSERTED_FOR_SCA:Lcom/stripe/hardware/paymentcollection/RecoverableError;

.field public static final enum CHIP_CARD_SWIPED:Lcom/stripe/hardware/paymentcollection/RecoverableError;

.field public static final enum CONTACTLESS_LIMIT_EXCEEDED:Lcom/stripe/hardware/paymentcollection/RecoverableError;

.field public static final Companion:Lcom/stripe/hardware/paymentcollection/RecoverableError$Companion;

.field public static final enum DECLINED:Lcom/stripe/hardware/paymentcollection/RecoverableError;

.field public static final enum DECLINED_CODE_05:Lcom/stripe/hardware/paymentcollection/RecoverableError;

.field public static final enum EMPTY_CANDIDATE_LIST:Lcom/stripe/hardware/paymentcollection/RecoverableError;

.field public static final enum EXPIRED_CARD:Lcom/stripe/hardware/paymentcollection/RecoverableError;

.field public static final enum INSERT_OR_SWIPE_REQUIRED:Lcom/stripe/hardware/paymentcollection/RecoverableError;

.field public static final enum INVALID_CARD:Lcom/stripe/hardware/paymentcollection/RecoverableError;

.field public static final enum INVALID_CARD_NUMBER:Lcom/stripe/hardware/paymentcollection/RecoverableError;

.field public static final enum INVALID_FUNCTION:Lcom/stripe/hardware/paymentcollection/RecoverableError;

.field public static final enum INVALID_TRANSACTION:Lcom/stripe/hardware/paymentcollection/RecoverableError;

.field public static final enum MULTIPLE_CARDS_DETECTED:Lcom/stripe/hardware/paymentcollection/RecoverableError;

.field public static final enum NOT_ACCEPTED:Lcom/stripe/hardware/paymentcollection/RecoverableError;

.field public static final enum NOT_ACCEPTED_TRY_AGAIN:Lcom/stripe/hardware/paymentcollection/RecoverableError;

.field public static final enum ORIGINAL_AMOUNT_INCORRECT:Lcom/stripe/hardware/paymentcollection/RecoverableError;

.field public static final enum PROCESSING_ERROR:Lcom/stripe/hardware/paymentcollection/RecoverableError;

.field public static final enum SWIPE_FAILED:Lcom/stripe/hardware/paymentcollection/RecoverableError;

.field public static final enum SYSTEM_MALFUNCTION:Lcom/stripe/hardware/paymentcollection/RecoverableError;

.field public static final enum TERMINAL_NOT_PERMITTED:Lcom/stripe/hardware/paymentcollection/RecoverableError;

.field public static final enum TOO_MANY_TAPS:Lcom/stripe/hardware/paymentcollection/RecoverableError;

.field public static final enum TRANSACTION_NOT_PERMITTED:Lcom/stripe/hardware/paymentcollection/RecoverableError;

.field public static final enum WRONG_CARD:Lcom/stripe/hardware/paymentcollection/RecoverableError;


# direct methods
.method private static final synthetic $values()[Lcom/stripe/hardware/paymentcollection/RecoverableError;
    .locals 33

    sget-object v1, Lcom/stripe/hardware/paymentcollection/RecoverableError;->CHIP_CARD_MUST_BE_INSERTED_FOR_SCA:Lcom/stripe/hardware/paymentcollection/RecoverableError;

    sget-object v2, Lcom/stripe/hardware/paymentcollection/RecoverableError;->CHIP_CARD_INSERTED_INCORRECTLY:Lcom/stripe/hardware/paymentcollection/RecoverableError;

    sget-object v3, Lcom/stripe/hardware/paymentcollection/RecoverableError;->CHECK_MOBILE_DEVICE:Lcom/stripe/hardware/paymentcollection/RecoverableError;

    sget-object v4, Lcom/stripe/hardware/paymentcollection/RecoverableError;->CONTACTLESS_LIMIT_EXCEEDED:Lcom/stripe/hardware/paymentcollection/RecoverableError;

    sget-object v5, Lcom/stripe/hardware/paymentcollection/RecoverableError;->CARD_BLOCKED:Lcom/stripe/hardware/paymentcollection/RecoverableError;

    sget-object v6, Lcom/stripe/hardware/paymentcollection/RecoverableError;->EMPTY_CANDIDATE_LIST:Lcom/stripe/hardware/paymentcollection/RecoverableError;

    sget-object v7, Lcom/stripe/hardware/paymentcollection/RecoverableError;->INSERT_OR_SWIPE_REQUIRED:Lcom/stripe/hardware/paymentcollection/RecoverableError;

    sget-object v8, Lcom/stripe/hardware/paymentcollection/RecoverableError;->MULTIPLE_CARDS_DETECTED:Lcom/stripe/hardware/paymentcollection/RecoverableError;

    sget-object v9, Lcom/stripe/hardware/paymentcollection/RecoverableError;->DECLINED:Lcom/stripe/hardware/paymentcollection/RecoverableError;

    sget-object v10, Lcom/stripe/hardware/paymentcollection/RecoverableError;->CHIP_CARD_SWIPED:Lcom/stripe/hardware/paymentcollection/RecoverableError;

    sget-object v11, Lcom/stripe/hardware/paymentcollection/RecoverableError;->SWIPE_FAILED:Lcom/stripe/hardware/paymentcollection/RecoverableError;

    sget-object v12, Lcom/stripe/hardware/paymentcollection/RecoverableError;->INVALID_CARD:Lcom/stripe/hardware/paymentcollection/RecoverableError;

    sget-object v13, Lcom/stripe/hardware/paymentcollection/RecoverableError;->BAD_TAP_READ:Lcom/stripe/hardware/paymentcollection/RecoverableError;

    sget-object v14, Lcom/stripe/hardware/paymentcollection/RecoverableError;->TOO_MANY_TAPS:Lcom/stripe/hardware/paymentcollection/RecoverableError;

    sget-object v15, Lcom/stripe/hardware/paymentcollection/RecoverableError;->CARD_REMOVED_TOO_SOON:Lcom/stripe/hardware/paymentcollection/RecoverableError;

    sget-object v16, Lcom/stripe/hardware/paymentcollection/RecoverableError;->CARD_NOT_ADMITTED:Lcom/stripe/hardware/paymentcollection/RecoverableError;

    sget-object v17, Lcom/stripe/hardware/paymentcollection/RecoverableError;->INVALID_TRANSACTION:Lcom/stripe/hardware/paymentcollection/RecoverableError;

    sget-object v18, Lcom/stripe/hardware/paymentcollection/RecoverableError;->INVALID_CARD_NUMBER:Lcom/stripe/hardware/paymentcollection/RecoverableError;

    sget-object v19, Lcom/stripe/hardware/paymentcollection/RecoverableError;->SYSTEM_MALFUNCTION:Lcom/stripe/hardware/paymentcollection/RecoverableError;

    sget-object v20, Lcom/stripe/hardware/paymentcollection/RecoverableError;->EXPIRED_CARD:Lcom/stripe/hardware/paymentcollection/RecoverableError;

    sget-object v21, Lcom/stripe/hardware/paymentcollection/RecoverableError;->TRANSACTION_NOT_PERMITTED:Lcom/stripe/hardware/paymentcollection/RecoverableError;

    sget-object v22, Lcom/stripe/hardware/paymentcollection/RecoverableError;->INVALID_FUNCTION:Lcom/stripe/hardware/paymentcollection/RecoverableError;

    sget-object v23, Lcom/stripe/hardware/paymentcollection/RecoverableError;->WRONG_CARD:Lcom/stripe/hardware/paymentcollection/RecoverableError;

    sget-object v24, Lcom/stripe/hardware/paymentcollection/RecoverableError;->TERMINAL_NOT_PERMITTED:Lcom/stripe/hardware/paymentcollection/RecoverableError;

    sget-object v25, Lcom/stripe/hardware/paymentcollection/RecoverableError;->ORIGINAL_AMOUNT_INCORRECT:Lcom/stripe/hardware/paymentcollection/RecoverableError;

    sget-object v26, Lcom/stripe/hardware/paymentcollection/RecoverableError;->CARD_NOT_READABLE:Lcom/stripe/hardware/paymentcollection/RecoverableError;

    sget-object v27, Lcom/stripe/hardware/paymentcollection/RecoverableError;->AUTHENTICATION_REQUIRED:Lcom/stripe/hardware/paymentcollection/RecoverableError;

    sget-object v28, Lcom/stripe/hardware/paymentcollection/RecoverableError;->NOT_ACCEPTED_TRY_AGAIN:Lcom/stripe/hardware/paymentcollection/RecoverableError;

    sget-object v29, Lcom/stripe/hardware/paymentcollection/RecoverableError;->DECLINED_CODE_05:Lcom/stripe/hardware/paymentcollection/RecoverableError;

    sget-object v30, Lcom/stripe/hardware/paymentcollection/RecoverableError;->CARD_ERROR:Lcom/stripe/hardware/paymentcollection/RecoverableError;

    sget-object v31, Lcom/stripe/hardware/paymentcollection/RecoverableError;->NOT_ACCEPTED:Lcom/stripe/hardware/paymentcollection/RecoverableError;

    sget-object v32, Lcom/stripe/hardware/paymentcollection/RecoverableError;->PROCESSING_ERROR:Lcom/stripe/hardware/paymentcollection/RecoverableError;

    filled-new-array/range {v1 .. v32}, [Lcom/stripe/hardware/paymentcollection/RecoverableError;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 18
    new-instance v0, Lcom/stripe/hardware/paymentcollection/RecoverableError;

    const-string v1, "CHIP_CARD_MUST_BE_INSERTED_FOR_SCA"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/paymentcollection/RecoverableError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/paymentcollection/RecoverableError;->CHIP_CARD_MUST_BE_INSERTED_FOR_SCA:Lcom/stripe/hardware/paymentcollection/RecoverableError;

    .line 24
    new-instance v0, Lcom/stripe/hardware/paymentcollection/RecoverableError;

    const-string v1, "CHIP_CARD_INSERTED_INCORRECTLY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/paymentcollection/RecoverableError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/paymentcollection/RecoverableError;->CHIP_CARD_INSERTED_INCORRECTLY:Lcom/stripe/hardware/paymentcollection/RecoverableError;

    .line 30
    new-instance v0, Lcom/stripe/hardware/paymentcollection/RecoverableError;

    const-string v1, "CHECK_MOBILE_DEVICE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/paymentcollection/RecoverableError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/paymentcollection/RecoverableError;->CHECK_MOBILE_DEVICE:Lcom/stripe/hardware/paymentcollection/RecoverableError;

    .line 36
    new-instance v0, Lcom/stripe/hardware/paymentcollection/RecoverableError;

    const-string v1, "CONTACTLESS_LIMIT_EXCEEDED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/paymentcollection/RecoverableError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/paymentcollection/RecoverableError;->CONTACTLESS_LIMIT_EXCEEDED:Lcom/stripe/hardware/paymentcollection/RecoverableError;

    .line 42
    new-instance v0, Lcom/stripe/hardware/paymentcollection/RecoverableError;

    const-string v1, "CARD_BLOCKED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/paymentcollection/RecoverableError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/paymentcollection/RecoverableError;->CARD_BLOCKED:Lcom/stripe/hardware/paymentcollection/RecoverableError;

    .line 48
    new-instance v0, Lcom/stripe/hardware/paymentcollection/RecoverableError;

    const-string v1, "EMPTY_CANDIDATE_LIST"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/paymentcollection/RecoverableError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/paymentcollection/RecoverableError;->EMPTY_CANDIDATE_LIST:Lcom/stripe/hardware/paymentcollection/RecoverableError;

    .line 55
    new-instance v0, Lcom/stripe/hardware/paymentcollection/RecoverableError;

    const-string v1, "INSERT_OR_SWIPE_REQUIRED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/paymentcollection/RecoverableError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/paymentcollection/RecoverableError;->INSERT_OR_SWIPE_REQUIRED:Lcom/stripe/hardware/paymentcollection/RecoverableError;

    .line 60
    new-instance v0, Lcom/stripe/hardware/paymentcollection/RecoverableError;

    const-string v1, "MULTIPLE_CARDS_DETECTED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/paymentcollection/RecoverableError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/paymentcollection/RecoverableError;->MULTIPLE_CARDS_DETECTED:Lcom/stripe/hardware/paymentcollection/RecoverableError;

    .line 66
    new-instance v0, Lcom/stripe/hardware/paymentcollection/RecoverableError;

    const-string v1, "DECLINED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/paymentcollection/RecoverableError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/paymentcollection/RecoverableError;->DECLINED:Lcom/stripe/hardware/paymentcollection/RecoverableError;

    .line 73
    new-instance v0, Lcom/stripe/hardware/paymentcollection/RecoverableError;

    const-string v1, "CHIP_CARD_SWIPED"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/paymentcollection/RecoverableError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/paymentcollection/RecoverableError;->CHIP_CARD_SWIPED:Lcom/stripe/hardware/paymentcollection/RecoverableError;

    .line 79
    new-instance v0, Lcom/stripe/hardware/paymentcollection/RecoverableError;

    const-string v1, "SWIPE_FAILED"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/paymentcollection/RecoverableError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/paymentcollection/RecoverableError;->SWIPE_FAILED:Lcom/stripe/hardware/paymentcollection/RecoverableError;

    .line 85
    new-instance v0, Lcom/stripe/hardware/paymentcollection/RecoverableError;

    const-string v1, "INVALID_CARD"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/paymentcollection/RecoverableError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/paymentcollection/RecoverableError;->INVALID_CARD:Lcom/stripe/hardware/paymentcollection/RecoverableError;

    .line 90
    new-instance v0, Lcom/stripe/hardware/paymentcollection/RecoverableError;

    const-string v1, "BAD_TAP_READ"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/paymentcollection/RecoverableError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/paymentcollection/RecoverableError;->BAD_TAP_READ:Lcom/stripe/hardware/paymentcollection/RecoverableError;

    .line 95
    new-instance v0, Lcom/stripe/hardware/paymentcollection/RecoverableError;

    const-string v1, "TOO_MANY_TAPS"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/paymentcollection/RecoverableError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/paymentcollection/RecoverableError;->TOO_MANY_TAPS:Lcom/stripe/hardware/paymentcollection/RecoverableError;

    .line 100
    new-instance v0, Lcom/stripe/hardware/paymentcollection/RecoverableError;

    const-string v1, "CARD_REMOVED_TOO_SOON"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/paymentcollection/RecoverableError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/paymentcollection/RecoverableError;->CARD_REMOVED_TOO_SOON:Lcom/stripe/hardware/paymentcollection/RecoverableError;

    .line 105
    new-instance v0, Lcom/stripe/hardware/paymentcollection/RecoverableError;

    const-string v1, "CARD_NOT_ADMITTED"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/paymentcollection/RecoverableError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/paymentcollection/RecoverableError;->CARD_NOT_ADMITTED:Lcom/stripe/hardware/paymentcollection/RecoverableError;

    .line 106
    new-instance v0, Lcom/stripe/hardware/paymentcollection/RecoverableError;

    const-string v1, "INVALID_TRANSACTION"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/paymentcollection/RecoverableError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/paymentcollection/RecoverableError;->INVALID_TRANSACTION:Lcom/stripe/hardware/paymentcollection/RecoverableError;

    .line 107
    new-instance v0, Lcom/stripe/hardware/paymentcollection/RecoverableError;

    const-string v1, "INVALID_CARD_NUMBER"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/paymentcollection/RecoverableError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/paymentcollection/RecoverableError;->INVALID_CARD_NUMBER:Lcom/stripe/hardware/paymentcollection/RecoverableError;

    .line 108
    new-instance v0, Lcom/stripe/hardware/paymentcollection/RecoverableError;

    const-string v1, "SYSTEM_MALFUNCTION"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/paymentcollection/RecoverableError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/paymentcollection/RecoverableError;->SYSTEM_MALFUNCTION:Lcom/stripe/hardware/paymentcollection/RecoverableError;

    .line 109
    new-instance v0, Lcom/stripe/hardware/paymentcollection/RecoverableError;

    const-string v1, "EXPIRED_CARD"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/paymentcollection/RecoverableError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/paymentcollection/RecoverableError;->EXPIRED_CARD:Lcom/stripe/hardware/paymentcollection/RecoverableError;

    .line 110
    new-instance v0, Lcom/stripe/hardware/paymentcollection/RecoverableError;

    const-string v1, "TRANSACTION_NOT_PERMITTED"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/paymentcollection/RecoverableError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/paymentcollection/RecoverableError;->TRANSACTION_NOT_PERMITTED:Lcom/stripe/hardware/paymentcollection/RecoverableError;

    .line 111
    new-instance v0, Lcom/stripe/hardware/paymentcollection/RecoverableError;

    const-string v1, "INVALID_FUNCTION"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/paymentcollection/RecoverableError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/paymentcollection/RecoverableError;->INVALID_FUNCTION:Lcom/stripe/hardware/paymentcollection/RecoverableError;

    .line 112
    new-instance v0, Lcom/stripe/hardware/paymentcollection/RecoverableError;

    const-string v1, "WRONG_CARD"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/paymentcollection/RecoverableError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/paymentcollection/RecoverableError;->WRONG_CARD:Lcom/stripe/hardware/paymentcollection/RecoverableError;

    .line 113
    new-instance v0, Lcom/stripe/hardware/paymentcollection/RecoverableError;

    const-string v1, "TERMINAL_NOT_PERMITTED"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/paymentcollection/RecoverableError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/paymentcollection/RecoverableError;->TERMINAL_NOT_PERMITTED:Lcom/stripe/hardware/paymentcollection/RecoverableError;

    .line 114
    new-instance v0, Lcom/stripe/hardware/paymentcollection/RecoverableError;

    const-string v1, "ORIGINAL_AMOUNT_INCORRECT"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/paymentcollection/RecoverableError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/paymentcollection/RecoverableError;->ORIGINAL_AMOUNT_INCORRECT:Lcom/stripe/hardware/paymentcollection/RecoverableError;

    .line 115
    new-instance v0, Lcom/stripe/hardware/paymentcollection/RecoverableError;

    const-string v1, "CARD_NOT_READABLE"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/paymentcollection/RecoverableError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/paymentcollection/RecoverableError;->CARD_NOT_READABLE:Lcom/stripe/hardware/paymentcollection/RecoverableError;

    .line 116
    new-instance v0, Lcom/stripe/hardware/paymentcollection/RecoverableError;

    const-string v1, "AUTHENTICATION_REQUIRED"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/paymentcollection/RecoverableError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/paymentcollection/RecoverableError;->AUTHENTICATION_REQUIRED:Lcom/stripe/hardware/paymentcollection/RecoverableError;

    .line 117
    new-instance v0, Lcom/stripe/hardware/paymentcollection/RecoverableError;

    const-string v1, "NOT_ACCEPTED_TRY_AGAIN"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/paymentcollection/RecoverableError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/paymentcollection/RecoverableError;->NOT_ACCEPTED_TRY_AGAIN:Lcom/stripe/hardware/paymentcollection/RecoverableError;

    .line 118
    new-instance v0, Lcom/stripe/hardware/paymentcollection/RecoverableError;

    const-string v1, "DECLINED_CODE_05"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/paymentcollection/RecoverableError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/paymentcollection/RecoverableError;->DECLINED_CODE_05:Lcom/stripe/hardware/paymentcollection/RecoverableError;

    .line 119
    new-instance v0, Lcom/stripe/hardware/paymentcollection/RecoverableError;

    const-string v1, "CARD_ERROR"

    const/16 v2, 0x1d

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/paymentcollection/RecoverableError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/paymentcollection/RecoverableError;->CARD_ERROR:Lcom/stripe/hardware/paymentcollection/RecoverableError;

    .line 120
    new-instance v0, Lcom/stripe/hardware/paymentcollection/RecoverableError;

    const-string v1, "NOT_ACCEPTED"

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/paymentcollection/RecoverableError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/paymentcollection/RecoverableError;->NOT_ACCEPTED:Lcom/stripe/hardware/paymentcollection/RecoverableError;

    .line 121
    new-instance v0, Lcom/stripe/hardware/paymentcollection/RecoverableError;

    const-string v1, "PROCESSING_ERROR"

    const/16 v2, 0x1f

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/paymentcollection/RecoverableError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/paymentcollection/RecoverableError;->PROCESSING_ERROR:Lcom/stripe/hardware/paymentcollection/RecoverableError;

    invoke-static {}, Lcom/stripe/hardware/paymentcollection/RecoverableError;->$values()[Lcom/stripe/hardware/paymentcollection/RecoverableError;

    move-result-object v0

    sput-object v0, Lcom/stripe/hardware/paymentcollection/RecoverableError;->$VALUES:[Lcom/stripe/hardware/paymentcollection/RecoverableError;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/stripe/hardware/paymentcollection/RecoverableError;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/stripe/hardware/paymentcollection/RecoverableError$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/hardware/paymentcollection/RecoverableError$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/hardware/paymentcollection/RecoverableError;->Companion:Lcom/stripe/hardware/paymentcollection/RecoverableError$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/stripe/hardware/paymentcollection/RecoverableError;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/stripe/hardware/paymentcollection/RecoverableError;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/hardware/paymentcollection/RecoverableError;
    .locals 1

    const-class v0, Lcom/stripe/hardware/paymentcollection/RecoverableError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/hardware/paymentcollection/RecoverableError;

    return-object p0
.end method

.method public static values()[Lcom/stripe/hardware/paymentcollection/RecoverableError;
    .locals 1

    sget-object v0, Lcom/stripe/hardware/paymentcollection/RecoverableError;->$VALUES:[Lcom/stripe/hardware/paymentcollection/RecoverableError;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/hardware/paymentcollection/RecoverableError;

    return-object v0
.end method
