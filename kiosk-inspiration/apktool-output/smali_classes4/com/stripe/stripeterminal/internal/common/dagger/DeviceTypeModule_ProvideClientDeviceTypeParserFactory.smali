.class public final Lcom/stripe/stripeterminal/internal/common/dagger/DeviceTypeModule_ProvideClientDeviceTypeParserFactory;
.super Ljava/lang/Object;
.source "DeviceTypeModule_ProvideClientDeviceTypeParserFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/core/device/ClientDeviceTypeProvider;",
        ">;"
    }
.end annotation


# instance fields
.field private final bbposClientDeviceTypeParserProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/device/BbposClientDeviceTypeProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final buildValuesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/device/BuildValues;",
            ">;"
        }
    .end annotation
.end field

.field private final emulatorClientDeviceTypeParserProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/device/EmulatorClientDeviceTypeProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final verifoneClientDeviceTypeParserProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/device/VerifoneClientDeviceTypeProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/device/BuildValues;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/device/EmulatorClientDeviceTypeProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/device/BbposClientDeviceTypeProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/device/VerifoneClientDeviceTypeProvider;",
            ">;)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/dagger/DeviceTypeModule_ProvideClientDeviceTypeParserFactory;->buildValuesProvider:Ljavax/inject/Provider;

    .line 46
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/dagger/DeviceTypeModule_ProvideClientDeviceTypeParserFactory;->emulatorClientDeviceTypeParserProvider:Ljavax/inject/Provider;

    .line 47
    iput-object p3, p0, Lcom/stripe/stripeterminal/internal/common/dagger/DeviceTypeModule_ProvideClientDeviceTypeParserFactory;->bbposClientDeviceTypeParserProvider:Ljavax/inject/Provider;

    .line 48
    iput-object p4, p0, Lcom/stripe/stripeterminal/internal/common/dagger/DeviceTypeModule_ProvideClientDeviceTypeParserFactory;->verifoneClientDeviceTypeParserProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/internal/common/dagger/DeviceTypeModule_ProvideClientDeviceTypeParserFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/device/BuildValues;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/device/EmulatorClientDeviceTypeProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/device/BbposClientDeviceTypeProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/device/VerifoneClientDeviceTypeProvider;",
            ">;)",
            "Lcom/stripe/stripeterminal/internal/common/dagger/DeviceTypeModule_ProvideClientDeviceTypeParserFactory;"
        }
    .end annotation

    .line 61
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/dagger/DeviceTypeModule_ProvideClientDeviceTypeParserFactory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/stripe/stripeterminal/internal/common/dagger/DeviceTypeModule_ProvideClientDeviceTypeParserFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideClientDeviceTypeParser(Lcom/stripe/core/device/BuildValues;Lcom/stripe/core/device/EmulatorClientDeviceTypeProvider;Lcom/stripe/core/device/BbposClientDeviceTypeProvider;Lcom/stripe/core/device/VerifoneClientDeviceTypeProvider;)Lcom/stripe/core/device/ClientDeviceTypeProvider;
    .locals 1

    .line 68
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/dagger/DeviceTypeModule;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/dagger/DeviceTypeModule;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/stripe/stripeterminal/internal/common/dagger/DeviceTypeModule;->provideClientDeviceTypeParser(Lcom/stripe/core/device/BuildValues;Lcom/stripe/core/device/EmulatorClientDeviceTypeProvider;Lcom/stripe/core/device/BbposClientDeviceTypeProvider;Lcom/stripe/core/device/VerifoneClientDeviceTypeProvider;)Lcom/stripe/core/device/ClientDeviceTypeProvider;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/core/device/ClientDeviceTypeProvider;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/core/device/ClientDeviceTypeProvider;
    .locals 4

    .line 53
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/dagger/DeviceTypeModule_ProvideClientDeviceTypeParserFactory;->buildValuesProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/core/device/BuildValues;

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/dagger/DeviceTypeModule_ProvideClientDeviceTypeParserFactory;->emulatorClientDeviceTypeParserProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/core/device/EmulatorClientDeviceTypeProvider;

    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/dagger/DeviceTypeModule_ProvideClientDeviceTypeParserFactory;->bbposClientDeviceTypeParserProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/core/device/BbposClientDeviceTypeProvider;

    iget-object v3, p0, Lcom/stripe/stripeterminal/internal/common/dagger/DeviceTypeModule_ProvideClientDeviceTypeParserFactory;->verifoneClientDeviceTypeParserProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/stripe/core/device/VerifoneClientDeviceTypeProvider;

    invoke-static {v0, v1, v2, v3}, Lcom/stripe/stripeterminal/internal/common/dagger/DeviceTypeModule_ProvideClientDeviceTypeParserFactory;->provideClientDeviceTypeParser(Lcom/stripe/core/device/BuildValues;Lcom/stripe/core/device/EmulatorClientDeviceTypeProvider;Lcom/stripe/core/device/BbposClientDeviceTypeProvider;Lcom/stripe/core/device/VerifoneClientDeviceTypeProvider;)Lcom/stripe/core/device/ClientDeviceTypeProvider;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 16
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/dagger/DeviceTypeModule_ProvideClientDeviceTypeParserFactory;->get()Lcom/stripe/core/device/ClientDeviceTypeProvider;

    move-result-object v0

    return-object v0
.end method
