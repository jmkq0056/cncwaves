.class public final enum Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;
.super Ljava/lang/Enum;
.source "ManualEntryCollectionResult.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\t\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;",
        "",
        "(Ljava/lang/String;I)V",
        "UNKNOWN",
        "MERCHANT_CANCELLED",
        "USER_CANCELLED",
        "INVALID_ENCRYPTED_DATA_RESULT",
        "TIMEOUT",
        "DEVICE_FAILURE",
        "EARLY_TRANSACTION_RESULT",
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

.field private static final synthetic $VALUES:[Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;

.field public static final enum DEVICE_FAILURE:Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;

.field public static final enum EARLY_TRANSACTION_RESULT:Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;

.field public static final enum INVALID_ENCRYPTED_DATA_RESULT:Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;

.field public static final enum MERCHANT_CANCELLED:Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;

.field public static final enum TIMEOUT:Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;

.field public static final enum UNKNOWN:Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;

.field public static final enum USER_CANCELLED:Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;


# direct methods
.method private static final synthetic $values()[Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;
    .locals 7

    sget-object v0, Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;->UNKNOWN:Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;

    sget-object v1, Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;->MERCHANT_CANCELLED:Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;

    sget-object v2, Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;->USER_CANCELLED:Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;

    sget-object v3, Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;->INVALID_ENCRYPTED_DATA_RESULT:Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;

    sget-object v4, Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;->TIMEOUT:Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;

    sget-object v5, Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;->DEVICE_FAILURE:Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;

    sget-object v6, Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;->EARLY_TRANSACTION_RESULT:Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;

    filled-new-array/range {v0 .. v6}, [Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 19
    new-instance v0, Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;->UNKNOWN:Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;

    .line 24
    new-instance v0, Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;

    const-string v1, "MERCHANT_CANCELLED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;->MERCHANT_CANCELLED:Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;

    .line 29
    new-instance v0, Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;

    const-string v1, "USER_CANCELLED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;->USER_CANCELLED:Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;

    .line 34
    new-instance v0, Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;

    const-string v1, "INVALID_ENCRYPTED_DATA_RESULT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;->INVALID_ENCRYPTED_DATA_RESULT:Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;

    .line 39
    new-instance v0, Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;

    const-string v1, "TIMEOUT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;->TIMEOUT:Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;

    .line 44
    new-instance v0, Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;

    const-string v1, "DEVICE_FAILURE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;->DEVICE_FAILURE:Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;

    .line 49
    new-instance v0, Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;

    const-string v1, "EARLY_TRANSACTION_RESULT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;->EARLY_TRANSACTION_RESULT:Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;

    invoke-static {}, Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;->$values()[Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;

    move-result-object v0

    sput-object v0, Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;->$VALUES:[Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;
    .locals 1

    const-class v0, Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;

    return-object p0
.end method

.method public static values()[Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;
    .locals 1

    sget-object v0, Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;->$VALUES:[Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;

    return-object v0
.end method
