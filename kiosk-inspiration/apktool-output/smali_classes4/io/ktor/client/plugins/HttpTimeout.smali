.class public final Lio/ktor/client/plugins/HttpTimeout;
.super Ljava/lang/Object;
.source "HttpTimeout.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/client/plugins/HttpTimeout$HttpTimeoutCapabilityConfiguration;,
        Lio/ktor/client/plugins/HttpTimeout$Plugin;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0018\u0000 \u000b2\u00020\u0001:\u0002\n\u000bB%\u0008\u0002\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u0008\u001a\u00020\tH\u0002R\u0012\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0007R\u0012\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0007R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u0003X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0007\u00a8\u0006\u000c"
    }
    d2 = {
        "Lio/ktor/client/plugins/HttpTimeout;",
        "",
        "requestTimeoutMillis",
        "",
        "connectTimeoutMillis",
        "socketTimeoutMillis",
        "(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V",
        "Ljava/lang/Long;",
        "hasNotNullTimeouts",
        "",
        "HttpTimeoutCapabilityConfiguration",
        "Plugin",
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
.field public static final INFINITE_TIMEOUT_MS:J = 0x7fffffffffffffffL

.field public static final Plugin:Lio/ktor/client/plugins/HttpTimeout$Plugin;

.field private static final key:Lio/ktor/util/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/util/AttributeKey<",
            "Lio/ktor/client/plugins/HttpTimeout;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final connectTimeoutMillis:Ljava/lang/Long;

.field private final requestTimeoutMillis:Ljava/lang/Long;

.field private final socketTimeoutMillis:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/ktor/client/plugins/HttpTimeout$Plugin;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/ktor/client/plugins/HttpTimeout$Plugin;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/client/plugins/HttpTimeout;->Plugin:Lio/ktor/client/plugins/HttpTimeout$Plugin;

    .line 132
    new-instance v0, Lio/ktor/util/AttributeKey;

    const-string v1, "TimeoutPlugin"

    invoke-direct {v0, v1}, Lio/ktor/util/AttributeKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/ktor/client/plugins/HttpTimeout;->key:Lio/ktor/util/AttributeKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lio/ktor/client/plugins/HttpTimeout;->requestTimeoutMillis:Ljava/lang/Long;

    .line 30
    iput-object p2, p0, Lio/ktor/client/plugins/HttpTimeout;->connectTimeoutMillis:Ljava/lang/Long;

    .line 31
    iput-object p3, p0, Lio/ktor/client/plugins/HttpTimeout;->socketTimeoutMillis:Ljava/lang/Long;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lio/ktor/client/plugins/HttpTimeout;-><init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    return-void
.end method

.method public static final synthetic access$getConnectTimeoutMillis$p(Lio/ktor/client/plugins/HttpTimeout;)Ljava/lang/Long;
    .locals 0

    .line 28
    iget-object p0, p0, Lio/ktor/client/plugins/HttpTimeout;->connectTimeoutMillis:Ljava/lang/Long;

    return-object p0
.end method

.method public static final synthetic access$getKey$cp()Lio/ktor/util/AttributeKey;
    .locals 1

    .line 28
    sget-object v0, Lio/ktor/client/plugins/HttpTimeout;->key:Lio/ktor/util/AttributeKey;

    return-object v0
.end method

.method public static final synthetic access$getRequestTimeoutMillis$p(Lio/ktor/client/plugins/HttpTimeout;)Ljava/lang/Long;
    .locals 0

    .line 28
    iget-object p0, p0, Lio/ktor/client/plugins/HttpTimeout;->requestTimeoutMillis:Ljava/lang/Long;

    return-object p0
.end method

.method public static final synthetic access$getSocketTimeoutMillis$p(Lio/ktor/client/plugins/HttpTimeout;)Ljava/lang/Long;
    .locals 0

    .line 28
    iget-object p0, p0, Lio/ktor/client/plugins/HttpTimeout;->socketTimeoutMillis:Ljava/lang/Long;

    return-object p0
.end method

.method public static final synthetic access$hasNotNullTimeouts(Lio/ktor/client/plugins/HttpTimeout;)Z
    .locals 0

    .line 28
    invoke-direct {p0}, Lio/ktor/client/plugins/HttpTimeout;->hasNotNullTimeouts()Z

    move-result p0

    return p0
.end method

.method private final hasNotNullTimeouts()Z
    .locals 1

    .line 123
    iget-object v0, p0, Lio/ktor/client/plugins/HttpTimeout;->requestTimeoutMillis:Ljava/lang/Long;

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/ktor/client/plugins/HttpTimeout;->connectTimeoutMillis:Ljava/lang/Long;

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/ktor/client/plugins/HttpTimeout;->socketTimeoutMillis:Ljava/lang/Long;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
