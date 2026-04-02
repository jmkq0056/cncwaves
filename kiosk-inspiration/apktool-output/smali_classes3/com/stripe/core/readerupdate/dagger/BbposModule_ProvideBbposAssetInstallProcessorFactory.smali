.class public final Lcom/stripe/core/readerupdate/dagger/BbposModule_ProvideBbposAssetInstallProcessorFactory;
.super Ljava/lang/Object;
.source "BbposModule_ProvideBbposAssetInstallProcessorFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/core/readerupdate/BbposAssetInstallProcessor;",
        ">;"
    }
.end annotation


# instance fields
.field private final loggerFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final readerConnectionControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/hardware/ReaderConnectionController;",
            ">;"
        }
    .end annotation
.end field

.field private final schedulerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lio/reactivex/rxjava3/core/Scheduler;",
            ">;"
        }
    .end annotation
.end field

.field private final statusListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;",
            ">;"
        }
    .end annotation
.end field

.field private final updateControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/hardware/updates/ReaderUpdateController;",
            ">;"
        }
    .end annotation
.end field

.field private final updateListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lio/reactivex/rxjava3/core/Scheduler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/hardware/updates/ReaderUpdateController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/hardware/ReaderConnectionController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ">;)V"
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/stripe/core/readerupdate/dagger/BbposModule_ProvideBbposAssetInstallProcessorFactory;->schedulerProvider:Ljavax/inject/Provider;

    .line 53
    iput-object p2, p0, Lcom/stripe/core/readerupdate/dagger/BbposModule_ProvideBbposAssetInstallProcessorFactory;->updateListenerProvider:Ljavax/inject/Provider;

    .line 54
    iput-object p3, p0, Lcom/stripe/core/readerupdate/dagger/BbposModule_ProvideBbposAssetInstallProcessorFactory;->statusListenerProvider:Ljavax/inject/Provider;

    .line 55
    iput-object p4, p0, Lcom/stripe/core/readerupdate/dagger/BbposModule_ProvideBbposAssetInstallProcessorFactory;->updateControllerProvider:Ljavax/inject/Provider;

    .line 56
    iput-object p5, p0, Lcom/stripe/core/readerupdate/dagger/BbposModule_ProvideBbposAssetInstallProcessorFactory;->readerConnectionControllerProvider:Ljavax/inject/Provider;

    .line 57
    iput-object p6, p0, Lcom/stripe/core/readerupdate/dagger/BbposModule_ProvideBbposAssetInstallProcessorFactory;->loggerFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/core/readerupdate/dagger/BbposModule_ProvideBbposAssetInstallProcessorFactory;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lio/reactivex/rxjava3/core/Scheduler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/hardware/updates/ReaderUpdateController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/hardware/ReaderConnectionController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ">;)",
            "Lcom/stripe/core/readerupdate/dagger/BbposModule_ProvideBbposAssetInstallProcessorFactory;"
        }
    .end annotation

    .line 72
    new-instance v0, Lcom/stripe/core/readerupdate/dagger/BbposModule_ProvideBbposAssetInstallProcessorFactory;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/stripe/core/readerupdate/dagger/BbposModule_ProvideBbposAssetInstallProcessorFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideBbposAssetInstallProcessor(Lio/reactivex/rxjava3/core/Scheduler;Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;Lcom/stripe/core/hardware/updates/ReaderUpdateController;Lcom/stripe/core/hardware/ReaderConnectionController;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/core/readerupdate/BbposAssetInstallProcessor;
    .locals 7

    .line 79
    sget-object v0, Lcom/stripe/core/readerupdate/dagger/BbposModule;->INSTANCE:Lcom/stripe/core/readerupdate/dagger/BbposModule;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/stripe/core/readerupdate/dagger/BbposModule;->provideBbposAssetInstallProcessor(Lio/reactivex/rxjava3/core/Scheduler;Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;Lcom/stripe/core/hardware/updates/ReaderUpdateController;Lcom/stripe/core/hardware/ReaderConnectionController;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/core/readerupdate/BbposAssetInstallProcessor;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/core/readerupdate/BbposAssetInstallProcessor;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/core/readerupdate/BbposAssetInstallProcessor;
    .locals 7

    .line 62
    iget-object v0, p0, Lcom/stripe/core/readerupdate/dagger/BbposModule_ProvideBbposAssetInstallProcessorFactory;->schedulerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lio/reactivex/rxjava3/core/Scheduler;

    iget-object v0, p0, Lcom/stripe/core/readerupdate/dagger/BbposModule_ProvideBbposAssetInstallProcessorFactory;->updateListenerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;

    iget-object v0, p0, Lcom/stripe/core/readerupdate/dagger/BbposModule_ProvideBbposAssetInstallProcessorFactory;->statusListenerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;

    iget-object v0, p0, Lcom/stripe/core/readerupdate/dagger/BbposModule_ProvideBbposAssetInstallProcessorFactory;->updateControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/stripe/core/hardware/updates/ReaderUpdateController;

    iget-object v0, p0, Lcom/stripe/core/readerupdate/dagger/BbposModule_ProvideBbposAssetInstallProcessorFactory;->readerConnectionControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/stripe/core/hardware/ReaderConnectionController;

    iget-object v0, p0, Lcom/stripe/core/readerupdate/dagger/BbposModule_ProvideBbposAssetInstallProcessorFactory;->loggerFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;

    invoke-static/range {v1 .. v6}, Lcom/stripe/core/readerupdate/dagger/BbposModule_ProvideBbposAssetInstallProcessorFactory;->provideBbposAssetInstallProcessor(Lio/reactivex/rxjava3/core/Scheduler;Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;Lcom/stripe/core/hardware/updates/ReaderUpdateController;Lcom/stripe/core/hardware/ReaderConnectionController;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/core/readerupdate/BbposAssetInstallProcessor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/stripe/core/readerupdate/dagger/BbposModule_ProvideBbposAssetInstallProcessorFactory;->get()Lcom/stripe/core/readerupdate/BbposAssetInstallProcessor;

    move-result-object v0

    return-object v0
.end method
