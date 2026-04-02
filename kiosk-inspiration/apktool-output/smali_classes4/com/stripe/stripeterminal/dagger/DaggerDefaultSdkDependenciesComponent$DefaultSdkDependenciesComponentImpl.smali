.class final Lcom/stripe/stripeterminal/dagger/DaggerDefaultSdkDependenciesComponent$DefaultSdkDependenciesComponentImpl;
.super Ljava/lang/Object;
.source "DaggerDefaultSdkDependenciesComponent.java"

# interfaces
.implements Lcom/stripe/stripeterminal/dagger/DefaultSdkDependenciesComponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/dagger/DaggerDefaultSdkDependenciesComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DefaultSdkDependenciesComponentImpl"
.end annotation


# instance fields
.field private final defaultSdkDependenciesComponentImpl:Lcom/stripe/stripeterminal/dagger/DaggerDefaultSdkDependenciesComponent$DefaultSdkDependenciesComponentImpl;

.field private provideBuildValuesFactoryProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/core/device/BuildValuesFactory;",
            ">;"
        }
    .end annotation
.end field

.field private provideBuildValuesProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/core/device/BuildValues;",
            ">;"
        }
    .end annotation
.end field

.field private provideHardwareManufacturer$device_releaseProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/core/device/HardwareManufacturer;",
            ">;"
        }
    .end annotation
.end field

.field private provideHardwareManufacturerFactory$device_releaseProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/core/device/HardwareManufacturerFactory;",
            ">;"
        }
    .end annotation
.end field

.field private provideSdkInt$device_releaseProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/core/device/SdkInt;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/stripe/core/device/dagger/BuildValuesModule;Lcom/stripe/core/device/dagger/SdkIntModule;)V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p0, p0, Lcom/stripe/stripeterminal/dagger/DaggerDefaultSdkDependenciesComponent$DefaultSdkDependenciesComponentImpl;->defaultSdkDependenciesComponentImpl:Lcom/stripe/stripeterminal/dagger/DaggerDefaultSdkDependenciesComponent$DefaultSdkDependenciesComponentImpl;

    .line 94
    invoke-direct {p0, p1, p2}, Lcom/stripe/stripeterminal/dagger/DaggerDefaultSdkDependenciesComponent$DefaultSdkDependenciesComponentImpl;->initialize(Lcom/stripe/core/device/dagger/BuildValuesModule;Lcom/stripe/core/device/dagger/SdkIntModule;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/stripe/core/device/dagger/BuildValuesModule;Lcom/stripe/core/device/dagger/SdkIntModule;Lcom/stripe/stripeterminal/dagger/DaggerDefaultSdkDependenciesComponent$1;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/stripe/stripeterminal/dagger/DaggerDefaultSdkDependenciesComponent$DefaultSdkDependenciesComponentImpl;-><init>(Lcom/stripe/core/device/dagger/BuildValuesModule;Lcom/stripe/core/device/dagger/SdkIntModule;)V

    return-void
.end method

.method private initialize(Lcom/stripe/core/device/dagger/BuildValuesModule;Lcom/stripe/core/device/dagger/SdkIntModule;)V
    .locals 1

    .line 101
    invoke-static {p1}, Lcom/stripe/core/device/dagger/BuildValuesModule_ProvideHardwareManufacturerFactory$device_releaseFactory;->create(Lcom/stripe/core/device/dagger/BuildValuesModule;)Lcom/stripe/core/device/dagger/BuildValuesModule_ProvideHardwareManufacturerFactory$device_releaseFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/SingleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/stripeterminal/dagger/DaggerDefaultSdkDependenciesComponent$DefaultSdkDependenciesComponentImpl;->provideHardwareManufacturerFactory$device_releaseProvider:Ldagger/internal/Provider;

    .line 102
    invoke-static {p1, v0}, Lcom/stripe/core/device/dagger/BuildValuesModule_ProvideHardwareManufacturer$device_releaseFactory;->create(Lcom/stripe/core/device/dagger/BuildValuesModule;Ljavax/inject/Provider;)Lcom/stripe/core/device/dagger/BuildValuesModule_ProvideHardwareManufacturer$device_releaseFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/SingleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/stripeterminal/dagger/DaggerDefaultSdkDependenciesComponent$DefaultSdkDependenciesComponentImpl;->provideHardwareManufacturer$device_releaseProvider:Ldagger/internal/Provider;

    .line 103
    invoke-static {p2}, Lcom/stripe/core/device/dagger/SdkIntModule_ProvideSdkInt$device_releaseFactory;->create(Lcom/stripe/core/device/dagger/SdkIntModule;)Lcom/stripe/core/device/dagger/SdkIntModule_ProvideSdkInt$device_releaseFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/SingleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/stripe/stripeterminal/dagger/DaggerDefaultSdkDependenciesComponent$DefaultSdkDependenciesComponentImpl;->provideSdkInt$device_releaseProvider:Ldagger/internal/Provider;

    .line 104
    iget-object v0, p0, Lcom/stripe/stripeterminal/dagger/DaggerDefaultSdkDependenciesComponent$DefaultSdkDependenciesComponentImpl;->provideHardwareManufacturer$device_releaseProvider:Ldagger/internal/Provider;

    invoke-static {p1, v0, p2}, Lcom/stripe/core/device/dagger/BuildValuesModule_ProvideBuildValuesFactoryFactory;->create(Lcom/stripe/core/device/dagger/BuildValuesModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/core/device/dagger/BuildValuesModule_ProvideBuildValuesFactoryFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/SingleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/stripe/stripeterminal/dagger/DaggerDefaultSdkDependenciesComponent$DefaultSdkDependenciesComponentImpl;->provideBuildValuesFactoryProvider:Ldagger/internal/Provider;

    .line 105
    invoke-static {p1, p2}, Lcom/stripe/core/device/dagger/BuildValuesModule_ProvideBuildValuesFactory;->create(Lcom/stripe/core/device/dagger/BuildValuesModule;Ljavax/inject/Provider;)Lcom/stripe/core/device/dagger/BuildValuesModule_ProvideBuildValuesFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/SingleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/dagger/DaggerDefaultSdkDependenciesComponent$DefaultSdkDependenciesComponentImpl;->provideBuildValuesProvider:Ldagger/internal/Provider;

    return-void
.end method


# virtual methods
.method public getEmbeddedAdapter()Lcom/stripe/stripeterminal/internal/common/Adapter;
    .locals 1

    .line 115
    sget-object v0, Lcom/stripe/stripeterminal/dagger/NoEmbeddedAdapterModule;->INSTANCE:Lcom/stripe/stripeterminal/dagger/NoEmbeddedAdapterModule;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/dagger/NoEmbeddedAdapterModule;->provideNoEmbeddedAdapter()Lcom/stripe/stripeterminal/internal/common/Adapter;

    move-result-object v0

    return-object v0
.end method

.method public getSerialSupplier()Lcom/stripe/core/device/SerialSupplier;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/stripe/stripeterminal/dagger/DaggerDefaultSdkDependenciesComponent$DefaultSdkDependenciesComponentImpl;->provideBuildValuesProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/core/device/BuildValues;

    invoke-static {v0}, Lcom/stripe/core/device/dagger/DefaultSerialSupplierModule_ProvideSerialSupplierFactory;->provideSerialSupplier(Lcom/stripe/core/device/BuildValues;)Lcom/stripe/core/device/SerialSupplier;

    move-result-object v0

    return-object v0
.end method
