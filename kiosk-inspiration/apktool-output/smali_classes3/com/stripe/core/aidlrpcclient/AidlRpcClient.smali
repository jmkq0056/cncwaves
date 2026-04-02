.class public final Lcom/stripe/core/aidlrpcclient/AidlRpcClient;
.super Ljava/lang/Object;
.source "AidlRpcClient.kt"

# interfaces
.implements Lcom/stripe/wirecrpc/AidlWireClient;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAidlRpcClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AidlRpcClient.kt\ncom/stripe/core/aidlrpcclient/AidlRpcClient\n+ 2 LoggerFactory.kt\ncom/stripe/jvmcore/logging/terminal/log/LoggerFactoryKt\n*L\n1#1,144:1\n16#2:145\n*S KotlinDebug\n*F\n+ 1 AidlRpcClient.kt\ncom/stripe/core/aidlrpcclient/AidlRpcClient\n*L\n30#1:145\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000v\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ \u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u0015H\u0016J\u0010\u0010\u0018\u001a\u00020\u00132\u0006\u0010\u0019\u001a\u00020\u0015H\u0016J0\u0010\u001a\u001a\u00020\u00132\u0006\u0010\u0019\u001a\u00020\u00152\u0006\u0010\u001b\u001a\u00020\u00152\u000e\u0010\u001c\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u001d2\u0006\u0010\u001e\u001a\u00020\u001fH\u0016J$\u0010 \u001a\u00020\u00132\u0006\u0010!\u001a\u00020\"2\u0006\u0010\u001c\u001a\u00020\u00152\n\u0008\u0002\u0010#\u001a\u0004\u0018\u00010$H\u0002J\u0018\u0010%\u001a\u00020\u00132\u0006\u0010\u0019\u001a\u00020\u00152\u0006\u0010\u001e\u001a\u00020&H\u0016J\u0008\u0010\'\u001a\u00020\u0013H\u0016J\u001c\u0010(\u001a\u00020\u00132\u0012\u0010)\u001a\u000e\u0012\u0004\u0012\u00020+\u0012\u0004\u0012\u00020\u00130*H\u0002R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u000b\u001a\u0012\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e0\u000cj\u0002`\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006,"
    }
    d2 = {
        "Lcom/stripe/core/aidlrpcclient/AidlRpcClient;",
        "Lcom/stripe/wirecrpc/AidlWireClient;",
        "context",
        "Landroid/content/Context;",
        "crpcRequestContextProvider",
        "Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;",
        "aidlServiceConnection",
        "Lcom/stripe/core/aidlrpcclient/AidlServiceConnection;",
        "loggerFactory",
        "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
        "(Landroid/content/Context;Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;Lcom/stripe/core/aidlrpcclient/AidlServiceConnection;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)V",
        "logger",
        "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;",
        "Lcom/stripe/loggingmodels/ApplicationTrace;",
        "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
        "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;",
        "requestId",
        "",
        "bindToService",
        "",
        "action",
        "",
        "packageName",
        "className",
        "clearUpdateListener",
        "service",
        "makeRequest",
        "method",
        "message",
        "Lcom/squareup/wire/Message;",
        "listener",
        "Lcom/stripe/core/aidlrpc/AidlRpcListener;",
        "onAidlError",
        "errorCode",
        "Lcom/stripe/core/aidlrpc/AidlRpcErrorCode;",
        "cause",
        "",
        "setUpdateListener",
        "Lcom/stripe/core/aidlrpc/AidlRpcUpdateListener;",
        "unbindFromService",
        "withAidlService",
        "block",
        "Lkotlin/Function1;",
        "Lcom/stripe/core/aidlrpc/AidlRpc;",
        "aidlrpcclient_release"
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
.field private final aidlServiceConnection:Lcom/stripe/core/aidlrpcclient/AidlServiceConnection;

.field private final context:Landroid/content/Context;

.field private final crpcRequestContextProvider:Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;

.field private final logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;"
        }
    .end annotation
.end field

.field private requestId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;Lcom/stripe/core/aidlrpcclient/AidlServiceConnection;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "crpcRequestContextProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "aidlServiceConnection"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loggerFactory"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/stripe/core/aidlrpcclient/AidlRpcClient;->context:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lcom/stripe/core/aidlrpcclient/AidlRpcClient;->crpcRequestContextProvider:Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;

    .line 27
    iput-object p3, p0, Lcom/stripe/core/aidlrpcclient/AidlRpcClient;->aidlServiceConnection:Lcom/stripe/core/aidlrpcclient/AidlServiceConnection;

    .line 145
    const-class p1, Lcom/stripe/core/aidlrpcclient/AidlRpcClient;

    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p1

    invoke-interface {p4, p1}, Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;->create(Lkotlin/reflect/KClass;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object p1

    .line 30
    iput-object p1, p0, Lcom/stripe/core/aidlrpcclient/AidlRpcClient;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    return-void
.end method

.method public static final synthetic access$getCrpcRequestContextProvider$p(Lcom/stripe/core/aidlrpcclient/AidlRpcClient;)Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/stripe/core/aidlrpcclient/AidlRpcClient;->crpcRequestContextProvider:Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;

    return-object p0
.end method

.method public static final synthetic access$getRequestId$p(Lcom/stripe/core/aidlrpcclient/AidlRpcClient;)J
    .locals 2

    .line 24
    iget-wide v0, p0, Lcom/stripe/core/aidlrpcclient/AidlRpcClient;->requestId:J

    return-wide v0
.end method

.method public static final synthetic access$setRequestId$p(Lcom/stripe/core/aidlrpcclient/AidlRpcClient;J)V
    .locals 0

    .line 24
    iput-wide p1, p0, Lcom/stripe/core/aidlrpcclient/AidlRpcClient;->requestId:J

    return-void
.end method

.method private final onAidlError(Lcom/stripe/core/aidlrpc/AidlRpcErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/core/aidlrpc/AidlRpcException;
        }
    .end annotation

    .line 138
    new-instance v0, Lcom/stripe/core/aidlrpc/AidlRpcException;

    invoke-direct {v0, p1, p2, p3}, Lcom/stripe/core/aidlrpc/AidlRpcException;-><init>(Lcom/stripe/core/aidlrpc/AidlRpcErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 140
    iget-object p1, p0, Lcom/stripe/core/aidlrpcclient/AidlRpcClient;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    check-cast v0, Ljava/lang/Throwable;

    const/4 p2, 0x0

    new-array p2, p2, [Lkotlin/Pair;

    const-string p3, "AIDL RPC error"

    invoke-interface {p1, p3, v0, p2}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Lkotlin/Pair;)V

    .line 139
    throw v0
.end method

.method static synthetic onAidlError$default(Lcom/stripe/core/aidlrpcclient/AidlRpcClient;Lcom/stripe/core/aidlrpc/AidlRpcErrorCode;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/core/aidlrpc/AidlRpcException;
        }
    .end annotation

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 133
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/stripe/core/aidlrpcclient/AidlRpcClient;->onAidlError(Lcom/stripe/core/aidlrpc/AidlRpcErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private final withAidlService(Lkotlin/jvm/functions/Function1;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/stripe/core/aidlrpc/AidlRpc;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/core/aidlrpc/AidlRpcException;
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/stripe/core/aidlrpcclient/AidlRpcClient;->aidlServiceConnection:Lcom/stripe/core/aidlrpcclient/AidlServiceConnection;

    invoke-virtual {v0}, Lcom/stripe/core/aidlrpcclient/AidlServiceConnection;->getAidlService$aidlrpcclient_release()Lcom/stripe/core/aidlrpc/AidlRpc;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 118
    :try_start_0
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 121
    sget-object v0, Lcom/stripe/core/aidlrpc/AidlRpcErrorCode;->REQUEST_FAILURE:Lcom/stripe/core/aidlrpc/AidlRpcErrorCode;

    .line 122
    const-string v1, "Failed to send request to AIDL server"

    .line 123
    check-cast p1, Ljava/lang/Throwable;

    .line 120
    invoke-direct {p0, v0, v1, p1}, Lcom/stripe/core/aidlrpcclient/AidlRpcClient;->onAidlError(Lcom/stripe/core/aidlrpc/AidlRpcErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 116
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_1
    if-nez p1, :cond_1

    .line 127
    sget-object v2, Lcom/stripe/core/aidlrpc/AidlRpcErrorCode;->UNEXPECTED_DISCONNECT:Lcom/stripe/core/aidlrpc/AidlRpcErrorCode;

    const/4 v5, 0x4

    const/4 v6, 0x0

    .line 126
    const-string v3, "AIDL server is not connected"

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/stripe/core/aidlrpcclient/AidlRpcClient;->onAidlError$default(Lcom/stripe/core/aidlrpcclient/AidlRpcClient;Lcom/stripe/core/aidlrpc/AidlRpcErrorCode;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public bindToService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/core/aidlrpc/AidlRpcException;
        }
    .end annotation

    const-string v7, "Failure to connect to service "

    const-string v2, "action"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "packageName"

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "className"

    invoke-static {p3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iget-object v5, p0, Lcom/stripe/core/aidlrpcclient/AidlRpcClient;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v6, 0x3

    .line 37
    new-array v6, v6, [Lkotlin/Pair;

    invoke-static {v2, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v8, 0x0

    aput-object v2, v6, v8

    .line 38
    invoke-static {v3, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v6, v3

    const/4 v2, 0x2

    .line 39
    invoke-static {v4, p3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    aput-object v4, v6, v2

    .line 35
    const-string v2, "bindToService"

    invoke-interface {v5, v2, v6}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    const/16 v9, 0x2e

    .line 43
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2, p3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "setClassName(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iget-object v2, p0, Lcom/stripe/core/aidlrpcclient/AidlRpcClient;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/stripe/core/aidlrpcclient/AidlRpcClient;->aidlServiceConnection:Lcom/stripe/core/aidlrpcclient/AidlServiceConnection;

    check-cast v4, Landroid/content/ServiceConnection;

    invoke-virtual {v2, v0, v4, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 45
    iget-object v2, p0, Lcom/stripe/core/aidlrpcclient/AidlRpcClient;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const-string v4, "Context::bindService completed"

    new-array v3, v3, [Lkotlin/Pair;

    const-string v5, "success"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    aput-object v5, v3, v8

    invoke-interface {v2, v4, v3}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    if-nez v0, :cond_0

    .line 50
    sget-object v2, Lcom/stripe/core/aidlrpc/AidlRpcErrorCode;->CONNECTION_FAILURE:Lcom/stripe/core/aidlrpc/AidlRpcErrorCode;

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    .line 49
    invoke-static/range {v1 .. v6}, Lcom/stripe/core/aidlrpcclient/AidlRpcClient;->onAidlError$default(Lcom/stripe/core/aidlrpcclient/AidlRpcClient;Lcom/stripe/core/aidlrpc/AidlRpcErrorCode;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 56
    sget-object v2, Lcom/stripe/core/aidlrpc/AidlRpcErrorCode;->CONNECTION_FAILURE:Lcom/stripe/core/aidlrpc/AidlRpcErrorCode;

    .line 57
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 58
    check-cast v0, Ljava/lang/Throwable;

    .line 55
    invoke-direct {p0, v2, v3, v0}, Lcom/stripe/core/aidlrpcclient/AidlRpcClient;->onAidlError(Lcom/stripe/core/aidlrpc/AidlRpcErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 63
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/stripe/core/aidlrpcclient/AidlRpcClient;->aidlServiceConnection:Lcom/stripe/core/aidlrpcclient/AidlServiceConnection;

    invoke-virtual {v0}, Lcom/stripe/core/aidlrpcclient/AidlServiceConnection;->waitForServiceConnected()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 65
    sget-object v2, Lcom/stripe/core/aidlrpc/AidlRpcErrorCode;->UNEXPECTED_DISCONNECT:Lcom/stripe/core/aidlrpc/AidlRpcErrorCode;

    const-string v3, "Service never connected"

    check-cast v0, Ljava/lang/Throwable;

    invoke-direct {p0, v2, v3, v0}, Lcom/stripe/core/aidlrpcclient/AidlRpcClient;->onAidlError(Lcom/stripe/core/aidlrpc/AidlRpcErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public clearUpdateListener(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/core/aidlrpc/AidlRpcException;
        }
    .end annotation

    const-string v0, "service"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    new-instance v0, Lcom/stripe/core/aidlrpcclient/AidlRpcClient$clearUpdateListener$1;

    invoke-direct {v0, p1}, Lcom/stripe/core/aidlrpcclient/AidlRpcClient$clearUpdateListener$1;-><init>(Ljava/lang/String;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, v0}, Lcom/stripe/core/aidlrpcclient/AidlRpcClient;->withAidlService(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public makeRequest(Ljava/lang/String;Ljava/lang/String;Lcom/squareup/wire/Message;Lcom/stripe/core/aidlrpc/AidlRpcListener;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/squareup/wire/Message<",
            "**>;",
            "Lcom/stripe/core/aidlrpc/AidlRpcListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/core/aidlrpc/AidlRpcException;
        }
    .end annotation

    const-string v0, "service"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "method"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "message"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "listener"

    invoke-static {p4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    iget-object v2, p0, Lcom/stripe/core/aidlrpcclient/AidlRpcClient;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v3, 0x3

    .line 80
    new-array v3, v3, [Lkotlin/Pair;

    const/4 v4, 0x0

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    .line 81
    invoke-static {v1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v3, v0

    .line 82
    iget-wide v0, p0, Lcom/stripe/core/aidlrpcclient/AidlRpcClient;->requestId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "requestId"

    invoke-static {v1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, v3, v1

    .line 78
    const-string v0, "makeRequest"

    invoke-interface {v2, v0, v3}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 85
    new-instance v4, Lcom/stripe/core/aidlrpcclient/AidlRpcClient$makeRequest$1;

    move-object v5, p0

    move-object v7, p1

    move-object v8, p2

    move-object v6, p3

    move-object v9, p4

    invoke-direct/range {v4 .. v9}, Lcom/stripe/core/aidlrpcclient/AidlRpcClient$makeRequest$1;-><init>(Lcom/stripe/core/aidlrpcclient/AidlRpcClient;Lcom/squareup/wire/Message;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/core/aidlrpc/AidlRpcListener;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, v4}, Lcom/stripe/core/aidlrpcclient/AidlRpcClient;->withAidlService(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public setUpdateListener(Ljava/lang/String;Lcom/stripe/core/aidlrpc/AidlRpcUpdateListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/core/aidlrpc/AidlRpcException;
        }
    .end annotation

    const-string v0, "service"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    new-instance v0, Lcom/stripe/core/aidlrpcclient/AidlRpcClient$setUpdateListener$1;

    invoke-direct {v0, p1, p2}, Lcom/stripe/core/aidlrpcclient/AidlRpcClient$setUpdateListener$1;-><init>(Ljava/lang/String;Lcom/stripe/core/aidlrpc/AidlRpcUpdateListener;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, v0}, Lcom/stripe/core/aidlrpcclient/AidlRpcClient;->withAidlService(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public unbindFromService()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/core/aidlrpc/AidlRpcException;
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/stripe/core/aidlrpcclient/AidlRpcClient;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x0

    new-array v2, v1, [Lkotlin/Pair;

    const-string v3, "unbindFromService"

    invoke-interface {v0, v3, v2}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 72
    iget-object v0, p0, Lcom/stripe/core/aidlrpcclient/AidlRpcClient;->aidlServiceConnection:Lcom/stripe/core/aidlrpcclient/AidlServiceConnection;

    invoke-virtual {v0, v1}, Lcom/stripe/core/aidlrpcclient/AidlServiceConnection;->disconnectFromService(Z)V

    .line 73
    iget-object v0, p0, Lcom/stripe/core/aidlrpcclient/AidlRpcClient;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/stripe/core/aidlrpcclient/AidlRpcClient;->aidlServiceConnection:Lcom/stripe/core/aidlrpcclient/AidlServiceConnection;

    check-cast v1, Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method
