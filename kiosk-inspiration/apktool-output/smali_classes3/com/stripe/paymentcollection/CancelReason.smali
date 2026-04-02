.class public final enum Lcom/stripe/paymentcollection/CancelReason;
.super Ljava/lang/Enum;
.source "PaymentCollectionData.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/paymentcollection/CancelReason;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0005\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/stripe/paymentcollection/CancelReason;",
        "",
        "(Ljava/lang/String;I)V",
        "HARDWARE_CANCELLED",
        "MERCHANT_CANCELLED",
        "CUSTOMER_CANCELLED",
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

.field private static final synthetic $VALUES:[Lcom/stripe/paymentcollection/CancelReason;

.field public static final enum CUSTOMER_CANCELLED:Lcom/stripe/paymentcollection/CancelReason;

.field public static final enum HARDWARE_CANCELLED:Lcom/stripe/paymentcollection/CancelReason;

.field public static final enum MERCHANT_CANCELLED:Lcom/stripe/paymentcollection/CancelReason;


# direct methods
.method private static final synthetic $values()[Lcom/stripe/paymentcollection/CancelReason;
    .locals 3

    sget-object v0, Lcom/stripe/paymentcollection/CancelReason;->HARDWARE_CANCELLED:Lcom/stripe/paymentcollection/CancelReason;

    sget-object v1, Lcom/stripe/paymentcollection/CancelReason;->MERCHANT_CANCELLED:Lcom/stripe/paymentcollection/CancelReason;

    sget-object v2, Lcom/stripe/paymentcollection/CancelReason;->CUSTOMER_CANCELLED:Lcom/stripe/paymentcollection/CancelReason;

    filled-new-array {v0, v1, v2}, [Lcom/stripe/paymentcollection/CancelReason;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 625
    new-instance v0, Lcom/stripe/paymentcollection/CancelReason;

    const-string v1, "HARDWARE_CANCELLED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/stripe/paymentcollection/CancelReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/paymentcollection/CancelReason;->HARDWARE_CANCELLED:Lcom/stripe/paymentcollection/CancelReason;

    .line 628
    new-instance v0, Lcom/stripe/paymentcollection/CancelReason;

    const-string v1, "MERCHANT_CANCELLED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/stripe/paymentcollection/CancelReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/paymentcollection/CancelReason;->MERCHANT_CANCELLED:Lcom/stripe/paymentcollection/CancelReason;

    .line 631
    new-instance v0, Lcom/stripe/paymentcollection/CancelReason;

    const-string v1, "CUSTOMER_CANCELLED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/stripe/paymentcollection/CancelReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/paymentcollection/CancelReason;->CUSTOMER_CANCELLED:Lcom/stripe/paymentcollection/CancelReason;

    invoke-static {}, Lcom/stripe/paymentcollection/CancelReason;->$values()[Lcom/stripe/paymentcollection/CancelReason;

    move-result-object v0

    sput-object v0, Lcom/stripe/paymentcollection/CancelReason;->$VALUES:[Lcom/stripe/paymentcollection/CancelReason;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/stripe/paymentcollection/CancelReason;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 623
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/stripe/paymentcollection/CancelReason;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/stripe/paymentcollection/CancelReason;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/paymentcollection/CancelReason;
    .locals 1

    const-class v0, Lcom/stripe/paymentcollection/CancelReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/paymentcollection/CancelReason;

    return-object p0
.end method

.method public static values()[Lcom/stripe/paymentcollection/CancelReason;
    .locals 1

    sget-object v0, Lcom/stripe/paymentcollection/CancelReason;->$VALUES:[Lcom/stripe/paymentcollection/CancelReason;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/paymentcollection/CancelReason;

    return-object v0
.end method
