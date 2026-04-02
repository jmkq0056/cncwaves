.class public final Lcom/stripe/core/logginginterceptors/CrpcLogLevelKt;
.super Ljava/lang/Object;
.source "CrpcLogLevel.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCrpcLogLevel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CrpcLogLevel.kt\ncom/stripe/core/logginginterceptors/CrpcLogLevelKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,82:1\n1#2:83\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\n\u0010\u000e\u001a\u00020\u000f*\u00020\u0010\u001a\n\u0010\u0011\u001a\u00020\u000f*\u00020\u0010\"\"\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00018\u0000X\u0081\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\"\"\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00018\u0000X\u0081\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0008\u0010\u0004\u001a\u0004\u0008\t\u0010\u0006\"\"\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u00018\u0000X\u0081\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u000c\u0010\u0004\u001a\u0004\u0008\r\u0010\u0006\u00a8\u0006\u0012"
    }
    d2 = {
        "CRPC_METHOD_METRIC_LOG_LEVEL_OVERRIDES",
        "",
        "Lcom/stripe/core/logginginterceptors/CrpcMethod;",
        "getCRPC_METHOD_METRIC_LOG_LEVEL_OVERRIDES$annotations",
        "()V",
        "getCRPC_METHOD_METRIC_LOG_LEVEL_OVERRIDES",
        "()Ljava/util/Set;",
        "CRPC_METHOD_TRACE_LOG_LEVEL_OVERRIDES",
        "getCRPC_METHOD_TRACE_LOG_LEVEL_OVERRIDES$annotations",
        "getCRPC_METHOD_TRACE_LOG_LEVEL_OVERRIDES",
        "TRACE_EXEMPT_CRPC_SERVICES",
        "",
        "getTRACE_EXEMPT_CRPC_SERVICES$annotations",
        "getTRACE_EXEMPT_CRPC_SERVICES",
        "getMetricLogLevel",
        "Lcom/stripe/core/logginginterceptors/CrpcLogLevel;",
        "Lcom/stripe/proto/net/rpc/base/RpcRequest;",
        "getTraceLogLevel",
        "logging-interceptors_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final CRPC_METHOD_METRIC_LOG_LEVEL_OVERRIDES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/stripe/core/logginginterceptors/CrpcMethod;",
            ">;"
        }
    .end annotation
.end field

.field private static final CRPC_METHOD_TRACE_LOG_LEVEL_OVERRIDES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/stripe/core/logginginterceptors/CrpcMethod;",
            ">;"
        }
    .end annotation
.end field

.field private static final TRACE_EXEMPT_CRPC_SERVICES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v0, 0x2

    .line 35
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "GatorService"

    aput-object v3, v1, v2

    .line 38
    const-string v4, "ClientLoggerService"

    const/4 v5, 0x1

    aput-object v4, v1, v5

    .line 29
    invoke-static {v1}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    sput-object v1, Lcom/stripe/core/logginginterceptors/CrpcLogLevelKt;->TRACE_EXEMPT_CRPC_SERVICES:Ljava/util/Set;

    .line 48
    new-array v0, v0, [Lcom/stripe/core/logginginterceptors/CrpcMethod;

    new-instance v1, Lcom/stripe/core/logginginterceptors/CrpcMethod;

    .line 50
    const-string v4, "reportHealth"

    .line 51
    sget-object v6, Lcom/stripe/core/logginginterceptors/CrpcLogLevel;->NONE:Lcom/stripe/core/logginginterceptors/CrpcLogLevel;

    .line 48
    const-string v7, "ArmadaService"

    invoke-direct {v1, v7, v4, v6}, Lcom/stripe/core/logginginterceptors/CrpcMethod;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/core/logginginterceptors/CrpcLogLevel;)V

    aput-object v1, v0, v2

    .line 56
    new-instance v1, Lcom/stripe/core/logginginterceptors/CrpcMethod;

    .line 58
    const-string v2, "PollServerEvent"

    .line 59
    sget-object v4, Lcom/stripe/core/logginginterceptors/CrpcLogLevel;->ERROR:Lcom/stripe/core/logginginterceptors/CrpcLogLevel;

    .line 56
    const-string v6, "ReaderEventApiService"

    invoke-direct {v1, v6, v2, v4}, Lcom/stripe/core/logginginterceptors/CrpcMethod;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/core/logginginterceptors/CrpcLogLevel;)V

    aput-object v1, v0, v5

    .line 42
    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/stripe/core/logginginterceptors/CrpcLogLevelKt;->CRPC_METHOD_TRACE_LOG_LEVEL_OVERRIDES:Ljava/util/Set;

    .line 69
    new-instance v0, Lcom/stripe/core/logginginterceptors/CrpcMethod;

    .line 71
    const-string v1, "reportEvent"

    .line 72
    sget-object v2, Lcom/stripe/core/logginginterceptors/CrpcLogLevel;->NONE:Lcom/stripe/core/logginginterceptors/CrpcLogLevel;

    .line 69
    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/core/logginginterceptors/CrpcMethod;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/core/logginginterceptors/CrpcLogLevel;)V

    .line 64
    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/stripe/core/logginginterceptors/CrpcLogLevelKt;->CRPC_METHOD_METRIC_LOG_LEVEL_OVERRIDES:Ljava/util/Set;

    return-void
.end method

.method public static final getCRPC_METHOD_METRIC_LOG_LEVEL_OVERRIDES()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/stripe/core/logginginterceptors/CrpcMethod;",
            ">;"
        }
    .end annotation

    .line 64
    sget-object v0, Lcom/stripe/core/logginginterceptors/CrpcLogLevelKt;->CRPC_METHOD_METRIC_LOG_LEVEL_OVERRIDES:Ljava/util/Set;

    return-object v0
.end method

.method public static synthetic getCRPC_METHOD_METRIC_LOG_LEVEL_OVERRIDES$annotations()V
    .locals 0

    return-void
.end method

.method public static final getCRPC_METHOD_TRACE_LOG_LEVEL_OVERRIDES()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/stripe/core/logginginterceptors/CrpcMethod;",
            ">;"
        }
    .end annotation

    .line 42
    sget-object v0, Lcom/stripe/core/logginginterceptors/CrpcLogLevelKt;->CRPC_METHOD_TRACE_LOG_LEVEL_OVERRIDES:Ljava/util/Set;

    return-object v0
.end method

.method public static synthetic getCRPC_METHOD_TRACE_LOG_LEVEL_OVERRIDES$annotations()V
    .locals 0

    return-void
.end method

.method public static final getMetricLogLevel(Lcom/stripe/proto/net/rpc/base/RpcRequest;)Lcom/stripe/core/logginginterceptors/CrpcLogLevel;
    .locals 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    sget-object v0, Lcom/stripe/core/logginginterceptors/CrpcLogLevelKt;->CRPC_METHOD_METRIC_LOG_LEVEL_OVERRIDES:Ljava/util/Set;

    check-cast v0, Ljava/lang/Iterable;

    .line 24
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/stripe/core/logginginterceptors/CrpcMethod;

    invoke-virtual {v2}, Lcom/stripe/core/logginginterceptors/CrpcMethod;->getService()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/stripe/proto/net/rpc/base/RpcRequest;->service:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/stripe/core/logginginterceptors/CrpcMethod;->getMethod()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/stripe/proto/net/rpc/base/RpcRequest;->method:Ljava/lang/String;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lcom/stripe/core/logginginterceptors/CrpcMethod;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/stripe/core/logginginterceptors/CrpcMethod;->getLogLevel()Lcom/stripe/core/logginginterceptors/CrpcLogLevel;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    return-object p0

    .line 25
    :cond_3
    :goto_1
    sget-object p0, Lcom/stripe/core/logginginterceptors/CrpcLogLevel;->VERBOSE:Lcom/stripe/core/logginginterceptors/CrpcLogLevel;

    return-object p0
.end method

.method public static final getTRACE_EXEMPT_CRPC_SERVICES()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 29
    sget-object v0, Lcom/stripe/core/logginginterceptors/CrpcLogLevelKt;->TRACE_EXEMPT_CRPC_SERVICES:Ljava/util/Set;

    return-object v0
.end method

.method public static synthetic getTRACE_EXEMPT_CRPC_SERVICES$annotations()V
    .locals 0

    return-void
.end method

.method public static final getTraceLogLevel(Lcom/stripe/proto/net/rpc/base/RpcRequest;)Lcom/stripe/core/logginginterceptors/CrpcLogLevel;
    .locals 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    sget-object v0, Lcom/stripe/core/logginginterceptors/CrpcLogLevelKt;->TRACE_EXEMPT_CRPC_SERVICES:Ljava/util/Set;

    iget-object v1, p0, Lcom/stripe/proto/net/rpc/base/RpcRequest;->service:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    sget-object p0, Lcom/stripe/core/logginginterceptors/CrpcLogLevel;->NONE:Lcom/stripe/core/logginginterceptors/CrpcLogLevel;

    return-object p0

    .line 16
    :cond_0
    sget-object v0, Lcom/stripe/core/logginginterceptors/CrpcLogLevelKt;->CRPC_METHOD_TRACE_LOG_LEVEL_OVERRIDES:Ljava/util/Set;

    check-cast v0, Ljava/lang/Iterable;

    .line 17
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/stripe/core/logginginterceptors/CrpcMethod;

    invoke-virtual {v2}, Lcom/stripe/core/logginginterceptors/CrpcMethod;->getService()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/stripe/proto/net/rpc/base/RpcRequest;->service:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/stripe/core/logginginterceptors/CrpcMethod;->getMethod()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/stripe/proto/net/rpc/base/RpcRequest;->method:Ljava/lang/String;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lcom/stripe/core/logginginterceptors/CrpcMethod;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/stripe/core/logginginterceptors/CrpcMethod;->getLogLevel()Lcom/stripe/core/logginginterceptors/CrpcLogLevel;

    move-result-object p0

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    return-object p0

    .line 18
    :cond_4
    :goto_1
    sget-object p0, Lcom/stripe/core/logginginterceptors/CrpcLogLevel;->VERBOSE:Lcom/stripe/core/logginginterceptors/CrpcLogLevel;

    return-object p0
.end method
