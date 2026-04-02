.class public final Lcom/stripe/offlinemode/dagger/OfflineForwardingModule_Companion_ProvideDefaultOfflineForwardingApiClient$offlinemode_releaseFactory;
.super Ljava/lang/Object;
.source "OfflineForwardingModule_Companion_ProvideDefaultOfflineForwardingApiClient$offlinemode_releaseFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient;",
        ">;"
    }
.end annotation


# instance fields
.field private final credentialsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/forwarding/OfflineCredentialsProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final locationHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/LocationHandler;",
            ">;"
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

.field private final offlineForwardingServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/forwarding/OfflineForwardingService;",
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
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "offlineForwardingServiceProvider",
            "locationHandlerProvider",
            "credentialsProvider",
            "loggerProvider",
            "traceManagerProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/forwarding/OfflineForwardingService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/LocationHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/forwarding/OfflineCredentialsProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/log/OfflineForwardingTraceManager;",
            ">;)V"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/stripe/offlinemode/dagger/OfflineForwardingModule_Companion_ProvideDefaultOfflineForwardingApiClient$offlinemode_releaseFactory;->offlineForwardingServiceProvider:Ljavax/inject/Provider;

    .line 50
    iput-object p2, p0, Lcom/stripe/offlinemode/dagger/OfflineForwardingModule_Companion_ProvideDefaultOfflineForwardingApiClient$offlinemode_releaseFactory;->locationHandlerProvider:Ljavax/inject/Provider;

    .line 51
    iput-object p3, p0, Lcom/stripe/offlinemode/dagger/OfflineForwardingModule_Companion_ProvideDefaultOfflineForwardingApiClient$offlinemode_releaseFactory;->credentialsProvider:Ljavax/inject/Provider;

    .line 52
    iput-object p4, p0, Lcom/stripe/offlinemode/dagger/OfflineForwardingModule_Companion_ProvideDefaultOfflineForwardingApiClient$offlinemode_releaseFactory;->loggerProvider:Ljavax/inject/Provider;

    .line 53
    iput-object p5, p0, Lcom/stripe/offlinemode/dagger/OfflineForwardingModule_Companion_ProvideDefaultOfflineForwardingApiClient$offlinemode_releaseFactory;->traceManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/offlinemode/dagger/OfflineForwardingModule_Companion_ProvideDefaultOfflineForwardingApiClient$offlinemode_releaseFactory;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "offlineForwardingServiceProvider",
            "locationHandlerProvider",
            "credentialsProvider",
            "loggerProvider",
            "traceManagerProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/forwarding/OfflineForwardingService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/LocationHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/forwarding/OfflineCredentialsProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/log/OfflineForwardingTraceManager;",
            ">;)",
            "Lcom/stripe/offlinemode/dagger/OfflineForwardingModule_Companion_ProvideDefaultOfflineForwardingApiClient$offlinemode_releaseFactory;"
        }
    .end annotation

    .line 67
    new-instance v0, Lcom/stripe/offlinemode/dagger/OfflineForwardingModule_Companion_ProvideDefaultOfflineForwardingApiClient$offlinemode_releaseFactory;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/stripe/offlinemode/dagger/OfflineForwardingModule_Companion_ProvideDefaultOfflineForwardingApiClient$offlinemode_releaseFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideDefaultOfflineForwardingApiClient$offlinemode_release(Lcom/stripe/offlinemode/forwarding/OfflineForwardingService;Lcom/stripe/stripeterminal/internal/common/LocationHandler;Lcom/stripe/offlinemode/forwarding/OfflineCredentialsProvider;Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;Lcom/stripe/offlinemode/log/OfflineForwardingTraceManager;)Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "offlineForwardingService",
            "locationHandler",
            "credentialsProvider",
            "logger",
            "traceManager"
        }
    .end annotation

    .line 74
    sget-object v0, Lcom/stripe/offlinemode/dagger/OfflineForwardingModule;->Companion:Lcom/stripe/offlinemode/dagger/OfflineForwardingModule$Companion;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/stripe/offlinemode/dagger/OfflineForwardingModule$Companion;->provideDefaultOfflineForwardingApiClient$offlinemode_release(Lcom/stripe/offlinemode/forwarding/OfflineForwardingService;Lcom/stripe/stripeterminal/internal/common/LocationHandler;Lcom/stripe/offlinemode/forwarding/OfflineCredentialsProvider;Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;Lcom/stripe/offlinemode/log/OfflineForwardingTraceManager;)Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient;
    .locals 5

    .line 58
    iget-object v0, p0, Lcom/stripe/offlinemode/dagger/OfflineForwardingModule_Companion_ProvideDefaultOfflineForwardingApiClient$offlinemode_releaseFactory;->offlineForwardingServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/offlinemode/forwarding/OfflineForwardingService;

    iget-object v1, p0, Lcom/stripe/offlinemode/dagger/OfflineForwardingModule_Companion_ProvideDefaultOfflineForwardingApiClient$offlinemode_releaseFactory;->locationHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/stripeterminal/internal/common/LocationHandler;

    iget-object v2, p0, Lcom/stripe/offlinemode/dagger/OfflineForwardingModule_Companion_ProvideDefaultOfflineForwardingApiClient$offlinemode_releaseFactory;->credentialsProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/offlinemode/forwarding/OfflineCredentialsProvider;

    iget-object v3, p0, Lcom/stripe/offlinemode/dagger/OfflineForwardingModule_Companion_ProvideDefaultOfflineForwardingApiClient$offlinemode_releaseFactory;->loggerProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;

    iget-object v4, p0, Lcom/stripe/offlinemode/dagger/OfflineForwardingModule_Companion_ProvideDefaultOfflineForwardingApiClient$offlinemode_releaseFactory;->traceManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/stripe/offlinemode/log/OfflineForwardingTraceManager;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/stripe/offlinemode/dagger/OfflineForwardingModule_Companion_ProvideDefaultOfflineForwardingApiClient$offlinemode_releaseFactory;->provideDefaultOfflineForwardingApiClient$offlinemode_release(Lcom/stripe/offlinemode/forwarding/OfflineForwardingService;Lcom/stripe/stripeterminal/internal/common/LocationHandler;Lcom/stripe/offlinemode/forwarding/OfflineCredentialsProvider;Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;Lcom/stripe/offlinemode/log/OfflineForwardingTraceManager;)Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lcom/stripe/offlinemode/dagger/OfflineForwardingModule_Companion_ProvideDefaultOfflineForwardingApiClient$offlinemode_releaseFactory;->get()Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient;

    move-result-object v0

    return-object v0
.end method
