.class public final enum Lcom/stripe/stripeterminal/external/models/PaymentStatus;
.super Ljava/lang/Enum;
.source "PaymentStatus.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/stripeterminal/external/models/PaymentStatus;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0006\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/external/models/PaymentStatus;",
        "",
        "(Ljava/lang/String;I)V",
        "NOT_READY",
        "READY",
        "WAITING_FOR_INPUT",
        "PROCESSING",
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

.field private static final synthetic $VALUES:[Lcom/stripe/stripeterminal/external/models/PaymentStatus;

.field public static final enum NOT_READY:Lcom/stripe/stripeterminal/external/models/PaymentStatus;

.field public static final enum PROCESSING:Lcom/stripe/stripeterminal/external/models/PaymentStatus;

.field public static final enum READY:Lcom/stripe/stripeterminal/external/models/PaymentStatus;

.field public static final enum WAITING_FOR_INPUT:Lcom/stripe/stripeterminal/external/models/PaymentStatus;


# direct methods
.method private static final synthetic $values()[Lcom/stripe/stripeterminal/external/models/PaymentStatus;
    .locals 4

    sget-object v0, Lcom/stripe/stripeterminal/external/models/PaymentStatus;->NOT_READY:Lcom/stripe/stripeterminal/external/models/PaymentStatus;

    sget-object v1, Lcom/stripe/stripeterminal/external/models/PaymentStatus;->READY:Lcom/stripe/stripeterminal/external/models/PaymentStatus;

    sget-object v2, Lcom/stripe/stripeterminal/external/models/PaymentStatus;->WAITING_FOR_INPUT:Lcom/stripe/stripeterminal/external/models/PaymentStatus;

    sget-object v3, Lcom/stripe/stripeterminal/external/models/PaymentStatus;->PROCESSING:Lcom/stripe/stripeterminal/external/models/PaymentStatus;

    filled-new-array {v0, v1, v2, v3}, [Lcom/stripe/stripeterminal/external/models/PaymentStatus;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 15
    new-instance v0, Lcom/stripe/stripeterminal/external/models/PaymentStatus;

    const-string v1, "NOT_READY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/stripe/stripeterminal/external/models/PaymentStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/PaymentStatus;->NOT_READY:Lcom/stripe/stripeterminal/external/models/PaymentStatus;

    .line 21
    new-instance v0, Lcom/stripe/stripeterminal/external/models/PaymentStatus;

    const-string v1, "READY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/stripe/stripeterminal/external/models/PaymentStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/PaymentStatus;->READY:Lcom/stripe/stripeterminal/external/models/PaymentStatus;

    .line 27
    new-instance v0, Lcom/stripe/stripeterminal/external/models/PaymentStatus;

    const-string v1, "WAITING_FOR_INPUT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/stripe/stripeterminal/external/models/PaymentStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/PaymentStatus;->WAITING_FOR_INPUT:Lcom/stripe/stripeterminal/external/models/PaymentStatus;

    .line 32
    new-instance v0, Lcom/stripe/stripeterminal/external/models/PaymentStatus;

    const-string v1, "PROCESSING"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/stripe/stripeterminal/external/models/PaymentStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/PaymentStatus;->PROCESSING:Lcom/stripe/stripeterminal/external/models/PaymentStatus;

    invoke-static {}, Lcom/stripe/stripeterminal/external/models/PaymentStatus;->$values()[Lcom/stripe/stripeterminal/external/models/PaymentStatus;

    move-result-object v0

    sput-object v0, Lcom/stripe/stripeterminal/external/models/PaymentStatus;->$VALUES:[Lcom/stripe/stripeterminal/external/models/PaymentStatus;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/stripe/stripeterminal/external/models/PaymentStatus;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/stripe/stripeterminal/external/models/PaymentStatus;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/stripe/stripeterminal/external/models/PaymentStatus;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/PaymentStatus;
    .locals 1

    const-class v0, Lcom/stripe/stripeterminal/external/models/PaymentStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/stripeterminal/external/models/PaymentStatus;

    return-object p0
.end method

.method public static values()[Lcom/stripe/stripeterminal/external/models/PaymentStatus;
    .locals 1

    sget-object v0, Lcom/stripe/stripeterminal/external/models/PaymentStatus;->$VALUES:[Lcom/stripe/stripeterminal/external/models/PaymentStatus;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/stripeterminal/external/models/PaymentStatus;

    return-object v0
.end method
