.class public final Lcom/stripe/core/bbpos/dagger/BbposUpdateModule_ProvideUpdateController$sdk_releaseFactory;
.super Ljava/lang/Object;
.source "BbposUpdateModule_ProvideUpdateController$sdk_releaseFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/core/bbpos/BbposReaderUpdateController;",
        ">;"
    }
.end annotation


# instance fields
.field private final listenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/hardware/updates/ReaderUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final otaControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/bbpos/BbposDeviceOtaController;",
            ">;"
        }
    .end annotation
.end field

.field private final otaListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/bbpos/BbposOtaListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/bbpos/BbposDeviceOtaController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/hardware/updates/ReaderUpdateListener;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/bbpos/BbposOtaListener;",
            ">;)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/stripe/core/bbpos/dagger/BbposUpdateModule_ProvideUpdateController$sdk_releaseFactory;->otaControllerProvider:Ljavax/inject/Provider;

    .line 42
    iput-object p2, p0, Lcom/stripe/core/bbpos/dagger/BbposUpdateModule_ProvideUpdateController$sdk_releaseFactory;->listenerProvider:Ljavax/inject/Provider;

    .line 43
    iput-object p3, p0, Lcom/stripe/core/bbpos/dagger/BbposUpdateModule_ProvideUpdateController$sdk_releaseFactory;->otaListenerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/core/bbpos/dagger/BbposUpdateModule_ProvideUpdateController$sdk_releaseFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/bbpos/BbposDeviceOtaController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/hardware/updates/ReaderUpdateListener;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/bbpos/BbposOtaListener;",
            ">;)",
            "Lcom/stripe/core/bbpos/dagger/BbposUpdateModule_ProvideUpdateController$sdk_releaseFactory;"
        }
    .end annotation

    .line 55
    new-instance v0, Lcom/stripe/core/bbpos/dagger/BbposUpdateModule_ProvideUpdateController$sdk_releaseFactory;

    invoke-direct {v0, p0, p1, p2}, Lcom/stripe/core/bbpos/dagger/BbposUpdateModule_ProvideUpdateController$sdk_releaseFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideUpdateController$sdk_release(Lcom/stripe/core/bbpos/BbposDeviceOtaController;Lcom/stripe/core/hardware/updates/ReaderUpdateListener;Lcom/stripe/core/bbpos/BbposOtaListener;)Lcom/stripe/core/bbpos/BbposReaderUpdateController;
    .locals 1

    .line 61
    sget-object v0, Lcom/stripe/core/bbpos/dagger/BbposUpdateModule;->INSTANCE:Lcom/stripe/core/bbpos/dagger/BbposUpdateModule;

    invoke-virtual {v0, p0, p1, p2}, Lcom/stripe/core/bbpos/dagger/BbposUpdateModule;->provideUpdateController$sdk_release(Lcom/stripe/core/bbpos/BbposDeviceOtaController;Lcom/stripe/core/hardware/updates/ReaderUpdateListener;Lcom/stripe/core/bbpos/BbposOtaListener;)Lcom/stripe/core/bbpos/BbposReaderUpdateController;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/core/bbpos/BbposReaderUpdateController;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/core/bbpos/BbposReaderUpdateController;
    .locals 3

    .line 48
    iget-object v0, p0, Lcom/stripe/core/bbpos/dagger/BbposUpdateModule_ProvideUpdateController$sdk_releaseFactory;->otaControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/core/bbpos/BbposDeviceOtaController;

    iget-object v1, p0, Lcom/stripe/core/bbpos/dagger/BbposUpdateModule_ProvideUpdateController$sdk_releaseFactory;->listenerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/core/hardware/updates/ReaderUpdateListener;

    iget-object v2, p0, Lcom/stripe/core/bbpos/dagger/BbposUpdateModule_ProvideUpdateController$sdk_releaseFactory;->otaListenerProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/core/bbpos/BbposOtaListener;

    invoke-static {v0, v1, v2}, Lcom/stripe/core/bbpos/dagger/BbposUpdateModule_ProvideUpdateController$sdk_releaseFactory;->provideUpdateController$sdk_release(Lcom/stripe/core/bbpos/BbposDeviceOtaController;Lcom/stripe/core/hardware/updates/ReaderUpdateListener;Lcom/stripe/core/bbpos/BbposOtaListener;)Lcom/stripe/core/bbpos/BbposReaderUpdateController;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/stripe/core/bbpos/dagger/BbposUpdateModule_ProvideUpdateController$sdk_releaseFactory;->get()Lcom/stripe/core/bbpos/BbposReaderUpdateController;

    move-result-object v0

    return-object v0
.end method
