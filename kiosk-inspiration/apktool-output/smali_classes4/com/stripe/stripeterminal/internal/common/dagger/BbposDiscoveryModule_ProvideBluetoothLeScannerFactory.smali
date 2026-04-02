.class public final Lcom/stripe/stripeterminal/internal/common/dagger/BbposDiscoveryModule_ProvideBluetoothLeScannerFactory;
.super Ljava/lang/Object;
.source "BbposDiscoveryModule_ProvideBluetoothLeScannerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Landroid/bluetooth/le/BluetoothLeScanner;",
        ">;"
    }
.end annotation


# instance fields
.field private final adapterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/bluetooth/BluetoothAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/bluetooth/BluetoothAdapter;",
            ">;)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/dagger/BbposDiscoveryModule_ProvideBluetoothLeScannerFactory;->adapterProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/internal/common/dagger/BbposDiscoveryModule_ProvideBluetoothLeScannerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/bluetooth/BluetoothAdapter;",
            ">;)",
            "Lcom/stripe/stripeterminal/internal/common/dagger/BbposDiscoveryModule_ProvideBluetoothLeScannerFactory;"
        }
    .end annotation

    .line 42
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/dagger/BbposDiscoveryModule_ProvideBluetoothLeScannerFactory;

    invoke-direct {v0, p0}, Lcom/stripe/stripeterminal/internal/common/dagger/BbposDiscoveryModule_ProvideBluetoothLeScannerFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideBluetoothLeScanner(Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/le/BluetoothLeScanner;
    .locals 1

    .line 46
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/dagger/BbposDiscoveryModule;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/dagger/BbposDiscoveryModule;

    invoke-virtual {v0, p0}, Lcom/stripe/stripeterminal/internal/common/dagger/BbposDiscoveryModule;->provideBluetoothLeScanner(Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public get()Landroid/bluetooth/le/BluetoothLeScanner;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/dagger/BbposDiscoveryModule_ProvideBluetoothLeScannerFactory;->adapterProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/dagger/BbposDiscoveryModule_ProvideBluetoothLeScannerFactory;->provideBluetoothLeScanner(Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/dagger/BbposDiscoveryModule_ProvideBluetoothLeScannerFactory;->get()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v0

    return-object v0
.end method
