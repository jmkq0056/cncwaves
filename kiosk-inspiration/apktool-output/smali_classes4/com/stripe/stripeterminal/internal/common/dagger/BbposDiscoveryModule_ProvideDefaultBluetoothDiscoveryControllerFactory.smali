.class public final Lcom/stripe/stripeterminal/internal/common/dagger/BbposDiscoveryModule_ProvideDefaultBluetoothDiscoveryControllerFactory;
.super Ljava/lang/Object;
.source "BbposDiscoveryModule_ProvideDefaultBluetoothDiscoveryControllerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController;",
        ">;"
    }
.end annotation


# instance fields
.field private final bluetoothScannerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner;",
            ">;"
        }
    .end annotation
.end field

.field private final clockProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/time/Clock;",
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

.field private final readerStatusListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/hardware/status/ReaderStatusListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/hardware/status/ReaderStatusListener;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/time/Clock;",
            ">;)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/dagger/BbposDiscoveryModule_ProvideDefaultBluetoothDiscoveryControllerFactory;->ioProvider:Ljavax/inject/Provider;

    .line 45
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/dagger/BbposDiscoveryModule_ProvideDefaultBluetoothDiscoveryControllerFactory;->bluetoothScannerProvider:Ljavax/inject/Provider;

    .line 46
    iput-object p3, p0, Lcom/stripe/stripeterminal/internal/common/dagger/BbposDiscoveryModule_ProvideDefaultBluetoothDiscoveryControllerFactory;->readerStatusListenerProvider:Ljavax/inject/Provider;

    .line 47
    iput-object p4, p0, Lcom/stripe/stripeterminal/internal/common/dagger/BbposDiscoveryModule_ProvideDefaultBluetoothDiscoveryControllerFactory;->clockProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/internal/common/dagger/BbposDiscoveryModule_ProvideDefaultBluetoothDiscoveryControllerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/hardware/status/ReaderStatusListener;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/time/Clock;",
            ">;)",
            "Lcom/stripe/stripeterminal/internal/common/dagger/BbposDiscoveryModule_ProvideDefaultBluetoothDiscoveryControllerFactory;"
        }
    .end annotation

    .line 59
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/dagger/BbposDiscoveryModule_ProvideDefaultBluetoothDiscoveryControllerFactory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/stripe/stripeterminal/internal/common/dagger/BbposDiscoveryModule_ProvideDefaultBluetoothDiscoveryControllerFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideDefaultBluetoothDiscoveryController(Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner;Lcom/stripe/core/hardware/status/ReaderStatusListener;Lcom/stripe/time/Clock;)Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController;
    .locals 1

    .line 65
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/dagger/BbposDiscoveryModule;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/dagger/BbposDiscoveryModule;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/stripe/stripeterminal/internal/common/dagger/BbposDiscoveryModule;->provideDefaultBluetoothDiscoveryController(Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner;Lcom/stripe/core/hardware/status/ReaderStatusListener;Lcom/stripe/time/Clock;)Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController;
    .locals 4

    .line 52
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/dagger/BbposDiscoveryModule_ProvideDefaultBluetoothDiscoveryControllerFactory;->ioProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/CoroutineDispatcher;

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/dagger/BbposDiscoveryModule_ProvideDefaultBluetoothDiscoveryControllerFactory;->bluetoothScannerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner;

    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/dagger/BbposDiscoveryModule_ProvideDefaultBluetoothDiscoveryControllerFactory;->readerStatusListenerProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/core/hardware/status/ReaderStatusListener;

    iget-object v3, p0, Lcom/stripe/stripeterminal/internal/common/dagger/BbposDiscoveryModule_ProvideDefaultBluetoothDiscoveryControllerFactory;->clockProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/stripe/time/Clock;

    invoke-static {v0, v1, v2, v3}, Lcom/stripe/stripeterminal/internal/common/dagger/BbposDiscoveryModule_ProvideDefaultBluetoothDiscoveryControllerFactory;->provideDefaultBluetoothDiscoveryController(Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner;Lcom/stripe/core/hardware/status/ReaderStatusListener;Lcom/stripe/time/Clock;)Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 16
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/dagger/BbposDiscoveryModule_ProvideDefaultBluetoothDiscoveryControllerFactory;->get()Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController;

    move-result-object v0

    return-object v0
.end method
