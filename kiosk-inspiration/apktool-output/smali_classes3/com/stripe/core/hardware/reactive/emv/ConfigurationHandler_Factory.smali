.class public final Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler_Factory;
.super Ljava/lang/Object;
.source "ConfigurationHandler_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;",
        ">;"
    }
.end annotation


# instance fields
.field private final configListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/hardware/reactive/emv/ReactiveConfigurationListener;",
            ">;"
        }
    .end annotation
.end field

.field private final configurationUpdateControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/hardware/updates/ReaderConfigurationUpdateController;",
            ">;"
        }
    .end annotation
.end field

.field private final deviceInfoRepositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/device/DeviceInfoRepository;",
            ">;"
        }
    .end annotation
.end field

.field private final domesticDebitAidsParserProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/hardware/emv/DomesticDebitAidsParser;",
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

.field private final schedulerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lio/reactivex/rxjava3/core/Scheduler;",
            ">;"
        }
    .end annotation
.end field

.field private final sharedPrefsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/storage/SharedPrefs;",
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


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lio/reactivex/rxjava3/core/Scheduler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/hardware/updates/ReaderConfigurationUpdateController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/device/DeviceInfoRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/storage/SharedPrefs;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/hardware/reactive/emv/ReactiveConfigurationListener;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/transaction/TransactionRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/hardware/emv/DomesticDebitAidsParser;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ">;)V"
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler_Factory;->schedulerProvider:Ljavax/inject/Provider;

    .line 58
    iput-object p2, p0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler_Factory;->configurationUpdateControllerProvider:Ljavax/inject/Provider;

    .line 59
    iput-object p3, p0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler_Factory;->deviceInfoRepositoryProvider:Ljavax/inject/Provider;

    .line 60
    iput-object p4, p0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler_Factory;->sharedPrefsProvider:Ljavax/inject/Provider;

    .line 61
    iput-object p5, p0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler_Factory;->configListenerProvider:Ljavax/inject/Provider;

    .line 62
    iput-object p6, p0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler_Factory;->transactionRepositoryProvider:Ljavax/inject/Provider;

    .line 63
    iput-object p7, p0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler_Factory;->domesticDebitAidsParserProvider:Ljavax/inject/Provider;

    .line 64
    iput-object p8, p0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler_Factory;->loggerFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler_Factory;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lio/reactivex/rxjava3/core/Scheduler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/hardware/updates/ReaderConfigurationUpdateController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/device/DeviceInfoRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/storage/SharedPrefs;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/hardware/reactive/emv/ReactiveConfigurationListener;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/transaction/TransactionRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/hardware/emv/DomesticDebitAidsParser;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ">;)",
            "Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler_Factory;"
        }
    .end annotation

    .line 80
    new-instance v0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler_Factory;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lio/reactivex/rxjava3/core/Scheduler;Lcom/stripe/core/hardware/updates/ReaderConfigurationUpdateController;Lcom/stripe/device/DeviceInfoRepository;Lcom/stripe/jvmcore/storage/SharedPrefs;Lcom/stripe/core/hardware/reactive/emv/ReactiveConfigurationListener;Lcom/stripe/core/transaction/TransactionRepository;Lcom/stripe/hardware/emv/DomesticDebitAidsParser;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;
    .locals 9

    .line 88
    new-instance v0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;-><init>(Lio/reactivex/rxjava3/core/Scheduler;Lcom/stripe/core/hardware/updates/ReaderConfigurationUpdateController;Lcom/stripe/device/DeviceInfoRepository;Lcom/stripe/jvmcore/storage/SharedPrefs;Lcom/stripe/core/hardware/reactive/emv/ReactiveConfigurationListener;Lcom/stripe/core/transaction/TransactionRepository;Lcom/stripe/hardware/emv/DomesticDebitAidsParser;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;
    .locals 9

    .line 69
    iget-object v0, p0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler_Factory;->schedulerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lio/reactivex/rxjava3/core/Scheduler;

    iget-object v0, p0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler_Factory;->configurationUpdateControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/stripe/core/hardware/updates/ReaderConfigurationUpdateController;

    iget-object v0, p0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler_Factory;->deviceInfoRepositoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/stripe/device/DeviceInfoRepository;

    iget-object v0, p0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler_Factory;->sharedPrefsProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/stripe/jvmcore/storage/SharedPrefs;

    iget-object v0, p0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler_Factory;->configListenerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/stripe/core/hardware/reactive/emv/ReactiveConfigurationListener;

    iget-object v0, p0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler_Factory;->transactionRepositoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/stripe/core/transaction/TransactionRepository;

    iget-object v0, p0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler_Factory;->domesticDebitAidsParserProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/stripe/hardware/emv/DomesticDebitAidsParser;

    iget-object v0, p0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler_Factory;->loggerFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;

    invoke-static/range {v1 .. v8}, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler_Factory;->newInstance(Lio/reactivex/rxjava3/core/Scheduler;Lcom/stripe/core/hardware/updates/ReaderConfigurationUpdateController;Lcom/stripe/device/DeviceInfoRepository;Lcom/stripe/jvmcore/storage/SharedPrefs;Lcom/stripe/core/hardware/reactive/emv/ReactiveConfigurationListener;Lcom/stripe/core/transaction/TransactionRepository;Lcom/stripe/hardware/emv/DomesticDebitAidsParser;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler_Factory;->get()Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;

    move-result-object v0

    return-object v0
.end method
