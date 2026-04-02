.class public final Lcom/stripe/core/device/dagger/BuildValuesModule_ProvideHardwareManufacturerFactory$device_releaseFactory;
.super Ljava/lang/Object;
.source "BuildValuesModule_ProvideHardwareManufacturerFactory$device_releaseFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/core/device/HardwareManufacturerFactory;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/stripe/core/device/dagger/BuildValuesModule;


# direct methods
.method public constructor <init>(Lcom/stripe/core/device/dagger/BuildValuesModule;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/stripe/core/device/dagger/BuildValuesModule_ProvideHardwareManufacturerFactory$device_releaseFactory;->module:Lcom/stripe/core/device/dagger/BuildValuesModule;

    return-void
.end method

.method public static create(Lcom/stripe/core/device/dagger/BuildValuesModule;)Lcom/stripe/core/device/dagger/BuildValuesModule_ProvideHardwareManufacturerFactory$device_releaseFactory;
    .locals 1

    .line 41
    new-instance v0, Lcom/stripe/core/device/dagger/BuildValuesModule_ProvideHardwareManufacturerFactory$device_releaseFactory;

    invoke-direct {v0, p0}, Lcom/stripe/core/device/dagger/BuildValuesModule_ProvideHardwareManufacturerFactory$device_releaseFactory;-><init>(Lcom/stripe/core/device/dagger/BuildValuesModule;)V

    return-object v0
.end method

.method public static provideHardwareManufacturerFactory$device_release(Lcom/stripe/core/device/dagger/BuildValuesModule;)Lcom/stripe/core/device/HardwareManufacturerFactory;
    .locals 0

    .line 46
    invoke-virtual {p0}, Lcom/stripe/core/device/dagger/BuildValuesModule;->provideHardwareManufacturerFactory$device_release()Lcom/stripe/core/device/HardwareManufacturerFactory;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/core/device/HardwareManufacturerFactory;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/core/device/HardwareManufacturerFactory;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/stripe/core/device/dagger/BuildValuesModule_ProvideHardwareManufacturerFactory$device_releaseFactory;->module:Lcom/stripe/core/device/dagger/BuildValuesModule;

    invoke-static {v0}, Lcom/stripe/core/device/dagger/BuildValuesModule_ProvideHardwareManufacturerFactory$device_releaseFactory;->provideHardwareManufacturerFactory$device_release(Lcom/stripe/core/device/dagger/BuildValuesModule;)Lcom/stripe/core/device/HardwareManufacturerFactory;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/stripe/core/device/dagger/BuildValuesModule_ProvideHardwareManufacturerFactory$device_releaseFactory;->get()Lcom/stripe/core/device/HardwareManufacturerFactory;

    move-result-object v0

    return-object v0
.end method
