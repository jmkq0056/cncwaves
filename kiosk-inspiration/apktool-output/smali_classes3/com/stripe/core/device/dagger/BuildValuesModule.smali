.class public final Lcom/stripe/core/device/dagger/BuildValuesModule;
.super Ljava/lang/Object;
.source "BuildValuesModule.kt"


# annotations
.annotation runtime Ldagger/Module;
    includes = {
        Lcom/stripe/core/device/dagger/SdkIntModule;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0007J\u0015\u0010\u000c\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u000eH\u0001\u00a2\u0006\u0002\u0008\u000fJ\r\u0010\u0010\u001a\u00020\u000eH\u0001\u00a2\u0006\u0002\u0008\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/stripe/core/device/dagger/BuildValuesModule;",
        "",
        "()V",
        "provideBuildValues",
        "Lcom/stripe/core/device/BuildValues;",
        "buildValuesFactory",
        "Lcom/stripe/core/device/BuildValuesFactory;",
        "provideBuildValuesFactory",
        "hardwareManufacturer",
        "Lcom/stripe/core/device/HardwareManufacturer;",
        "sdkInt",
        "Lcom/stripe/core/device/SdkInt;",
        "provideHardwareManufacturer",
        "hardwareManufacturerFactory",
        "Lcom/stripe/core/device/HardwareManufacturerFactory;",
        "provideHardwareManufacturer$device_release",
        "provideHardwareManufacturerFactory",
        "provideHardwareManufacturerFactory$device_release",
        "device_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final provideBuildValues(Lcom/stripe/core/device/BuildValuesFactory;)Lcom/stripe/core/device/BuildValues;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ldagger/Reusable;
    .end annotation

    const-string v0, "buildValuesFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-interface {p1}, Lcom/stripe/core/device/BuildValuesFactory;->create()Lcom/stripe/core/device/BuildValues;

    move-result-object p1

    return-object p1
.end method

.method public final provideBuildValuesFactory(Lcom/stripe/core/device/HardwareManufacturer;Lcom/stripe/core/device/SdkInt;)Lcom/stripe/core/device/BuildValuesFactory;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ldagger/Reusable;
    .end annotation

    const-string v0, "hardwareManufacturer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkInt"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    new-instance v0, Lcom/stripe/core/device/DefaultBuildValuesFactory;

    invoke-direct {v0, p1, p2}, Lcom/stripe/core/device/DefaultBuildValuesFactory;-><init>(Lcom/stripe/core/device/HardwareManufacturer;Lcom/stripe/core/device/SdkInt;)V

    check-cast v0, Lcom/stripe/core/device/BuildValuesFactory;

    return-object v0
.end method

.method public final provideHardwareManufacturer$device_release(Lcom/stripe/core/device/HardwareManufacturerFactory;)Lcom/stripe/core/device/HardwareManufacturer;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ldagger/Reusable;
    .end annotation

    const-string v0, "hardwareManufacturerFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-interface {p1}, Lcom/stripe/core/device/HardwareManufacturerFactory;->create()Lcom/stripe/core/device/HardwareManufacturer;

    move-result-object p1

    return-object p1
.end method

.method public final provideHardwareManufacturerFactory$device_release()Lcom/stripe/core/device/HardwareManufacturerFactory;
    .locals 3
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ldagger/Reusable;
    .end annotation

    .line 39
    new-instance v0, Lcom/stripe/core/device/DefaultHardwareManufacturerFactory;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/stripe/core/device/DefaultHardwareManufacturerFactory;-><init>(Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Lcom/stripe/core/device/HardwareManufacturerFactory;

    return-object v0
.end method
