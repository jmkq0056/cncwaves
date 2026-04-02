.class public final Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository_Factory;
.super Ljava/lang/Object;
.source "DefaultStripeConnectivityRepository_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository;",
        ">;"
    }
.end annotation


# instance fields
.field private final dispatcherProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field private final loggerFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final networkConnectivityRepositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityRepository;",
            ">;"
        }
    .end annotation
.end field

.field private final offlineRepositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/storage/OfflineRepository;",
            ">;"
        }
    .end annotation
.end field

.field private final proxyOfflineListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;",
            ">;"
        }
    .end annotation
.end field

.field private final sdkStatusRepositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/repositories/SdkStatusRepository;",
            ">;"
        }
    .end annotation
.end field

.field private final stripeNetworkHealthCheckerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/connectivity/StripeNetworkHealthChecker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/connectivity/StripeNetworkHealthChecker;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/storage/OfflineRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/repositories/SdkStatusRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ">;)V"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository_Factory;->dispatcherProvider:Ljavax/inject/Provider;

    .line 57
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository_Factory;->networkConnectivityRepositoryProvider:Ljavax/inject/Provider;

    .line 58
    iput-object p3, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository_Factory;->stripeNetworkHealthCheckerProvider:Ljavax/inject/Provider;

    .line 59
    iput-object p4, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository_Factory;->offlineRepositoryProvider:Ljavax/inject/Provider;

    .line 60
    iput-object p5, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository_Factory;->proxyOfflineListenerProvider:Ljavax/inject/Provider;

    .line 61
    iput-object p6, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository_Factory;->sdkStatusRepositoryProvider:Ljavax/inject/Provider;

    .line 62
    iput-object p7, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository_Factory;->loggerFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository_Factory;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/connectivity/StripeNetworkHealthChecker;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/storage/OfflineRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/repositories/SdkStatusRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ">;)",
            "Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository_Factory;"
        }
    .end annotation

    .line 78
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository_Factory;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityRepository;Lcom/stripe/stripeterminal/internal/common/connectivity/StripeNetworkHealthChecker;Lcom/stripe/offlinemode/storage/OfflineRepository;Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;Lcom/stripe/stripeterminal/internal/common/repositories/SdkStatusRepository;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository;
    .locals 8

    .line 86
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository;-><init>(Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityRepository;Lcom/stripe/stripeterminal/internal/common/connectivity/StripeNetworkHealthChecker;Lcom/stripe/offlinemode/storage/OfflineRepository;Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;Lcom/stripe/stripeterminal/internal/common/repositories/SdkStatusRepository;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository;
    .locals 8

    .line 67
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository_Factory;->dispatcherProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineDispatcher;

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository_Factory;->networkConnectivityRepositoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityRepository;

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository_Factory;->stripeNetworkHealthCheckerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeNetworkHealthChecker;

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository_Factory;->offlineRepositoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/stripe/offlinemode/storage/OfflineRepository;

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository_Factory;->proxyOfflineListenerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository_Factory;->sdkStatusRepositoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/stripe/stripeterminal/internal/common/repositories/SdkStatusRepository;

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository_Factory;->loggerFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;

    invoke-static/range {v1 .. v7}, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository_Factory;->newInstance(Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityRepository;Lcom/stripe/stripeterminal/internal/common/connectivity/StripeNetworkHealthChecker;Lcom/stripe/offlinemode/storage/OfflineRepository;Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;Lcom/stripe/stripeterminal/internal/common/repositories/SdkStatusRepository;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository_Factory;->get()Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository;

    move-result-object v0

    return-object v0
.end method
