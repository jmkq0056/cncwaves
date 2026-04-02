.class public final enum Lcom/stripe/paymentcollection/metrics/WaitForPosCommandFailureReason;
.super Ljava/lang/Enum;
.source "Tags.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/paymentcollection/metrics/WaitForPosCommandFailureReason;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0007\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/stripe/paymentcollection/metrics/WaitForPosCommandFailureReason;",
        "",
        "(Ljava/lang/String;I)V",
        "UNKNOWN",
        "MERCHANT_CANCELLED",
        "CUSTOMER_CANCELLED",
        "HARDWARE_CANCELLED",
        "TIMED_OUT",
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

.field private static final synthetic $VALUES:[Lcom/stripe/paymentcollection/metrics/WaitForPosCommandFailureReason;

.field public static final enum CUSTOMER_CANCELLED:Lcom/stripe/paymentcollection/metrics/WaitForPosCommandFailureReason;

.field public static final enum HARDWARE_CANCELLED:Lcom/stripe/paymentcollection/metrics/WaitForPosCommandFailureReason;

.field public static final enum MERCHANT_CANCELLED:Lcom/stripe/paymentcollection/metrics/WaitForPosCommandFailureReason;

.field public static final enum TIMED_OUT:Lcom/stripe/paymentcollection/metrics/WaitForPosCommandFailureReason;

.field public static final enum UNKNOWN:Lcom/stripe/paymentcollection/metrics/WaitForPosCommandFailureReason;


# direct methods
.method private static final synthetic $values()[Lcom/stripe/paymentcollection/metrics/WaitForPosCommandFailureReason;
    .locals 5

    sget-object v0, Lcom/stripe/paymentcollection/metrics/WaitForPosCommandFailureReason;->UNKNOWN:Lcom/stripe/paymentcollection/metrics/WaitForPosCommandFailureReason;

    sget-object v1, Lcom/stripe/paymentcollection/metrics/WaitForPosCommandFailureReason;->MERCHANT_CANCELLED:Lcom/stripe/paymentcollection/metrics/WaitForPosCommandFailureReason;

    sget-object v2, Lcom/stripe/paymentcollection/metrics/WaitForPosCommandFailureReason;->CUSTOMER_CANCELLED:Lcom/stripe/paymentcollection/metrics/WaitForPosCommandFailureReason;

    sget-object v3, Lcom/stripe/paymentcollection/metrics/WaitForPosCommandFailureReason;->HARDWARE_CANCELLED:Lcom/stripe/paymentcollection/metrics/WaitForPosCommandFailureReason;

    sget-object v4, Lcom/stripe/paymentcollection/metrics/WaitForPosCommandFailureReason;->TIMED_OUT:Lcom/stripe/paymentcollection/metrics/WaitForPosCommandFailureReason;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/stripe/paymentcollection/metrics/WaitForPosCommandFailureReason;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 288
    new-instance v0, Lcom/stripe/paymentcollection/metrics/WaitForPosCommandFailureReason;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/stripe/paymentcollection/metrics/WaitForPosCommandFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/paymentcollection/metrics/WaitForPosCommandFailureReason;->UNKNOWN:Lcom/stripe/paymentcollection/metrics/WaitForPosCommandFailureReason;

    .line 293
    new-instance v0, Lcom/stripe/paymentcollection/metrics/WaitForPosCommandFailureReason;

    const-string v1, "MERCHANT_CANCELLED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/stripe/paymentcollection/metrics/WaitForPosCommandFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/paymentcollection/metrics/WaitForPosCommandFailureReason;->MERCHANT_CANCELLED:Lcom/stripe/paymentcollection/metrics/WaitForPosCommandFailureReason;

    .line 298
    new-instance v0, Lcom/stripe/paymentcollection/metrics/WaitForPosCommandFailureReason;

    const-string v1, "CUSTOMER_CANCELLED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/stripe/paymentcollection/metrics/WaitForPosCommandFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/paymentcollection/metrics/WaitForPosCommandFailureReason;->CUSTOMER_CANCELLED:Lcom/stripe/paymentcollection/metrics/WaitForPosCommandFailureReason;

    .line 303
    new-instance v0, Lcom/stripe/paymentcollection/metrics/WaitForPosCommandFailureReason;

    const-string v1, "HARDWARE_CANCELLED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/stripe/paymentcollection/metrics/WaitForPosCommandFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/paymentcollection/metrics/WaitForPosCommandFailureReason;->HARDWARE_CANCELLED:Lcom/stripe/paymentcollection/metrics/WaitForPosCommandFailureReason;

    .line 308
    new-instance v0, Lcom/stripe/paymentcollection/metrics/WaitForPosCommandFailureReason;

    const-string v1, "TIMED_OUT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/stripe/paymentcollection/metrics/WaitForPosCommandFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/paymentcollection/metrics/WaitForPosCommandFailureReason;->TIMED_OUT:Lcom/stripe/paymentcollection/metrics/WaitForPosCommandFailureReason;

    invoke-static {}, Lcom/stripe/paymentcollection/metrics/WaitForPosCommandFailureReason;->$values()[Lcom/stripe/paymentcollection/metrics/WaitForPosCommandFailureReason;

    move-result-object v0

    sput-object v0, Lcom/stripe/paymentcollection/metrics/WaitForPosCommandFailureReason;->$VALUES:[Lcom/stripe/paymentcollection/metrics/WaitForPosCommandFailureReason;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/stripe/paymentcollection/metrics/WaitForPosCommandFailureReason;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 284
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/stripe/paymentcollection/metrics/WaitForPosCommandFailureReason;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/stripe/paymentcollection/metrics/WaitForPosCommandFailureReason;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/paymentcollection/metrics/WaitForPosCommandFailureReason;
    .locals 1

    const-class v0, Lcom/stripe/paymentcollection/metrics/WaitForPosCommandFailureReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/paymentcollection/metrics/WaitForPosCommandFailureReason;

    return-object p0
.end method

.method public static values()[Lcom/stripe/paymentcollection/metrics/WaitForPosCommandFailureReason;
    .locals 1

    sget-object v0, Lcom/stripe/paymentcollection/metrics/WaitForPosCommandFailureReason;->$VALUES:[Lcom/stripe/paymentcollection/metrics/WaitForPosCommandFailureReason;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/paymentcollection/metrics/WaitForPosCommandFailureReason;

    return-object v0
.end method
