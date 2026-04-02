.class public final Lcom/stripe/stripeterminal/dagger/AdapterModule_ProvideSimulatorConfigurationRepositoryFactory;
.super Ljava/lang/Object;
.source "AdapterModule_ProvideSimulatorConfigurationRepositoryFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/dagger/AdapterModule_ProvideSimulatorConfigurationRepositoryFactory$InstanceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/stripeterminal/internal/common/adapter/SimulatorConfigurationRepository;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/stripe/stripeterminal/dagger/AdapterModule_ProvideSimulatorConfigurationRepositoryFactory;
    .locals 1

    .line 33
    invoke-static {}, Lcom/stripe/stripeterminal/dagger/AdapterModule_ProvideSimulatorConfigurationRepositoryFactory$InstanceHolder;->access$000()Lcom/stripe/stripeterminal/dagger/AdapterModule_ProvideSimulatorConfigurationRepositoryFactory;

    move-result-object v0

    return-object v0
.end method

.method public static provideSimulatorConfigurationRepository()Lcom/stripe/stripeterminal/internal/common/adapter/SimulatorConfigurationRepository;
    .locals 1

    .line 37
    sget-object v0, Lcom/stripe/stripeterminal/dagger/AdapterModule;->INSTANCE:Lcom/stripe/stripeterminal/dagger/AdapterModule;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/dagger/AdapterModule;->provideSimulatorConfigurationRepository()Lcom/stripe/stripeterminal/internal/common/adapter/SimulatorConfigurationRepository;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatorConfigurationRepository;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/stripe/stripeterminal/internal/common/adapter/SimulatorConfigurationRepository;
    .locals 1

    .line 29
    invoke-static {}, Lcom/stripe/stripeterminal/dagger/AdapterModule_ProvideSimulatorConfigurationRepositoryFactory;->provideSimulatorConfigurationRepository()Lcom/stripe/stripeterminal/internal/common/adapter/SimulatorConfigurationRepository;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/dagger/AdapterModule_ProvideSimulatorConfigurationRepositoryFactory;->get()Lcom/stripe/stripeterminal/internal/common/adapter/SimulatorConfigurationRepository;

    move-result-object v0

    return-object v0
.end method
