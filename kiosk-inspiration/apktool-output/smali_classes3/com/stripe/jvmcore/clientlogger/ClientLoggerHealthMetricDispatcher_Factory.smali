.class public final Lcom/stripe/jvmcore/clientlogger/ClientLoggerHealthMetricDispatcher_Factory;
.super Ljava/lang/Object;
.source "ClientLoggerHealthMetricDispatcher_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/jvmcore/clientlogger/ClientLoggerHealthMetricDispatcher;",
        ">;"
    }
.end annotation


# instance fields
.field private final clientLoggerApiProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/api/ClientLoggerApi;",
            ">;"
        }
    .end annotation
.end field

.field private final ioProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field private final isNetworkAvailableProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/api/ClientLoggerApi;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/stripe/jvmcore/clientlogger/ClientLoggerHealthMetricDispatcher_Factory;->ioProvider:Ljavax/inject/Provider;

    .line 41
    iput-object p2, p0, Lcom/stripe/jvmcore/clientlogger/ClientLoggerHealthMetricDispatcher_Factory;->clientLoggerApiProvider:Ljavax/inject/Provider;

    .line 42
    iput-object p3, p0, Lcom/stripe/jvmcore/clientlogger/ClientLoggerHealthMetricDispatcher_Factory;->isNetworkAvailableProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/jvmcore/clientlogger/ClientLoggerHealthMetricDispatcher_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/api/ClientLoggerApi;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/stripe/jvmcore/clientlogger/ClientLoggerHealthMetricDispatcher_Factory;"
        }
    .end annotation

    .line 53
    new-instance v0, Lcom/stripe/jvmcore/clientlogger/ClientLoggerHealthMetricDispatcher_Factory;

    invoke-direct {v0, p0, p1, p2}, Lcom/stripe/jvmcore/clientlogger/ClientLoggerHealthMetricDispatcher_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/proto/terminal/clientlogger/pub/api/ClientLoggerApi;Ljavax/inject/Provider;)Lcom/stripe/jvmcore/clientlogger/ClientLoggerHealthMetricDispatcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/api/ClientLoggerApi;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/stripe/jvmcore/clientlogger/ClientLoggerHealthMetricDispatcher;"
        }
    .end annotation

    .line 58
    new-instance v0, Lcom/stripe/jvmcore/clientlogger/ClientLoggerHealthMetricDispatcher;

    invoke-direct {v0, p0, p1, p2}, Lcom/stripe/jvmcore/clientlogger/ClientLoggerHealthMetricDispatcher;-><init>(Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/proto/terminal/clientlogger/pub/api/ClientLoggerApi;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/stripe/jvmcore/clientlogger/ClientLoggerHealthMetricDispatcher;
    .locals 3

    .line 47
    iget-object v0, p0, Lcom/stripe/jvmcore/clientlogger/ClientLoggerHealthMetricDispatcher_Factory;->ioProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/CoroutineDispatcher;

    iget-object v1, p0, Lcom/stripe/jvmcore/clientlogger/ClientLoggerHealthMetricDispatcher_Factory;->clientLoggerApiProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/proto/terminal/clientlogger/pub/api/ClientLoggerApi;

    iget-object v2, p0, Lcom/stripe/jvmcore/clientlogger/ClientLoggerHealthMetricDispatcher_Factory;->isNetworkAvailableProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2}, Lcom/stripe/jvmcore/clientlogger/ClientLoggerHealthMetricDispatcher_Factory;->newInstance(Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/proto/terminal/clientlogger/pub/api/ClientLoggerApi;Ljavax/inject/Provider;)Lcom/stripe/jvmcore/clientlogger/ClientLoggerHealthMetricDispatcher;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/stripe/jvmcore/clientlogger/ClientLoggerHealthMetricDispatcher_Factory;->get()Lcom/stripe/jvmcore/clientlogger/ClientLoggerHealthMetricDispatcher;

    move-result-object v0

    return-object v0
.end method
