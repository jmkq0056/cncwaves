.class public final Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule_ProvideDeviceUuidProvider$common_publishFactory;
.super Ljava/lang/Object;
.source "AppInfoModule_ProvideDeviceUuidProvider$common_publishFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/terminal/appinfo/DeviceUuidProvider;",
        ">;"
    }
.end annotation


# instance fields
.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final deviceUuidSharedPrefsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/deviceinfo/DeviceUuidSharedPrefsProvider;",
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

.field private final manufacturerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/device/HardwareManufacturer;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule;

.field private final serialSupplierProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/device/SerialSupplier;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/deviceinfo/DeviceUuidSharedPrefsProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/device/HardwareManufacturer;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/device/SerialSupplier;",
            ">;)V"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule_ProvideDeviceUuidProvider$common_publishFactory;->module:Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule;

    .line 54
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule_ProvideDeviceUuidProvider$common_publishFactory;->deviceUuidSharedPrefsProvider:Ljavax/inject/Provider;

    .line 55
    iput-object p3, p0, Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule_ProvideDeviceUuidProvider$common_publishFactory;->contextProvider:Ljavax/inject/Provider;

    .line 56
    iput-object p4, p0, Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule_ProvideDeviceUuidProvider$common_publishFactory;->ioProvider:Ljavax/inject/Provider;

    .line 57
    iput-object p5, p0, Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule_ProvideDeviceUuidProvider$common_publishFactory;->manufacturerProvider:Ljavax/inject/Provider;

    .line 58
    iput-object p6, p0, Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule_ProvideDeviceUuidProvider$common_publishFactory;->serialSupplierProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule_ProvideDeviceUuidProvider$common_publishFactory;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/deviceinfo/DeviceUuidSharedPrefsProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/device/HardwareManufacturer;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/device/SerialSupplier;",
            ">;)",
            "Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule_ProvideDeviceUuidProvider$common_publishFactory;"
        }
    .end annotation

    .line 71
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule_ProvideDeviceUuidProvider$common_publishFactory;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule_ProvideDeviceUuidProvider$common_publishFactory;-><init>(Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideDeviceUuidProvider$common_publish(Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule;Lcom/stripe/stripeterminal/internal/common/deviceinfo/DeviceUuidSharedPrefsProvider;Landroid/content/Context;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/core/device/HardwareManufacturer;Lcom/stripe/core/device/SerialSupplier;)Lcom/stripe/terminal/appinfo/DeviceUuidProvider;
    .locals 0

    .line 77
    invoke-virtual/range {p0 .. p5}, Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule;->provideDeviceUuidProvider$common_publish(Lcom/stripe/stripeterminal/internal/common/deviceinfo/DeviceUuidSharedPrefsProvider;Landroid/content/Context;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/core/device/HardwareManufacturer;Lcom/stripe/core/device/SerialSupplier;)Lcom/stripe/terminal/appinfo/DeviceUuidProvider;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/terminal/appinfo/DeviceUuidProvider;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/terminal/appinfo/DeviceUuidProvider;
    .locals 6

    .line 63
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule_ProvideDeviceUuidProvider$common_publishFactory;->module:Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule;

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule_ProvideDeviceUuidProvider$common_publishFactory;->deviceUuidSharedPrefsProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/stripeterminal/internal/common/deviceinfo/DeviceUuidSharedPrefsProvider;

    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule_ProvideDeviceUuidProvider$common_publishFactory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    iget-object v3, p0, Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule_ProvideDeviceUuidProvider$common_publishFactory;->ioProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlinx/coroutines/CoroutineDispatcher;

    iget-object v4, p0, Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule_ProvideDeviceUuidProvider$common_publishFactory;->manufacturerProvider:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/stripe/core/device/HardwareManufacturer;

    iget-object v5, p0, Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule_ProvideDeviceUuidProvider$common_publishFactory;->serialSupplierProvider:Ljavax/inject/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/stripe/core/device/SerialSupplier;

    invoke-static/range {v0 .. v5}, Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule_ProvideDeviceUuidProvider$common_publishFactory;->provideDeviceUuidProvider$common_publish(Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule;Lcom/stripe/stripeterminal/internal/common/deviceinfo/DeviceUuidSharedPrefsProvider;Landroid/content/Context;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/core/device/HardwareManufacturer;Lcom/stripe/core/device/SerialSupplier;)Lcom/stripe/terminal/appinfo/DeviceUuidProvider;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule_ProvideDeviceUuidProvider$common_publishFactory;->get()Lcom/stripe/terminal/appinfo/DeviceUuidProvider;

    move-result-object v0

    return-object v0
.end method
