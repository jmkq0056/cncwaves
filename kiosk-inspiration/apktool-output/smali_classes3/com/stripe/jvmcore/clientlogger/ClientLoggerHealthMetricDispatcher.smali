.class public final Lcom/stripe/jvmcore/clientlogger/ClientLoggerHealthMetricDispatcher;
.super Ljava/lang/Object;
.source "ClientLoggerDispatchers.kt"

# interfaces
.implements Lcom/stripe/jvmcore/batchdispatcher/Dispatcher;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/stripe/jvmcore/batchdispatcher/Dispatcher<",
        "Lcom/stripe/proto/terminal/clientlogger/pub/api/ProxyHealthMetricPb;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B)\u0008\u0007\u0012\u0008\u0008\u0001\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u000e\u0008\u0001\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008\u00a2\u0006\u0002\u0010\nJ\u001c\u0010\u000b\u001a\u00020\u000c2\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u000eH\u0096@\u00a2\u0006\u0002\u0010\u000fR\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/stripe/jvmcore/clientlogger/ClientLoggerHealthMetricDispatcher;",
        "Lcom/stripe/jvmcore/batchdispatcher/Dispatcher;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/api/ProxyHealthMetricPb;",
        "io",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "clientLoggerApi",
        "Lcom/stripe/proto/terminal/clientlogger/pub/api/ClientLoggerApi;",
        "isNetworkAvailable",
        "Ljavax/inject/Provider;",
        "",
        "(Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/proto/terminal/clientlogger/pub/api/ClientLoggerApi;Ljavax/inject/Provider;)V",
        "dispatch",
        "Lcom/stripe/jvmcore/batchdispatcher/Dispatcher$Result;",
        "batch",
        "",
        "(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "clientlogger"
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
.field private final clientLoggerApi:Lcom/stripe/proto/terminal/clientlogger/pub/api/ClientLoggerApi;

.field private final io:Lkotlinx/coroutines/CoroutineDispatcher;

.field private final isNetworkAvailable:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/proto/terminal/clientlogger/pub/api/ClientLoggerApi;Ljavax/inject/Provider;)V
    .locals 1
    .param p1    # Lkotlinx/coroutines/CoroutineDispatcher;
        .annotation runtime Lcom/stripe/jvmcore/dagger/IO;
        .end annotation
    .end param
    .param p3    # Ljavax/inject/Provider;
        .annotation runtime Lcom/stripe/jvmcore/dagger/IsNetworkAvailable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/api/ClientLoggerApi;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "io"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clientLoggerApi"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "isNetworkAvailable"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-object p1, p0, Lcom/stripe/jvmcore/clientlogger/ClientLoggerHealthMetricDispatcher;->io:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 121
    iput-object p2, p0, Lcom/stripe/jvmcore/clientlogger/ClientLoggerHealthMetricDispatcher;->clientLoggerApi:Lcom/stripe/proto/terminal/clientlogger/pub/api/ClientLoggerApi;

    .line 122
    iput-object p3, p0, Lcom/stripe/jvmcore/clientlogger/ClientLoggerHealthMetricDispatcher;->isNetworkAvailable:Ljavax/inject/Provider;

    return-void
.end method

.method public static final synthetic access$getClientLoggerApi$p(Lcom/stripe/jvmcore/clientlogger/ClientLoggerHealthMetricDispatcher;)Lcom/stripe/proto/terminal/clientlogger/pub/api/ClientLoggerApi;
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/stripe/jvmcore/clientlogger/ClientLoggerHealthMetricDispatcher;->clientLoggerApi:Lcom/stripe/proto/terminal/clientlogger/pub/api/ClientLoggerApi;

    return-object p0
.end method

.method public static final synthetic access$isNetworkAvailable$p(Lcom/stripe/jvmcore/clientlogger/ClientLoggerHealthMetricDispatcher;)Ljavax/inject/Provider;
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/stripe/jvmcore/clientlogger/ClientLoggerHealthMetricDispatcher;->isNetworkAvailable:Ljavax/inject/Provider;

    return-object p0
.end method


# virtual methods
.method public dispatch(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/api/ProxyHealthMetricPb;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/jvmcore/batchdispatcher/Dispatcher$Result;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/stripe/jvmcore/clientlogger/ClientLoggerHealthMetricDispatcher;->io:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/stripe/jvmcore/clientlogger/ClientLoggerHealthMetricDispatcher$dispatch$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/stripe/jvmcore/clientlogger/ClientLoggerHealthMetricDispatcher$dispatch$2;-><init>(Lcom/stripe/jvmcore/clientlogger/ClientLoggerHealthMetricDispatcher;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
