.class public Lio/ktor/client/engine/HttpClientEngineConfig;
.super Ljava/lang/Object;
.source "HttpClientEngineConfig.kt"


# annotations
.annotation runtime Lio/ktor/util/KtorDsl;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0008\u0017\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\"\u0010\t\u001a\n\u0018\u00010\nj\u0004\u0018\u0001`\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR$\u0010\u0010\u001a\u00020\u00118\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0012\u0010\u0002\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u0017"
    }
    d2 = {
        "Lio/ktor/client/engine/HttpClientEngineConfig;",
        "",
        "()V",
        "pipelining",
        "",
        "getPipelining",
        "()Z",
        "setPipelining",
        "(Z)V",
        "proxy",
        "Ljava/net/Proxy;",
        "Lio/ktor/client/engine/ProxyConfig;",
        "getProxy",
        "()Ljava/net/Proxy;",
        "setProxy",
        "(Ljava/net/Proxy;)V",
        "threadsCount",
        "",
        "getThreadsCount$annotations",
        "getThreadsCount",
        "()I",
        "setThreadsCount",
        "(I)V",
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


# instance fields
.field private pipelining:Z

.field private proxy:Ljava/net/Proxy;

.field private threadsCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 21
    iput v0, p0, Lio/ktor/client/engine/HttpClientEngineConfig;->threadsCount:I

    return-void
.end method

.method public static synthetic getThreadsCount$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->WARNING:Lkotlin/DeprecationLevel;
        message = "The [threadsCount] property is deprecated. The [Dispatchers.IO] is used by default."
    .end annotation

    return-void
.end method


# virtual methods
.method public final getPipelining()Z
    .locals 1

    .line 26
    iget-boolean v0, p0, Lio/ktor/client/engine/HttpClientEngineConfig;->pipelining:Z

    return v0
.end method

.method public final getProxy()Ljava/net/Proxy;
    .locals 1

    .line 34
    iget-object v0, p0, Lio/ktor/client/engine/HttpClientEngineConfig;->proxy:Ljava/net/Proxy;

    return-object v0
.end method

.method public final getThreadsCount()I
    .locals 1

    .line 21
    iget v0, p0, Lio/ktor/client/engine/HttpClientEngineConfig;->threadsCount:I

    return v0
.end method

.method public final setPipelining(Z)V
    .locals 0

    .line 26
    iput-boolean p1, p0, Lio/ktor/client/engine/HttpClientEngineConfig;->pipelining:Z

    return-void
.end method

.method public final setProxy(Ljava/net/Proxy;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lio/ktor/client/engine/HttpClientEngineConfig;->proxy:Ljava/net/Proxy;

    return-void
.end method

.method public final setThreadsCount(I)V
    .locals 0

    .line 21
    iput p1, p0, Lio/ktor/client/engine/HttpClientEngineConfig;->threadsCount:I

    return-void
.end method
