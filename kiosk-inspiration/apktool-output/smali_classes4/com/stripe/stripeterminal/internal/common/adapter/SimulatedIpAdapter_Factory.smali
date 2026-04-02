.class public final Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedIpAdapter_Factory;
.super Ljava/lang/Object;
.source "SimulatedIpAdapter_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedIpAdapter;",
        ">;"
    }
.end annotation


# instance fields
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
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
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
            "Lcom/stripe/stripeterminal/internal/common/adapter/SimulatorConfigurationRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/readerupdate/UpdateClient;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/readerupdate/UpdateClient$OfflineConfigUpdateListener;",
            ">;)V"
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedIpAdapter_Factory;->clockProvider:Ljavax/inject/Provider;

    .line 52
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedIpAdapter_Factory;->transactionRepositoryProvider:Ljavax/inject/Provider;

    .line 53
    iput-object p3, p0, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedIpAdapter_Factory;->simulatorConfigurationRepositoryProvider:Ljavax/inject/Provider;

    .line 54
    iput-object p4, p0, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedIpAdapter_Factory;->statusManagerProvider:Ljavax/inject/Provider;

    .line 55
    iput-object p5, p0, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedIpAdapter_Factory;->loggerFactoryProvider:Ljavax/inject/Provider;

    .line 56
    iput-object p6, p0, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedIpAdapter_Factory;->updateClientProvider:Ljavax/inject/Provider;

    .line 57
    iput-object p7, p0, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedIpAdapter_Factory;->offlineConfigUpdateListenerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedIpAdapter_Factory;
    .locals 8
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
            "Lcom/stripe/stripeterminal/internal/common/adapter/SimulatorConfigurationRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/readerupdate/UpdateClient;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/readerupdate/UpdateClient$OfflineConfigUpdateListener;",
            ">;)",
            "Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedIpAdapter_Factory;"
        }
    .end annotation

    .line 71
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedIpAdapter_Factory;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedIpAdapter_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/stripe/time/Clock;Lcom/stripe/core/transaction/TransactionRepository;Lcom/stripe/stripeterminal/internal/common/adapter/SimulatorConfigurationRepository;Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;Lcom/stripe/core/readerupdate/UpdateClient;Lcom/stripe/core/readerupdate/UpdateClient$OfflineConfigUpdateListener;)Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedIpAdapter;
    .locals 8

    .line 79
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedIpAdapter;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedIpAdapter;-><init>(Lcom/stripe/time/Clock;Lcom/stripe/core/transaction/TransactionRepository;Lcom/stripe/stripeterminal/internal/common/adapter/SimulatorConfigurationRepository;Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;Lcom/stripe/core/readerupdate/UpdateClient;Lcom/stripe/core/readerupdate/UpdateClient$OfflineConfigUpdateListener;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedIpAdapter;
    .locals 8

    .line 62
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedIpAdapter_Factory;->clockProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/stripe/time/Clock;

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedIpAdapter_Factory;->transactionRepositoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/stripe/core/transaction/TransactionRepository;

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedIpAdapter_Factory;->simulatorConfigurationRepositoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatorConfigurationRepository;

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedIpAdapter_Factory;->statusManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedIpAdapter_Factory;->loggerFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedIpAdapter_Factory;->updateClientProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/stripe/core/readerupdate/UpdateClient;

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedIpAdapter_Factory;->offlineConfigUpdateListenerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/stripe/core/readerupdate/UpdateClient$OfflineConfigUpdateListener;

    invoke-static/range {v1 .. v7}, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedIpAdapter_Factory;->newInstance(Lcom/stripe/time/Clock;Lcom/stripe/core/transaction/TransactionRepository;Lcom/stripe/stripeterminal/internal/common/adapter/SimulatorConfigurationRepository;Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;Lcom/stripe/core/readerupdate/UpdateClient;Lcom/stripe/core/readerupdate/UpdateClient$OfflineConfigUpdateListener;)Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedIpAdapter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedIpAdapter_Factory;->get()Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedIpAdapter;

    move-result-object v0

    return-object v0
.end method
