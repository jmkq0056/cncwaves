.class public final Lcom/stripe/jvmcore/crpcclient/CrpcClient;
.super Ljava/lang/Object;
.source "CrpcClient.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/jvmcore/crpcclient/CrpcClient$BaseUrlProvider;,
        Lcom/stripe/jvmcore/crpcclient/CrpcClient$Builder;,
        Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCrpcClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CrpcClient.kt\ncom/stripe/jvmcore/crpcclient/CrpcClient\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,208:1\n1855#2,2:209\n1855#2,2:211\n*S KotlinDebug\n*F\n+ 1 CrpcClient.kt\ncom/stripe/jvmcore/crpcclient/CrpcClient\n*L\n40#1:209,2\n81#1:211,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000v\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001:\u0003345B\u000f\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0083\u0001\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u0002H\u001d0\u001c\"\u0012\u0008\u0000\u0010\u001d*\u000c\u0012\u0004\u0012\u0002H\u001d\u0012\u0002\u0008\u00030\u001e\"\u0012\u0008\u0001\u0010\u001f*\u000c\u0012\u0004\u0012\u0002H\u001f\u0012\u0002\u0008\u00030\u001e2\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020!2\u0006\u0010#\u001a\u0002H\u001f2\u000c\u0010$\u001a\u0008\u0012\u0004\u0012\u0002H\u001f0%2\u000c\u0010&\u001a\u0008\u0012\u0004\u0012\u0002H\u001d0%2\u0014\u0008\u0002\u0010\'\u001a\u000e\u0012\u0004\u0012\u00020!\u0012\u0004\u0012\u00020!0(\u00a2\u0006\u0002\u0010)Ja\u0010*\u001a\u0008\u0012\u0004\u0012\u0002H\u001d0\u001c\"\u0012\u0008\u0000\u0010\u001d*\u000c\u0012\u0004\u0012\u0002H\u001d\u0012\u0002\u0008\u00030\u001e\"\u0012\u0008\u0001\u0010\u001f*\u000c\u0012\u0004\u0012\u0002H\u001f\u0012\u0002\u0008\u00030\u001e2\u0006\u0010+\u001a\u00020,2\u0006\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u0002H\u001f2\u000c\u00100\u001a\u0008\u0012\u0004\u0012\u0002H\u001d0%H\u0002\u00a2\u0006\u0002\u00101J\u0006\u00102\u001a\u00020\u0003R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0012\u001a\u00020\u0013\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u001e\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0016\u001a\u00020\u0017@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\u00a8\u00066"
    }
    d2 = {
        "Lcom/stripe/jvmcore/crpcclient/CrpcClient;",
        "",
        "builder",
        "Lcom/stripe/jvmcore/crpcclient/CrpcClient$Builder;",
        "(Lcom/stripe/jvmcore/crpcclient/CrpcClient$Builder;)V",
        "baseUrlProvider",
        "Lcom/stripe/jvmcore/crpcclient/CrpcClient$BaseUrlProvider;",
        "getBaseUrlProvider",
        "()Lcom/stripe/jvmcore/crpcclient/CrpcClient$BaseUrlProvider;",
        "customCrpcInterceptors",
        "",
        "Lcom/stripe/jvmcore/crpcclient/CustomCrpcInterceptor;",
        "logWriter",
        "Lcom/stripe/logwriter/LogWriter;",
        "okHttpClient",
        "Lokhttp3/OkHttpClient;",
        "getOkHttpClient",
        "()Lokhttp3/OkHttpClient;",
        "requestContextProvider",
        "Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;",
        "getRequestContextProvider",
        "()Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;",
        "<set-?>",
        "",
        "requestId",
        "getRequestId",
        "()J",
        "blockingPost",
        "Lcom/stripe/jvmcore/crpcclient/CrpcResponse;",
        "M",
        "Lcom/squareup/wire/Message;",
        "RE",
        "service",
        "",
        "method",
        "message",
        "requestProtoAdapter",
        "Lcom/squareup/wire/ProtoAdapter;",
        "responseProtoAdapter",
        "headers",
        "",
        "(Ljava/lang/String;Ljava/lang/String;Lcom/squareup/wire/Message;Lcom/squareup/wire/ProtoAdapter;Lcom/squareup/wire/ProtoAdapter;Ljava/util/Map;)Lcom/stripe/jvmcore/crpcclient/CrpcResponse;",
        "execute",
        "httpRequest",
        "Lokhttp3/Request;",
        "crpcRequest",
        "Lcom/stripe/proto/net/rpc/base/RpcRequest;",
        "apiRequest",
        "protoAdapter",
        "(Lokhttp3/Request;Lcom/stripe/proto/net/rpc/base/RpcRequest;Lcom/squareup/wire/Message;Lcom/squareup/wire/ProtoAdapter;)Lcom/stripe/jvmcore/crpcclient/CrpcResponse;",
        "toBuilder",
        "BaseUrlProvider",
        "Builder",
        "CrpcRequestContextProvider",
        "crpcclient"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final baseUrlProvider:Lcom/stripe/jvmcore/crpcclient/CrpcClient$BaseUrlProvider;

.field private final customCrpcInterceptors:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/stripe/jvmcore/crpcclient/CustomCrpcInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private final logWriter:Lcom/stripe/logwriter/LogWriter;

.field private final okHttpClient:Lokhttp3/OkHttpClient;

.field private final requestContextProvider:Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;

.field private requestId:J


# direct methods
.method public constructor <init>(Lcom/stripe/jvmcore/crpcclient/CrpcClient$Builder;)V
    .locals 1

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-virtual {p1}, Lcom/stripe/jvmcore/crpcclient/CrpcClient$Builder;->getClientBuilder$crpcclient()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/jvmcore/crpcclient/CrpcClient;->okHttpClient:Lokhttp3/OkHttpClient;

    .line 25
    invoke-virtual {p1}, Lcom/stripe/jvmcore/crpcclient/CrpcClient$Builder;->getBaseUrlProvider$crpcclient()Lcom/stripe/jvmcore/crpcclient/CrpcClient$BaseUrlProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/jvmcore/crpcclient/CrpcClient;->baseUrlProvider:Lcom/stripe/jvmcore/crpcclient/CrpcClient$BaseUrlProvider;

    .line 26
    invoke-virtual {p1}, Lcom/stripe/jvmcore/crpcclient/CrpcClient$Builder;->getRequestContextProvider$crpcclient()Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/jvmcore/crpcclient/CrpcClient;->requestContextProvider:Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;

    .line 27
    invoke-virtual {p1}, Lcom/stripe/jvmcore/crpcclient/CrpcClient$Builder;->getCustomApplicationInterceptors$crpcclient()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/jvmcore/crpcclient/CrpcClient;->customCrpcInterceptors:Ljava/util/Set;

    .line 28
    invoke-virtual {p1}, Lcom/stripe/jvmcore/crpcclient/CrpcClient$Builder;->getLogWriter$crpcclient()Lcom/stripe/logwriter/LogWriter;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/jvmcore/crpcclient/CrpcClient;->logWriter:Lcom/stripe/logwriter/LogWriter;

    return-void
.end method

.method public static final synthetic access$getCustomCrpcInterceptors$p(Lcom/stripe/jvmcore/crpcclient/CrpcClient;)Ljava/util/Set;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/stripe/jvmcore/crpcclient/CrpcClient;->customCrpcInterceptors:Ljava/util/Set;

    return-object p0
.end method

.method public static final synthetic access$getLogWriter$p(Lcom/stripe/jvmcore/crpcclient/CrpcClient;)Lcom/stripe/logwriter/LogWriter;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/stripe/jvmcore/crpcclient/CrpcClient;->logWriter:Lcom/stripe/logwriter/LogWriter;

    return-object p0
.end method

.method public static synthetic blockingPost$default(Lcom/stripe/jvmcore/crpcclient/CrpcClient;Ljava/lang/String;Ljava/lang/String;Lcom/squareup/wire/Message;Lcom/squareup/wire/ProtoAdapter;Lcom/squareup/wire/ProtoAdapter;Ljava/util/Map;ILjava/lang/Object;)Lcom/stripe/jvmcore/crpcclient/CrpcResponse;
    .locals 7

    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_0

    .line 93
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p6

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 87
    invoke-virtual/range {v0 .. v6}, Lcom/stripe/jvmcore/crpcclient/CrpcClient;->blockingPost(Ljava/lang/String;Ljava/lang/String;Lcom/squareup/wire/Message;Lcom/squareup/wire/ProtoAdapter;Lcom/squareup/wire/ProtoAdapter;Ljava/util/Map;)Lcom/stripe/jvmcore/crpcclient/CrpcResponse;

    move-result-object p0

    return-object p0
.end method

.method private final execute(Lokhttp3/Request;Lcom/stripe/proto/net/rpc/base/RpcRequest;Lcom/squareup/wire/Message;Lcom/squareup/wire/ProtoAdapter;)Lcom/stripe/jvmcore/crpcclient/CrpcResponse;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lcom/squareup/wire/Message<",
            "TM;*>;RE:",
            "Lcom/squareup/wire/Message<",
            "TRE;*>;>(",
            "Lokhttp3/Request;",
            "Lcom/stripe/proto/net/rpc/base/RpcRequest;",
            "TRE;",
            "Lcom/squareup/wire/ProtoAdapter<",
            "TM;>;)",
            "Lcom/stripe/jvmcore/crpcclient/CrpcResponse<",
            "TM;>;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/stripe/jvmcore/crpcclient/CrpcClient;->customCrpcInterceptors:Ljava/util/Set;

    check-cast v0, Ljava/lang/Iterable;

    .line 209
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/jvmcore/crpcclient/CustomCrpcInterceptor;

    .line 40
    invoke-virtual {v1, p1, p2, p3}, Lcom/stripe/jvmcore/crpcclient/CustomCrpcInterceptor;->preCallAction(Lokhttp3/Request;Lcom/stripe/proto/net/rpc/base/RpcRequest;Lcom/squareup/wire/Message;)V

    goto :goto_0

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/stripe/jvmcore/crpcclient/CrpcClient;->requestContextProvider:Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;

    invoke-interface {v0, p2}, Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;->getRequestTimeout(Lcom/stripe/proto/net/rpc/base/RpcRequest;)Lcom/stripe/jvmcore/crpcclient/CrpcTimeout;

    move-result-object v0

    .line 43
    instance-of v1, v0, Lcom/stripe/jvmcore/crpcclient/CrpcTimeout$Default;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/stripe/jvmcore/crpcclient/CrpcClient;->okHttpClient:Lokhttp3/OkHttpClient;

    goto :goto_1

    .line 44
    :cond_1
    instance-of v1, v0, Lcom/stripe/jvmcore/crpcclient/CrpcTimeout$Specified;

    if-eqz v1, :cond_5

    .line 45
    iget-object v1, p0, Lcom/stripe/jvmcore/crpcclient/CrpcClient;->okHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 46
    check-cast v0, Lcom/stripe/jvmcore/crpcclient/CrpcTimeout$Specified;

    invoke-virtual {v0}, Lcom/stripe/jvmcore/crpcclient/CrpcTimeout$Specified;->getTimeout-UwyO8pc()J

    move-result-wide v2

    invoke-static {v2, v3}, Lkotlin/time/Duration;->getInWholeMilliseconds-impl(J)J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 47
    invoke-virtual {v0}, Lcom/stripe/jvmcore/crpcclient/CrpcTimeout$Specified;->getTimeout-UwyO8pc()J

    move-result-wide v2

    invoke-static {v2, v3}, Lkotlin/time/Duration;->getInWholeMilliseconds-impl(J)J

    move-result-wide v2

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v0}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    .line 57
    :goto_1
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 58
    :try_start_1
    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/perf/network/FirebasePerfOkHttpClient;->execute(Lokhttp3/Call;)Lokhttp3/Response;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/io/Closeable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    move-object v0, v1

    check-cast v0, Lokhttp3/Response;

    .line 59
    iget-wide v2, p2, Lcom/stripe/proto/net/rpc/base/RpcRequest;->id:J

    iget-object v4, p0, Lcom/stripe/jvmcore/crpcclient/CrpcClient;->logWriter:Lcom/stripe/logwriter/LogWriter;

    invoke-static {v0, v2, v3, p4, v4}, Lcom/stripe/jvmcore/crpcclient/MappersKt;->toCrpcResponse(Lokhttp3/Response;JLcom/squareup/wire/ProtoAdapter;Lcom/stripe/logwriter/LogWriter;)Lcom/stripe/jvmcore/crpcclient/CrpcResponse;

    move-result-object p4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x0

    .line 58
    :try_start_3
    invoke-static {v1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 57
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p4, v0

    .line 58
    :try_start_5
    throw p4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_6
    invoke-static {v1, p4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v0

    move-object p4, v0

    .line 57
    :try_start_7
    monitor-exit p0

    throw p4
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception v0

    move-object p4, v0

    move-object v4, p4

    .line 74
    new-instance v0, Lcom/stripe/jvmcore/crpcclient/CrpcResponse$RpcError;

    .line 75
    sget-object v1, Lcom/stripe/proto/net/rpc/base/RpcEC;->RPC_ERROR:Lcom/stripe/proto/net/rpc/base/RpcEC;

    .line 76
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p4

    if-nez p4, :cond_2

    const-string p4, ""

    :cond_2
    move-object v2, p4

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 74
    invoke-direct/range {v0 .. v6}, Lcom/stripe/jvmcore/crpcclient/CrpcResponse$RpcError;-><init>(Lcom/stripe/proto/net/rpc/base/RpcEC;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object p4, v0

    check-cast p4, Lcom/stripe/jvmcore/crpcclient/CrpcResponse;

    goto :goto_2

    :catch_0
    move-exception v0

    move-object p4, v0

    .line 66
    new-instance v0, Lcom/stripe/jvmcore/crpcclient/CrpcResponse$RpcError;

    .line 67
    sget-object v1, Lcom/stripe/proto/net/rpc/base/RpcEC;->SERVER_UNREACHABLE:Lcom/stripe/proto/net/rpc/base/RpcEC;

    .line 68
    invoke-virtual {p4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    const-string v2, ""

    .line 69
    :cond_3
    move-object v4, p4

    check-cast v4, Ljava/lang/Throwable;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 66
    invoke-direct/range {v0 .. v6}, Lcom/stripe/jvmcore/crpcclient/CrpcResponse$RpcError;-><init>(Lcom/stripe/proto/net/rpc/base/RpcEC;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object p4, v0

    check-cast p4, Lcom/stripe/jvmcore/crpcclient/CrpcResponse;

    .line 81
    :goto_2
    iget-object v0, p0, Lcom/stripe/jvmcore/crpcclient/CrpcClient;->customCrpcInterceptors:Ljava/util/Set;

    check-cast v0, Ljava/lang/Iterable;

    .line 211
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/jvmcore/crpcclient/CustomCrpcInterceptor;

    .line 82
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/stripe/jvmcore/crpcclient/CustomCrpcInterceptor;->postCallAction(Lokhttp3/Request;Lcom/stripe/proto/net/rpc/base/RpcRequest;Lcom/squareup/wire/Message;Lcom/stripe/jvmcore/crpcclient/CrpcResponse;)V

    goto :goto_3

    :cond_4
    return-object p4

    .line 48
    :cond_5
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method


# virtual methods
.method public final blockingPost(Ljava/lang/String;Ljava/lang/String;Lcom/squareup/wire/Message;Lcom/squareup/wire/ProtoAdapter;Lcom/squareup/wire/ProtoAdapter;Ljava/util/Map;)Lcom/stripe/jvmcore/crpcclient/CrpcResponse;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lcom/squareup/wire/Message<",
            "TM;*>;RE:",
            "Lcom/squareup/wire/Message<",
            "TRE;*>;>(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TRE;",
            "Lcom/squareup/wire/ProtoAdapter<",
            "TRE;>;",
            "Lcom/squareup/wire/ProtoAdapter<",
            "TM;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/stripe/jvmcore/crpcclient/CrpcResponse<",
            "TM;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v6, p6

    const-string v7, "service"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "method"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "message"

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "requestProtoAdapter"

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "responseProtoAdapter"

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "headers"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    iget-wide v7, v0, Lcom/stripe/jvmcore/crpcclient/CrpcClient;->requestId:J

    const-wide/16 v9, 0x1

    add-long/2addr v9, v7

    iput-wide v9, v0, Lcom/stripe/jvmcore/crpcclient/CrpcClient;->requestId:J

    .line 101
    sget-object v11, Lokio/ByteString;->Companion:Lokio/ByteString$Companion;

    invoke-virtual {v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encode(Ljava/lang/Object;)[B

    move-result-object v12

    const/4 v15, 0x3

    const/16 v16, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v11 .. v16}, Lokio/ByteString$Companion;->of$default(Lokio/ByteString$Companion;[BIIILjava/lang/Object;)Lokio/ByteString;

    move-result-object v2

    .line 102
    iget-object v9, v0, Lcom/stripe/jvmcore/crpcclient/CrpcClient;->requestContextProvider:Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;

    invoke-interface {v9}, Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;->getSessionToken()Ljava/lang/String;

    move-result-object v11

    .line 103
    iget-object v9, v0, Lcom/stripe/jvmcore/crpcclient/CrpcClient;->requestContextProvider:Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;

    invoke-interface {v9}, Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;->getLocalIp()Ljava/lang/String;

    move-result-object v10

    .line 104
    iget-object v9, v0, Lcom/stripe/jvmcore/crpcclient/CrpcClient;->requestContextProvider:Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;

    invoke-interface {v9}, Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;->getDeviceInfo()Lcom/stripe/proto/model/common/DeviceInfo;

    move-result-object v14

    .line 105
    iget-object v9, v0, Lcom/stripe/jvmcore/crpcclient/CrpcClient;->requestContextProvider:Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;

    invoke-interface {v9}, Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;->getVersionInfo()Lcom/stripe/proto/model/common/VersionInfoPb;

    move-result-object v13

    .line 97
    new-instance v1, Lcom/stripe/proto/net/rpc/base/RpcRequest;

    const/16 v18, 0x1930

    const/16 v19, 0x0

    move-object v6, v2

    move-wide v2, v7

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v1 .. v19}, Lcom/stripe/proto/net/rpc/base/RpcRequest;-><init>(JLjava/lang/String;Ljava/lang/String;Lokio/ByteString;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/trace/RequestInfoPb;Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/DeviceInfo;JLokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 109
    sget-object v2, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    iget-object v3, v0, Lcom/stripe/jvmcore/crpcclient/CrpcClient;->baseUrlProvider:Lcom/stripe/jvmcore/crpcclient/CrpcClient$BaseUrlProvider;

    invoke-interface {v3}, Lcom/stripe/jvmcore/crpcclient/CrpcClient$BaseUrlProvider;->getBaseUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lokhttp3/HttpUrl$Companion;->get(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/HttpUrl;->newBuilder()Lokhttp3/HttpUrl$Builder;

    move-result-object v2

    .line 110
    const-string v3, "rpcservice"

    invoke-virtual {v2, v3}, Lokhttp3/HttpUrl$Builder;->addPathSegment(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v2

    .line 111
    invoke-virtual {v2, v4}, Lokhttp3/HttpUrl$Builder;->addPathSegment(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v2

    .line 112
    invoke-virtual {v2}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object v2

    .line 114
    sget-object v6, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    sget-object v3, Lcom/stripe/proto/net/rpc/base/RpcRequest;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v1}, Lcom/squareup/wire/ProtoAdapter;->encode(Ljava/lang/Object;)[B

    move-result-object v7

    const/4 v11, 0x7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v6 .. v12}, Lokhttp3/RequestBody$Companion;->create$default(Lokhttp3/RequestBody$Companion;[BLokhttp3/MediaType;IIILjava/lang/Object;)Lokhttp3/RequestBody;

    move-result-object v3

    .line 117
    new-instance v6, Lokhttp3/Request$Builder;

    invoke-direct {v6}, Lokhttp3/Request$Builder;-><init>()V

    .line 118
    invoke-virtual {v6, v2}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 119
    invoke-virtual {v2, v3}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v2

    const-class v3, Lcom/stripe/jvmcore/traffictype/TrafficType;

    .line 120
    new-instance v6, Lcom/stripe/jvmcore/traffictype/TrafficType$Crpc;

    invoke-direct {v6, v4, v5}, Lcom/stripe/jvmcore/traffictype/TrafficType$Crpc;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v6}, Lokhttp3/Request$Builder;->tag(Ljava/lang/Class;Ljava/lang/Object;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 121
    sget-object v3, Lokhttp3/Headers;->Companion:Lokhttp3/Headers$Companion;

    move-object/from16 v6, p6

    invoke-virtual {v3, v6}, Lokhttp3/Headers$Companion;->of(Ljava/util/Map;)Lokhttp3/Headers;

    move-result-object v3

    invoke-virtual {v2, v3}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 122
    invoke-virtual {v2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    .line 125
    invoke-direct {v0, v2, v1, v3, v4}, Lcom/stripe/jvmcore/crpcclient/CrpcClient;->execute(Lokhttp3/Request;Lcom/stripe/proto/net/rpc/base/RpcRequest;Lcom/squareup/wire/Message;Lcom/squareup/wire/ProtoAdapter;)Lcom/stripe/jvmcore/crpcclient/CrpcResponse;

    move-result-object v1

    return-object v1
.end method

.method public final getBaseUrlProvider()Lcom/stripe/jvmcore/crpcclient/CrpcClient$BaseUrlProvider;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/stripe/jvmcore/crpcclient/CrpcClient;->baseUrlProvider:Lcom/stripe/jvmcore/crpcclient/CrpcClient$BaseUrlProvider;

    return-object v0
.end method

.method public final getOkHttpClient()Lokhttp3/OkHttpClient;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/stripe/jvmcore/crpcclient/CrpcClient;->okHttpClient:Lokhttp3/OkHttpClient;

    return-object v0
.end method

.method public final getRequestContextProvider()Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/stripe/jvmcore/crpcclient/CrpcClient;->requestContextProvider:Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;

    return-object v0
.end method

.method public final getRequestId()J
    .locals 2

    .line 31
    iget-wide v0, p0, Lcom/stripe/jvmcore/crpcclient/CrpcClient;->requestId:J

    return-wide v0
.end method

.method public final toBuilder()Lcom/stripe/jvmcore/crpcclient/CrpcClient$Builder;
    .locals 1

    .line 129
    new-instance v0, Lcom/stripe/jvmcore/crpcclient/CrpcClient$Builder;

    invoke-direct {v0, p0}, Lcom/stripe/jvmcore/crpcclient/CrpcClient$Builder;-><init>(Lcom/stripe/jvmcore/crpcclient/CrpcClient;)V

    return-object v0
.end method
