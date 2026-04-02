.class final Lcom/stripe/stripeterminal/DaggerTerminalComponent$Factory;
.super Ljava/lang/Object;
.source "DaggerTerminalComponent.java"

# interfaces
.implements Lcom/stripe/stripeterminal/TerminalComponent$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/DaggerTerminalComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Factory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 737
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/stripe/stripeterminal/DaggerTerminalComponent$1;)V
    .locals 0

    .line 737
    invoke-direct {p0}, Lcom/stripe/stripeterminal/DaggerTerminalComponent$Factory;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/stripe/stripeterminal/dagger/Dependencies;Lcom/stripe/stripeterminal/dagger/TerminalModule;Lcom/stripe/stripeterminal/dagger/OfflineModule;Lcom/stripe/stripeterminal/dagger/ContextModule;Lcom/stripe/jvmcore/logging/terminal/dagger/LogLevelModule;Lcom/stripe/jvmcore/logging/dagger/MetricLoggerCollectorModule;Lcom/stripe/jvmcore/logging/dagger/TraceLoggerCollectorModule;Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule;)Lcom/stripe/stripeterminal/TerminalComponent;
    .locals 38

    .line 744
    invoke-static/range {p1 .. p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 745
    invoke-static/range {p2 .. p2}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    invoke-static/range {p3 .. p3}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 747
    invoke-static/range {p4 .. p4}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 748
    invoke-static/range {p5 .. p5}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 749
    invoke-static/range {p6 .. p6}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 750
    invoke-static/range {p7 .. p7}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 751
    invoke-static/range {p8 .. p8}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 752
    new-instance v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;

    new-instance v1, Lcom/stripe/stripeterminal/dagger/AccessibilityModeCheckModule;

    invoke-direct {v1}, Lcom/stripe/stripeterminal/dagger/AccessibilityModeCheckModule;-><init>()V

    new-instance v2, Lcom/stripe/stripeterminal/dagger/ApiLevelModule;

    invoke-direct {v2}, Lcom/stripe/stripeterminal/dagger/ApiLevelModule;-><init>()V

    new-instance v3, Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule;

    invoke-direct {v3}, Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule;-><init>()V

    new-instance v4, Lcom/stripe/stripeterminal/dagger/ApplicationInfoModule;

    invoke-direct {v4}, Lcom/stripe/stripeterminal/dagger/ApplicationInfoModule;-><init>()V

    new-instance v5, Lcom/stripe/paymentcollection/dagger/BbposPaymentStateMachineModule;

    invoke-direct {v5}, Lcom/stripe/paymentcollection/dagger/BbposPaymentStateMachineModule;-><init>()V

    new-instance v6, Lcom/stripe/core/bbpos/dagger/BbposSdkModule;

    invoke-direct {v6}, Lcom/stripe/core/bbpos/dagger/BbposSdkModule;-><init>()V

    new-instance v7, Lcom/stripe/transaction/dagger/ChargeAttemptManagerModule;

    invoke-direct {v7}, Lcom/stripe/transaction/dagger/ChargeAttemptManagerModule;-><init>()V

    new-instance v9, Lcom/stripe/stripeterminal/internal/common/dagger/CommonModule;

    invoke-direct {v9}, Lcom/stripe/stripeterminal/internal/common/dagger/CommonModule;-><init>()V

    new-instance v13, Lcom/stripe/jvmcore/batchdispatcher/dagger/CoroutineSchedulerModule;

    invoke-direct {v13}, Lcom/stripe/jvmcore/batchdispatcher/dagger/CoroutineSchedulerModule;-><init>()V

    new-instance v14, Lcom/stripe/stripeterminal/dagger/CotsModule;

    invoke-direct {v14}, Lcom/stripe/stripeterminal/dagger/CotsModule;-><init>()V

    new-instance v15, Lcom/stripe/core/device/dagger/BuildValuesModule;

    invoke-direct {v15}, Lcom/stripe/core/device/dagger/BuildValuesModule;-><init>()V

    new-instance v16, Lcom/stripe/core/device/dagger/SdkIntModule;

    invoke-direct/range {v16 .. v16}, Lcom/stripe/core/device/dagger/SdkIntModule;-><init>()V

    new-instance v17, Lcom/stripe/jvmcore/featureflag/dagger/FactoryImageNotSupportedFeatureFlagRepositoryModule;

    invoke-direct/range {v17 .. v17}, Lcom/stripe/jvmcore/featureflag/dagger/FactoryImageNotSupportedFeatureFlagRepositoryModule;-><init>()V

    new-instance v18, Lcom/stripe/core/featureflag/dagger/FeatureFlagModule;

    invoke-direct/range {v18 .. v18}, Lcom/stripe/core/featureflag/dagger/FeatureFlagModule;-><init>()V

    new-instance v19, Lcom/stripe/jvmcore/logging/dagger/GatorMetricLoggerBatchDispatcherModule;

    invoke-direct/range {v19 .. v19}, Lcom/stripe/jvmcore/logging/dagger/GatorMetricLoggerBatchDispatcherModule;-><init>()V

    new-instance v20, Lcom/stripe/stripeterminal/dagger/HandoffClientModule;

    invoke-direct/range {v20 .. v20}, Lcom/stripe/stripeterminal/dagger/HandoffClientModule;-><init>()V

    new-instance v21, Lcom/stripe/stripeterminal/dagger/IpReaderModule;

    invoke-direct/range {v21 .. v21}, Lcom/stripe/stripeterminal/dagger/IpReaderModule;-><init>()V

    new-instance v23, Lcom/stripe/stripeterminal/internal/common/connectivity/dagger/NetworkConnectivityModule;

    invoke-direct/range {v23 .. v23}, Lcom/stripe/stripeterminal/internal/common/connectivity/dagger/NetworkConnectivityModule;-><init>()V

    new-instance v24, Lcom/stripe/jvmcore/gator/dagger/NoopGatorUploaderOutOfMemoryLoggerModule;

    invoke-direct/range {v24 .. v24}, Lcom/stripe/jvmcore/gator/dagger/NoopGatorUploaderOutOfMemoryLoggerModule;-><init>()V

    new-instance v26, Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule;

    invoke-direct/range {v26 .. v26}, Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule;-><init>()V

    new-instance v27, Lcom/stripe/stripeterminal/dagger/PaymentCollectionExternalModule;

    invoke-direct/range {v27 .. v27}, Lcom/stripe/stripeterminal/dagger/PaymentCollectionExternalModule;-><init>()V

    new-instance v28, Lcom/stripe/stripeterminal/dagger/PermissionsModule;

    invoke-direct/range {v28 .. v28}, Lcom/stripe/stripeterminal/dagger/PermissionsModule;-><init>()V

    new-instance v29, Lcom/stripe/core/hardware/reactive/dagger/ReaderStatusModule;

    invoke-direct/range {v29 .. v29}, Lcom/stripe/core/hardware/reactive/dagger/ReaderStatusModule;-><init>()V

    new-instance v30, Lcom/stripe/stripeterminal/dagger/RootAccessModule;

    invoke-direct/range {v30 .. v30}, Lcom/stripe/stripeterminal/dagger/RootAccessModule;-><init>()V

    new-instance v31, Lcom/stripe/stripeterminal/dagger/StorageModule;

    invoke-direct/range {v31 .. v31}, Lcom/stripe/stripeterminal/dagger/StorageModule;-><init>()V

    new-instance v32, Lcom/stripe/jvmcore/logging/dagger/StructuredEventLoggerModule;

    invoke-direct/range {v32 .. v32}, Lcom/stripe/jvmcore/logging/dagger/StructuredEventLoggerModule;-><init>()V

    new-instance v34, Lcom/stripe/jvmcore/client/dagger/HttpClientBaseModule;

    invoke-direct/range {v34 .. v34}, Lcom/stripe/jvmcore/client/dagger/HttpClientBaseModule;-><init>()V

    new-instance v35, Lcom/stripe/time/dagger/TimeModule;

    invoke-direct/range {v35 .. v35}, Lcom/stripe/time/dagger/TimeModule;-><init>()V

    const/16 v37, 0x0

    move-object/from16 v36, p1

    move-object/from16 v33, p2

    move-object/from16 v25, p3

    move-object/from16 v10, p4

    move-object/from16 v22, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v37}, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;-><init>(Lcom/stripe/stripeterminal/dagger/AccessibilityModeCheckModule;Lcom/stripe/stripeterminal/dagger/ApiLevelModule;Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule;Lcom/stripe/stripeterminal/dagger/ApplicationInfoModule;Lcom/stripe/paymentcollection/dagger/BbposPaymentStateMachineModule;Lcom/stripe/core/bbpos/dagger/BbposSdkModule;Lcom/stripe/transaction/dagger/ChargeAttemptManagerModule;Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule;Lcom/stripe/stripeterminal/internal/common/dagger/CommonModule;Lcom/stripe/stripeterminal/dagger/ContextModule;Lcom/stripe/jvmcore/logging/dagger/MetricLoggerCollectorModule;Lcom/stripe/jvmcore/logging/dagger/TraceLoggerCollectorModule;Lcom/stripe/jvmcore/batchdispatcher/dagger/CoroutineSchedulerModule;Lcom/stripe/stripeterminal/dagger/CotsModule;Lcom/stripe/core/device/dagger/BuildValuesModule;Lcom/stripe/core/device/dagger/SdkIntModule;Lcom/stripe/jvmcore/featureflag/dagger/FactoryImageNotSupportedFeatureFlagRepositoryModule;Lcom/stripe/core/featureflag/dagger/FeatureFlagModule;Lcom/stripe/jvmcore/logging/dagger/GatorMetricLoggerBatchDispatcherModule;Lcom/stripe/stripeterminal/dagger/HandoffClientModule;Lcom/stripe/stripeterminal/dagger/IpReaderModule;Lcom/stripe/jvmcore/logging/terminal/dagger/LogLevelModule;Lcom/stripe/stripeterminal/internal/common/connectivity/dagger/NetworkConnectivityModule;Lcom/stripe/jvmcore/gator/dagger/NoopGatorUploaderOutOfMemoryLoggerModule;Lcom/stripe/stripeterminal/dagger/OfflineModule;Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule;Lcom/stripe/stripeterminal/dagger/PaymentCollectionExternalModule;Lcom/stripe/stripeterminal/dagger/PermissionsModule;Lcom/stripe/core/hardware/reactive/dagger/ReaderStatusModule;Lcom/stripe/stripeterminal/dagger/RootAccessModule;Lcom/stripe/stripeterminal/dagger/StorageModule;Lcom/stripe/jvmcore/logging/dagger/StructuredEventLoggerModule;Lcom/stripe/stripeterminal/dagger/TerminalModule;Lcom/stripe/jvmcore/client/dagger/HttpClientBaseModule;Lcom/stripe/time/dagger/TimeModule;Lcom/stripe/stripeterminal/dagger/Dependencies;Lcom/stripe/stripeterminal/DaggerTerminalComponent$1;)V

    return-object v0
.end method
