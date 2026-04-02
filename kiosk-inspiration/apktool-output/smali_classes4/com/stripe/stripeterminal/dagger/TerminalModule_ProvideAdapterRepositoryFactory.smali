.class public final Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideAdapterRepositoryFactory;
.super Ljava/lang/Object;
.source "TerminalModule_ProvideAdapterRepositoryFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/stripeterminal/internal/common/adapter/AdapterRepository;",
        ">;"
    }
.end annotation


# instance fields
.field private final bbposAdapterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final cotsAdapterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final embeddedAdapterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/Adapter;",
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

.field private final module:Lcom/stripe/stripeterminal/dagger/TerminalModule;

.field private final remoteReaderAdapterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final simulatedBluetoothAdapterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedMobileAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final simulatedCotsAdapterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final simulatedIpAdapterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedIpAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final simulatedUsbAdapterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedMobileAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final usbAdapterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/stripe/stripeterminal/dagger/TerminalModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/dagger/TerminalModule;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedMobileAdapter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedIpAdapter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedMobileAdapter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/Adapter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ">;)V"
        }
    .end annotation

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideAdapterRepositoryFactory;->module:Lcom/stripe/stripeterminal/dagger/TerminalModule;

    .line 73
    iput-object p2, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideAdapterRepositoryFactory;->bbposAdapterProvider:Ljavax/inject/Provider;

    .line 74
    iput-object p3, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideAdapterRepositoryFactory;->cotsAdapterProvider:Ljavax/inject/Provider;

    .line 75
    iput-object p4, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideAdapterRepositoryFactory;->simulatedCotsAdapterProvider:Ljavax/inject/Provider;

    .line 76
    iput-object p5, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideAdapterRepositoryFactory;->remoteReaderAdapterProvider:Ljavax/inject/Provider;

    .line 77
    iput-object p6, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideAdapterRepositoryFactory;->simulatedBluetoothAdapterProvider:Ljavax/inject/Provider;

    .line 78
    iput-object p7, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideAdapterRepositoryFactory;->simulatedIpAdapterProvider:Ljavax/inject/Provider;

    .line 79
    iput-object p8, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideAdapterRepositoryFactory;->simulatedUsbAdapterProvider:Ljavax/inject/Provider;

    .line 80
    iput-object p9, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideAdapterRepositoryFactory;->embeddedAdapterProvider:Ljavax/inject/Provider;

    .line 81
    iput-object p10, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideAdapterRepositoryFactory;->usbAdapterProvider:Ljavax/inject/Provider;

    .line 82
    iput-object p11, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideAdapterRepositoryFactory;->loggerFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/stripe/stripeterminal/dagger/TerminalModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideAdapterRepositoryFactory;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/dagger/TerminalModule;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedMobileAdapter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedIpAdapter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedMobileAdapter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/Adapter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ">;)",
            "Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideAdapterRepositoryFactory;"
        }
    .end annotation

    .line 99
    new-instance v0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideAdapterRepositoryFactory;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideAdapterRepositoryFactory;-><init>(Lcom/stripe/stripeterminal/dagger/TerminalModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideAdapterRepository(Lcom/stripe/stripeterminal/dagger/TerminalModule;Ldagger/Lazy;Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;Ldagger/Lazy;Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedIpAdapter;Ldagger/Lazy;Lcom/stripe/stripeterminal/internal/common/Adapter;Ldagger/Lazy;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/stripeterminal/internal/common/adapter/AdapterRepository;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/dagger/TerminalModule;",
            "Ldagger/Lazy<",
            "Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;",
            ">;",
            "Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;",
            "Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;",
            "Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;",
            "Ldagger/Lazy<",
            "Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedMobileAdapter;",
            ">;",
            "Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedIpAdapter;",
            "Ldagger/Lazy<",
            "Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedMobileAdapter;",
            ">;",
            "Lcom/stripe/stripeterminal/internal/common/Adapter;",
            "Ldagger/Lazy<",
            "Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;",
            ">;",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ")",
            "Lcom/stripe/stripeterminal/internal/common/adapter/AdapterRepository;"
        }
    .end annotation

    .line 108
    invoke-virtual/range {p0 .. p10}, Lcom/stripe/stripeterminal/dagger/TerminalModule;->provideAdapterRepository(Ldagger/Lazy;Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;Ldagger/Lazy;Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedIpAdapter;Ldagger/Lazy;Lcom/stripe/stripeterminal/internal/common/Adapter;Ldagger/Lazy;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/stripeterminal/internal/common/adapter/AdapterRepository;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/stripeterminal/internal/common/adapter/AdapterRepository;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/stripeterminal/internal/common/adapter/AdapterRepository;
    .locals 11

    .line 87
    iget-object v0, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideAdapterRepositoryFactory;->module:Lcom/stripe/stripeterminal/dagger/TerminalModule;

    iget-object v1, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideAdapterRepositoryFactory;->bbposAdapterProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideAdapterRepositoryFactory;->cotsAdapterProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;

    iget-object v3, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideAdapterRepositoryFactory;->simulatedCotsAdapterProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;

    iget-object v4, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideAdapterRepositoryFactory;->remoteReaderAdapterProvider:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;

    iget-object v5, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideAdapterRepositoryFactory;->simulatedBluetoothAdapterProvider:Ljavax/inject/Provider;

    invoke-static {v5}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v5

    iget-object v6, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideAdapterRepositoryFactory;->simulatedIpAdapterProvider:Ljavax/inject/Provider;

    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedIpAdapter;

    iget-object v7, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideAdapterRepositoryFactory;->simulatedUsbAdapterProvider:Ljavax/inject/Provider;

    invoke-static {v7}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v7

    iget-object v8, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideAdapterRepositoryFactory;->embeddedAdapterProvider:Ljavax/inject/Provider;

    invoke-interface {v8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/stripe/stripeterminal/internal/common/Adapter;

    iget-object v9, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideAdapterRepositoryFactory;->usbAdapterProvider:Ljavax/inject/Provider;

    invoke-static {v9}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v9

    iget-object v10, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideAdapterRepositoryFactory;->loggerFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v10}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;

    invoke-static/range {v0 .. v10}, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideAdapterRepositoryFactory;->provideAdapterRepository(Lcom/stripe/stripeterminal/dagger/TerminalModule;Ldagger/Lazy;Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;Ldagger/Lazy;Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedIpAdapter;Ldagger/Lazy;Lcom/stripe/stripeterminal/internal/common/Adapter;Ldagger/Lazy;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/stripeterminal/internal/common/adapter/AdapterRepository;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideAdapterRepositoryFactory;->get()Lcom/stripe/stripeterminal/internal/common/adapter/AdapterRepository;

    move-result-object v0

    return-object v0
.end method
