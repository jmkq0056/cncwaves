.class public final Lcom/stripe/core/aidlrpc/dagger/AidlRpcModule_ProvideReaderAppPackageName$aidlrpc_releaseFactory;
.super Ljava/lang/Object;
.source "AidlRpcModule_ProvideReaderAppPackageName$aidlrpc_releaseFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/core/aidlrpc/AppPackageName$Reader;",
        ">;"
    }
.end annotation


# instance fields
.field private final hardwareManufacturerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/device/HardwareManufacturer;",
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
            "Lcom/stripe/core/device/HardwareManufacturer;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/stripe/core/aidlrpc/dagger/AidlRpcModule_ProvideReaderAppPackageName$aidlrpc_releaseFactory;->hardwareManufacturerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/stripe/core/aidlrpc/dagger/AidlRpcModule_ProvideReaderAppPackageName$aidlrpc_releaseFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/device/HardwareManufacturer;",
            ">;)",
            "Lcom/stripe/core/aidlrpc/dagger/AidlRpcModule_ProvideReaderAppPackageName$aidlrpc_releaseFactory;"
        }
    .end annotation

    .line 43
    new-instance v0, Lcom/stripe/core/aidlrpc/dagger/AidlRpcModule_ProvideReaderAppPackageName$aidlrpc_releaseFactory;

    invoke-direct {v0, p0}, Lcom/stripe/core/aidlrpc/dagger/AidlRpcModule_ProvideReaderAppPackageName$aidlrpc_releaseFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideReaderAppPackageName$aidlrpc_release(Lcom/stripe/core/device/HardwareManufacturer;)Lcom/stripe/core/aidlrpc/AppPackageName$Reader;
    .locals 1

    .line 48
    sget-object v0, Lcom/stripe/core/aidlrpc/dagger/AidlRpcModule;->INSTANCE:Lcom/stripe/core/aidlrpc/dagger/AidlRpcModule;

    invoke-virtual {v0, p0}, Lcom/stripe/core/aidlrpc/dagger/AidlRpcModule;->provideReaderAppPackageName$aidlrpc_release(Lcom/stripe/core/device/HardwareManufacturer;)Lcom/stripe/core/aidlrpc/AppPackageName$Reader;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/core/aidlrpc/AppPackageName$Reader;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/core/aidlrpc/AppPackageName$Reader;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/stripe/core/aidlrpc/dagger/AidlRpcModule_ProvideReaderAppPackageName$aidlrpc_releaseFactory;->hardwareManufacturerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/core/device/HardwareManufacturer;

    invoke-static {v0}, Lcom/stripe/core/aidlrpc/dagger/AidlRpcModule_ProvideReaderAppPackageName$aidlrpc_releaseFactory;->provideReaderAppPackageName$aidlrpc_release(Lcom/stripe/core/device/HardwareManufacturer;)Lcom/stripe/core/aidlrpc/AppPackageName$Reader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/stripe/core/aidlrpc/dagger/AidlRpcModule_ProvideReaderAppPackageName$aidlrpc_releaseFactory;->get()Lcom/stripe/core/aidlrpc/AppPackageName$Reader;

    move-result-object v0

    return-object v0
.end method
