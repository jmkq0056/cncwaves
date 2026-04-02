.class public final Lcom/stripe/core/device/dagger/SdkIntModule_ProvideSdkInt$device_releaseFactory;
.super Ljava/lang/Object;
.source "SdkIntModule_ProvideSdkInt$device_releaseFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/core/device/SdkInt;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/stripe/core/device/dagger/SdkIntModule;


# direct methods
.method public constructor <init>(Lcom/stripe/core/device/dagger/SdkIntModule;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/stripe/core/device/dagger/SdkIntModule_ProvideSdkInt$device_releaseFactory;->module:Lcom/stripe/core/device/dagger/SdkIntModule;

    return-void
.end method

.method public static create(Lcom/stripe/core/device/dagger/SdkIntModule;)Lcom/stripe/core/device/dagger/SdkIntModule_ProvideSdkInt$device_releaseFactory;
    .locals 1

    .line 39
    new-instance v0, Lcom/stripe/core/device/dagger/SdkIntModule_ProvideSdkInt$device_releaseFactory;

    invoke-direct {v0, p0}, Lcom/stripe/core/device/dagger/SdkIntModule_ProvideSdkInt$device_releaseFactory;-><init>(Lcom/stripe/core/device/dagger/SdkIntModule;)V

    return-object v0
.end method

.method public static provideSdkInt$device_release(Lcom/stripe/core/device/dagger/SdkIntModule;)Lcom/stripe/core/device/SdkInt;
    .locals 0

    .line 43
    invoke-virtual {p0}, Lcom/stripe/core/device/dagger/SdkIntModule;->provideSdkInt$device_release()Lcom/stripe/core/device/SdkInt;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/core/device/SdkInt;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/core/device/SdkInt;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/stripe/core/device/dagger/SdkIntModule_ProvideSdkInt$device_releaseFactory;->module:Lcom/stripe/core/device/dagger/SdkIntModule;

    invoke-static {v0}, Lcom/stripe/core/device/dagger/SdkIntModule_ProvideSdkInt$device_releaseFactory;->provideSdkInt$device_release(Lcom/stripe/core/device/dagger/SdkIntModule;)Lcom/stripe/core/device/SdkInt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/stripe/core/device/dagger/SdkIntModule_ProvideSdkInt$device_releaseFactory;->get()Lcom/stripe/core/device/SdkInt;

    move-result-object v0

    return-object v0
.end method
