.class public final enum Lcom/stripe/paymentcollection/metrics/PaymentMethodType;
.super Ljava/lang/Enum;
.source "Tags.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/paymentcollection/metrics/PaymentMethodType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0008\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/stripe/paymentcollection/metrics/PaymentMethodType;",
        "",
        "(Ljava/lang/String;I)V",
        "UNKNOWN",
        "EMV_TAP",
        "EMV_INSERT_QUICK",
        "EMV_INSERT_FULL",
        "MAGSTRIPE",
        "MANUAL_ENTRY",
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

.field private static final synthetic $VALUES:[Lcom/stripe/paymentcollection/metrics/PaymentMethodType;

.field public static final enum EMV_INSERT_FULL:Lcom/stripe/paymentcollection/metrics/PaymentMethodType;

.field public static final enum EMV_INSERT_QUICK:Lcom/stripe/paymentcollection/metrics/PaymentMethodType;

.field public static final enum EMV_TAP:Lcom/stripe/paymentcollection/metrics/PaymentMethodType;

.field public static final enum MAGSTRIPE:Lcom/stripe/paymentcollection/metrics/PaymentMethodType;

.field public static final enum MANUAL_ENTRY:Lcom/stripe/paymentcollection/metrics/PaymentMethodType;

.field public static final enum UNKNOWN:Lcom/stripe/paymentcollection/metrics/PaymentMethodType;


# direct methods
.method private static final synthetic $values()[Lcom/stripe/paymentcollection/metrics/PaymentMethodType;
    .locals 6

    sget-object v0, Lcom/stripe/paymentcollection/metrics/PaymentMethodType;->UNKNOWN:Lcom/stripe/paymentcollection/metrics/PaymentMethodType;

    sget-object v1, Lcom/stripe/paymentcollection/metrics/PaymentMethodType;->EMV_TAP:Lcom/stripe/paymentcollection/metrics/PaymentMethodType;

    sget-object v2, Lcom/stripe/paymentcollection/metrics/PaymentMethodType;->EMV_INSERT_QUICK:Lcom/stripe/paymentcollection/metrics/PaymentMethodType;

    sget-object v3, Lcom/stripe/paymentcollection/metrics/PaymentMethodType;->EMV_INSERT_FULL:Lcom/stripe/paymentcollection/metrics/PaymentMethodType;

    sget-object v4, Lcom/stripe/paymentcollection/metrics/PaymentMethodType;->MAGSTRIPE:Lcom/stripe/paymentcollection/metrics/PaymentMethodType;

    sget-object v5, Lcom/stripe/paymentcollection/metrics/PaymentMethodType;->MANUAL_ENTRY:Lcom/stripe/paymentcollection/metrics/PaymentMethodType;

    filled-new-array/range {v0 .. v5}, [Lcom/stripe/paymentcollection/metrics/PaymentMethodType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 14
    new-instance v0, Lcom/stripe/paymentcollection/metrics/PaymentMethodType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/stripe/paymentcollection/metrics/PaymentMethodType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/paymentcollection/metrics/PaymentMethodType;->UNKNOWN:Lcom/stripe/paymentcollection/metrics/PaymentMethodType;

    .line 15
    new-instance v0, Lcom/stripe/paymentcollection/metrics/PaymentMethodType;

    const-string v1, "EMV_TAP"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/stripe/paymentcollection/metrics/PaymentMethodType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/paymentcollection/metrics/PaymentMethodType;->EMV_TAP:Lcom/stripe/paymentcollection/metrics/PaymentMethodType;

    .line 16
    new-instance v0, Lcom/stripe/paymentcollection/metrics/PaymentMethodType;

    const-string v1, "EMV_INSERT_QUICK"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/stripe/paymentcollection/metrics/PaymentMethodType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/paymentcollection/metrics/PaymentMethodType;->EMV_INSERT_QUICK:Lcom/stripe/paymentcollection/metrics/PaymentMethodType;

    .line 17
    new-instance v0, Lcom/stripe/paymentcollection/metrics/PaymentMethodType;

    const-string v1, "EMV_INSERT_FULL"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/stripe/paymentcollection/metrics/PaymentMethodType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/paymentcollection/metrics/PaymentMethodType;->EMV_INSERT_FULL:Lcom/stripe/paymentcollection/metrics/PaymentMethodType;

    .line 18
    new-instance v0, Lcom/stripe/paymentcollection/metrics/PaymentMethodType;

    const-string v1, "MAGSTRIPE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/stripe/paymentcollection/metrics/PaymentMethodType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/paymentcollection/metrics/PaymentMethodType;->MAGSTRIPE:Lcom/stripe/paymentcollection/metrics/PaymentMethodType;

    .line 19
    new-instance v0, Lcom/stripe/paymentcollection/metrics/PaymentMethodType;

    const-string v1, "MANUAL_ENTRY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/stripe/paymentcollection/metrics/PaymentMethodType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/paymentcollection/metrics/PaymentMethodType;->MANUAL_ENTRY:Lcom/stripe/paymentcollection/metrics/PaymentMethodType;

    invoke-static {}, Lcom/stripe/paymentcollection/metrics/PaymentMethodType;->$values()[Lcom/stripe/paymentcollection/metrics/PaymentMethodType;

    move-result-object v0

    sput-object v0, Lcom/stripe/paymentcollection/metrics/PaymentMethodType;->$VALUES:[Lcom/stripe/paymentcollection/metrics/PaymentMethodType;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/stripe/paymentcollection/metrics/PaymentMethodType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/stripe/paymentcollection/metrics/PaymentMethodType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/stripe/paymentcollection/metrics/PaymentMethodType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/paymentcollection/metrics/PaymentMethodType;
    .locals 1

    const-class v0, Lcom/stripe/paymentcollection/metrics/PaymentMethodType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/paymentcollection/metrics/PaymentMethodType;

    return-object p0
.end method

.method public static values()[Lcom/stripe/paymentcollection/metrics/PaymentMethodType;
    .locals 1

    sget-object v0, Lcom/stripe/paymentcollection/metrics/PaymentMethodType;->$VALUES:[Lcom/stripe/paymentcollection/metrics/PaymentMethodType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/paymentcollection/metrics/PaymentMethodType;

    return-object v0
.end method
