.class public final Lcom/stripe/core/readerupdate/dagger/FlowUpdaterModule_ProvideArmadaFlowUpdaterFactory;
.super Ljava/lang/Object;
.source "FlowUpdaterModule_ProvideArmadaFlowUpdaterFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/core/readerupdate/ProgressFlowUpdater<",
        "Lcom/stripe/core/readerupdate/UpdateSummary;",
        "Lcom/stripe/core/readerupdate/UpdatePackage;",
        "Lcom/stripe/core/readerupdate/ProgressStatus;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final applicatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/updater/Applicator<",
            "Lcom/stripe/core/readerupdate/UpdatePackage;",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/stripe/core/readerupdate/ProgressStatus;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final endToEndHealthReporterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/readerupdate/healthreporter/UpdateEndToEndHealthReporter;",
            ">;"
        }
    .end annotation
.end field

.field private final ingesterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/updater/Ingester<",
            "Lcom/stripe/core/readerupdate/UpdateSummary;",
            "Lcom/stripe/core/readerupdate/UpdatePackage;",
            ">;>;"
        }
    .end annotation
.end field

.field private final installHealthReporterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/readerupdate/healthreporter/InstallHealthReporter<",
            "Lcom/stripe/core/readerupdate/ProgressStatus;",
            ">;>;"
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

.field private final monitorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/updater/Monitor<",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/stripe/core/readerupdate/UpdateSummary;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final stepHealthReporterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter;",
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
            "Lcom/stripe/core/updater/Monitor<",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/stripe/core/readerupdate/UpdateSummary;",
            ">;>;>;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/updater/Ingester<",
            "Lcom/stripe/core/readerupdate/UpdateSummary;",
            "Lcom/stripe/core/readerupdate/UpdatePackage;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/updater/Applicator<",
            "Lcom/stripe/core/readerupdate/UpdatePackage;",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/stripe/core/readerupdate/ProgressStatus;",
            ">;>;>;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/readerupdate/healthreporter/UpdateEndToEndHealthReporter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/readerupdate/healthreporter/InstallHealthReporter<",
            "Lcom/stripe/core/readerupdate/ProgressStatus;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ">;)V"
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/stripe/core/readerupdate/dagger/FlowUpdaterModule_ProvideArmadaFlowUpdaterFactory;->monitorProvider:Ljavax/inject/Provider;

    .line 62
    iput-object p2, p0, Lcom/stripe/core/readerupdate/dagger/FlowUpdaterModule_ProvideArmadaFlowUpdaterFactory;->ingesterProvider:Ljavax/inject/Provider;

    .line 63
    iput-object p3, p0, Lcom/stripe/core/readerupdate/dagger/FlowUpdaterModule_ProvideArmadaFlowUpdaterFactory;->applicatorProvider:Ljavax/inject/Provider;

    .line 64
    iput-object p4, p0, Lcom/stripe/core/readerupdate/dagger/FlowUpdaterModule_ProvideArmadaFlowUpdaterFactory;->endToEndHealthReporterProvider:Ljavax/inject/Provider;

    .line 65
    iput-object p5, p0, Lcom/stripe/core/readerupdate/dagger/FlowUpdaterModule_ProvideArmadaFlowUpdaterFactory;->stepHealthReporterProvider:Ljavax/inject/Provider;

    .line 66
    iput-object p6, p0, Lcom/stripe/core/readerupdate/dagger/FlowUpdaterModule_ProvideArmadaFlowUpdaterFactory;->installHealthReporterProvider:Ljavax/inject/Provider;

    .line 67
    iput-object p7, p0, Lcom/stripe/core/readerupdate/dagger/FlowUpdaterModule_ProvideArmadaFlowUpdaterFactory;->loggerFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/core/readerupdate/dagger/FlowUpdaterModule_ProvideArmadaFlowUpdaterFactory;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/updater/Monitor<",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/stripe/core/readerupdate/UpdateSummary;",
            ">;>;>;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/updater/Ingester<",
            "Lcom/stripe/core/readerupdate/UpdateSummary;",
            "Lcom/stripe/core/readerupdate/UpdatePackage;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/updater/Applicator<",
            "Lcom/stripe/core/readerupdate/UpdatePackage;",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/stripe/core/readerupdate/ProgressStatus;",
            ">;>;>;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/readerupdate/healthreporter/UpdateEndToEndHealthReporter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/readerupdate/healthreporter/InstallHealthReporter<",
            "Lcom/stripe/core/readerupdate/ProgressStatus;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ">;)",
            "Lcom/stripe/core/readerupdate/dagger/FlowUpdaterModule_ProvideArmadaFlowUpdaterFactory;"
        }
    .end annotation

    .line 83
    new-instance v0, Lcom/stripe/core/readerupdate/dagger/FlowUpdaterModule_ProvideArmadaFlowUpdaterFactory;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/stripe/core/readerupdate/dagger/FlowUpdaterModule_ProvideArmadaFlowUpdaterFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideArmadaFlowUpdater(Lcom/stripe/core/updater/Monitor;Lcom/stripe/core/updater/Ingester;Lcom/stripe/core/updater/Applicator;Lcom/stripe/core/readerupdate/healthreporter/UpdateEndToEndHealthReporter;Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter;Lcom/stripe/core/readerupdate/healthreporter/InstallHealthReporter;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/core/readerupdate/ProgressFlowUpdater;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/core/updater/Monitor<",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/stripe/core/readerupdate/UpdateSummary;",
            ">;>;",
            "Lcom/stripe/core/updater/Ingester<",
            "Lcom/stripe/core/readerupdate/UpdateSummary;",
            "Lcom/stripe/core/readerupdate/UpdatePackage;",
            ">;",
            "Lcom/stripe/core/updater/Applicator<",
            "Lcom/stripe/core/readerupdate/UpdatePackage;",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/stripe/core/readerupdate/ProgressStatus;",
            ">;>;",
            "Lcom/stripe/core/readerupdate/healthreporter/UpdateEndToEndHealthReporter;",
            "Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter;",
            "Lcom/stripe/core/readerupdate/healthreporter/InstallHealthReporter<",
            "Lcom/stripe/core/readerupdate/ProgressStatus;",
            ">;",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ")",
            "Lcom/stripe/core/readerupdate/ProgressFlowUpdater<",
            "Lcom/stripe/core/readerupdate/UpdateSummary;",
            "Lcom/stripe/core/readerupdate/UpdatePackage;",
            "Lcom/stripe/core/readerupdate/ProgressStatus;",
            ">;"
        }
    .end annotation

    .line 92
    sget-object v0, Lcom/stripe/core/readerupdate/dagger/FlowUpdaterModule;->INSTANCE:Lcom/stripe/core/readerupdate/dagger/FlowUpdaterModule;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/stripe/core/readerupdate/dagger/FlowUpdaterModule;->provideArmadaFlowUpdater(Lcom/stripe/core/updater/Monitor;Lcom/stripe/core/updater/Ingester;Lcom/stripe/core/updater/Applicator;Lcom/stripe/core/readerupdate/healthreporter/UpdateEndToEndHealthReporter;Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter;Lcom/stripe/core/readerupdate/healthreporter/InstallHealthReporter;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/core/readerupdate/ProgressFlowUpdater;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/core/readerupdate/ProgressFlowUpdater;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/core/readerupdate/ProgressFlowUpdater;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/stripe/core/readerupdate/ProgressFlowUpdater<",
            "Lcom/stripe/core/readerupdate/UpdateSummary;",
            "Lcom/stripe/core/readerupdate/UpdatePackage;",
            "Lcom/stripe/core/readerupdate/ProgressStatus;",
            ">;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/stripe/core/readerupdate/dagger/FlowUpdaterModule_ProvideArmadaFlowUpdaterFactory;->monitorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/stripe/core/updater/Monitor;

    iget-object v0, p0, Lcom/stripe/core/readerupdate/dagger/FlowUpdaterModule_ProvideArmadaFlowUpdaterFactory;->ingesterProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/stripe/core/updater/Ingester;

    iget-object v0, p0, Lcom/stripe/core/readerupdate/dagger/FlowUpdaterModule_ProvideArmadaFlowUpdaterFactory;->applicatorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/stripe/core/updater/Applicator;

    iget-object v0, p0, Lcom/stripe/core/readerupdate/dagger/FlowUpdaterModule_ProvideArmadaFlowUpdaterFactory;->endToEndHealthReporterProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/stripe/core/readerupdate/healthreporter/UpdateEndToEndHealthReporter;

    iget-object v0, p0, Lcom/stripe/core/readerupdate/dagger/FlowUpdaterModule_ProvideArmadaFlowUpdaterFactory;->stepHealthReporterProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter;

    iget-object v0, p0, Lcom/stripe/core/readerupdate/dagger/FlowUpdaterModule_ProvideArmadaFlowUpdaterFactory;->installHealthReporterProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/stripe/core/readerupdate/healthreporter/InstallHealthReporter;

    iget-object v0, p0, Lcom/stripe/core/readerupdate/dagger/FlowUpdaterModule_ProvideArmadaFlowUpdaterFactory;->loggerFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;

    invoke-static/range {v1 .. v7}, Lcom/stripe/core/readerupdate/dagger/FlowUpdaterModule_ProvideArmadaFlowUpdaterFactory;->provideArmadaFlowUpdater(Lcom/stripe/core/updater/Monitor;Lcom/stripe/core/updater/Ingester;Lcom/stripe/core/updater/Applicator;Lcom/stripe/core/readerupdate/healthreporter/UpdateEndToEndHealthReporter;Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter;Lcom/stripe/core/readerupdate/healthreporter/InstallHealthReporter;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/core/readerupdate/ProgressFlowUpdater;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/stripe/core/readerupdate/dagger/FlowUpdaterModule_ProvideArmadaFlowUpdaterFactory;->get()Lcom/stripe/core/readerupdate/ProgressFlowUpdater;

    move-result-object v0

    return-object v0
.end method
