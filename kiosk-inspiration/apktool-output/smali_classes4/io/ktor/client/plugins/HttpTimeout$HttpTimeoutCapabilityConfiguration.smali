.class public final Lio/ktor/client/plugins/HttpTimeout$HttpTimeoutCapabilityConfiguration;
.super Ljava/lang/Object;
.source "HttpTimeout.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/client/plugins/HttpTimeout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HttpTimeoutCapabilityConfiguration"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/client/plugins/HttpTimeout$HttpTimeoutCapabilityConfiguration$Companion;
    }
.end annotation

.annotation runtime Lio/ktor/util/KtorDsl;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0007\u0018\u0000 \u001e2\u00020\u0001:\u0001\u001eB+\u0008\u0016\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0006J\r\u0010\u0014\u001a\u00020\u0015H\u0000\u00a2\u0006\u0002\u0008\u0016J\u0019\u0010\u0017\u001a\u0004\u0018\u00010\u00032\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0003H\u0002\u00a2\u0006\u0002\u0010\u0018J\u0013\u0010\u0019\u001a\u00020\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u0008\u0010\u001c\u001a\u00020\u001dH\u0016R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u0003X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0008R\u0012\u0010\t\u001a\u0004\u0018\u00010\u0003X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0008R\u0012\u0010\n\u001a\u0004\u0018\u00010\u0003X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0008R(\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u00038F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR(\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u00038F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0010\u0010\r\"\u0004\u0008\u0011\u0010\u000fR(\u0010\u0005\u001a\u0004\u0018\u00010\u00032\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u00038F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0012\u0010\r\"\u0004\u0008\u0013\u0010\u000f\u00a8\u0006\u001f"
    }
    d2 = {
        "Lio/ktor/client/plugins/HttpTimeout$HttpTimeoutCapabilityConfiguration;",
        "",
        "requestTimeoutMillis",
        "",
        "connectTimeoutMillis",
        "socketTimeoutMillis",
        "(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V",
        "_connectTimeoutMillis",
        "Ljava/lang/Long;",
        "_requestTimeoutMillis",
        "_socketTimeoutMillis",
        "value",
        "getConnectTimeoutMillis",
        "()Ljava/lang/Long;",
        "setConnectTimeoutMillis",
        "(Ljava/lang/Long;)V",
        "getRequestTimeoutMillis",
        "setRequestTimeoutMillis",
        "getSocketTimeoutMillis",
        "setSocketTimeoutMillis",
        "build",
        "Lio/ktor/client/plugins/HttpTimeout;",
        "build$ktor_client_core",
        "checkTimeoutValue",
        "(Ljava/lang/Long;)Ljava/lang/Long;",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "Companion",
        "ktor-client-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lio/ktor/client/plugins/HttpTimeout$HttpTimeoutCapabilityConfiguration$Companion;

.field private static final key:Lio/ktor/util/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/util/AttributeKey<",
            "Lio/ktor/client/plugins/HttpTimeout$HttpTimeoutCapabilityConfiguration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private _connectTimeoutMillis:Ljava/lang/Long;

.field private _requestTimeoutMillis:Ljava/lang/Long;

.field private _socketTimeoutMillis:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/ktor/client/plugins/HttpTimeout$HttpTimeoutCapabilityConfiguration$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/ktor/client/plugins/HttpTimeout$HttpTimeoutCapabilityConfiguration$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/client/plugins/HttpTimeout$HttpTimeoutCapabilityConfiguration;->Companion:Lio/ktor/client/plugins/HttpTimeout$HttpTimeoutCapabilityConfiguration$Companion;

    .line 115
    new-instance v0, Lio/ktor/util/AttributeKey;

    const-string v1, "TimeoutConfiguration"

    invoke-direct {v0, v1}, Lio/ktor/util/AttributeKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/ktor/client/plugins/HttpTimeout$HttpTimeoutCapabilityConfiguration;->key:Lio/ktor/util/AttributeKey;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 38
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lio/ktor/client/plugins/HttpTimeout$HttpTimeoutCapabilityConfiguration;->_requestTimeoutMillis:Ljava/lang/Long;

    .line 39
    iput-object v0, p0, Lio/ktor/client/plugins/HttpTimeout$HttpTimeoutCapabilityConfiguration;->_connectTimeoutMillis:Ljava/lang/Long;

    .line 40
    iput-object v0, p0, Lio/ktor/client/plugins/HttpTimeout$HttpTimeoutCapabilityConfiguration;->_socketTimeoutMillis:Ljava/lang/Long;

    .line 50
    invoke-virtual {p0, p1}, Lio/ktor/client/plugins/HttpTimeout$HttpTimeoutCapabilityConfiguration;->setRequestTimeoutMillis(Ljava/lang/Long;)V

    .line 51
    invoke-virtual {p0, p2}, Lio/ktor/client/plugins/HttpTimeout$HttpTimeoutCapabilityConfiguration;->setConnectTimeoutMillis(Ljava/lang/Long;)V

    .line 52
    invoke-virtual {p0, p3}, Lio/ktor/client/plugins/HttpTimeout$HttpTimeoutCapabilityConfiguration;->setSocketTimeoutMillis(Ljava/lang/Long;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    move-object p3, v0

    .line 45
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lio/ktor/client/plugins/HttpTimeout$HttpTimeoutCapabilityConfiguration;-><init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    return-void
.end method

.method public static final synthetic access$getKey$cp()Lio/ktor/util/AttributeKey;
    .locals 1

    .line 36
    sget-object v0, Lio/ktor/client/plugins/HttpTimeout$HttpTimeoutCapabilityConfiguration;->key:Lio/ktor/util/AttributeKey;

    return-object v0
.end method

.method private final checkTimeoutValue(Ljava/lang/Long;)Ljava/lang/Long;
    .locals 4

    if-eqz p1, :cond_1

    .line 88
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Only positive timeout values are allowed, for infinite timeout use HttpTimeout.INFINITE_TIMEOUT_MS"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-object p1
.end method


# virtual methods
.method public final build$ktor_client_core()Lio/ktor/client/plugins/HttpTimeout;
    .locals 5

    .line 85
    new-instance v0, Lio/ktor/client/plugins/HttpTimeout;

    invoke-virtual {p0}, Lio/ktor/client/plugins/HttpTimeout$HttpTimeoutCapabilityConfiguration;->getRequestTimeoutMillis()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0}, Lio/ktor/client/plugins/HttpTimeout$HttpTimeoutCapabilityConfiguration;->getConnectTimeoutMillis()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0}, Lio/ktor/client/plugins/HttpTimeout$HttpTimeoutCapabilityConfiguration;->getSocketTimeoutMillis()Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lio/ktor/client/plugins/HttpTimeout;-><init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 96
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 98
    :cond_1
    check-cast p1, Lio/ktor/client/plugins/HttpTimeout$HttpTimeoutCapabilityConfiguration;

    .line 100
    iget-object v2, p0, Lio/ktor/client/plugins/HttpTimeout$HttpTimeoutCapabilityConfiguration;->_requestTimeoutMillis:Ljava/lang/Long;

    iget-object v3, p1, Lio/ktor/client/plugins/HttpTimeout$HttpTimeoutCapabilityConfiguration;->_requestTimeoutMillis:Ljava/lang/Long;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 101
    :cond_2
    iget-object v2, p0, Lio/ktor/client/plugins/HttpTimeout$HttpTimeoutCapabilityConfiguration;->_connectTimeoutMillis:Ljava/lang/Long;

    iget-object v3, p1, Lio/ktor/client/plugins/HttpTimeout$HttpTimeoutCapabilityConfiguration;->_connectTimeoutMillis:Ljava/lang/Long;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 102
    :cond_3
    iget-object v2, p0, Lio/ktor/client/plugins/HttpTimeout$HttpTimeoutCapabilityConfiguration;->_socketTimeoutMillis:Ljava/lang/Long;

    iget-object p1, p1, Lio/ktor/client/plugins/HttpTimeout$HttpTimeoutCapabilityConfiguration;->_socketTimeoutMillis:Ljava/lang/Long;

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0

    :cond_5
    :goto_0
    return v1
.end method

.method public final getConnectTimeoutMillis()Ljava/lang/Long;
    .locals 1

    .line 70
    iget-object v0, p0, Lio/ktor/client/plugins/HttpTimeout$HttpTimeoutCapabilityConfiguration;->_connectTimeoutMillis:Ljava/lang/Long;

    return-object v0
.end method

.method public final getRequestTimeoutMillis()Ljava/lang/Long;
    .locals 1

    .line 60
    iget-object v0, p0, Lio/ktor/client/plugins/HttpTimeout$HttpTimeoutCapabilityConfiguration;->_requestTimeoutMillis:Ljava/lang/Long;

    return-object v0
.end method

.method public final getSocketTimeoutMillis()Ljava/lang/Long;
    .locals 1

    .line 80
    iget-object v0, p0, Lio/ktor/client/plugins/HttpTimeout$HttpTimeoutCapabilityConfiguration;->_socketTimeoutMillis:Ljava/lang/Long;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 108
    iget-object v0, p0, Lio/ktor/client/plugins/HttpTimeout$HttpTimeoutCapabilityConfiguration;->_requestTimeoutMillis:Ljava/lang/Long;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 109
    iget-object v2, p0, Lio/ktor/client/plugins/HttpTimeout$HttpTimeoutCapabilityConfiguration;->_connectTimeoutMillis:Ljava/lang/Long;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 110
    iget-object v2, p0, Lio/ktor/client/plugins/HttpTimeout$HttpTimeoutCapabilityConfiguration;->_socketTimeoutMillis:Ljava/lang/Long;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public final setConnectTimeoutMillis(Ljava/lang/Long;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lio/ktor/client/plugins/HttpTimeout$HttpTimeoutCapabilityConfiguration;->checkTimeoutValue(Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/client/plugins/HttpTimeout$HttpTimeoutCapabilityConfiguration;->_connectTimeoutMillis:Ljava/lang/Long;

    return-void
.end method

.method public final setRequestTimeoutMillis(Ljava/lang/Long;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lio/ktor/client/plugins/HttpTimeout$HttpTimeoutCapabilityConfiguration;->checkTimeoutValue(Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/client/plugins/HttpTimeout$HttpTimeoutCapabilityConfiguration;->_requestTimeoutMillis:Ljava/lang/Long;

    return-void
.end method

.method public final setSocketTimeoutMillis(Ljava/lang/Long;)V
    .locals 0

    .line 82
    invoke-direct {p0, p1}, Lio/ktor/client/plugins/HttpTimeout$HttpTimeoutCapabilityConfiguration;->checkTimeoutValue(Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/client/plugins/HttpTimeout$HttpTimeoutCapabilityConfiguration;->_socketTimeoutMillis:Ljava/lang/Long;

    return-void
.end method
