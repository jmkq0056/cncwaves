.class public interface abstract Lcom/stripe/stripeterminal/dagger/TerminalCommonModule;
.super Ljava/lang/Object;
.source "TerminalCommonComponent.kt"


# annotations
.annotation runtime Ldagger/Module;
    includes = {
        Lcom/stripe/stripeterminal/dagger/AccessibilityModeCheckModule;,
        Lcom/stripe/stripeterminal/dagger/AdapterModule;,
        Lcom/stripe/stripeterminal/dagger/ApiLevelModule;,
        Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule;,
        Lcom/stripe/stripeterminal/dagger/ApplicationInfoModule;,
        Lcom/stripe/jvmcore/client/dagger/ArmadaApiModule;,
        Lcom/stripe/stripeterminal/dagger/ArmadaClientModule;,
        Lcom/stripe/stripeterminal/internal/common/dagger/BbposDiscoveryModule;,
        Lcom/stripe/core/bbpos/hardware/dagger/BbposEmvModule;,
        Lcom/stripe/paymentcollection/dagger/BbposPaymentStateMachineModule;,
        Lcom/stripe/stripeterminal/internal/common/dagger/BbposProxyDiscoveryModule;,
        Lcom/stripe/core/bbpos/hardware/dagger/BbposReaderModule;,
        Lcom/stripe/core/bbpos/dagger/BbposSdkModule;,
        Lcom/stripe/core/bbpos/dagger/BbposUpdateModule;,
        Lcom/stripe/core/bbpos/hardware/dagger/BbposUpdateHardwareModule;,
        Lcom/stripe/transaction/dagger/ChargeAttemptManagerModule;,
        Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule;,
        Lcom/stripe/stripeterminal/internal/common/dagger/CommonModule;,
        Lcom/stripe/jvmcore/logging/dagger/CompositeTraceLoggerBatchDispatcherModule;,
        Lcom/stripe/stripeterminal/dagger/ContextModule;,
        Lcom/stripe/stripeterminal/internal/common/connectivity/dagger/ConnectivityModule;,
        Lcom/stripe/jvmcore/logging/dagger/CoreMetricLoggerModule;,
        Lcom/stripe/jvmcore/logging/dagger/CoreTraceLoggerModule;,
        Lcom/stripe/core/transaction/dagger/CoreTransactionModule;,
        Lcom/stripe/jvmcore/batchdispatcher/dagger/CoroutineSchedulerModule;,
        Lcom/stripe/stripeterminal/dagger/CotsModule;,
        Lcom/stripe/stripeterminal/internal/common/dagger/CrpcContextProviderModule;,
        Lcom/stripe/core/device/dagger/DeviceInfoModule;,
        Lcom/stripe/core/bbpos/hardware/dagger/DeviceListenerModule;,
        Lcom/stripe/stripeterminal/internal/common/dagger/DeviceTypeModule;,
        Lcom/stripe/jvmcore/logging/dagger/EmptyHealthMetricsListenerModule;,
        Lcom/stripe/core/hardware/reactive/dagger/EmvModule;,
        Lcom/stripe/core/encoder/EncoderModule;,
        Lcom/stripe/jvmcore/featureflag/dagger/FactoryImageNotSupportedFeatureFlagRepositoryModule;,
        Lcom/stripe/core/featureflag/dagger/FeatureFlagModule;,
        Lcom/stripe/stripeterminal/dagger/FilesModule;,
        Lcom/stripe/jvmcore/client/dagger/GatorModule;,
        Lcom/stripe/stripeterminal/dagger/GatorClientModule;,
        Lcom/stripe/jvmcore/gator/dagger/GatorDispatchersModule;,
        Lcom/stripe/jvmcore/logging/dagger/GatorMetricLoggerBatchDispatcherModule;,
        Lcom/stripe/stripeterminal/dagger/HandoffClientModule;,
        Lcom/stripe/stripeterminal/dagger/IpReaderModule;,
        Lcom/stripe/stripeterminal/dagger/JackrabbitModule;,
        Lcom/stripe/hardware/dagger/EmvModule;,
        Lcom/stripe/stripeterminal/dagger/LogModule;,
        Lcom/stripe/stripeterminal/dagger/MainlandModule;,
        Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule;,
        Lcom/stripe/stripeterminal/internal/common/dagger/MposReaderEventLoggerModule;,
        Lcom/stripe/stripeterminal/internal/common/dagger/MposReaderDebugLogManagerModule;,
        Lcom/stripe/stripeterminal/internal/common/connectivity/dagger/NetworkConnectivityModule;,
        Lcom/stripe/jvmcore/gator/dagger/NoopGatorUploaderOutOfMemoryLoggerModule;,
        Lcom/stripe/stripeterminal/dagger/OfflineModule;,
        Lcom/stripe/stripeterminal/internal/common/dagger/PassthroughHealthLoggerModule;,
        Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule;,
        Lcom/stripe/stripeterminal/dagger/PaymentCollectionExternalModule;,
        Lcom/stripe/stripeterminal/dagger/PermissionsModule;,
        Lcom/stripe/core/random/dagger/RandomModule;,
        Lcom/stripe/core/hardware/reactive/dagger/ReaderInfoModule;,
        Lcom/stripe/core/bbpos/hardware/dagger/BbposConnectionAndInfoModule;,
        Lcom/stripe/core/hardware/reactive/dagger/ReaderStatusModule;,
        Lcom/stripe/core/hardware/reactive/dagger/ReaderUpdateListenerModule;,
        Lcom/stripe/core/readerupdate/dagger/ReaderUpdateModule;,
        Lcom/stripe/stripeterminal/dagger/RootAccessModule;,
        Lcom/stripe/core/schedulers/dagger/SchedulersModule;,
        Lcom/stripe/stripeterminal/dagger/SdkPlatformDeviceInfoModule;,
        Lcom/stripe/stripeterminal/dagger/StorageModule;,
        Lcom/stripe/jvmcore/logging/dagger/StructuredEventLoggerModule;,
        Lcom/stripe/core/dagger/modules/SystemServiceModule;,
        Lcom/stripe/stripeterminal/dagger/TerminalModule;,
        Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalRequestFactoriesModule;,
        Lcom/stripe/stripeterminal/internal/common/terminalsession/dagger/TerminalSessionModule;,
        Lcom/stripe/time/dagger/TimeModule;,
        Lcom/stripe/stripeterminal/dagger/ValidatorModule;,
        Lcom/stripe/jvmcore/forms/dagger/FormsIntegrationLoggerModule;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0008a\u0018\u00002\u00020\u0001\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\u0002\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/dagger/TerminalCommonModule;",
        "",
        "sdkmanager_publish"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation
