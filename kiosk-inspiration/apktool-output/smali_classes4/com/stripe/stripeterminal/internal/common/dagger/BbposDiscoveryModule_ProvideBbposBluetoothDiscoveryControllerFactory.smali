.class public final Lcom/stripe/stripeterminal/internal/common/dagger/BbposDiscoveryModule_ProvideBbposBluetoothDiscoveryControllerFactory;
.super Ljava/lang/Object;
.source "BbposDiscoveryModule_ProvideBbposBluetoothDiscoveryControllerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothDiscoveryController;",
        ">;"
    }
.end annotation


# instance fields
.field private final bbposDeviceControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final discoveryFilterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothDiscoveryFilter;",
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
            "Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothDiscoveryFilter;",
            ">;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/dagger/BbposDiscoveryModule_ProvideBbposBluetoothDiscoveryControllerFactory;->bbposDeviceControllerProvider:Ljavax/inject/Provider;

    .line 38
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/dagger/BbposDiscoveryModule_ProvideBbposBluetoothDiscoveryControllerFactory;->discoveryFilterProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/internal/common/dagger/BbposDiscoveryModule_ProvideBbposBluetoothDiscoveryControllerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothDiscoveryFilter;",
            ">;)",
            "Lcom/stripe/stripeterminal/internal/common/dagger/BbposDiscoveryModule_ProvideBbposBluetoothDiscoveryControllerFactory;"
        }
    .end annotation

    .line 49
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/dagger/BbposDiscoveryModule_ProvideBbposBluetoothDiscoveryControllerFactory;

    invoke-direct {v0, p0, p1}, Lcom/stripe/stripeterminal/internal/common/dagger/BbposDiscoveryModule_ProvideBbposBluetoothDiscoveryControllerFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideBbposBluetoothDiscoveryController(Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothDiscoveryFilter;)Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothDiscoveryController;
    .locals 1

    .line 55
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/dagger/BbposDiscoveryModule;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/dagger/BbposDiscoveryModule;

    invoke-virtual {v0, p0, p1}, Lcom/stripe/stripeterminal/internal/common/dagger/BbposDiscoveryModule;->provideBbposBluetoothDiscoveryController(Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothDiscoveryFilter;)Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothDiscoveryController;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothDiscoveryController;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothDiscoveryController;
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/dagger/BbposDiscoveryModule_ProvideBbposBluetoothDiscoveryControllerFactory;->bbposDeviceControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/dagger/BbposDiscoveryModule_ProvideBbposBluetoothDiscoveryControllerFactory;->discoveryFilterProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothDiscoveryFilter;

    invoke-static {v0, v1}, Lcom/stripe/stripeterminal/internal/common/dagger/BbposDiscoveryModule_ProvideBbposBluetoothDiscoveryControllerFactory;->provideBbposBluetoothDiscoveryController(Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothDiscoveryFilter;)Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothDiscoveryController;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/dagger/BbposDiscoveryModule_ProvideBbposBluetoothDiscoveryControllerFactory;->get()Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothDiscoveryController;

    move-result-object v0

    return-object v0
.end method
