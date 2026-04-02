.class public final Lcom/stripe/stripeterminal/internal/common/dagger/BbposDiscoveryModule_ProvideBbposBluetoothScannerFactory;
.super Ljava/lang/Object;
.source "BbposDiscoveryModule_ProvideBbposBluetoothScannerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner;",
        ">;"
    }
.end annotation


# instance fields
.field private final dispatcherProvider:Ljavax/inject/Provider;
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

.field private final scannerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/bluetooth/le/BluetoothLeScanner;",
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
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/hardware/status/ReaderStatusListener;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/bluetooth/le/BluetoothLeScanner;",
            ">;)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/dagger/BbposDiscoveryModule_ProvideBbposBluetoothScannerFactory;->dispatcherProvider:Ljavax/inject/Provider;

    .line 42
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/dagger/BbposDiscoveryModule_ProvideBbposBluetoothScannerFactory;->readerStatusListenerProvider:Ljavax/inject/Provider;

    .line 43
    iput-object p3, p0, Lcom/stripe/stripeterminal/internal/common/dagger/BbposDiscoveryModule_ProvideBbposBluetoothScannerFactory;->scannerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/internal/common/dagger/BbposDiscoveryModule_ProvideBbposBluetoothScannerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/hardware/status/ReaderStatusListener;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/bluetooth/le/BluetoothLeScanner;",
            ">;)",
            "Lcom/stripe/stripeterminal/internal/common/dagger/BbposDiscoveryModule_ProvideBbposBluetoothScannerFactory;"
        }
    .end annotation

    .line 55
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/dagger/BbposDiscoveryModule_ProvideBbposBluetoothScannerFactory;

    invoke-direct {v0, p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/dagger/BbposDiscoveryModule_ProvideBbposBluetoothScannerFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideBbposBluetoothScanner(Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/core/hardware/status/ReaderStatusListener;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            "Lcom/stripe/core/hardware/status/ReaderStatusListener;",
            "Ljavax/inject/Provider<",
            "Landroid/bluetooth/le/BluetoothLeScanner;",
            ">;)",
            "Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner;"
        }
    .end annotation

    .line 60
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/dagger/BbposDiscoveryModule;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/dagger/BbposDiscoveryModule;

    invoke-virtual {v0, p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/dagger/BbposDiscoveryModule;->provideBbposBluetoothScanner(Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/core/hardware/status/ReaderStatusListener;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner;
    .locals 3

    .line 48
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/dagger/BbposDiscoveryModule_ProvideBbposBluetoothScannerFactory;->dispatcherProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/CoroutineDispatcher;

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/dagger/BbposDiscoveryModule_ProvideBbposBluetoothScannerFactory;->readerStatusListenerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/core/hardware/status/ReaderStatusListener;

    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/dagger/BbposDiscoveryModule_ProvideBbposBluetoothScannerFactory;->scannerProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2}, Lcom/stripe/stripeterminal/internal/common/dagger/BbposDiscoveryModule_ProvideBbposBluetoothScannerFactory;->provideBbposBluetoothScanner(Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/core/hardware/status/ReaderStatusListener;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/dagger/BbposDiscoveryModule_ProvideBbposBluetoothScannerFactory;->get()Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner;

    move-result-object v0

    return-object v0
.end method
