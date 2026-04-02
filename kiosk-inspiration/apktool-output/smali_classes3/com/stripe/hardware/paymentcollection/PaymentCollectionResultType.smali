.class public final enum Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;
.super Ljava/lang/Enum;
.source "CollectionCompletedModel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u000c\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;",
        "",
        "(Ljava/lang/String;I)V",
        "SUCCESS",
        "CANCELLED",
        "DEVICE_FAILURE",
        "DEVICE_DECLINED",
        "ONLINE_CONFIRMATION_DECLINED",
        "ONLINE_CONFIRMATION_UNKNOWN_FAILURE",
        "SCA_NEEDED",
        "TIMEOUT",
        "NOT_FINISHED",
        "COLLECT_PAYMENT_METHOD_API_ERROR",
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

.field private static final synthetic $VALUES:[Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;

.field public static final enum CANCELLED:Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;

.field public static final enum COLLECT_PAYMENT_METHOD_API_ERROR:Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;

.field public static final enum DEVICE_DECLINED:Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;

.field public static final enum DEVICE_FAILURE:Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;

.field public static final enum NOT_FINISHED:Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;

.field public static final enum ONLINE_CONFIRMATION_DECLINED:Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;

.field public static final enum ONLINE_CONFIRMATION_UNKNOWN_FAILURE:Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;

.field public static final enum SCA_NEEDED:Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;

.field public static final enum SUCCESS:Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;

.field public static final enum TIMEOUT:Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;


# direct methods
.method private static final synthetic $values()[Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;
    .locals 10

    sget-object v0, Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;->SUCCESS:Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;

    sget-object v1, Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;->CANCELLED:Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;

    sget-object v2, Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;->DEVICE_FAILURE:Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;

    sget-object v3, Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;->DEVICE_DECLINED:Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;

    sget-object v4, Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;->ONLINE_CONFIRMATION_DECLINED:Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;

    sget-object v5, Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;->ONLINE_CONFIRMATION_UNKNOWN_FAILURE:Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;

    sget-object v6, Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;->SCA_NEEDED:Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;

    sget-object v7, Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;->TIMEOUT:Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;

    sget-object v8, Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;->NOT_FINISHED:Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;

    sget-object v9, Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;->COLLECT_PAYMENT_METHOD_API_ERROR:Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;

    filled-new-array/range {v0 .. v9}, [Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 22
    new-instance v0, Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;->SUCCESS:Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;

    .line 23
    new-instance v0, Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;

    const-string v1, "CANCELLED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;->CANCELLED:Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;

    .line 24
    new-instance v0, Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;

    const-string v1, "DEVICE_FAILURE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;->DEVICE_FAILURE:Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;

    .line 25
    new-instance v0, Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;

    const-string v1, "DEVICE_DECLINED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;->DEVICE_DECLINED:Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;

    .line 26
    new-instance v0, Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;

    const-string v1, "ONLINE_CONFIRMATION_DECLINED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;->ONLINE_CONFIRMATION_DECLINED:Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;

    .line 27
    new-instance v0, Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;

    const-string v1, "ONLINE_CONFIRMATION_UNKNOWN_FAILURE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;->ONLINE_CONFIRMATION_UNKNOWN_FAILURE:Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;

    .line 28
    new-instance v0, Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;

    const-string v1, "SCA_NEEDED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;->SCA_NEEDED:Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;

    .line 29
    new-instance v0, Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;

    const-string v1, "TIMEOUT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;->TIMEOUT:Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;

    .line 30
    new-instance v0, Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;

    const-string v1, "NOT_FINISHED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;->NOT_FINISHED:Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;

    .line 33
    new-instance v0, Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;

    const-string v1, "COLLECT_PAYMENT_METHOD_API_ERROR"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;->COLLECT_PAYMENT_METHOD_API_ERROR:Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;

    invoke-static {}, Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;->$values()[Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;

    move-result-object v0

    sput-object v0, Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;->$VALUES:[Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;
    .locals 1

    const-class v0, Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;

    return-object p0
.end method

.method public static values()[Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;
    .locals 1

    sget-object v0, Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;->$VALUES:[Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;

    return-object v0
.end method
