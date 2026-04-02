.class public final Lcom/stripe/core/device/dagger/BbposModule_ProvideBbposClientDeviceTypeParserFactory;
.super Ljava/lang/Object;
.source "BbposModule_ProvideBbposClientDeviceTypeParserFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/core/device/BbposClientDeviceTypeProvider;",
        ">;"
    }
.end annotation


# instance fields
.field private final buildValuesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/device/BuildValues;",
            ">;"
        }
    .end annotation
.end field

.field private final serialSupplierProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/device/SerialSupplier;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/device/SerialSupplier;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/device/BuildValues;",
            ">;)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/stripe/core/device/dagger/BbposModule_ProvideBbposClientDeviceTypeParserFactory;->serialSupplierProvider:Ljavax/inject/Provider;

    .line 37
    iput-object p2, p0, Lcom/stripe/core/device/dagger/BbposModule_ProvideBbposClientDeviceTypeParserFactory;->buildValuesProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/core/device/dagger/BbposModule_ProvideBbposClientDeviceTypeParserFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/device/SerialSupplier;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/device/BuildValues;",
            ">;)",
            "Lcom/stripe/core/device/dagger/BbposModule_ProvideBbposClientDeviceTypeParserFactory;"
        }
    .end annotation

    .line 47
    new-instance v0, Lcom/stripe/core/device/dagger/BbposModule_ProvideBbposClientDeviceTypeParserFactory;

    invoke-direct {v0, p0, p1}, Lcom/stripe/core/device/dagger/BbposModule_ProvideBbposClientDeviceTypeParserFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideBbposClientDeviceTypeParser(Lcom/stripe/core/device/SerialSupplier;Lcom/stripe/core/device/BuildValues;)Lcom/stripe/core/device/BbposClientDeviceTypeProvider;
    .locals 1

    .line 52
    sget-object v0, Lcom/stripe/core/device/dagger/BbposModule;->INSTANCE:Lcom/stripe/core/device/dagger/BbposModule;

    invoke-virtual {v0, p0, p1}, Lcom/stripe/core/device/dagger/BbposModule;->provideBbposClientDeviceTypeParser(Lcom/stripe/core/device/SerialSupplier;Lcom/stripe/core/device/BuildValues;)Lcom/stripe/core/device/BbposClientDeviceTypeProvider;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/core/device/BbposClientDeviceTypeProvider;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/core/device/BbposClientDeviceTypeProvider;
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/stripe/core/device/dagger/BbposModule_ProvideBbposClientDeviceTypeParserFactory;->serialSupplierProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/core/device/SerialSupplier;

    iget-object v1, p0, Lcom/stripe/core/device/dagger/BbposModule_ProvideBbposClientDeviceTypeParserFactory;->buildValuesProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/core/device/BuildValues;

    invoke-static {v0, v1}, Lcom/stripe/core/device/dagger/BbposModule_ProvideBbposClientDeviceTypeParserFactory;->provideBbposClientDeviceTypeParser(Lcom/stripe/core/device/SerialSupplier;Lcom/stripe/core/device/BuildValues;)Lcom/stripe/core/device/BbposClientDeviceTypeProvider;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/stripe/core/device/dagger/BbposModule_ProvideBbposClientDeviceTypeParserFactory;->get()Lcom/stripe/core/device/BbposClientDeviceTypeProvider;

    move-result-object v0

    return-object v0
.end method
