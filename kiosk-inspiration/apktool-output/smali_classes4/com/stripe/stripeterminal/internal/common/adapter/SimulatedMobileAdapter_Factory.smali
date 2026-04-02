.class public final Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedMobileAdapter_Factory;
.super Ljava/lang/Object;
.source "SimulatedMobileAdapter_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedMobileAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field private final applicationInformationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final bbposReaderInfoFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/bbpos/hardware/BbposReaderInfoFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final clockProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/time/Clock;",
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

.field private final mainDispatcherProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field private final offlineConfigUpdateListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/readerupdate/UpdateClient$OfflineConfigUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final simulatorConfigurationRepositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/adapter/SimulatorConfigurationRepository;",
            ">;"
        }
    .end annotation
.end field

.field private final statusManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;",
            ">;"
        }
    .end annotation
.end field

.field private final transactionRepositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/transaction/TransactionRepository;",
            ">;"
        }
    .end annotation
.end field

.field private final updateClientProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/readerupdate/UpdateClient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/time/Clock;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/transaction/TransactionRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/adapter/SimulatorConfigurationRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/bbpos/hardware/BbposReaderInfoFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/readerupdate/UpdateClient;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/readerupdate/UpdateClient$OfflineConfigUpdateListener;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ">;)V"
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedMobileAdapter_Factory;->clockProvider:Ljavax/inject/Provider;

    .line 65
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedMobileAdapter_Factory;->transactionRepositoryProvider:Ljavax/inject/Provider;

    .line 66
    iput-object p3, p0, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedMobileAdapter_Factory;->mainDispatcherProvider:Ljavax/inject/Provider;

    .line 67
    iput-object p4, p0, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedMobileAdapter_Factory;->simulatorConfigurationRepositoryProvider:Ljavax/inject/Provider;

    .line 68
    iput-object p5, p0, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedMobileAdapter_Factory;->statusManagerProvider:Ljavax/inject/Provider;

    .line 69
    iput-object p6, p0, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedMobileAdapter_Factory;->applicationInformationProvider:Ljavax/inject/Provider;

    .line 70
    iput-object p7, p0, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedMobileAdapter_Factory;->bbposReaderInfoFactoryProvider:Ljavax/inject/Provider;

    .line 71
    iput-object p8, p0, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedMobileAdapter_Factory;->updateClientProvider:Ljavax/inject/Provider;

    .line 72
    iput-object p9, p0, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedMobileAdapter_Factory;->offlineConfigUpdateListenerProvider:Ljavax/inject/Provider;

    .line 73
    iput-object p10, p0, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedMobileAdapter_Factory;->loggerFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedMobileAdapter_Factory;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/time/Clock;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/transaction/TransactionRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/adapter/SimulatorConfigurationRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/bbpos/hardware/BbposReaderInfoFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/readerupdate/UpdateClient;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/readerupdate/UpdateClient$OfflineConfigUpdateListener;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ">;)",
            "Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedMobileAdapter_Factory;"
        }
    .end annotation

    .line 91
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedMobileAdapter_Factory;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedMobileAdapter_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/stripe/time/Clock;Lcom/stripe/core/transaction/TransactionRepository;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/stripeterminal/internal/common/adapter/SimulatorConfigurationRepository;Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;Lcom/stripe/core/bbpos/hardware/BbposReaderInfoFactory;Lcom/stripe/core/readerupdate/UpdateClient;Lcom/stripe/core/readerupdate/UpdateClient$OfflineConfigUpdateListener;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedMobileAdapter;
    .locals 11

    .line 102
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedMobileAdapter;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedMobileAdapter;-><init>(Lcom/stripe/time/Clock;Lcom/stripe/core/transaction/TransactionRepository;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/stripeterminal/internal/common/adapter/SimulatorConfigurationRepository;Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;Lcom/stripe/core/bbpos/hardware/BbposReaderInfoFactory;Lcom/stripe/core/readerupdate/UpdateClient;Lcom/stripe/core/readerupdate/UpdateClient$OfflineConfigUpdateListener;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedMobileAdapter;
    .locals 11

    .line 78
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedMobileAdapter_Factory;->clockProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/stripe/time/Clock;

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedMobileAdapter_Factory;->transactionRepositoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/stripe/core/transaction/TransactionRepository;

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedMobileAdapter_Factory;->mainDispatcherProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lkotlinx/coroutines/CoroutineDispatcher;

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedMobileAdapter_Factory;->simulatorConfigurationRepositoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatorConfigurationRepository;

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedMobileAdapter_Factory;->statusManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedMobileAdapter_Factory;->applicationInformationProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedMobileAdapter_Factory;->bbposReaderInfoFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/stripe/core/bbpos/hardware/BbposReaderInfoFactory;

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedMobileAdapter_Factory;->updateClientProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/stripe/core/readerupdate/UpdateClient;

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedMobileAdapter_Factory;->offlineConfigUpdateListenerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/stripe/core/readerupdate/UpdateClient$OfflineConfigUpdateListener;

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedMobileAdapter_Factory;->loggerFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;

    invoke-static/range {v1 .. v10}, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedMobileAdapter_Factory;->newInstance(Lcom/stripe/time/Clock;Lcom/stripe/core/transaction/TransactionRepository;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/stripeterminal/internal/common/adapter/SimulatorConfigurationRepository;Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;Lcom/stripe/core/bbpos/hardware/BbposReaderInfoFactory;Lcom/stripe/core/readerupdate/UpdateClient;Lcom/stripe/core/readerupdate/UpdateClient$OfflineConfigUpdateListener;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedMobileAdapter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedMobileAdapter_Factory;->get()Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedMobileAdapter;

    move-result-object v0

    return-object v0
.end method
