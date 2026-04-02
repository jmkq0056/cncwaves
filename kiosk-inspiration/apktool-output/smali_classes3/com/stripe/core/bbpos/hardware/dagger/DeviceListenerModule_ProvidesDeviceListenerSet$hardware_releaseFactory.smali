.class public final Lcom/stripe/core/bbpos/hardware/dagger/DeviceListenerModule_ProvidesDeviceListenerSet$hardware_releaseFactory;
.super Ljava/lang/Object;
.source "DeviceListenerModule_ProvidesDeviceListenerSet$hardware_releaseFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/core/bbpos/hardware/dagger/DeviceListenerModule_ProvidesDeviceListenerSet$hardware_releaseFactory$InstanceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Ljava/util/Set<",
        "Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/stripe/core/bbpos/hardware/dagger/DeviceListenerModule_ProvidesDeviceListenerSet$hardware_releaseFactory;
    .locals 1

    .line 34
    invoke-static {}, Lcom/stripe/core/bbpos/hardware/dagger/DeviceListenerModule_ProvidesDeviceListenerSet$hardware_releaseFactory$InstanceHolder;->access$000()Lcom/stripe/core/bbpos/hardware/dagger/DeviceListenerModule_ProvidesDeviceListenerSet$hardware_releaseFactory;

    move-result-object v0

    return-object v0
.end method

.method public static providesDeviceListenerSet$hardware_release()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;",
            ">;"
        }
    .end annotation

    .line 38
    sget-object v0, Lcom/stripe/core/bbpos/hardware/dagger/DeviceListenerModule;->INSTANCE:Lcom/stripe/core/bbpos/hardware/dagger/DeviceListenerModule;

    invoke-virtual {v0}, Lcom/stripe/core/bbpos/hardware/dagger/DeviceListenerModule;->providesDeviceListenerSet$hardware_release()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/stripe/core/bbpos/hardware/dagger/DeviceListenerModule_ProvidesDeviceListenerSet$hardware_releaseFactory;->get()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;",
            ">;"
        }
    .end annotation

    .line 30
    invoke-static {}, Lcom/stripe/core/bbpos/hardware/dagger/DeviceListenerModule_ProvidesDeviceListenerSet$hardware_releaseFactory;->providesDeviceListenerSet$hardware_release()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
