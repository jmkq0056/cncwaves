.class public final Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvideBbposUsbAdapter$adapter_releaseFactory;
.super Ljava/lang/Object;
.source "MposAdaptersModule_ProvideBbposUsbAdapter$adapter_releaseFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;",
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

.field private final configListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/hardware/reactive/emv/ReactiveConfigurationListener;",
            ">;"
        }
    .end annotation
.end field

.field private final connectAndUpdateStateMachineProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateMachine;",
            ">;"
        }
    .end annotation
.end field

.field private final connectionManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/readerconnection/ConnectionManager;",
            ">;"
        }
    .end annotation
.end field

.field private final connectivityHealthLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/UsbScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/UsbScope$Builder;",
            ">;>;"
        }
    .end annotation
.end field

.field private final deviceControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final deviceListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/adapter/TerminalSdkDeviceListenerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final deviceListenerRegistryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistry;",
            ">;"
        }
    .end annotation
.end field

.field private final disconnectReasonRepositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository;",
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

.field private final featureFlagsRepositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;",
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

.field private final mposReaderDebugLogManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/log/MposReaderDebugLogManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mposReaderEventLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/log/MposReaderEventLogger;",
            ">;"
        }
    .end annotation
.end field

.field private final paymentCollectionWrapperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final readerInfoControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/hardware/ReaderInfoController;",
            ">;"
        }
    .end annotation
.end field

.field private final readerInfoRepositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/hardware/reactive/ReaderInfoRepository;",
            ">;"
        }
    .end annotation
.end field

.field private final readerStatusListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;",
            ">;"
        }
    .end annotation
.end field

.field private final readerUpdateControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/hardware/updates/ReaderUpdateController;",
            ">;"
        }
    .end annotation
.end field

.field private final resourceRepositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository;",
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

.field private final scopeProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/CoroutineScope;",
            ">;"
        }
    .end annotation
.end field

.field private final sessionTokenRepositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;",
            ">;"
        }
    .end annotation
.end field

.field private final settingsRepositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/transaction/SettingsRepository;",
            ">;"
        }
    .end annotation
.end field

.field private final singleUpdateHealthLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/SingleUpdateScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/SingleUpdateScope$Builder;",
            ">;>;"
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

.field private final updateInstallerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/readerupdate/UpdateInstaller;",
            ">;"
        }
    .end annotation
.end field

.field private final updateListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final updateManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/readerupdate/UpdateManager;",
            ">;"
        }
    .end annotation
.end field

.field private final usbPermissionReceiverProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/usb/UsbPermissionReceiverManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/readerupdate/UpdateClient;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lio/reactivex/rxjava3/core/Scheduler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/CoroutineScope;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/readerconnection/ConnectionManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/readerupdate/UpdateManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/hardware/reactive/emv/ReactiveConfigurationListener;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/readerupdate/UpdateInstaller;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/transaction/SettingsRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/usb/UsbPermissionReceiverManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/hardware/updates/ReaderUpdateController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/hardware/ReaderInfoController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/transaction/TransactionRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateMachine;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/adapter/TerminalSdkDeviceListenerWrapper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistry;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/hardware/emv/DomesticDebitAidsParser;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/UsbScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/UsbScope$Builder;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/hardware/reactive/ReaderInfoRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/SingleUpdateScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/SingleUpdateScope$Builder;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/log/MposReaderEventLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/log/MposReaderDebugLogManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ">;)V"
        }
    .end annotation

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvideBbposUsbAdapter$adapter_releaseFactory;->updateClientProvider:Ljavax/inject/Provider;

    .line 160
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvideBbposUsbAdapter$adapter_releaseFactory;->sessionTokenRepositoryProvider:Ljavax/inject/Provider;

    .line 161
    iput-object p3, p0, Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvideBbposUsbAdapter$adapter_releaseFactory;->schedulerProvider:Ljavax/inject/Provider;

    .line 162
    iput-object p4, p0, Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvideBbposUsbAdapter$adapter_releaseFactory;->scopeProvider:Ljavax/inject/Provider;

    .line 163
    iput-object p5, p0, Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvideBbposUsbAdapter$adapter_releaseFactory;->connectionManagerProvider:Ljavax/inject/Provider;

    .line 164
    iput-object p6, p0, Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvideBbposUsbAdapter$adapter_releaseFactory;->updateManagerProvider:Ljavax/inject/Provider;

    .line 165
    iput-object p7, p0, Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvideBbposUsbAdapter$adapter_releaseFactory;->configListenerProvider:Ljavax/inject/Provider;

    .line 166
    iput-object p8, p0, Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvideBbposUsbAdapter$adapter_releaseFactory;->readerStatusListenerProvider:Ljavax/inject/Provider;

    .line 167
    iput-object p9, p0, Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvideBbposUsbAdapter$adapter_releaseFactory;->updateListenerProvider:Ljavax/inject/Provider;

    .line 168
    iput-object p10, p0, Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvideBbposUsbAdapter$adapter_releaseFactory;->updateInstallerProvider:Ljavax/inject/Provider;

    .line 169
    iput-object p11, p0, Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvideBbposUsbAdapter$adapter_releaseFactory;->statusManagerProvider:Ljavax/inject/Provider;

    .line 170
    iput-object p12, p0, Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvideBbposUsbAdapter$adapter_releaseFactory;->settingsRepositoryProvider:Ljavax/inject/Provider;

    .line 171
    iput-object p13, p0, Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvideBbposUsbAdapter$adapter_releaseFactory;->deviceControllerProvider:Ljavax/inject/Provider;

    .line 172
    iput-object p14, p0, Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvideBbposUsbAdapter$adapter_releaseFactory;->usbPermissionReceiverProvider:Ljavax/inject/Provider;

    .line 173
    iput-object p15, p0, Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvideBbposUsbAdapter$adapter_releaseFactory;->featureFlagsRepositoryProvider:Ljavax/inject/Provider;

    move-object/from16 p1, p16

    .line 174
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvideBbposUsbAdapter$adapter_releaseFactory;->readerUpdateControllerProvider:Ljavax/inject/Provider;

    move-object/from16 p1, p17

    .line 175
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvideBbposUsbAdapter$adapter_releaseFactory;->readerInfoControllerProvider:Ljavax/inject/Provider;

    move-object/from16 p1, p18

    .line 176
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvideBbposUsbAdapter$adapter_releaseFactory;->applicationInformationProvider:Ljavax/inject/Provider;

    move-object/from16 p1, p19

    .line 177
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvideBbposUsbAdapter$adapter_releaseFactory;->transactionRepositoryProvider:Ljavax/inject/Provider;

    move-object/from16 p1, p20

    .line 178
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvideBbposUsbAdapter$adapter_releaseFactory;->connectAndUpdateStateMachineProvider:Ljavax/inject/Provider;

    move-object/from16 p1, p21

    .line 179
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvideBbposUsbAdapter$adapter_releaseFactory;->paymentCollectionWrapperProvider:Ljavax/inject/Provider;

    move-object/from16 p1, p22

    .line 180
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvideBbposUsbAdapter$adapter_releaseFactory;->resourceRepositoryProvider:Ljavax/inject/Provider;

    move-object/from16 p1, p23

    .line 181
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvideBbposUsbAdapter$adapter_releaseFactory;->deviceListenerProvider:Ljavax/inject/Provider;

    move-object/from16 p1, p24

    .line 182
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvideBbposUsbAdapter$adapter_releaseFactory;->deviceListenerRegistryProvider:Ljavax/inject/Provider;

    move-object/from16 p1, p25

    .line 183
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvideBbposUsbAdapter$adapter_releaseFactory;->domesticDebitAidsParserProvider:Ljavax/inject/Provider;

    move-object/from16 p1, p26

    .line 184
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvideBbposUsbAdapter$adapter_releaseFactory;->connectivityHealthLoggerProvider:Ljavax/inject/Provider;

    move-object/from16 p1, p27

    .line 185
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvideBbposUsbAdapter$adapter_releaseFactory;->disconnectReasonRepositoryProvider:Ljavax/inject/Provider;

    move-object/from16 p1, p28

    .line 186
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvideBbposUsbAdapter$adapter_releaseFactory;->readerInfoRepositoryProvider:Ljavax/inject/Provider;

    move-object/from16 p1, p29

    .line 187
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvideBbposUsbAdapter$adapter_releaseFactory;->singleUpdateHealthLoggerProvider:Ljavax/inject/Provider;

    move-object/from16 p1, p30

    .line 188
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvideBbposUsbAdapter$adapter_releaseFactory;->mposReaderEventLoggerProvider:Ljavax/inject/Provider;

    move-object/from16 p1, p31

    .line 189
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvideBbposUsbAdapter$adapter_releaseFactory;->mposReaderDebugLogManagerProvider:Ljavax/inject/Provider;

    move-object/from16 p1, p32

    .line 190
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvideBbposUsbAdapter$adapter_releaseFactory;->loggerFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvideBbposUsbAdapter$adapter_releaseFactory;
    .locals 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/readerupdate/UpdateClient;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lio/reactivex/rxjava3/core/Scheduler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/CoroutineScope;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/readerconnection/ConnectionManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/readerupdate/UpdateManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/hardware/reactive/emv/ReactiveConfigurationListener;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/readerupdate/UpdateInstaller;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/transaction/SettingsRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/usb/UsbPermissionReceiverManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/hardware/updates/ReaderUpdateController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/hardware/ReaderInfoController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/transaction/TransactionRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateMachine;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/adapter/TerminalSdkDeviceListenerWrapper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistry;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/hardware/emv/DomesticDebitAidsParser;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/UsbScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/UsbScope$Builder;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/hardware/reactive/ReaderInfoRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/SingleUpdateScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/SingleUpdateScope$Builder;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/log/MposReaderEventLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/log/MposReaderDebugLogManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ">;)",
            "Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvideBbposUsbAdapter$adapter_releaseFactory;"
        }
    .end annotation

    .line 230
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvideBbposUsbAdapter$adapter_releaseFactory;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v20, p19

    move-object/from16 v21, p20

    move-object/from16 v22, p21

    move-object/from16 v23, p22

    move-object/from16 v24, p23

    move-object/from16 v25, p24

    move-object/from16 v26, p25

    move-object/from16 v27, p26

    move-object/from16 v28, p27

    move-object/from16 v29, p28

    move-object/from16 v30, p29

    move-object/from16 v31, p30

    move-object/from16 v32, p31

    invoke-direct/range {v0 .. v32}, Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvideBbposUsbAdapter$adapter_releaseFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideBbposUsbAdapter$adapter_release(Lcom/stripe/core/readerupdate/UpdateClient;Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;Lio/reactivex/rxjava3/core/Scheduler;Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/core/readerconnection/ConnectionManager;Lcom/stripe/core/readerupdate/UpdateManager;Lcom/stripe/core/hardware/reactive/emv/ReactiveConfigurationListener;Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;Lcom/stripe/core/readerupdate/UpdateInstaller;Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/core/transaction/SettingsRepository;Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;Lcom/stripe/stripeterminal/internal/common/usb/UsbPermissionReceiverManager;Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;Lcom/stripe/core/hardware/updates/ReaderUpdateController;Lcom/stripe/core/hardware/ReaderInfoController;Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;Lcom/stripe/core/transaction/TransactionRepository;Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateMachine;Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository;Lcom/stripe/stripeterminal/internal/common/adapter/TerminalSdkDeviceListenerWrapper;Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistry;Lcom/stripe/hardware/emv/DomesticDebitAidsParser;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository;Lcom/stripe/core/hardware/reactive/ReaderInfoRepository;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/stripeterminal/internal/common/log/MposReaderEventLogger;Lcom/stripe/stripeterminal/internal/common/log/MposReaderDebugLogManager;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;
    .locals 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/core/readerupdate/UpdateClient;",
            "Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;",
            "Lio/reactivex/rxjava3/core/Scheduler;",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lcom/stripe/core/readerconnection/ConnectionManager;",
            "Lcom/stripe/core/readerupdate/UpdateManager;",
            "Lcom/stripe/core/hardware/reactive/emv/ReactiveConfigurationListener;",
            "Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;",
            "Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;",
            "Lcom/stripe/core/readerupdate/UpdateInstaller;",
            "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;",
            "Lcom/stripe/core/transaction/SettingsRepository;",
            "Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;",
            "Lcom/stripe/stripeterminal/internal/common/usb/UsbPermissionReceiverManager;",
            "Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;",
            "Lcom/stripe/core/hardware/updates/ReaderUpdateController;",
            "Lcom/stripe/core/hardware/ReaderInfoController;",
            "Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;",
            "Lcom/stripe/core/transaction/TransactionRepository;",
            "Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateMachine;",
            "Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;",
            "Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository;",
            "Lcom/stripe/stripeterminal/internal/common/adapter/TerminalSdkDeviceListenerWrapper;",
            "Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistry;",
            "Lcom/stripe/hardware/emv/DomesticDebitAidsParser;",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/UsbScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/UsbScope$Builder;",
            ">;",
            "Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository;",
            "Lcom/stripe/core/hardware/reactive/ReaderInfoRepository;",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/SingleUpdateScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/SingleUpdateScope$Builder;",
            ">;",
            "Lcom/stripe/stripeterminal/internal/common/log/MposReaderEventLogger;",
            "Lcom/stripe/stripeterminal/internal/common/log/MposReaderDebugLogManager;",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ")",
            "Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;"
        }
    .end annotation

    .line 256
    sget-object v1, Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    move-object/from16 v16, p14

    move-object/from16 v17, p15

    move-object/from16 v18, p16

    move-object/from16 v19, p17

    move-object/from16 v20, p18

    move-object/from16 v21, p19

    move-object/from16 v22, p20

    move-object/from16 v23, p21

    move-object/from16 v24, p22

    move-object/from16 v25, p23

    move-object/from16 v26, p24

    move-object/from16 v27, p25

    move-object/from16 v28, p26

    move-object/from16 v29, p27

    move-object/from16 v30, p28

    move-object/from16 v31, p29

    move-object/from16 v32, p30

    move-object/from16 v33, p31

    invoke-virtual/range {v1 .. v33}, Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule;->provideBbposUsbAdapter$adapter_release(Lcom/stripe/core/readerupdate/UpdateClient;Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;Lio/reactivex/rxjava3/core/Scheduler;Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/core/readerconnection/ConnectionManager;Lcom/stripe/core/readerupdate/UpdateManager;Lcom/stripe/core/hardware/reactive/emv/ReactiveConfigurationListener;Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;Lcom/stripe/core/readerupdate/UpdateInstaller;Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/core/transaction/SettingsRepository;Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;Lcom/stripe/stripeterminal/internal/common/usb/UsbPermissionReceiverManager;Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;Lcom/stripe/core/hardware/updates/ReaderUpdateController;Lcom/stripe/core/hardware/ReaderInfoController;Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;Lcom/stripe/core/transaction/TransactionRepository;Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateMachine;Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository;Lcom/stripe/stripeterminal/internal/common/adapter/TerminalSdkDeviceListenerWrapper;Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistry;Lcom/stripe/hardware/emv/DomesticDebitAidsParser;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository;Lcom/stripe/core/hardware/reactive/ReaderInfoRepository;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/stripeterminal/internal/common/log/MposReaderEventLogger;Lcom/stripe/stripeterminal/internal/common/log/MposReaderDebugLogManager;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;
    .locals 34

    move-object/from16 v0, p0

    .line 195
    iget-object v1, v0, Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvideBbposUsbAdapter$adapter_releaseFactory;->updateClientProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/stripe/core/readerupdate/UpdateClient;

    iget-object v1, v0, Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvideBbposUsbAdapter$adapter_releaseFactory;->sessionTokenRepositoryProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;

    iget-object v1, v0, Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvideBbposUsbAdapter$adapter_releaseFactory;->schedulerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lio/reactivex/rxjava3/core/Scheduler;

    iget-object v1, v0, Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvideBbposUsbAdapter$adapter_releaseFactory;->scopeProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lkotlinx/coroutines/CoroutineScope;

    iget-object v1, v0, Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvideBbposUsbAdapter$adapter_releaseFactory;->connectionManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/stripe/core/readerconnection/ConnectionManager;

    iget-object v1, v0, Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvideBbposUsbAdapter$adapter_releaseFactory;->updateManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/stripe/core/readerupdate/UpdateManager;

    iget-object v1, v0, Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvideBbposUsbAdapter$adapter_releaseFactory;->configListenerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/stripe/core/hardware/reactive/emv/ReactiveConfigurationListener;

    iget-object v1, v0, Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvideBbposUsbAdapter$adapter_releaseFactory;->readerStatusListenerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;

    iget-object v1, v0, Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvideBbposUsbAdapter$adapter_releaseFactory;->updateListenerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;

    iget-object v1, v0, Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvideBbposUsbAdapter$adapter_releaseFactory;->updateInstallerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/stripe/core/readerupdate/UpdateInstaller;

    iget-object v1, v0, Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvideBbposUsbAdapter$adapter_releaseFactory;->statusManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    iget-object v1, v0, Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvideBbposUsbAdapter$adapter_releaseFactory;->settingsRepositoryProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/stripe/core/transaction/SettingsRepository;

    iget-object v1, v0, Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvideBbposUsbAdapter$adapter_releaseFactory;->deviceControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;

    iget-object v1, v0, Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvideBbposUsbAdapter$adapter_releaseFactory;->usbPermissionReceiverProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lcom/stripe/stripeterminal/internal/common/usb/UsbPermissionReceiverManager;

    iget-object v1, v0, Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvideBbposUsbAdapter$adapter_releaseFactory;->featureFlagsRepositoryProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;

    iget-object v1, v0, Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvideBbposUsbAdapter$adapter_releaseFactory;->readerUpdateControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Lcom/stripe/core/hardware/updates/ReaderUpdateController;

    iget-object v1, v0, Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvideBbposUsbAdapter$adapter_releaseFactory;->readerInfoControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v18, v1

    check-cast v18, Lcom/stripe/core/hardware/ReaderInfoController;

    iget-object v1, v0, Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvideBbposUsbAdapter$adapter_releaseFactory;->applicationInformationProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v19, v1

    check-cast v19, Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;

    iget-object v1, v0, Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvideBbposUsbAdapter$adapter_releaseFactory;->transactionRepositoryProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v20, v1

    check-cast v20, Lcom/stripe/core/transaction/TransactionRepository;

    iget-object v1, v0, Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvideBbposUsbAdapter$adapter_releaseFactory;->connectAndUpdateStateMachineProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v21, v1

    check-cast v21, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateMachine;

    iget-object v1, v0, Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvideBbposUsbAdapter$adapter_releaseFactory;->paymentCollectionWrapperProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v22, v1

    check-cast v22, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;

    iget-object v1, v0, Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvideBbposUsbAdapter$adapter_releaseFactory;->resourceRepositoryProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v23, v1

    check-cast v23, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository;

    iget-object v1, v0, Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvideBbposUsbAdapter$adapter_releaseFactory;->deviceListenerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v24, v1

    check-cast v24, Lcom/stripe/stripeterminal/internal/common/adapter/TerminalSdkDeviceListenerWrapper;

    iget-object v1, v0, Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvideBbposUsbAdapter$adapter_releaseFactory;->deviceListenerRegistryProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v25, v1

    check-cast v25, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistry;

    iget-object v1, v0, Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvideBbposUsbAdapter$adapter_releaseFactory;->domesticDebitAidsParserProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v26, v1

    check-cast v26, Lcom/stripe/hardware/emv/DomesticDebitAidsParser;

    iget-object v1, v0, Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvideBbposUsbAdapter$adapter_releaseFactory;->connectivityHealthLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v27, v1

    check-cast v27, Lcom/stripe/jvmcore/logging/HealthLogger;

    iget-object v1, v0, Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvideBbposUsbAdapter$adapter_releaseFactory;->disconnectReasonRepositoryProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v28, v1

    check-cast v28, Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository;

    iget-object v1, v0, Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvideBbposUsbAdapter$adapter_releaseFactory;->readerInfoRepositoryProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v29, v1

    check-cast v29, Lcom/stripe/core/hardware/reactive/ReaderInfoRepository;

    iget-object v1, v0, Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvideBbposUsbAdapter$adapter_releaseFactory;->singleUpdateHealthLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v30, v1

    check-cast v30, Lcom/stripe/jvmcore/logging/HealthLogger;

    iget-object v1, v0, Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvideBbposUsbAdapter$adapter_releaseFactory;->mposReaderEventLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v31, v1

    check-cast v31, Lcom/stripe/stripeterminal/internal/common/log/MposReaderEventLogger;

    iget-object v1, v0, Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvideBbposUsbAdapter$adapter_releaseFactory;->mposReaderDebugLogManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v32, v1

    check-cast v32, Lcom/stripe/stripeterminal/internal/common/log/MposReaderDebugLogManager;

    iget-object v1, v0, Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvideBbposUsbAdapter$adapter_releaseFactory;->loggerFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v33, v1

    check-cast v33, Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;

    invoke-static/range {v2 .. v33}, Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvideBbposUsbAdapter$adapter_releaseFactory;->provideBbposUsbAdapter$adapter_release(Lcom/stripe/core/readerupdate/UpdateClient;Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;Lio/reactivex/rxjava3/core/Scheduler;Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/core/readerconnection/ConnectionManager;Lcom/stripe/core/readerupdate/UpdateManager;Lcom/stripe/core/hardware/reactive/emv/ReactiveConfigurationListener;Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;Lcom/stripe/core/readerupdate/UpdateInstaller;Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/core/transaction/SettingsRepository;Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;Lcom/stripe/stripeterminal/internal/common/usb/UsbPermissionReceiverManager;Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;Lcom/stripe/core/hardware/updates/ReaderUpdateController;Lcom/stripe/core/hardware/ReaderInfoController;Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;Lcom/stripe/core/transaction/TransactionRepository;Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateMachine;Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository;Lcom/stripe/stripeterminal/internal/common/adapter/TerminalSdkDeviceListenerWrapper;Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistry;Lcom/stripe/hardware/emv/DomesticDebitAidsParser;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository;Lcom/stripe/core/hardware/reactive/ReaderInfoRepository;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/stripeterminal/internal/common/log/MposReaderEventLogger;Lcom/stripe/stripeterminal/internal/common/log/MposReaderDebugLogManager;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvideBbposUsbAdapter$adapter_releaseFactory;->get()Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;

    move-result-object v0

    return-object v0
.end method
