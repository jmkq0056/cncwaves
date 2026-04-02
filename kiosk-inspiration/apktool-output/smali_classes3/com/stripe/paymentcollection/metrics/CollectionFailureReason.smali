.class public final enum Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;
.super Ljava/lang/Enum;
.source "Tags.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u001a\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017j\u0002\u0008\u0018j\u0002\u0008\u0019j\u0002\u0008\u001a\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;",
        "",
        "(Ljava/lang/String;I)V",
        "UNKNOWN",
        "MERCHANT_CANCELLED",
        "CUSTOMER_CANCELLED",
        "MAGSTRIPE_NOT_ALLOWED",
        "CHIP_CARD_INITIALIZATION_FAILED",
        "EMPTY_CANDIDATE_LIST",
        "PIN_ENTRY_CANCELED",
        "PIN_ENTRY_TIMED_OUT",
        "CONTACTLESS_LIMIT_EXCEEDED",
        "READER_DECLINED",
        "READER_TERMINATED",
        "MULTIPLE_CARDS_DETECTED",
        "CARD_BLOCKED",
        "DEVICE_FAILURE",
        "ICC_CARD_REMOVED",
        "CHECK_MOBILE_DEVICE",
        "INSERT_OR_SWIPE_REQUIRED",
        "TIMEOUT",
        "ONLINE_CONFIRMATION_DECLINED",
        "ONLINE_CONFIRMATION_UNKNOWN",
        "SCA_NEEDED",
        "MOBILE_WALLET_TOO_MANY_TAPS",
        "CARD_STILL_INSERTED",
        "INVALID_COLLECTED_DATA",
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

.field private static final synthetic $VALUES:[Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

.field public static final enum CARD_BLOCKED:Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

.field public static final enum CARD_STILL_INSERTED:Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

.field public static final enum CHECK_MOBILE_DEVICE:Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

.field public static final enum CHIP_CARD_INITIALIZATION_FAILED:Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

.field public static final enum CONTACTLESS_LIMIT_EXCEEDED:Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

.field public static final enum CUSTOMER_CANCELLED:Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

.field public static final enum DEVICE_FAILURE:Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

.field public static final enum EMPTY_CANDIDATE_LIST:Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

.field public static final enum ICC_CARD_REMOVED:Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

.field public static final enum INSERT_OR_SWIPE_REQUIRED:Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

.field public static final enum INVALID_COLLECTED_DATA:Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

.field public static final enum MAGSTRIPE_NOT_ALLOWED:Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

.field public static final enum MERCHANT_CANCELLED:Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

.field public static final enum MOBILE_WALLET_TOO_MANY_TAPS:Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

.field public static final enum MULTIPLE_CARDS_DETECTED:Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

.field public static final enum ONLINE_CONFIRMATION_DECLINED:Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

.field public static final enum ONLINE_CONFIRMATION_UNKNOWN:Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

.field public static final enum PIN_ENTRY_CANCELED:Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

.field public static final enum PIN_ENTRY_TIMED_OUT:Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

.field public static final enum READER_DECLINED:Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

.field public static final enum READER_TERMINATED:Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

.field public static final enum SCA_NEEDED:Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

.field public static final enum TIMEOUT:Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

.field public static final enum UNKNOWN:Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;


# direct methods
.method private static final synthetic $values()[Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;
    .locals 25

    sget-object v1, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;->UNKNOWN:Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

    sget-object v2, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;->MERCHANT_CANCELLED:Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

    sget-object v3, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;->CUSTOMER_CANCELLED:Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

    sget-object v4, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;->MAGSTRIPE_NOT_ALLOWED:Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

    sget-object v5, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;->CHIP_CARD_INITIALIZATION_FAILED:Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

    sget-object v6, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;->EMPTY_CANDIDATE_LIST:Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

    sget-object v7, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;->PIN_ENTRY_CANCELED:Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

    sget-object v8, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;->PIN_ENTRY_TIMED_OUT:Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

    sget-object v9, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;->CONTACTLESS_LIMIT_EXCEEDED:Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

    sget-object v10, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;->READER_DECLINED:Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

    sget-object v11, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;->READER_TERMINATED:Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

    sget-object v12, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;->MULTIPLE_CARDS_DETECTED:Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

    sget-object v13, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;->CARD_BLOCKED:Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

    sget-object v14, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;->DEVICE_FAILURE:Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

    sget-object v15, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;->ICC_CARD_REMOVED:Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

    sget-object v16, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;->CHECK_MOBILE_DEVICE:Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

    sget-object v17, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;->INSERT_OR_SWIPE_REQUIRED:Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

    sget-object v18, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;->TIMEOUT:Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

    sget-object v19, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;->ONLINE_CONFIRMATION_DECLINED:Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

    sget-object v20, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;->ONLINE_CONFIRMATION_UNKNOWN:Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

    sget-object v21, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;->SCA_NEEDED:Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

    sget-object v22, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;->MOBILE_WALLET_TOO_MANY_TAPS:Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

    sget-object v23, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;->CARD_STILL_INSERTED:Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

    sget-object v24, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;->INVALID_COLLECTED_DATA:Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

    filled-new-array/range {v1 .. v24}, [Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 26
    new-instance v0, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;->UNKNOWN:Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

    .line 27
    new-instance v0, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

    const-string v1, "MERCHANT_CANCELLED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;->MERCHANT_CANCELLED:Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

    .line 28
    new-instance v0, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

    const-string v1, "CUSTOMER_CANCELLED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;->CUSTOMER_CANCELLED:Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

    .line 29
    new-instance v0, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

    const-string v1, "MAGSTRIPE_NOT_ALLOWED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;->MAGSTRIPE_NOT_ALLOWED:Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

    .line 30
    new-instance v0, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

    const-string v1, "CHIP_CARD_INITIALIZATION_FAILED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;->CHIP_CARD_INITIALIZATION_FAILED:Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

    .line 31
    new-instance v0, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

    const-string v1, "EMPTY_CANDIDATE_LIST"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;->EMPTY_CANDIDATE_LIST:Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

    .line 32
    new-instance v0, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

    const-string v1, "PIN_ENTRY_CANCELED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;->PIN_ENTRY_CANCELED:Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

    .line 33
    new-instance v0, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

    const-string v1, "PIN_ENTRY_TIMED_OUT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;->PIN_ENTRY_TIMED_OUT:Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

    .line 34
    new-instance v0, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

    const-string v1, "CONTACTLESS_LIMIT_EXCEEDED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;->CONTACTLESS_LIMIT_EXCEEDED:Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

    .line 35
    new-instance v0, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

    const-string v1, "READER_DECLINED"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;->READER_DECLINED:Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

    .line 36
    new-instance v0, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

    const-string v1, "READER_TERMINATED"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;->READER_TERMINATED:Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

    .line 37
    new-instance v0, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

    const-string v1, "MULTIPLE_CARDS_DETECTED"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;->MULTIPLE_CARDS_DETECTED:Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

    .line 38
    new-instance v0, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

    const-string v1, "CARD_BLOCKED"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;->CARD_BLOCKED:Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

    .line 39
    new-instance v0, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

    const-string v1, "DEVICE_FAILURE"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;->DEVICE_FAILURE:Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

    .line 40
    new-instance v0, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

    const-string v1, "ICC_CARD_REMOVED"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;->ICC_CARD_REMOVED:Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

    .line 41
    new-instance v0, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

    const-string v1, "CHECK_MOBILE_DEVICE"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;->CHECK_MOBILE_DEVICE:Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

    .line 42
    new-instance v0, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

    const-string v1, "INSERT_OR_SWIPE_REQUIRED"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;->INSERT_OR_SWIPE_REQUIRED:Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

    .line 43
    new-instance v0, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

    const-string v1, "TIMEOUT"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;->TIMEOUT:Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

    .line 44
    new-instance v0, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

    const-string v1, "ONLINE_CONFIRMATION_DECLINED"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;->ONLINE_CONFIRMATION_DECLINED:Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

    .line 45
    new-instance v0, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

    const-string v1, "ONLINE_CONFIRMATION_UNKNOWN"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;->ONLINE_CONFIRMATION_UNKNOWN:Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

    .line 46
    new-instance v0, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

    const-string v1, "SCA_NEEDED"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;->SCA_NEEDED:Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

    .line 47
    new-instance v0, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

    const-string v1, "MOBILE_WALLET_TOO_MANY_TAPS"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;->MOBILE_WALLET_TOO_MANY_TAPS:Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

    .line 48
    new-instance v0, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

    const-string v1, "CARD_STILL_INSERTED"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;->CARD_STILL_INSERTED:Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

    .line 49
    new-instance v0, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

    const-string v1, "INVALID_COLLECTED_DATA"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;->INVALID_COLLECTED_DATA:Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

    invoke-static {}, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;->$values()[Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

    move-result-object v0

    sput-object v0, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;->$VALUES:[Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;
    .locals 1

    const-class v0, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

    return-object p0
.end method

.method public static values()[Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;
    .locals 1

    sget-object v0, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;->$VALUES:[Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

    return-object v0
.end method
