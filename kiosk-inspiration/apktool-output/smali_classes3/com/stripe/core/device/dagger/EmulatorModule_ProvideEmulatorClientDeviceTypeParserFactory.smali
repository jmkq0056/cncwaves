.class public final Lcom/stripe/core/device/dagger/EmulatorModule_ProvideEmulatorClientDeviceTypeParserFactory;
.super Ljava/lang/Object;
.source "EmulatorModule_ProvideEmulatorClientDeviceTypeParserFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/core/device/EmulatorClientDeviceTypeProvider;",
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
    iput-object p1, p0, Lcom/stripe/core/device/dagger/EmulatorModule_ProvideEmulatorClientDeviceTypeParserFactory;->buildValuesProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/stripe/core/device/dagger/EmulatorModule_ProvideEmulatorClientDeviceTypeParserFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/device/BuildValues;",
            ">;)",
            "Lcom/stripe/core/device/dagger/EmulatorModule_ProvideEmulatorClientDeviceTypeParserFactory;"
        }
    .end annotation

    .line 43
    new-instance v0, Lcom/stripe/core/device/dagger/EmulatorModule_ProvideEmulatorClientDeviceTypeParserFactory;

    invoke-direct {v0, p0}, Lcom/stripe/core/device/dagger/EmulatorModule_ProvideEmulatorClientDeviceTypeParserFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideEmulatorClientDeviceTypeParser(Lcom/stripe/core/device/BuildValues;)Lcom/stripe/core/device/EmulatorClientDeviceTypeProvider;
    .locals 1

    .line 48
    sget-object v0, Lcom/stripe/core/device/dagger/EmulatorModule;->INSTANCE:Lcom/stripe/core/device/dagger/EmulatorModule;

    invoke-virtual {v0, p0}, Lcom/stripe/core/device/dagger/EmulatorModule;->provideEmulatorClientDeviceTypeParser(Lcom/stripe/core/device/BuildValues;)Lcom/stripe/core/device/EmulatorClientDeviceTypeProvider;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/core/device/EmulatorClientDeviceTypeProvider;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/core/device/EmulatorClientDeviceTypeProvider;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/stripe/core/device/dagger/EmulatorModule_ProvideEmulatorClientDeviceTypeParserFactory;->buildValuesProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/core/device/BuildValues;

    invoke-static {v0}, Lcom/stripe/core/device/dagger/EmulatorModule_ProvideEmulatorClientDeviceTypeParserFactory;->provideEmulatorClientDeviceTypeParser(Lcom/stripe/core/device/BuildValues;)Lcom/stripe/core/device/EmulatorClientDeviceTypeProvider;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/stripe/core/device/dagger/EmulatorModule_ProvideEmulatorClientDeviceTypeParserFactory;->get()Lcom/stripe/core/device/EmulatorClientDeviceTypeProvider;

    move-result-object v0

    return-object v0
.end method
