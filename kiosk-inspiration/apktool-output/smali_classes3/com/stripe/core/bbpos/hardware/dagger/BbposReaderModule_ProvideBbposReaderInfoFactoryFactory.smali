.class public final Lcom/stripe/core/bbpos/hardware/dagger/BbposReaderModule_ProvideBbposReaderInfoFactoryFactory;
.super Ljava/lang/Object;
.source "BbposReaderModule_ProvideBbposReaderInfoFactoryFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/core/bbpos/hardware/BbposReaderInfoFactory;",
        ">;"
    }
.end annotation


# instance fields
.field private final clientDeviceTypeProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/device/ClientDeviceType;",
            ">;"
        }
    .end annotation
.end field

.field private final isDebugProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/device/ClientDeviceType;",
            ">;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/stripe/core/bbpos/hardware/dagger/BbposReaderModule_ProvideBbposReaderInfoFactoryFactory;->isDebugProvider:Ljavax/inject/Provider;

    .line 36
    iput-object p2, p0, Lcom/stripe/core/bbpos/hardware/dagger/BbposReaderModule_ProvideBbposReaderInfoFactoryFactory;->clientDeviceTypeProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/core/bbpos/hardware/dagger/BbposReaderModule_ProvideBbposReaderInfoFactoryFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/device/ClientDeviceType;",
            ">;)",
            "Lcom/stripe/core/bbpos/hardware/dagger/BbposReaderModule_ProvideBbposReaderInfoFactoryFactory;"
        }
    .end annotation

    .line 46
    new-instance v0, Lcom/stripe/core/bbpos/hardware/dagger/BbposReaderModule_ProvideBbposReaderInfoFactoryFactory;

    invoke-direct {v0, p0, p1}, Lcom/stripe/core/bbpos/hardware/dagger/BbposReaderModule_ProvideBbposReaderInfoFactoryFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideBbposReaderInfoFactory(ZLcom/stripe/core/device/ClientDeviceType;)Lcom/stripe/core/bbpos/hardware/BbposReaderInfoFactory;
    .locals 1

    .line 51
    sget-object v0, Lcom/stripe/core/bbpos/hardware/dagger/BbposReaderModule;->INSTANCE:Lcom/stripe/core/bbpos/hardware/dagger/BbposReaderModule;

    invoke-virtual {v0, p0, p1}, Lcom/stripe/core/bbpos/hardware/dagger/BbposReaderModule;->provideBbposReaderInfoFactory(ZLcom/stripe/core/device/ClientDeviceType;)Lcom/stripe/core/bbpos/hardware/BbposReaderInfoFactory;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/core/bbpos/hardware/BbposReaderInfoFactory;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/core/bbpos/hardware/BbposReaderInfoFactory;
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/dagger/BbposReaderModule_ProvideBbposReaderInfoFactoryFactory;->isDebugProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/stripe/core/bbpos/hardware/dagger/BbposReaderModule_ProvideBbposReaderInfoFactoryFactory;->clientDeviceTypeProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/core/device/ClientDeviceType;

    invoke-static {v0, v1}, Lcom/stripe/core/bbpos/hardware/dagger/BbposReaderModule_ProvideBbposReaderInfoFactoryFactory;->provideBbposReaderInfoFactory(ZLcom/stripe/core/device/ClientDeviceType;)Lcom/stripe/core/bbpos/hardware/BbposReaderInfoFactory;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/stripe/core/bbpos/hardware/dagger/BbposReaderModule_ProvideBbposReaderInfoFactoryFactory;->get()Lcom/stripe/core/bbpos/hardware/BbposReaderInfoFactory;

    move-result-object v0

    return-object v0
.end method
