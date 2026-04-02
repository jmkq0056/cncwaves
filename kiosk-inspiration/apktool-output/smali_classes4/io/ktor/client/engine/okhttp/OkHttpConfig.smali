.class public final Lio/ktor/client/engine/okhttp/OkHttpConfig;
.super Lio/ktor/client/engine/HttpClientEngineConfig;
.source "OkHttpConfig.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u001e\u001a\u00020\u000c2\u0006\u0010\u001f\u001a\u00020 J\u000e\u0010!\u001a\u00020\u000c2\u0006\u0010\u001f\u001a\u00020 J\u001f\u0010\t\u001a\u00020\u000c2\u0017\u0010\"\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000c0\n\u00a2\u0006\u0002\u0008\rR\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R+\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000c0\n\u00a2\u0006\u0002\u0008\rX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001d\u00a8\u0006#"
    }
    d2 = {
        "Lio/ktor/client/engine/okhttp/OkHttpConfig;",
        "Lio/ktor/client/engine/HttpClientEngineConfig;",
        "()V",
        "clientCacheSize",
        "",
        "getClientCacheSize",
        "()I",
        "setClientCacheSize",
        "(I)V",
        "config",
        "Lkotlin/Function1;",
        "Lokhttp3/OkHttpClient$Builder;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "getConfig$ktor_client_okhttp",
        "()Lkotlin/jvm/functions/Function1;",
        "setConfig$ktor_client_okhttp",
        "(Lkotlin/jvm/functions/Function1;)V",
        "preconfigured",
        "Lokhttp3/OkHttpClient;",
        "getPreconfigured",
        "()Lokhttp3/OkHttpClient;",
        "setPreconfigured",
        "(Lokhttp3/OkHttpClient;)V",
        "webSocketFactory",
        "Lokhttp3/WebSocket$Factory;",
        "getWebSocketFactory",
        "()Lokhttp3/WebSocket$Factory;",
        "setWebSocketFactory",
        "(Lokhttp3/WebSocket$Factory;)V",
        "addInterceptor",
        "interceptor",
        "Lokhttp3/Interceptor;",
        "addNetworkInterceptor",
        "block",
        "ktor-client-okhttp"
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
.field private clientCacheSize:I

.field private config:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lokhttp3/OkHttpClient$Builder;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private preconfigured:Lokhttp3/OkHttpClient;

.field private webSocketFactory:Lokhttp3/WebSocket$Factory;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Lio/ktor/client/engine/HttpClientEngineConfig;-><init>()V

    .line 15
    sget-object v0, Lio/ktor/client/engine/okhttp/OkHttpConfig$config$1;->INSTANCE:Lio/ktor/client/engine/okhttp/OkHttpConfig$config$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    iput-object v0, p0, Lio/ktor/client/engine/okhttp/OkHttpConfig;->config:Lkotlin/jvm/functions/Function1;

    const/16 v0, 0xa

    .line 31
    iput v0, p0, Lio/ktor/client/engine/okhttp/OkHttpConfig;->clientCacheSize:I

    return-void
.end method


# virtual methods
.method public final addInterceptor(Lokhttp3/Interceptor;)V
    .locals 1

    const-string v0, "interceptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    new-instance v0, Lio/ktor/client/engine/okhttp/OkHttpConfig$addInterceptor$1;

    invoke-direct {v0, p1}, Lio/ktor/client/engine/okhttp/OkHttpConfig$addInterceptor$1;-><init>(Lokhttp3/Interceptor;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0, v0}, Lio/ktor/client/engine/okhttp/OkHttpConfig;->config(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final addNetworkInterceptor(Lokhttp3/Interceptor;)V
    .locals 1

    const-string v0, "interceptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    new-instance v0, Lio/ktor/client/engine/okhttp/OkHttpConfig$addNetworkInterceptor$1;

    invoke-direct {v0, p1}, Lio/ktor/client/engine/okhttp/OkHttpConfig$addNetworkInterceptor$1;-><init>(Lokhttp3/Interceptor;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0, v0}, Lio/ktor/client/engine/okhttp/OkHttpConfig;->config(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final config(Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lokhttp3/OkHttpClient$Builder;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lio/ktor/client/engine/okhttp/OkHttpConfig;->config:Lkotlin/jvm/functions/Function1;

    .line 44
    new-instance v1, Lio/ktor/client/engine/okhttp/OkHttpConfig$config$2;

    invoke-direct {v1, v0, p1}, Lio/ktor/client/engine/okhttp/OkHttpConfig$config$2;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    iput-object v1, p0, Lio/ktor/client/engine/okhttp/OkHttpConfig;->config:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final getClientCacheSize()I
    .locals 1

    .line 31
    iget v0, p0, Lio/ktor/client/engine/okhttp/OkHttpConfig;->clientCacheSize:I

    return v0
.end method

.method public final getConfig$ktor_client_okhttp()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lokhttp3/OkHttpClient$Builder;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lio/ktor/client/engine/okhttp/OkHttpConfig;->config:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getPreconfigured()Lokhttp3/OkHttpClient;
    .locals 1

    .line 25
    iget-object v0, p0, Lio/ktor/client/engine/okhttp/OkHttpConfig;->preconfigured:Lokhttp3/OkHttpClient;

    return-object v0
.end method

.method public final getWebSocketFactory()Lokhttp3/WebSocket$Factory;
    .locals 1

    .line 37
    iget-object v0, p0, Lio/ktor/client/engine/okhttp/OkHttpConfig;->webSocketFactory:Lokhttp3/WebSocket$Factory;

    return-object v0
.end method

.method public final setClientCacheSize(I)V
    .locals 0

    .line 31
    iput p1, p0, Lio/ktor/client/engine/okhttp/OkHttpConfig;->clientCacheSize:I

    return-void
.end method

.method public final setConfig$ktor_client_okhttp(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lokhttp3/OkHttpClient$Builder;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iput-object p1, p0, Lio/ktor/client/engine/okhttp/OkHttpConfig;->config:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setPreconfigured(Lokhttp3/OkHttpClient;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lio/ktor/client/engine/okhttp/OkHttpConfig;->preconfigured:Lokhttp3/OkHttpClient;

    return-void
.end method

.method public final setWebSocketFactory(Lokhttp3/WebSocket$Factory;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lio/ktor/client/engine/okhttp/OkHttpConfig;->webSocketFactory:Lokhttp3/WebSocket$Factory;

    return-void
.end method
