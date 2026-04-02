.class public final Lcom/stripe/core/bbpos/dagger/BbposSdkModule_ProvideDeviceInfoCache$sdk_releaseFactory;
.super Ljava/lang/Object;
.source "BbposSdkModule_ProvideDeviceInfoCache$sdk_releaseFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/core/bbpos/mappers/DeviceInfoCache;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/stripe/core/bbpos/dagger/BbposSdkModule;


# direct methods
.method public constructor <init>(Lcom/stripe/core/bbpos/dagger/BbposSdkModule;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/stripe/core/bbpos/dagger/BbposSdkModule_ProvideDeviceInfoCache$sdk_releaseFactory;->module:Lcom/stripe/core/bbpos/dagger/BbposSdkModule;

    return-void
.end method

.method public static create(Lcom/stripe/core/bbpos/dagger/BbposSdkModule;)Lcom/stripe/core/bbpos/dagger/BbposSdkModule_ProvideDeviceInfoCache$sdk_releaseFactory;
    .locals 1

    .line 40
    new-instance v0, Lcom/stripe/core/bbpos/dagger/BbposSdkModule_ProvideDeviceInfoCache$sdk_releaseFactory;

    invoke-direct {v0, p0}, Lcom/stripe/core/bbpos/dagger/BbposSdkModule_ProvideDeviceInfoCache$sdk_releaseFactory;-><init>(Lcom/stripe/core/bbpos/dagger/BbposSdkModule;)V

    return-object v0
.end method

.method public static provideDeviceInfoCache$sdk_release(Lcom/stripe/core/bbpos/dagger/BbposSdkModule;)Lcom/stripe/core/bbpos/mappers/DeviceInfoCache;
    .locals 0

    .line 44
    invoke-virtual {p0}, Lcom/stripe/core/bbpos/dagger/BbposSdkModule;->provideDeviceInfoCache$sdk_release()Lcom/stripe/core/bbpos/mappers/DeviceInfoCache;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/core/bbpos/mappers/DeviceInfoCache;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/core/bbpos/mappers/DeviceInfoCache;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/stripe/core/bbpos/dagger/BbposSdkModule_ProvideDeviceInfoCache$sdk_releaseFactory;->module:Lcom/stripe/core/bbpos/dagger/BbposSdkModule;

    invoke-static {v0}, Lcom/stripe/core/bbpos/dagger/BbposSdkModule_ProvideDeviceInfoCache$sdk_releaseFactory;->provideDeviceInfoCache$sdk_release(Lcom/stripe/core/bbpos/dagger/BbposSdkModule;)Lcom/stripe/core/bbpos/mappers/DeviceInfoCache;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/stripe/core/bbpos/dagger/BbposSdkModule_ProvideDeviceInfoCache$sdk_releaseFactory;->get()Lcom/stripe/core/bbpos/mappers/DeviceInfoCache;

    move-result-object v0

    return-object v0
.end method
