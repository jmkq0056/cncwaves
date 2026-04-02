.class public final enum Lcom/stripe/hardware/tipping/TippingSelectionFailureReason;
.super Ljava/lang/Enum;
.source "TippingSelectionFailureReason.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/hardware/tipping/TippingSelectionFailureReason;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\n\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/stripe/hardware/tipping/TippingSelectionFailureReason;",
        "",
        "(Ljava/lang/String;I)V",
        "MERCHANT_CANCELLED",
        "HARDWARE_CANCELLED",
        "CUSTOMER_CANCELLED",
        "TIP_SELECTION_TYPE_NOT_FOUND",
        "CALLBACK_NO_TIP_AMOUNT",
        "CALLBACK_NO_DATA",
        "TIMEOUT",
        "INVALID_AMOUNT",
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

.field private static final synthetic $VALUES:[Lcom/stripe/hardware/tipping/TippingSelectionFailureReason;

.field public static final enum CALLBACK_NO_DATA:Lcom/stripe/hardware/tipping/TippingSelectionFailureReason;

.field public static final enum CALLBACK_NO_TIP_AMOUNT:Lcom/stripe/hardware/tipping/TippingSelectionFailureReason;

.field public static final enum CUSTOMER_CANCELLED:Lcom/stripe/hardware/tipping/TippingSelectionFailureReason;

.field public static final enum HARDWARE_CANCELLED:Lcom/stripe/hardware/tipping/TippingSelectionFailureReason;

.field public static final enum INVALID_AMOUNT:Lcom/stripe/hardware/tipping/TippingSelectionFailureReason;

.field public static final enum MERCHANT_CANCELLED:Lcom/stripe/hardware/tipping/TippingSelectionFailureReason;

.field public static final enum TIMEOUT:Lcom/stripe/hardware/tipping/TippingSelectionFailureReason;

.field public static final enum TIP_SELECTION_TYPE_NOT_FOUND:Lcom/stripe/hardware/tipping/TippingSelectionFailureReason;


# direct methods
.method private static final synthetic $values()[Lcom/stripe/hardware/tipping/TippingSelectionFailureReason;
    .locals 8

    sget-object v0, Lcom/stripe/hardware/tipping/TippingSelectionFailureReason;->MERCHANT_CANCELLED:Lcom/stripe/hardware/tipping/TippingSelectionFailureReason;

    sget-object v1, Lcom/stripe/hardware/tipping/TippingSelectionFailureReason;->HARDWARE_CANCELLED:Lcom/stripe/hardware/tipping/TippingSelectionFailureReason;

    sget-object v2, Lcom/stripe/hardware/tipping/TippingSelectionFailureReason;->CUSTOMER_CANCELLED:Lcom/stripe/hardware/tipping/TippingSelectionFailureReason;

    sget-object v3, Lcom/stripe/hardware/tipping/TippingSelectionFailureReason;->TIP_SELECTION_TYPE_NOT_FOUND:Lcom/stripe/hardware/tipping/TippingSelectionFailureReason;

    sget-object v4, Lcom/stripe/hardware/tipping/TippingSelectionFailureReason;->CALLBACK_NO_TIP_AMOUNT:Lcom/stripe/hardware/tipping/TippingSelectionFailureReason;

    sget-object v5, Lcom/stripe/hardware/tipping/TippingSelectionFailureReason;->CALLBACK_NO_DATA:Lcom/stripe/hardware/tipping/TippingSelectionFailureReason;

    sget-object v6, Lcom/stripe/hardware/tipping/TippingSelectionFailureReason;->TIMEOUT:Lcom/stripe/hardware/tipping/TippingSelectionFailureReason;

    sget-object v7, Lcom/stripe/hardware/tipping/TippingSelectionFailureReason;->INVALID_AMOUNT:Lcom/stripe/hardware/tipping/TippingSelectionFailureReason;

    filled-new-array/range {v0 .. v7}, [Lcom/stripe/hardware/tipping/TippingSelectionFailureReason;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 8
    new-instance v0, Lcom/stripe/hardware/tipping/TippingSelectionFailureReason;

    const-string v1, "MERCHANT_CANCELLED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/tipping/TippingSelectionFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/tipping/TippingSelectionFailureReason;->MERCHANT_CANCELLED:Lcom/stripe/hardware/tipping/TippingSelectionFailureReason;

    .line 13
    new-instance v0, Lcom/stripe/hardware/tipping/TippingSelectionFailureReason;

    const-string v1, "HARDWARE_CANCELLED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/tipping/TippingSelectionFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/tipping/TippingSelectionFailureReason;->HARDWARE_CANCELLED:Lcom/stripe/hardware/tipping/TippingSelectionFailureReason;

    .line 18
    new-instance v0, Lcom/stripe/hardware/tipping/TippingSelectionFailureReason;

    const-string v1, "CUSTOMER_CANCELLED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/tipping/TippingSelectionFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/tipping/TippingSelectionFailureReason;->CUSTOMER_CANCELLED:Lcom/stripe/hardware/tipping/TippingSelectionFailureReason;

    .line 27
    new-instance v0, Lcom/stripe/hardware/tipping/TippingSelectionFailureReason;

    const-string v1, "TIP_SELECTION_TYPE_NOT_FOUND"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/tipping/TippingSelectionFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/tipping/TippingSelectionFailureReason;->TIP_SELECTION_TYPE_NOT_FOUND:Lcom/stripe/hardware/tipping/TippingSelectionFailureReason;

    .line 33
    new-instance v0, Lcom/stripe/hardware/tipping/TippingSelectionFailureReason;

    const-string v1, "CALLBACK_NO_TIP_AMOUNT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/tipping/TippingSelectionFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/tipping/TippingSelectionFailureReason;->CALLBACK_NO_TIP_AMOUNT:Lcom/stripe/hardware/tipping/TippingSelectionFailureReason;

    .line 39
    new-instance v0, Lcom/stripe/hardware/tipping/TippingSelectionFailureReason;

    const-string v1, "CALLBACK_NO_DATA"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/tipping/TippingSelectionFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/tipping/TippingSelectionFailureReason;->CALLBACK_NO_DATA:Lcom/stripe/hardware/tipping/TippingSelectionFailureReason;

    .line 45
    new-instance v0, Lcom/stripe/hardware/tipping/TippingSelectionFailureReason;

    const-string v1, "TIMEOUT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/tipping/TippingSelectionFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/tipping/TippingSelectionFailureReason;->TIMEOUT:Lcom/stripe/hardware/tipping/TippingSelectionFailureReason;

    .line 51
    new-instance v0, Lcom/stripe/hardware/tipping/TippingSelectionFailureReason;

    const-string v1, "INVALID_AMOUNT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/tipping/TippingSelectionFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/tipping/TippingSelectionFailureReason;->INVALID_AMOUNT:Lcom/stripe/hardware/tipping/TippingSelectionFailureReason;

    invoke-static {}, Lcom/stripe/hardware/tipping/TippingSelectionFailureReason;->$values()[Lcom/stripe/hardware/tipping/TippingSelectionFailureReason;

    move-result-object v0

    sput-object v0, Lcom/stripe/hardware/tipping/TippingSelectionFailureReason;->$VALUES:[Lcom/stripe/hardware/tipping/TippingSelectionFailureReason;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/stripe/hardware/tipping/TippingSelectionFailureReason;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/stripe/hardware/tipping/TippingSelectionFailureReason;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/stripe/hardware/tipping/TippingSelectionFailureReason;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/hardware/tipping/TippingSelectionFailureReason;
    .locals 1

    const-class v0, Lcom/stripe/hardware/tipping/TippingSelectionFailureReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/hardware/tipping/TippingSelectionFailureReason;

    return-object p0
.end method

.method public static values()[Lcom/stripe/hardware/tipping/TippingSelectionFailureReason;
    .locals 1

    sget-object v0, Lcom/stripe/hardware/tipping/TippingSelectionFailureReason;->$VALUES:[Lcom/stripe/hardware/tipping/TippingSelectionFailureReason;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/hardware/tipping/TippingSelectionFailureReason;

    return-object v0
.end method
