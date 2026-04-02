.class public abstract Lcom/stripe/core/bbpos/hardware/dagger/DeviceListenerModule$Bindings;
.super Ljava/lang/Object;
.source "DeviceListenerModule.kt"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/core/bbpos/hardware/dagger/DeviceListenerModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Bindings"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\'\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0015\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H!\u00a2\u0006\u0002\u0008\u0007J\u0015\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u0006H!\u00a2\u0006\u0002\u0008\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/stripe/core/bbpos/hardware/dagger/DeviceListenerModule$Bindings;",
        "",
        "()V",
        "bindRegistryAsMainWrapper",
        "Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;",
        "registry",
        "Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl;",
        "bindRegistryAsMainWrapper$hardware_release",
        "bindRegistryAsRegistry",
        "Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistry;",
        "bindRegistryAsRegistry$hardware_release",
        "hardware_release"
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

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract bindRegistryAsMainWrapper$hardware_release(Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl;)Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;
    .annotation runtime Ldagger/Binds;
    .end annotation
.end method

.method public abstract bindRegistryAsRegistry$hardware_release(Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl;)Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistry;
    .annotation runtime Ldagger/Binds;
    .end annotation
.end method
