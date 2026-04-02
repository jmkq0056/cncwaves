.class public final Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvideTerminalSdkDeviceListenerWrapper$adapter_releaseFactory;
.super Ljava/lang/Object;
.source "MposAdaptersModule_ProvideTerminalSdkDeviceListenerWrapper$adapter_releaseFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/stripeterminal/internal/common/adapter/TerminalSdkDeviceListenerWrapper;",
        ">;"
    }
.end annotation


# instance fields
.field private final baseControllerFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/bbpos/hardware/BbposControllerListener$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private final basePaymentCollectionFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private final discoveryFilterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothDiscoveryFilter;",
            ">;"
        }
    .end annotation
.end field

.field private final loggerFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final readerStatusListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/hardware/status/ReaderStatusListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/bbpos/hardware/BbposControllerListener$Factory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener$Factory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/hardware/status/ReaderStatusListener;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothDiscoveryFilter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ">;)V"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvideTerminalSdkDeviceListenerWrapper$adapter_releaseFactory;->baseControllerFactoryProvider:Ljavax/inject/Provider;

    .line 50
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvideTerminalSdkDeviceListenerWrapper$adapter_releaseFactory;->basePaymentCollectionFactoryProvider:Ljavax/inject/Provider;

    .line 51
    iput-object p3, p0, Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvideTerminalSdkDeviceListenerWrapper$adapter_releaseFactory;->readerStatusListenerProvider:Ljavax/inject/Provider;

    .line 52
    iput-object p4, p0, Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvideTerminalSdkDeviceListenerWrapper$adapter_releaseFactory;->discoveryFilterProvider:Ljavax/inject/Provider;

    .line 53
    iput-object p5, p0, Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvideTerminalSdkDeviceListenerWrapper$adapter_releaseFactory;->loggerFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvideTerminalSdkDeviceListenerWrapper$adapter_releaseFactory;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/bbpos/hardware/BbposControllerListener$Factory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener$Factory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/hardware/status/ReaderStatusListener;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothDiscoveryFilter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ">;)",
            "Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvideTerminalSdkDeviceListenerWrapper$adapter_releaseFactory;"
        }
    .end annotation

    .line 67
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvideTerminalSdkDeviceListenerWrapper$adapter_releaseFactory;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvideTerminalSdkDeviceListenerWrapper$adapter_releaseFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideTerminalSdkDeviceListenerWrapper$adapter_release(Lcom/stripe/core/bbpos/hardware/BbposControllerListener$Factory;Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener$Factory;Lcom/stripe/core/hardware/status/ReaderStatusListener;Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothDiscoveryFilter;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/stripeterminal/internal/common/adapter/TerminalSdkDeviceListenerWrapper;
    .locals 6

    .line 75
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule;->provideTerminalSdkDeviceListenerWrapper$adapter_release(Lcom/stripe/core/bbpos/hardware/BbposControllerListener$Factory;Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener$Factory;Lcom/stripe/core/hardware/status/ReaderStatusListener;Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothDiscoveryFilter;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/stripeterminal/internal/common/adapter/TerminalSdkDeviceListenerWrapper;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/stripeterminal/internal/common/adapter/TerminalSdkDeviceListenerWrapper;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/stripeterminal/internal/common/adapter/TerminalSdkDeviceListenerWrapper;
    .locals 5

    .line 58
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvideTerminalSdkDeviceListenerWrapper$adapter_releaseFactory;->baseControllerFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/core/bbpos/hardware/BbposControllerListener$Factory;

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvideTerminalSdkDeviceListenerWrapper$adapter_releaseFactory;->basePaymentCollectionFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener$Factory;

    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvideTerminalSdkDeviceListenerWrapper$adapter_releaseFactory;->readerStatusListenerProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/core/hardware/status/ReaderStatusListener;

    iget-object v3, p0, Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvideTerminalSdkDeviceListenerWrapper$adapter_releaseFactory;->discoveryFilterProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothDiscoveryFilter;

    iget-object v4, p0, Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvideTerminalSdkDeviceListenerWrapper$adapter_releaseFactory;->loggerFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvideTerminalSdkDeviceListenerWrapper$adapter_releaseFactory;->provideTerminalSdkDeviceListenerWrapper$adapter_release(Lcom/stripe/core/bbpos/hardware/BbposControllerListener$Factory;Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener$Factory;Lcom/stripe/core/hardware/status/ReaderStatusListener;Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothDiscoveryFilter;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/stripeterminal/internal/common/adapter/TerminalSdkDeviceListenerWrapper;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvideTerminalSdkDeviceListenerWrapper$adapter_releaseFactory;->get()Lcom/stripe/stripeterminal/internal/common/adapter/TerminalSdkDeviceListenerWrapper;

    move-result-object v0

    return-object v0
.end method
