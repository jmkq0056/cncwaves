.class public final Lcom/stripe/stripeterminal/internal/common/dagger/DeviceTypeModule_ProvideClientDeviceTypeFactory;
.super Ljava/lang/Object;
.source "DeviceTypeModule_ProvideClientDeviceTypeFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/core/device/ClientDeviceType;",
        ">;"
    }
.end annotation


# instance fields
.field private final clientDeviceTypeProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/device/ClientDeviceTypeProvider;",
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
            "Lcom/stripe/core/device/ClientDeviceTypeProvider;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/dagger/DeviceTypeModule_ProvideClientDeviceTypeFactory;->clientDeviceTypeProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/internal/common/dagger/DeviceTypeModule_ProvideClientDeviceTypeFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/device/ClientDeviceTypeProvider;",
            ">;)",
            "Lcom/stripe/stripeterminal/internal/common/dagger/DeviceTypeModule_ProvideClientDeviceTypeFactory;"
        }
    .end annotation

    .line 43
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/dagger/DeviceTypeModule_ProvideClientDeviceTypeFactory;

    invoke-direct {v0, p0}, Lcom/stripe/stripeterminal/internal/common/dagger/DeviceTypeModule_ProvideClientDeviceTypeFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideClientDeviceType(Lcom/stripe/core/device/ClientDeviceTypeProvider;)Lcom/stripe/core/device/ClientDeviceType;
    .locals 1

    .line 48
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/dagger/DeviceTypeModule;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/dagger/DeviceTypeModule;

    invoke-virtual {v0, p0}, Lcom/stripe/stripeterminal/internal/common/dagger/DeviceTypeModule;->provideClientDeviceType(Lcom/stripe/core/device/ClientDeviceTypeProvider;)Lcom/stripe/core/device/ClientDeviceType;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/core/device/ClientDeviceType;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/core/device/ClientDeviceType;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/dagger/DeviceTypeModule_ProvideClientDeviceTypeFactory;->clientDeviceTypeProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/core/device/ClientDeviceTypeProvider;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/dagger/DeviceTypeModule_ProvideClientDeviceTypeFactory;->provideClientDeviceType(Lcom/stripe/core/device/ClientDeviceTypeProvider;)Lcom/stripe/core/device/ClientDeviceType;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/dagger/DeviceTypeModule_ProvideClientDeviceTypeFactory;->get()Lcom/stripe/core/device/ClientDeviceType;

    move-result-object v0

    return-object v0
.end method
