.class public final Lcom/stripe/stripeterminal/internal/common/dagger/BbposDiscoveryModule_ProvideBluetoothAdapterFactory;
.super Ljava/lang/Object;
.source "BbposDiscoveryModule_ProvideBluetoothAdapterFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/internal/common/dagger/BbposDiscoveryModule_ProvideBluetoothAdapterFactory$InstanceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Landroid/bluetooth/BluetoothAdapter;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/stripe/stripeterminal/internal/common/dagger/BbposDiscoveryModule_ProvideBluetoothAdapterFactory;
    .locals 1

    .line 32
    invoke-static {}, Lcom/stripe/stripeterminal/internal/common/dagger/BbposDiscoveryModule_ProvideBluetoothAdapterFactory$InstanceHolder;->access$000()Lcom/stripe/stripeterminal/internal/common/dagger/BbposDiscoveryModule_ProvideBluetoothAdapterFactory;

    move-result-object v0

    return-object v0
.end method

.method public static provideBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;
    .locals 1

    .line 36
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/dagger/BbposDiscoveryModule;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/dagger/BbposDiscoveryModule;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/dagger/BbposDiscoveryModule;->provideBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public get()Landroid/bluetooth/BluetoothAdapter;
    .locals 1

    .line 28
    invoke-static {}, Lcom/stripe/stripeterminal/internal/common/dagger/BbposDiscoveryModule_ProvideBluetoothAdapterFactory;->provideBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/dagger/BbposDiscoveryModule_ProvideBluetoothAdapterFactory;->get()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    return-object v0
.end method
