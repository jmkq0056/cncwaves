.class public final enum Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;
.super Ljava/lang/Enum;
.source "StripeConnectivityStatus.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;",
        "",
        "networkStatus",
        "Lcom/stripe/stripeterminal/external/models/NetworkStatus;",
        "(Ljava/lang/String;ILcom/stripe/stripeterminal/external/models/NetworkStatus;)V",
        "getNetworkStatus",
        "()Lcom/stripe/stripeterminal/external/models/NetworkStatus;",
        "NO_NETWORK",
        "HEALTH_CHECKS_NOT_STARTED",
        "HEALTH_CHECKS_PAUSED",
        "HEALTH_CHECKS_PASSING",
        "HEALTH_CHECKS_FAILING",
        "OFFLINE_STICKY",
        "connectivity_release"
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

.field private static final synthetic $VALUES:[Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;

.field public static final enum HEALTH_CHECKS_FAILING:Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;

.field public static final enum HEALTH_CHECKS_NOT_STARTED:Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;

.field public static final enum HEALTH_CHECKS_PASSING:Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;

.field public static final enum HEALTH_CHECKS_PAUSED:Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;

.field public static final enum NO_NETWORK:Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;

.field public static final enum OFFLINE_STICKY:Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;


# instance fields
.field private final networkStatus:Lcom/stripe/stripeterminal/external/models/NetworkStatus;


# direct methods
.method private static final synthetic $values()[Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;
    .locals 6

    sget-object v0, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;->NO_NETWORK:Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;

    sget-object v1, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;->HEALTH_CHECKS_NOT_STARTED:Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;

    sget-object v2, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;->HEALTH_CHECKS_PAUSED:Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;

    sget-object v3, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;->HEALTH_CHECKS_PASSING:Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;

    sget-object v4, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;->HEALTH_CHECKS_FAILING:Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;

    sget-object v5, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;->OFFLINE_STICKY:Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;

    filled-new-array/range {v0 .. v5}, [Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 13
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;

    const/4 v1, 0x0

    sget-object v2, Lcom/stripe/stripeterminal/external/models/NetworkStatus;->OFFLINE:Lcom/stripe/stripeterminal/external/models/NetworkStatus;

    const-string v3, "NO_NETWORK"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;-><init>(Ljava/lang/String;ILcom/stripe/stripeterminal/external/models/NetworkStatus;)V

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;->NO_NETWORK:Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;

    .line 19
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;

    const/4 v1, 0x1

    sget-object v2, Lcom/stripe/stripeterminal/external/models/NetworkStatus;->UNKNOWN:Lcom/stripe/stripeterminal/external/models/NetworkStatus;

    const-string v3, "HEALTH_CHECKS_NOT_STARTED"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;-><init>(Ljava/lang/String;ILcom/stripe/stripeterminal/external/models/NetworkStatus;)V

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;->HEALTH_CHECKS_NOT_STARTED:Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;

    .line 25
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;

    const/4 v1, 0x2

    sget-object v2, Lcom/stripe/stripeterminal/external/models/NetworkStatus;->UNKNOWN:Lcom/stripe/stripeterminal/external/models/NetworkStatus;

    const-string v3, "HEALTH_CHECKS_PAUSED"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;-><init>(Ljava/lang/String;ILcom/stripe/stripeterminal/external/models/NetworkStatus;)V

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;->HEALTH_CHECKS_PAUSED:Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;

    .line 30
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;

    const/4 v1, 0x3

    sget-object v2, Lcom/stripe/stripeterminal/external/models/NetworkStatus;->ONLINE:Lcom/stripe/stripeterminal/external/models/NetworkStatus;

    const-string v3, "HEALTH_CHECKS_PASSING"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;-><init>(Ljava/lang/String;ILcom/stripe/stripeterminal/external/models/NetworkStatus;)V

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;->HEALTH_CHECKS_PASSING:Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;

    .line 35
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;

    const/4 v1, 0x4

    sget-object v2, Lcom/stripe/stripeterminal/external/models/NetworkStatus;->OFFLINE:Lcom/stripe/stripeterminal/external/models/NetworkStatus;

    const-string v3, "HEALTH_CHECKS_FAILING"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;-><init>(Ljava/lang/String;ILcom/stripe/stripeterminal/external/models/NetworkStatus;)V

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;->HEALTH_CHECKS_FAILING:Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;

    .line 41
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;

    const/4 v1, 0x5

    sget-object v2, Lcom/stripe/stripeterminal/external/models/NetworkStatus;->OFFLINE:Lcom/stripe/stripeterminal/external/models/NetworkStatus;

    const-string v3, "OFFLINE_STICKY"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;-><init>(Ljava/lang/String;ILcom/stripe/stripeterminal/external/models/NetworkStatus;)V

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;->OFFLINE_STICKY:Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;

    invoke-static {}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;->$values()[Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;

    move-result-object v0

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;->$VALUES:[Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/stripe/stripeterminal/external/models/NetworkStatus;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/external/models/NetworkStatus;",
            ")V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;->networkStatus:Lcom/stripe/stripeterminal/external/models/NetworkStatus;

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;
    .locals 1

    const-class v0, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;

    return-object p0
.end method

.method public static values()[Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;
    .locals 1

    sget-object v0, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;->$VALUES:[Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;

    return-object v0
.end method


# virtual methods
.method public final getNetworkStatus()Lcom/stripe/stripeterminal/external/models/NetworkStatus;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;->networkStatus:Lcom/stripe/stripeterminal/external/models/NetworkStatus;

    return-object v0
.end method
