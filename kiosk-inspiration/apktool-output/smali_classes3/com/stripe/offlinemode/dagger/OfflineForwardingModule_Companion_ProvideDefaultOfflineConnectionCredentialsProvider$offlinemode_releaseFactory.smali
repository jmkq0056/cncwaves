.class public final Lcom/stripe/offlinemode/dagger/OfflineForwardingModule_Companion_ProvideDefaultOfflineConnectionCredentialsProvider$offlinemode_releaseFactory;
.super Ljava/lang/Object;
.source "OfflineForwardingModule_Companion_ProvideDefaultOfflineConnectionCredentialsProvider$offlinemode_releaseFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider;",
        ">;"
    }
.end annotation


# instance fields
.field private final connectionTokenProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/external/callable/ConnectionTokenProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final discreteLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;",
            ">;>;"
        }
    .end annotation
.end field

.field private final loggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;",
            ">;"
        }
    .end annotation
.end field

.field private final offlineConnectionServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/forwarding/OfflineConnectionService;",
            ">;"
        }
    .end annotation
.end field

.field private final offlineForwardingDelayCalculatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingDelayCalculator;",
            ">;"
        }
    .end annotation
.end field

.field private final traceManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/log/OfflineForwardingTraceManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "offlineConnectionServiceProvider",
            "connectionTokenProvider",
            "offlineForwardingDelayCalculatorProvider",
            "traceManagerProvider",
            "loggerProvider",
            "discreteLoggerProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/forwarding/OfflineConnectionService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/external/callable/ConnectionTokenProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingDelayCalculator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/log/OfflineForwardingTraceManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;",
            ">;>;)V"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/stripe/offlinemode/dagger/OfflineForwardingModule_Companion_ProvideDefaultOfflineConnectionCredentialsProvider$offlinemode_releaseFactory;->offlineConnectionServiceProvider:Ljavax/inject/Provider;

    .line 56
    iput-object p2, p0, Lcom/stripe/offlinemode/dagger/OfflineForwardingModule_Companion_ProvideDefaultOfflineConnectionCredentialsProvider$offlinemode_releaseFactory;->connectionTokenProvider:Ljavax/inject/Provider;

    .line 57
    iput-object p3, p0, Lcom/stripe/offlinemode/dagger/OfflineForwardingModule_Companion_ProvideDefaultOfflineConnectionCredentialsProvider$offlinemode_releaseFactory;->offlineForwardingDelayCalculatorProvider:Ljavax/inject/Provider;

    .line 58
    iput-object p4, p0, Lcom/stripe/offlinemode/dagger/OfflineForwardingModule_Companion_ProvideDefaultOfflineConnectionCredentialsProvider$offlinemode_releaseFactory;->traceManagerProvider:Ljavax/inject/Provider;

    .line 59
    iput-object p5, p0, Lcom/stripe/offlinemode/dagger/OfflineForwardingModule_Companion_ProvideDefaultOfflineConnectionCredentialsProvider$offlinemode_releaseFactory;->loggerProvider:Ljavax/inject/Provider;

    .line 60
    iput-object p6, p0, Lcom/stripe/offlinemode/dagger/OfflineForwardingModule_Companion_ProvideDefaultOfflineConnectionCredentialsProvider$offlinemode_releaseFactory;->discreteLoggerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/offlinemode/dagger/OfflineForwardingModule_Companion_ProvideDefaultOfflineConnectionCredentialsProvider$offlinemode_releaseFactory;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "offlineConnectionServiceProvider",
            "connectionTokenProvider",
            "offlineForwardingDelayCalculatorProvider",
            "traceManagerProvider",
            "loggerProvider",
            "discreteLoggerProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/forwarding/OfflineConnectionService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/external/callable/ConnectionTokenProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingDelayCalculator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/log/OfflineForwardingTraceManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;",
            ">;>;)",
            "Lcom/stripe/offlinemode/dagger/OfflineForwardingModule_Companion_ProvideDefaultOfflineConnectionCredentialsProvider$offlinemode_releaseFactory;"
        }
    .end annotation

    .line 75
    new-instance v0, Lcom/stripe/offlinemode/dagger/OfflineForwardingModule_Companion_ProvideDefaultOfflineConnectionCredentialsProvider$offlinemode_releaseFactory;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/stripe/offlinemode/dagger/OfflineForwardingModule_Companion_ProvideDefaultOfflineConnectionCredentialsProvider$offlinemode_releaseFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideDefaultOfflineConnectionCredentialsProvider$offlinemode_release(Lcom/stripe/offlinemode/forwarding/OfflineConnectionService;Lcom/stripe/stripeterminal/external/callable/ConnectionTokenProvider;Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingDelayCalculator;Lcom/stripe/offlinemode/log/OfflineForwardingTraceManager;Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;Lcom/stripe/jvmcore/logging/HealthLogger;)Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "offlineConnectionService",
            "connectionTokenProvider",
            "offlineForwardingDelayCalculator",
            "traceManager",
            "logger",
            "discreteLogger"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/offlinemode/forwarding/OfflineConnectionService;",
            "Lcom/stripe/stripeterminal/external/callable/ConnectionTokenProvider;",
            "Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingDelayCalculator;",
            "Lcom/stripe/offlinemode/log/OfflineForwardingTraceManager;",
            "Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;",
            ">;)",
            "Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider;"
        }
    .end annotation

    .line 84
    sget-object v0, Lcom/stripe/offlinemode/dagger/OfflineForwardingModule;->Companion:Lcom/stripe/offlinemode/dagger/OfflineForwardingModule$Companion;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/stripe/offlinemode/dagger/OfflineForwardingModule$Companion;->provideDefaultOfflineConnectionCredentialsProvider$offlinemode_release(Lcom/stripe/offlinemode/forwarding/OfflineConnectionService;Lcom/stripe/stripeterminal/external/callable/ConnectionTokenProvider;Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingDelayCalculator;Lcom/stripe/offlinemode/log/OfflineForwardingTraceManager;Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;Lcom/stripe/jvmcore/logging/HealthLogger;)Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider;
    .locals 7

    .line 65
    iget-object v0, p0, Lcom/stripe/offlinemode/dagger/OfflineForwardingModule_Companion_ProvideDefaultOfflineConnectionCredentialsProvider$offlinemode_releaseFactory;->offlineConnectionServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/stripe/offlinemode/forwarding/OfflineConnectionService;

    iget-object v0, p0, Lcom/stripe/offlinemode/dagger/OfflineForwardingModule_Companion_ProvideDefaultOfflineConnectionCredentialsProvider$offlinemode_releaseFactory;->connectionTokenProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/stripe/stripeterminal/external/callable/ConnectionTokenProvider;

    iget-object v0, p0, Lcom/stripe/offlinemode/dagger/OfflineForwardingModule_Companion_ProvideDefaultOfflineConnectionCredentialsProvider$offlinemode_releaseFactory;->offlineForwardingDelayCalculatorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingDelayCalculator;

    iget-object v0, p0, Lcom/stripe/offlinemode/dagger/OfflineForwardingModule_Companion_ProvideDefaultOfflineConnectionCredentialsProvider$offlinemode_releaseFactory;->traceManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/stripe/offlinemode/log/OfflineForwardingTraceManager;

    iget-object v0, p0, Lcom/stripe/offlinemode/dagger/OfflineForwardingModule_Companion_ProvideDefaultOfflineConnectionCredentialsProvider$offlinemode_releaseFactory;->loggerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;

    iget-object v0, p0, Lcom/stripe/offlinemode/dagger/OfflineForwardingModule_Companion_ProvideDefaultOfflineConnectionCredentialsProvider$offlinemode_releaseFactory;->discreteLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/stripe/jvmcore/logging/HealthLogger;

    invoke-static/range {v1 .. v6}, Lcom/stripe/offlinemode/dagger/OfflineForwardingModule_Companion_ProvideDefaultOfflineConnectionCredentialsProvider$offlinemode_releaseFactory;->provideDefaultOfflineConnectionCredentialsProvider$offlinemode_release(Lcom/stripe/offlinemode/forwarding/OfflineConnectionService;Lcom/stripe/stripeterminal/external/callable/ConnectionTokenProvider;Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingDelayCalculator;Lcom/stripe/offlinemode/log/OfflineForwardingTraceManager;Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;Lcom/stripe/jvmcore/logging/HealthLogger;)Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/stripe/offlinemode/dagger/OfflineForwardingModule_Companion_ProvideDefaultOfflineConnectionCredentialsProvider$offlinemode_releaseFactory;->get()Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider;

    move-result-object v0

    return-object v0
.end method
