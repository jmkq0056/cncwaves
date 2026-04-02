.class public final Lcom/stripe/core/device/dagger/BuildValuesModule_ProvideBuildValuesFactoryFactory;
.super Ljava/lang/Object;
.source "BuildValuesModule_ProvideBuildValuesFactoryFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/core/device/BuildValuesFactory;",
        ">;"
    }
.end annotation


# instance fields
.field private final hardwareManufacturerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/device/HardwareManufacturer;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/stripe/core/device/dagger/BuildValuesModule;

.field private final sdkIntProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/device/SdkInt;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/stripe/core/device/dagger/BuildValuesModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/core/device/dagger/BuildValuesModule;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/device/HardwareManufacturer;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/device/SdkInt;",
            ">;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/stripe/core/device/dagger/BuildValuesModule_ProvideBuildValuesFactoryFactory;->module:Lcom/stripe/core/device/dagger/BuildValuesModule;

    .line 40
    iput-object p2, p0, Lcom/stripe/core/device/dagger/BuildValuesModule_ProvideBuildValuesFactoryFactory;->hardwareManufacturerProvider:Ljavax/inject/Provider;

    .line 41
    iput-object p3, p0, Lcom/stripe/core/device/dagger/BuildValuesModule_ProvideBuildValuesFactoryFactory;->sdkIntProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/stripe/core/device/dagger/BuildValuesModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/core/device/dagger/BuildValuesModule_ProvideBuildValuesFactoryFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/core/device/dagger/BuildValuesModule;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/device/HardwareManufacturer;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/device/SdkInt;",
            ">;)",
            "Lcom/stripe/core/device/dagger/BuildValuesModule_ProvideBuildValuesFactoryFactory;"
        }
    .end annotation

    .line 52
    new-instance v0, Lcom/stripe/core/device/dagger/BuildValuesModule_ProvideBuildValuesFactoryFactory;

    invoke-direct {v0, p0, p1, p2}, Lcom/stripe/core/device/dagger/BuildValuesModule_ProvideBuildValuesFactoryFactory;-><init>(Lcom/stripe/core/device/dagger/BuildValuesModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideBuildValuesFactory(Lcom/stripe/core/device/dagger/BuildValuesModule;Lcom/stripe/core/device/HardwareManufacturer;Lcom/stripe/core/device/SdkInt;)Lcom/stripe/core/device/BuildValuesFactory;
    .locals 0

    .line 57
    invoke-virtual {p0, p1, p2}, Lcom/stripe/core/device/dagger/BuildValuesModule;->provideBuildValuesFactory(Lcom/stripe/core/device/HardwareManufacturer;Lcom/stripe/core/device/SdkInt;)Lcom/stripe/core/device/BuildValuesFactory;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/core/device/BuildValuesFactory;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/core/device/BuildValuesFactory;
    .locals 3

    .line 46
    iget-object v0, p0, Lcom/stripe/core/device/dagger/BuildValuesModule_ProvideBuildValuesFactoryFactory;->module:Lcom/stripe/core/device/dagger/BuildValuesModule;

    iget-object v1, p0, Lcom/stripe/core/device/dagger/BuildValuesModule_ProvideBuildValuesFactoryFactory;->hardwareManufacturerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/core/device/HardwareManufacturer;

    iget-object v2, p0, Lcom/stripe/core/device/dagger/BuildValuesModule_ProvideBuildValuesFactoryFactory;->sdkIntProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/core/device/SdkInt;

    invoke-static {v0, v1, v2}, Lcom/stripe/core/device/dagger/BuildValuesModule_ProvideBuildValuesFactoryFactory;->provideBuildValuesFactory(Lcom/stripe/core/device/dagger/BuildValuesModule;Lcom/stripe/core/device/HardwareManufacturer;Lcom/stripe/core/device/SdkInt;)Lcom/stripe/core/device/BuildValuesFactory;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/stripe/core/device/dagger/BuildValuesModule_ProvideBuildValuesFactoryFactory;->get()Lcom/stripe/core/device/BuildValuesFactory;

    move-result-object v0

    return-object v0
.end method
