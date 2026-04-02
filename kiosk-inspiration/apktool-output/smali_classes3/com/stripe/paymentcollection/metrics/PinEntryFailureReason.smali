.class public final enum Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;
.super Ljava/lang/Enum;
.source "Tags.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u000b\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;",
        "",
        "(Ljava/lang/String;I)V",
        "UNKNOWN",
        "MERCHANT_CANCELLED",
        "CUSTOMER_CANCELLED",
        "TIMEOUT",
        "BYPASSED",
        "WRONG_PIN_LENGTH",
        "INCORRECT_PIN",
        "ICC_REMOVED",
        "CARD_ERROR",
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

.field private static final synthetic $VALUES:[Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;

.field public static final enum BYPASSED:Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;

.field public static final enum CARD_ERROR:Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;

.field public static final enum CUSTOMER_CANCELLED:Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;

.field public static final enum ICC_REMOVED:Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;

.field public static final enum INCORRECT_PIN:Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;

.field public static final enum MERCHANT_CANCELLED:Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;

.field public static final enum TIMEOUT:Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;

.field public static final enum UNKNOWN:Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;

.field public static final enum WRONG_PIN_LENGTH:Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;


# direct methods
.method private static final synthetic $values()[Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;
    .locals 9

    sget-object v0, Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;->UNKNOWN:Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;

    sget-object v1, Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;->MERCHANT_CANCELLED:Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;

    sget-object v2, Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;->CUSTOMER_CANCELLED:Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;

    sget-object v3, Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;->TIMEOUT:Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;

    sget-object v4, Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;->BYPASSED:Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;

    sget-object v5, Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;->WRONG_PIN_LENGTH:Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;

    sget-object v6, Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;->INCORRECT_PIN:Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;

    sget-object v7, Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;->ICC_REMOVED:Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;

    sget-object v8, Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;->CARD_ERROR:Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;

    filled-new-array/range {v0 .. v8}, [Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 125
    new-instance v0, Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;->UNKNOWN:Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;

    .line 130
    new-instance v0, Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;

    const-string v1, "MERCHANT_CANCELLED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;->MERCHANT_CANCELLED:Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;

    .line 135
    new-instance v0, Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;

    const-string v1, "CUSTOMER_CANCELLED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;->CUSTOMER_CANCELLED:Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;

    .line 140
    new-instance v0, Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;

    const-string v1, "TIMEOUT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;->TIMEOUT:Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;

    .line 145
    new-instance v0, Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;

    const-string v1, "BYPASSED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;->BYPASSED:Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;

    .line 150
    new-instance v0, Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;

    const-string v1, "WRONG_PIN_LENGTH"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;->WRONG_PIN_LENGTH:Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;

    .line 155
    new-instance v0, Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;

    const-string v1, "INCORRECT_PIN"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;->INCORRECT_PIN:Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;

    .line 160
    new-instance v0, Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;

    const-string v1, "ICC_REMOVED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;->ICC_REMOVED:Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;

    .line 165
    new-instance v0, Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;

    const-string v1, "CARD_ERROR"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;->CARD_ERROR:Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;

    invoke-static {}, Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;->$values()[Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;

    move-result-object v0

    sput-object v0, Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;->$VALUES:[Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 121
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;
    .locals 1

    const-class v0, Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;

    return-object p0
.end method

.method public static values()[Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;
    .locals 1

    sget-object v0, Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;->$VALUES:[Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;

    return-object v0
.end method
