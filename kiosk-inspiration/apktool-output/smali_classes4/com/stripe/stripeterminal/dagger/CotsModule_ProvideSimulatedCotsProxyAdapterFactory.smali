.class public final Lcom/stripe/stripeterminal/dagger/CotsModule_ProvideSimulatedCotsProxyAdapterFactory;
.super Ljava/lang/Object;
.source "CotsModule_ProvideSimulatedCotsProxyAdapterFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field private final appScopeProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/CoroutineScope;",
            ">;"
        }
    .end annotation
.end field

.field private final applicationInformationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final featureFlagsRepositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;",
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

.field private final module:Lcom/stripe/stripeterminal/dagger/CotsModule;

.field private final nfcAntennaLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/cots/common/NfcAntennaLogger;",
            ">;"
        }
    .end annotation
.end field

.field private final simulatedCotsClientProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/cots/common/SimulatedCotsClient;",
            ">;"
        }
    .end annotation
.end field

.field private final terminalStatusManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/stripe/stripeterminal/dagger/CotsModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/dagger/CotsModule;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/cots/common/SimulatedCotsClient;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/CoroutineScope;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/cots/common/NfcAntennaLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ">;)V"
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/stripe/stripeterminal/dagger/CotsModule_ProvideSimulatedCotsProxyAdapterFactory;->module:Lcom/stripe/stripeterminal/dagger/CotsModule;

    .line 62
    iput-object p2, p0, Lcom/stripe/stripeterminal/dagger/CotsModule_ProvideSimulatedCotsProxyAdapterFactory;->applicationInformationProvider:Ljavax/inject/Provider;

    .line 63
    iput-object p3, p0, Lcom/stripe/stripeterminal/dagger/CotsModule_ProvideSimulatedCotsProxyAdapterFactory;->simulatedCotsClientProvider:Ljavax/inject/Provider;

    .line 64
    iput-object p4, p0, Lcom/stripe/stripeterminal/dagger/CotsModule_ProvideSimulatedCotsProxyAdapterFactory;->terminalStatusManagerProvider:Ljavax/inject/Provider;

    .line 65
    iput-object p5, p0, Lcom/stripe/stripeterminal/dagger/CotsModule_ProvideSimulatedCotsProxyAdapterFactory;->featureFlagsRepositoryProvider:Ljavax/inject/Provider;

    .line 66
    iput-object p6, p0, Lcom/stripe/stripeterminal/dagger/CotsModule_ProvideSimulatedCotsProxyAdapterFactory;->appScopeProvider:Ljavax/inject/Provider;

    .line 67
    iput-object p7, p0, Lcom/stripe/stripeterminal/dagger/CotsModule_ProvideSimulatedCotsProxyAdapterFactory;->nfcAntennaLoggerProvider:Ljavax/inject/Provider;

    .line 68
    iput-object p8, p0, Lcom/stripe/stripeterminal/dagger/CotsModule_ProvideSimulatedCotsProxyAdapterFactory;->loggerFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/stripe/stripeterminal/dagger/CotsModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/dagger/CotsModule_ProvideSimulatedCotsProxyAdapterFactory;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/dagger/CotsModule;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/cots/common/SimulatedCotsClient;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/CoroutineScope;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/cots/common/NfcAntennaLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ">;)",
            "Lcom/stripe/stripeterminal/dagger/CotsModule_ProvideSimulatedCotsProxyAdapterFactory;"
        }
    .end annotation

    .line 84
    new-instance v0, Lcom/stripe/stripeterminal/dagger/CotsModule_ProvideSimulatedCotsProxyAdapterFactory;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/stripe/stripeterminal/dagger/CotsModule_ProvideSimulatedCotsProxyAdapterFactory;-><init>(Lcom/stripe/stripeterminal/dagger/CotsModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideSimulatedCotsProxyAdapter(Lcom/stripe/stripeterminal/dagger/CotsModule;Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;Lcom/stripe/cots/common/SimulatedCotsClient;Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/cots/common/NfcAntennaLogger;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;
    .locals 0

    .line 92
    invoke-virtual/range {p0 .. p7}, Lcom/stripe/stripeterminal/dagger/CotsModule;->provideSimulatedCotsProxyAdapter(Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;Lcom/stripe/cots/common/SimulatedCotsClient;Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/cots/common/NfcAntennaLogger;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;
    .locals 8

    .line 73
    iget-object v0, p0, Lcom/stripe/stripeterminal/dagger/CotsModule_ProvideSimulatedCotsProxyAdapterFactory;->module:Lcom/stripe/stripeterminal/dagger/CotsModule;

    iget-object v1, p0, Lcom/stripe/stripeterminal/dagger/CotsModule_ProvideSimulatedCotsProxyAdapterFactory;->applicationInformationProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;

    iget-object v2, p0, Lcom/stripe/stripeterminal/dagger/CotsModule_ProvideSimulatedCotsProxyAdapterFactory;->simulatedCotsClientProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/cots/common/SimulatedCotsClient;

    iget-object v3, p0, Lcom/stripe/stripeterminal/dagger/CotsModule_ProvideSimulatedCotsProxyAdapterFactory;->terminalStatusManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    iget-object v4, p0, Lcom/stripe/stripeterminal/dagger/CotsModule_ProvideSimulatedCotsProxyAdapterFactory;->featureFlagsRepositoryProvider:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;

    iget-object v5, p0, Lcom/stripe/stripeterminal/dagger/CotsModule_ProvideSimulatedCotsProxyAdapterFactory;->appScopeProvider:Ljavax/inject/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlinx/coroutines/CoroutineScope;

    iget-object v6, p0, Lcom/stripe/stripeterminal/dagger/CotsModule_ProvideSimulatedCotsProxyAdapterFactory;->nfcAntennaLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/stripe/cots/common/NfcAntennaLogger;

    iget-object v7, p0, Lcom/stripe/stripeterminal/dagger/CotsModule_ProvideSimulatedCotsProxyAdapterFactory;->loggerFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;

    invoke-static/range {v0 .. v7}, Lcom/stripe/stripeterminal/dagger/CotsModule_ProvideSimulatedCotsProxyAdapterFactory;->provideSimulatedCotsProxyAdapter(Lcom/stripe/stripeterminal/dagger/CotsModule;Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;Lcom/stripe/cots/common/SimulatedCotsClient;Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/cots/common/NfcAntennaLogger;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/dagger/CotsModule_ProvideSimulatedCotsProxyAdapterFactory;->get()Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;

    move-result-object v0

    return-object v0
.end method
