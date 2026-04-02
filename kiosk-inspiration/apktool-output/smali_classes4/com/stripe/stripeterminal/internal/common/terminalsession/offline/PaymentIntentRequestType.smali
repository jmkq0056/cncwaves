.class public final enum Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/PaymentIntentRequestType;
.super Ljava/lang/Enum;
.source "OfflineData.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/PaymentIntentRequestType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0004\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/PaymentIntentRequestType;",
        "",
        "(Ljava/lang/String;I)V",
        "CREATE_PAYMENT_INTENT",
        "PROCESS_PAYMENT_INTENT",
        "terminalsession_release"
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

.field private static final synthetic $VALUES:[Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/PaymentIntentRequestType;

.field public static final enum CREATE_PAYMENT_INTENT:Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/PaymentIntentRequestType;

.field public static final enum PROCESS_PAYMENT_INTENT:Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/PaymentIntentRequestType;


# direct methods
.method private static final synthetic $values()[Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/PaymentIntentRequestType;
    .locals 2

    sget-object v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/PaymentIntentRequestType;->CREATE_PAYMENT_INTENT:Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/PaymentIntentRequestType;

    sget-object v1, Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/PaymentIntentRequestType;->PROCESS_PAYMENT_INTENT:Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/PaymentIntentRequestType;

    filled-new-array {v0, v1}, [Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/PaymentIntentRequestType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 53
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/PaymentIntentRequestType;

    const-string v1, "CREATE_PAYMENT_INTENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/PaymentIntentRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/PaymentIntentRequestType;->CREATE_PAYMENT_INTENT:Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/PaymentIntentRequestType;

    .line 54
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/PaymentIntentRequestType;

    const-string v1, "PROCESS_PAYMENT_INTENT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/PaymentIntentRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/PaymentIntentRequestType;->PROCESS_PAYMENT_INTENT:Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/PaymentIntentRequestType;

    invoke-static {}, Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/PaymentIntentRequestType;->$values()[Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/PaymentIntentRequestType;

    move-result-object v0

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/PaymentIntentRequestType;->$VALUES:[Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/PaymentIntentRequestType;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/PaymentIntentRequestType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/PaymentIntentRequestType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/PaymentIntentRequestType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/PaymentIntentRequestType;
    .locals 1

    const-class v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/PaymentIntentRequestType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/PaymentIntentRequestType;

    return-object p0
.end method

.method public static values()[Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/PaymentIntentRequestType;
    .locals 1

    sget-object v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/PaymentIntentRequestType;->$VALUES:[Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/PaymentIntentRequestType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/PaymentIntentRequestType;

    return-object v0
.end method
