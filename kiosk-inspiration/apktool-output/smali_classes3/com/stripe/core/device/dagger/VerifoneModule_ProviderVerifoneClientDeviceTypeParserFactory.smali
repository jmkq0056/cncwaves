.class public final Lcom/stripe/core/device/dagger/VerifoneModule_ProviderVerifoneClientDeviceTypeParserFactory;
.super Ljava/lang/Object;
.source "VerifoneModule_ProviderVerifoneClientDeviceTypeParserFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/core/device/VerifoneClientDeviceTypeProvider;",
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


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/device/BuildValues;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/stripe/core/device/dagger/VerifoneModule_ProviderVerifoneClientDeviceTypeParserFactory;->buildValuesProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/stripe/core/device/dagger/VerifoneModule_ProviderVerifoneClientDeviceTypeParserFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/device/BuildValues;",
            ">;)",
            "Lcom/stripe/core/device/dagger/VerifoneModule_ProviderVerifoneClientDeviceTypeParserFactory;"
        }
    .end annotation

    .line 43
    new-instance v0, Lcom/stripe/core/device/dagger/VerifoneModule_ProviderVerifoneClientDeviceTypeParserFactory;

    invoke-direct {v0, p0}, Lcom/stripe/core/device/dagger/VerifoneModule_ProviderVerifoneClientDeviceTypeParserFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static providerVerifoneClientDeviceTypeParser(Lcom/stripe/core/device/BuildValues;)Lcom/stripe/core/device/VerifoneClientDeviceTypeProvider;
    .locals 1

    .line 48
    sget-object v0, Lcom/stripe/core/device/dagger/VerifoneModule;->INSTANCE:Lcom/stripe/core/device/dagger/VerifoneModule;

    invoke-virtual {v0, p0}, Lcom/stripe/core/device/dagger/VerifoneModule;->providerVerifoneClientDeviceTypeParser(Lcom/stripe/core/device/BuildValues;)Lcom/stripe/core/device/VerifoneClientDeviceTypeProvider;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/core/device/VerifoneClientDeviceTypeProvider;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/core/device/VerifoneClientDeviceTypeProvider;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/stripe/core/device/dagger/VerifoneModule_ProviderVerifoneClientDeviceTypeParserFactory;->buildValuesProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/core/device/BuildValues;

    invoke-static {v0}, Lcom/stripe/core/device/dagger/VerifoneModule_ProviderVerifoneClientDeviceTypeParserFactory;->providerVerifoneClientDeviceTypeParser(Lcom/stripe/core/device/BuildValues;)Lcom/stripe/core/device/VerifoneClientDeviceTypeProvider;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/stripe/core/device/dagger/VerifoneModule_ProviderVerifoneClientDeviceTypeParserFactory;->get()Lcom/stripe/core/device/VerifoneClientDeviceTypeProvider;

    move-result-object v0

    return-object v0
.end method
