.class public final enum Lcom/stripe/core/connectivity/NetworkConnectionError;
.super Ljava/lang/Enum;
.source "NetworkConnectionEvent.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/core/connectivity/NetworkConnectionError;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0007\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0002\u0010\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/stripe/core/connectivity/NetworkConnectionError;",
        "",
        "isSkippableError",
        "",
        "(Ljava/lang/String;IZ)V",
        "()Z",
        "CannotReachMandatoryStripeURL",
        "CannotReachOptionalStripeURL",
        "NoInternetConnection",
        "HighLatency",
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

.field private static final synthetic $VALUES:[Lcom/stripe/core/connectivity/NetworkConnectionError;

.field public static final enum CannotReachMandatoryStripeURL:Lcom/stripe/core/connectivity/NetworkConnectionError;

.field public static final enum CannotReachOptionalStripeURL:Lcom/stripe/core/connectivity/NetworkConnectionError;

.field public static final enum HighLatency:Lcom/stripe/core/connectivity/NetworkConnectionError;

.field public static final enum NoInternetConnection:Lcom/stripe/core/connectivity/NetworkConnectionError;


# instance fields
.field private final isSkippableError:Z


# direct methods
.method private static final synthetic $values()[Lcom/stripe/core/connectivity/NetworkConnectionError;
    .locals 4

    sget-object v0, Lcom/stripe/core/connectivity/NetworkConnectionError;->CannotReachMandatoryStripeURL:Lcom/stripe/core/connectivity/NetworkConnectionError;

    sget-object v1, Lcom/stripe/core/connectivity/NetworkConnectionError;->CannotReachOptionalStripeURL:Lcom/stripe/core/connectivity/NetworkConnectionError;

    sget-object v2, Lcom/stripe/core/connectivity/NetworkConnectionError;->NoInternetConnection:Lcom/stripe/core/connectivity/NetworkConnectionError;

    sget-object v3, Lcom/stripe/core/connectivity/NetworkConnectionError;->HighLatency:Lcom/stripe/core/connectivity/NetworkConnectionError;

    filled-new-array {v0, v1, v2, v3}, [Lcom/stripe/core/connectivity/NetworkConnectionError;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 33
    new-instance v0, Lcom/stripe/core/connectivity/NetworkConnectionError;

    const-string v1, "CannotReachMandatoryStripeURL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/stripe/core/connectivity/NetworkConnectionError;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/stripe/core/connectivity/NetworkConnectionError;->CannotReachMandatoryStripeURL:Lcom/stripe/core/connectivity/NetworkConnectionError;

    .line 34
    new-instance v0, Lcom/stripe/core/connectivity/NetworkConnectionError;

    const-string v1, "CannotReachOptionalStripeURL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/stripe/core/connectivity/NetworkConnectionError;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/stripe/core/connectivity/NetworkConnectionError;->CannotReachOptionalStripeURL:Lcom/stripe/core/connectivity/NetworkConnectionError;

    .line 35
    new-instance v0, Lcom/stripe/core/connectivity/NetworkConnectionError;

    const-string v1, "NoInternetConnection"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v2}, Lcom/stripe/core/connectivity/NetworkConnectionError;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/stripe/core/connectivity/NetworkConnectionError;->NoInternetConnection:Lcom/stripe/core/connectivity/NetworkConnectionError;

    .line 36
    new-instance v0, Lcom/stripe/core/connectivity/NetworkConnectionError;

    const-string v1, "HighLatency"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/stripe/core/connectivity/NetworkConnectionError;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/stripe/core/connectivity/NetworkConnectionError;->HighLatency:Lcom/stripe/core/connectivity/NetworkConnectionError;

    invoke-static {}, Lcom/stripe/core/connectivity/NetworkConnectionError;->$values()[Lcom/stripe/core/connectivity/NetworkConnectionError;

    move-result-object v0

    sput-object v0, Lcom/stripe/core/connectivity/NetworkConnectionError;->$VALUES:[Lcom/stripe/core/connectivity/NetworkConnectionError;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/stripe/core/connectivity/NetworkConnectionError;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lcom/stripe/core/connectivity/NetworkConnectionError;->isSkippableError:Z

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/stripe/core/connectivity/NetworkConnectionError;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/stripe/core/connectivity/NetworkConnectionError;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/core/connectivity/NetworkConnectionError;
    .locals 1

    const-class v0, Lcom/stripe/core/connectivity/NetworkConnectionError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/core/connectivity/NetworkConnectionError;

    return-object p0
.end method

.method public static values()[Lcom/stripe/core/connectivity/NetworkConnectionError;
    .locals 1

    sget-object v0, Lcom/stripe/core/connectivity/NetworkConnectionError;->$VALUES:[Lcom/stripe/core/connectivity/NetworkConnectionError;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/core/connectivity/NetworkConnectionError;

    return-object v0
.end method


# virtual methods
.method public final isSkippableError()Z
    .locals 1

    .line 32
    iget-boolean v0, p0, Lcom/stripe/core/connectivity/NetworkConnectionError;->isSkippableError:Z

    return v0
.end method
