.class public final Lcom/stripe/stripeterminal/dagger/CotsModule_ProvideSimulatedCotsClientFactory;
.super Ljava/lang/Object;
.source "CotsModule_ProvideSimulatedCotsClientFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/cots/common/SimulatedCotsClient;",
        ">;"
    }
.end annotation


# instance fields
.field private final applicationContextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final isCotsIncludedProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/stripe/stripeterminal/dagger/CotsModule;

.field private final preFlightChecksProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/cots/common/compatibility/PreFlightChecks;",
            ">;"
        }
    .end annotation
.end field

.field private final simulatorConfigurationRepositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/adapter/SimulatorConfigurationRepository;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/stripe/stripeterminal/dagger/CotsModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/dagger/CotsModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/cots/common/compatibility/PreFlightChecks;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/adapter/SimulatorConfigurationRepository;",
            ">;)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/stripe/stripeterminal/dagger/CotsModule_ProvideSimulatedCotsClientFactory;->module:Lcom/stripe/stripeterminal/dagger/CotsModule;

    .line 48
    iput-object p2, p0, Lcom/stripe/stripeterminal/dagger/CotsModule_ProvideSimulatedCotsClientFactory;->applicationContextProvider:Ljavax/inject/Provider;

    .line 49
    iput-object p3, p0, Lcom/stripe/stripeterminal/dagger/CotsModule_ProvideSimulatedCotsClientFactory;->isCotsIncludedProvider:Ljavax/inject/Provider;

    .line 50
    iput-object p4, p0, Lcom/stripe/stripeterminal/dagger/CotsModule_ProvideSimulatedCotsClientFactory;->preFlightChecksProvider:Ljavax/inject/Provider;

    .line 51
    iput-object p5, p0, Lcom/stripe/stripeterminal/dagger/CotsModule_ProvideSimulatedCotsClientFactory;->simulatorConfigurationRepositoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/stripe/stripeterminal/dagger/CotsModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/dagger/CotsModule_ProvideSimulatedCotsClientFactory;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/dagger/CotsModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/cots/common/compatibility/PreFlightChecks;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/adapter/SimulatorConfigurationRepository;",
            ">;)",
            "Lcom/stripe/stripeterminal/dagger/CotsModule_ProvideSimulatedCotsClientFactory;"
        }
    .end annotation

    .line 63
    new-instance v0, Lcom/stripe/stripeterminal/dagger/CotsModule_ProvideSimulatedCotsClientFactory;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/stripe/stripeterminal/dagger/CotsModule_ProvideSimulatedCotsClientFactory;-><init>(Lcom/stripe/stripeterminal/dagger/CotsModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideSimulatedCotsClient(Lcom/stripe/stripeterminal/dagger/CotsModule;Landroid/content/Context;ZLcom/stripe/cots/common/compatibility/PreFlightChecks;Lcom/stripe/stripeterminal/internal/common/adapter/SimulatorConfigurationRepository;)Lcom/stripe/cots/common/SimulatedCotsClient;
    .locals 0

    .line 69
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/stripe/stripeterminal/dagger/CotsModule;->provideSimulatedCotsClient(Landroid/content/Context;ZLcom/stripe/cots/common/compatibility/PreFlightChecks;Lcom/stripe/stripeterminal/internal/common/adapter/SimulatorConfigurationRepository;)Lcom/stripe/cots/common/SimulatedCotsClient;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/cots/common/SimulatedCotsClient;
    .locals 5

    .line 56
    iget-object v0, p0, Lcom/stripe/stripeterminal/dagger/CotsModule_ProvideSimulatedCotsClientFactory;->module:Lcom/stripe/stripeterminal/dagger/CotsModule;

    iget-object v1, p0, Lcom/stripe/stripeterminal/dagger/CotsModule_ProvideSimulatedCotsClientFactory;->applicationContextProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/stripe/stripeterminal/dagger/CotsModule_ProvideSimulatedCotsClientFactory;->isCotsIncludedProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v3, p0, Lcom/stripe/stripeterminal/dagger/CotsModule_ProvideSimulatedCotsClientFactory;->preFlightChecksProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/stripe/cots/common/compatibility/PreFlightChecks;

    iget-object v4, p0, Lcom/stripe/stripeterminal/dagger/CotsModule_ProvideSimulatedCotsClientFactory;->simulatorConfigurationRepositoryProvider:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatorConfigurationRepository;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/stripe/stripeterminal/dagger/CotsModule_ProvideSimulatedCotsClientFactory;->provideSimulatedCotsClient(Lcom/stripe/stripeterminal/dagger/CotsModule;Landroid/content/Context;ZLcom/stripe/cots/common/compatibility/PreFlightChecks;Lcom/stripe/stripeterminal/internal/common/adapter/SimulatorConfigurationRepository;)Lcom/stripe/cots/common/SimulatedCotsClient;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/dagger/CotsModule_ProvideSimulatedCotsClientFactory;->get()Lcom/stripe/cots/common/SimulatedCotsClient;

    move-result-object v0

    return-object v0
.end method
