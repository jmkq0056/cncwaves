.class public final Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvidesObservabilityHandlerFactory;
.super Ljava/lang/Object;
.source "MposAdaptersModule_ProvidesObservabilityHandlerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvidesObservabilityHandlerFactory$InstanceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvidesObservabilityHandlerFactory;
    .locals 1

    .line 33
    invoke-static {}, Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvidesObservabilityHandlerFactory$InstanceHolder;->access$000()Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvidesObservabilityHandlerFactory;

    move-result-object v0

    return-object v0
.end method

.method public static providesObservabilityHandler()Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;
    .locals 1

    .line 37
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule;->providesObservabilityHandler()Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;
    .locals 1

    .line 29
    invoke-static {}, Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvidesObservabilityHandlerFactory;->providesObservabilityHandler()Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvidesObservabilityHandlerFactory;->get()Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;

    move-result-object v0

    return-object v0
.end method
