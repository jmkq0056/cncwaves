.class public final Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker_Factory;
.super Ljava/lang/Object;
.source "DefaultStripeNetworkHealthChecker_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker;",
        ">;"
    }
.end annotation


# instance fields
.field private final networkClientProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/client/OkHttpClientProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final offlineConfigHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final stateMachineProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerStateMachine;",
            ">;"
        }
    .end annotation
.end field

.field private final stripeHealthCheckUrlProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lokhttp3/HttpUrl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerStateMachine;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/client/OkHttpClientProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lokhttp3/HttpUrl;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;",
            ">;)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker_Factory;->stateMachineProvider:Ljavax/inject/Provider;

    .line 43
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker_Factory;->networkClientProvider:Ljavax/inject/Provider;

    .line 44
    iput-object p3, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker_Factory;->stripeHealthCheckUrlProvider:Ljavax/inject/Provider;

    .line 45
    iput-object p4, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker_Factory;->offlineConfigHelperProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerStateMachine;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/client/OkHttpClientProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lokhttp3/HttpUrl;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;",
            ">;)",
            "Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker_Factory;"
        }
    .end annotation

    .line 58
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker_Factory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerStateMachine;Lcom/stripe/jvmcore/client/OkHttpClientProvider;Lokhttp3/HttpUrl;Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;)Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker;
    .locals 1

    .line 64
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker;-><init>(Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerStateMachine;Lcom/stripe/jvmcore/client/OkHttpClientProvider;Lokhttp3/HttpUrl;Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker;
    .locals 4

    .line 50
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker_Factory;->stateMachineProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerStateMachine;

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker_Factory;->networkClientProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/jvmcore/client/OkHttpClientProvider;

    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker_Factory;->stripeHealthCheckUrlProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokhttp3/HttpUrl;

    iget-object v3, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker_Factory;->offlineConfigHelperProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;

    invoke-static {v0, v1, v2, v3}, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker_Factory;->newInstance(Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerStateMachine;Lcom/stripe/jvmcore/client/OkHttpClientProvider;Lokhttp3/HttpUrl;Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;)Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker_Factory;->get()Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker;

    move-result-object v0

    return-object v0
.end method
