.class public final Lcom/stripe/core/readerupdate/dagger/BbposModule_ProvideBbposApplicatorFactory;
.super Ljava/lang/Object;
.source "BbposModule_ProvideBbposApplicatorFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/core/updater/Applicator<",
        "Lcom/stripe/core/readerupdate/UpdatePackage;",
        "Lkotlinx/coroutines/flow/Flow<",
        "Lcom/stripe/core/readerupdate/ProgressStatus;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field private final bbposAssetInstallProcessorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/readerupdate/BbposAssetInstallProcessor;",
            ">;"
        }
    .end annotation
.end field

.field private final configurationHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final deviceInfoRepositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/device/DeviceInfoRepository;",
            ">;"
        }
    .end annotation
.end field

.field private final embeddedSoftwareVersionProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;",
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

.field private final loggerFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final readerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/hardware/Reader;",
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
            "Lcom/stripe/core/hardware/Reader;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/readerupdate/BbposAssetInstallProcessor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/device/DeviceInfoRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ">;)V"
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/stripe/core/readerupdate/dagger/BbposModule_ProvideBbposApplicatorFactory;->ioProvider:Ljavax/inject/Provider;

    .line 59
    iput-object p2, p0, Lcom/stripe/core/readerupdate/dagger/BbposModule_ProvideBbposApplicatorFactory;->readerProvider:Ljavax/inject/Provider;

    .line 60
    iput-object p3, p0, Lcom/stripe/core/readerupdate/dagger/BbposModule_ProvideBbposApplicatorFactory;->configurationHandlerProvider:Ljavax/inject/Provider;

    .line 61
    iput-object p4, p0, Lcom/stripe/core/readerupdate/dagger/BbposModule_ProvideBbposApplicatorFactory;->embeddedSoftwareVersionProvider:Ljavax/inject/Provider;

    .line 62
    iput-object p5, p0, Lcom/stripe/core/readerupdate/dagger/BbposModule_ProvideBbposApplicatorFactory;->bbposAssetInstallProcessorProvider:Ljavax/inject/Provider;

    .line 63
    iput-object p6, p0, Lcom/stripe/core/readerupdate/dagger/BbposModule_ProvideBbposApplicatorFactory;->deviceInfoRepositoryProvider:Ljavax/inject/Provider;

    .line 64
    iput-object p7, p0, Lcom/stripe/core/readerupdate/dagger/BbposModule_ProvideBbposApplicatorFactory;->loggerFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/core/readerupdate/dagger/BbposModule_ProvideBbposApplicatorFactory;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/hardware/Reader;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/readerupdate/BbposAssetInstallProcessor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/device/DeviceInfoRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ">;)",
            "Lcom/stripe/core/readerupdate/dagger/BbposModule_ProvideBbposApplicatorFactory;"
        }
    .end annotation

    .line 79
    new-instance v0, Lcom/stripe/core/readerupdate/dagger/BbposModule_ProvideBbposApplicatorFactory;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/stripe/core/readerupdate/dagger/BbposModule_ProvideBbposApplicatorFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideBbposApplicator(Lkotlinx/coroutines/CoroutineDispatcher;Ljavax/inject/Provider;Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;Lcom/stripe/core/readerupdate/BbposAssetInstallProcessor;Lcom/stripe/device/DeviceInfoRepository;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/core/updater/Applicator;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/hardware/Reader;",
            ">;",
            "Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;",
            "Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;",
            "Lcom/stripe/core/readerupdate/BbposAssetInstallProcessor;",
            "Lcom/stripe/device/DeviceInfoRepository;",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ")",
            "Lcom/stripe/core/updater/Applicator<",
            "Lcom/stripe/core/readerupdate/UpdatePackage;",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/stripe/core/readerupdate/ProgressStatus;",
            ">;>;"
        }
    .end annotation

    .line 88
    sget-object v0, Lcom/stripe/core/readerupdate/dagger/BbposModule;->INSTANCE:Lcom/stripe/core/readerupdate/dagger/BbposModule;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/stripe/core/readerupdate/dagger/BbposModule;->provideBbposApplicator(Lkotlinx/coroutines/CoroutineDispatcher;Ljavax/inject/Provider;Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;Lcom/stripe/core/readerupdate/BbposAssetInstallProcessor;Lcom/stripe/device/DeviceInfoRepository;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/core/updater/Applicator;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/core/updater/Applicator;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/core/updater/Applicator;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/stripe/core/updater/Applicator<",
            "Lcom/stripe/core/readerupdate/UpdatePackage;",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/stripe/core/readerupdate/ProgressStatus;",
            ">;>;"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/stripe/core/readerupdate/dagger/BbposModule_ProvideBbposApplicatorFactory;->ioProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineDispatcher;

    iget-object v2, p0, Lcom/stripe/core/readerupdate/dagger/BbposModule_ProvideBbposApplicatorFactory;->readerProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/stripe/core/readerupdate/dagger/BbposModule_ProvideBbposApplicatorFactory;->configurationHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;

    iget-object v0, p0, Lcom/stripe/core/readerupdate/dagger/BbposModule_ProvideBbposApplicatorFactory;->embeddedSoftwareVersionProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;

    iget-object v0, p0, Lcom/stripe/core/readerupdate/dagger/BbposModule_ProvideBbposApplicatorFactory;->bbposAssetInstallProcessorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/stripe/core/readerupdate/BbposAssetInstallProcessor;

    iget-object v0, p0, Lcom/stripe/core/readerupdate/dagger/BbposModule_ProvideBbposApplicatorFactory;->deviceInfoRepositoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/stripe/device/DeviceInfoRepository;

    iget-object v0, p0, Lcom/stripe/core/readerupdate/dagger/BbposModule_ProvideBbposApplicatorFactory;->loggerFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;

    invoke-static/range {v1 .. v7}, Lcom/stripe/core/readerupdate/dagger/BbposModule_ProvideBbposApplicatorFactory;->provideBbposApplicator(Lkotlinx/coroutines/CoroutineDispatcher;Ljavax/inject/Provider;Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;Lcom/stripe/core/readerupdate/BbposAssetInstallProcessor;Lcom/stripe/device/DeviceInfoRepository;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/core/updater/Applicator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcom/stripe/core/readerupdate/dagger/BbposModule_ProvideBbposApplicatorFactory;->get()Lcom/stripe/core/updater/Applicator;

    move-result-object v0

    return-object v0
.end method
