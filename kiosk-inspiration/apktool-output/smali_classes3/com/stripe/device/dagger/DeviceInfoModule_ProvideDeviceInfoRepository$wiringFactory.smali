.class public final Lcom/stripe/device/dagger/DeviceInfoModule_ProvideDeviceInfoRepository$wiringFactory;
.super Ljava/lang/Object;
.source "DeviceInfoModule_ProvideDeviceInfoRepository$wiringFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/device/DeviceInfoRepository;",
        ">;"
    }
.end annotation


# instance fields
.field private final platformDeviceInfoProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/device/PlatformDeviceInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/device/PlatformDeviceInfo;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/stripe/device/dagger/DeviceInfoModule_ProvideDeviceInfoRepository$wiringFactory;->platformDeviceInfoProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/stripe/device/dagger/DeviceInfoModule_ProvideDeviceInfoRepository$wiringFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/device/PlatformDeviceInfo;",
            ">;)",
            "Lcom/stripe/device/dagger/DeviceInfoModule_ProvideDeviceInfoRepository$wiringFactory;"
        }
    .end annotation

    .line 43
    new-instance v0, Lcom/stripe/device/dagger/DeviceInfoModule_ProvideDeviceInfoRepository$wiringFactory;

    invoke-direct {v0, p0}, Lcom/stripe/device/dagger/DeviceInfoModule_ProvideDeviceInfoRepository$wiringFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideDeviceInfoRepository$wiring(Ljavax/inject/Provider;)Lcom/stripe/device/DeviceInfoRepository;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/device/PlatformDeviceInfo;",
            ">;)",
            "Lcom/stripe/device/DeviceInfoRepository;"
        }
    .end annotation

    .line 48
    sget-object v0, Lcom/stripe/device/dagger/DeviceInfoModule;->INSTANCE:Lcom/stripe/device/dagger/DeviceInfoModule;

    invoke-virtual {v0, p0}, Lcom/stripe/device/dagger/DeviceInfoModule;->provideDeviceInfoRepository$wiring(Ljavax/inject/Provider;)Lcom/stripe/device/DeviceInfoRepository;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/device/DeviceInfoRepository;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/device/DeviceInfoRepository;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/stripe/device/dagger/DeviceInfoModule_ProvideDeviceInfoRepository$wiringFactory;->platformDeviceInfoProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Lcom/stripe/device/dagger/DeviceInfoModule_ProvideDeviceInfoRepository$wiringFactory;->provideDeviceInfoRepository$wiring(Ljavax/inject/Provider;)Lcom/stripe/device/DeviceInfoRepository;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/stripe/device/dagger/DeviceInfoModule_ProvideDeviceInfoRepository$wiringFactory;->get()Lcom/stripe/device/DeviceInfoRepository;

    move-result-object v0

    return-object v0
.end method
