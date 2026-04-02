.class public final Lcom/stripe/core/device/dagger/DeviceInfoModule_ProvideBaseSearchIndicesFactory;
.super Ljava/lang/Object;
.source "DeviceInfoModule_ProvideBaseSearchIndicesFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/jvmcore/logging/BaseSearchIndicesProvider;",
        ">;"
    }
.end annotation


# instance fields
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
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/device/SerialSupplier;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/stripe/core/device/dagger/DeviceInfoModule_ProvideBaseSearchIndicesFactory;->serialSupplierProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/stripe/core/device/dagger/DeviceInfoModule_ProvideBaseSearchIndicesFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/device/SerialSupplier;",
            ">;)",
            "Lcom/stripe/core/device/dagger/DeviceInfoModule_ProvideBaseSearchIndicesFactory;"
        }
    .end annotation

    .line 43
    new-instance v0, Lcom/stripe/core/device/dagger/DeviceInfoModule_ProvideBaseSearchIndicesFactory;

    invoke-direct {v0, p0}, Lcom/stripe/core/device/dagger/DeviceInfoModule_ProvideBaseSearchIndicesFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideBaseSearchIndices(Lcom/stripe/core/device/SerialSupplier;)Lcom/stripe/jvmcore/logging/BaseSearchIndicesProvider;
    .locals 1

    .line 47
    sget-object v0, Lcom/stripe/core/device/dagger/DeviceInfoModule;->INSTANCE:Lcom/stripe/core/device/dagger/DeviceInfoModule;

    invoke-virtual {v0, p0}, Lcom/stripe/core/device/dagger/DeviceInfoModule;->provideBaseSearchIndices(Lcom/stripe/core/device/SerialSupplier;)Lcom/stripe/jvmcore/logging/BaseSearchIndicesProvider;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/jvmcore/logging/BaseSearchIndicesProvider;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/jvmcore/logging/BaseSearchIndicesProvider;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/stripe/core/device/dagger/DeviceInfoModule_ProvideBaseSearchIndicesFactory;->serialSupplierProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/core/device/SerialSupplier;

    invoke-static {v0}, Lcom/stripe/core/device/dagger/DeviceInfoModule_ProvideBaseSearchIndicesFactory;->provideBaseSearchIndices(Lcom/stripe/core/device/SerialSupplier;)Lcom/stripe/jvmcore/logging/BaseSearchIndicesProvider;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/stripe/core/device/dagger/DeviceInfoModule_ProvideBaseSearchIndicesFactory;->get()Lcom/stripe/jvmcore/logging/BaseSearchIndicesProvider;

    move-result-object v0

    return-object v0
.end method
