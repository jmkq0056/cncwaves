.class public final Lcom/stripe/stripeterminal/dagger/StorageModule_ProvideBluetoothDeviceNameRepositoryFactory;
.super Ljava/lang/Object;
.source "StorageModule_ProvideBluetoothDeviceNameRepositoryFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/stripeterminal/internal/common/storage/BluetoothDeviceNameRepository;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/stripe/stripeterminal/dagger/StorageModule;

.field private final sharedPrefsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/storage/SharedPrefs;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/stripe/stripeterminal/dagger/StorageModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/dagger/StorageModule;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/storage/SharedPrefs;",
            ">;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/stripe/stripeterminal/dagger/StorageModule_ProvideBluetoothDeviceNameRepositoryFactory;->module:Lcom/stripe/stripeterminal/dagger/StorageModule;

    .line 36
    iput-object p2, p0, Lcom/stripe/stripeterminal/dagger/StorageModule_ProvideBluetoothDeviceNameRepositoryFactory;->sharedPrefsProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/stripe/stripeterminal/dagger/StorageModule;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/dagger/StorageModule_ProvideBluetoothDeviceNameRepositoryFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/dagger/StorageModule;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/storage/SharedPrefs;",
            ">;)",
            "Lcom/stripe/stripeterminal/dagger/StorageModule_ProvideBluetoothDeviceNameRepositoryFactory;"
        }
    .end annotation

    .line 46
    new-instance v0, Lcom/stripe/stripeterminal/dagger/StorageModule_ProvideBluetoothDeviceNameRepositoryFactory;

    invoke-direct {v0, p0, p1}, Lcom/stripe/stripeterminal/dagger/StorageModule_ProvideBluetoothDeviceNameRepositoryFactory;-><init>(Lcom/stripe/stripeterminal/dagger/StorageModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideBluetoothDeviceNameRepository(Lcom/stripe/stripeterminal/dagger/StorageModule;Lcom/stripe/jvmcore/storage/SharedPrefs;)Lcom/stripe/stripeterminal/internal/common/storage/BluetoothDeviceNameRepository;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/stripe/stripeterminal/dagger/StorageModule;->provideBluetoothDeviceNameRepository(Lcom/stripe/jvmcore/storage/SharedPrefs;)Lcom/stripe/stripeterminal/internal/common/storage/BluetoothDeviceNameRepository;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/stripeterminal/internal/common/storage/BluetoothDeviceNameRepository;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/stripeterminal/internal/common/storage/BluetoothDeviceNameRepository;
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/stripe/stripeterminal/dagger/StorageModule_ProvideBluetoothDeviceNameRepositoryFactory;->module:Lcom/stripe/stripeterminal/dagger/StorageModule;

    iget-object v1, p0, Lcom/stripe/stripeterminal/dagger/StorageModule_ProvideBluetoothDeviceNameRepositoryFactory;->sharedPrefsProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/jvmcore/storage/SharedPrefs;

    invoke-static {v0, v1}, Lcom/stripe/stripeterminal/dagger/StorageModule_ProvideBluetoothDeviceNameRepositoryFactory;->provideBluetoothDeviceNameRepository(Lcom/stripe/stripeterminal/dagger/StorageModule;Lcom/stripe/jvmcore/storage/SharedPrefs;)Lcom/stripe/stripeterminal/internal/common/storage/BluetoothDeviceNameRepository;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/dagger/StorageModule_ProvideBluetoothDeviceNameRepositoryFactory;->get()Lcom/stripe/stripeterminal/internal/common/storage/BluetoothDeviceNameRepository;

    move-result-object v0

    return-object v0
.end method
