.class public final Lcom/stripe/core/device/dagger/BuildValuesModule_ProvideHardwareManufacturer$device_releaseFactory;
.super Ljava/lang/Object;
.source "BuildValuesModule_ProvideHardwareManufacturer$device_releaseFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/core/device/HardwareManufacturer;",
        ">;"
    }
.end annotation


# instance fields
.field private final hardwareManufacturerFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/device/HardwareManufacturerFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/stripe/core/device/dagger/BuildValuesModule;


# direct methods
.method public constructor <init>(Lcom/stripe/core/device/dagger/BuildValuesModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/core/device/dagger/BuildValuesModule;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/device/HardwareManufacturerFactory;",
            ">;)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/stripe/core/device/dagger/BuildValuesModule_ProvideHardwareManufacturer$device_releaseFactory;->module:Lcom/stripe/core/device/dagger/BuildValuesModule;

    .line 37
    iput-object p2, p0, Lcom/stripe/core/device/dagger/BuildValuesModule_ProvideHardwareManufacturer$device_releaseFactory;->hardwareManufacturerFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/stripe/core/device/dagger/BuildValuesModule;Ljavax/inject/Provider;)Lcom/stripe/core/device/dagger/BuildValuesModule_ProvideHardwareManufacturer$device_releaseFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/core/device/dagger/BuildValuesModule;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/device/HardwareManufacturerFactory;",
            ">;)",
            "Lcom/stripe/core/device/dagger/BuildValuesModule_ProvideHardwareManufacturer$device_releaseFactory;"
        }
    .end annotation

    .line 48
    new-instance v0, Lcom/stripe/core/device/dagger/BuildValuesModule_ProvideHardwareManufacturer$device_releaseFactory;

    invoke-direct {v0, p0, p1}, Lcom/stripe/core/device/dagger/BuildValuesModule_ProvideHardwareManufacturer$device_releaseFactory;-><init>(Lcom/stripe/core/device/dagger/BuildValuesModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideHardwareManufacturer$device_release(Lcom/stripe/core/device/dagger/BuildValuesModule;Lcom/stripe/core/device/HardwareManufacturerFactory;)Lcom/stripe/core/device/HardwareManufacturer;
    .locals 0

    .line 53
    invoke-virtual {p0, p1}, Lcom/stripe/core/device/dagger/BuildValuesModule;->provideHardwareManufacturer$device_release(Lcom/stripe/core/device/HardwareManufacturerFactory;)Lcom/stripe/core/device/HardwareManufacturer;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/core/device/HardwareManufacturer;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/core/device/HardwareManufacturer;
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/stripe/core/device/dagger/BuildValuesModule_ProvideHardwareManufacturer$device_releaseFactory;->module:Lcom/stripe/core/device/dagger/BuildValuesModule;

    iget-object v1, p0, Lcom/stripe/core/device/dagger/BuildValuesModule_ProvideHardwareManufacturer$device_releaseFactory;->hardwareManufacturerFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/core/device/HardwareManufacturerFactory;

    invoke-static {v0, v1}, Lcom/stripe/core/device/dagger/BuildValuesModule_ProvideHardwareManufacturer$device_releaseFactory;->provideHardwareManufacturer$device_release(Lcom/stripe/core/device/dagger/BuildValuesModule;Lcom/stripe/core/device/HardwareManufacturerFactory;)Lcom/stripe/core/device/HardwareManufacturer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/stripe/core/device/dagger/BuildValuesModule_ProvideHardwareManufacturer$device_releaseFactory;->get()Lcom/stripe/core/device/HardwareManufacturer;

    move-result-object v0

    return-object v0
.end method
