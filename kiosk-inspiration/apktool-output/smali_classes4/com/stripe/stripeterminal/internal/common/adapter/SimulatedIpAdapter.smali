.class public final Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedIpAdapter;
.super Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter;
.source "SimulatedIpAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedIpAdapter$Companion;,
        Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedIpAdapter$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSimulatedIpAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SimulatedIpAdapter.kt\ncom/stripe/stripeterminal/internal/common/adapter/SimulatedIpAdapter\n+ 2 LoggerFactory.kt\ncom/stripe/jvmcore/logging/terminal/log/LoggerFactoryKt\n*L\n1#1,120:1\n16#2:121\n*S KotlinDebug\n*F\n+ 1 SimulatedIpAdapter.kt\ncom/stripe/stripeterminal/internal/common/adapter/SimulatedIpAdapter\n*L\n38#1:121\n*E\n"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u0000 $2\u00020\u0001:\u0001$B?\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0002\u0010\u0010J\u001a\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u0010\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J\u0010\u0010\u001b\u001a\u00020\u00142\u0006\u0010\u001c\u001a\u00020\u001dH\u0016J\u0010\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u0012H\u0016J\u0018\u0010!\u001a\u00020\u001f2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\"\u001a\u00020#H\u0016R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006%"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedIpAdapter;",
        "Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter;",
        "clock",
        "Lcom/stripe/time/Clock;",
        "transactionRepository",
        "Lcom/stripe/core/transaction/TransactionRepository;",
        "simulatorConfigurationRepository",
        "Lcom/stripe/stripeterminal/internal/common/adapter/SimulatorConfigurationRepository;",
        "statusManager",
        "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;",
        "loggerFactory",
        "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
        "updateClient",
        "Lcom/stripe/core/readerupdate/UpdateClient;",
        "offlineConfigUpdateListener",
        "Lcom/stripe/core/readerupdate/UpdateClient$OfflineConfigUpdateListener;",
        "(Lcom/stripe/time/Clock;Lcom/stripe/core/transaction/TransactionRepository;Lcom/stripe/stripeterminal/internal/common/adapter/SimulatorConfigurationRepository;Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;Lcom/stripe/core/readerupdate/UpdateClient;Lcom/stripe/core/readerupdate/UpdateClient$OfflineConfigUpdateListener;)V",
        "checkForUpdate",
        "Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;",
        "reader",
        "Lcom/stripe/stripeterminal/external/models/Reader;",
        "failSilently",
        "",
        "collectPaymentMethod",
        "Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;",
        "paymentMethodCollectionType",
        "Lcom/stripe/transaction/PaymentMethodCollectionType;",
        "getSimulatedReader",
        "deviceType",
        "Lcom/stripe/stripeterminal/external/models/DeviceType;",
        "installUpdate",
        "",
        "update",
        "onReaderActivated",
        "response",
        "Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;",
        "Companion",
        "adapter_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedIpAdapter$Companion;

.field public static final SIMULATED_SMART_READER_CONFIG:Ljava/lang/String; = "192.168.2.12"

.field public static final SIMULATED_SMART_READER_FIRMWARE:Ljava/lang/String; = "192.168.2.12"

.field public static final SIMULATED_SMART_READER_IP_ADDRESS:Ljava/lang/String; = "192.168.2.12"

.field public static final SIMULATED_SMART_READER_KEY_PROFILE:Ljava/lang/String; = "192.168.2.12"


# instance fields
.field private final offlineConfigUpdateListener:Lcom/stripe/core/readerupdate/UpdateClient$OfflineConfigUpdateListener;

.field private final updateClient:Lcom/stripe/core/readerupdate/UpdateClient;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedIpAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedIpAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedIpAdapter;->Companion:Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedIpAdapter$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/stripe/time/Clock;Lcom/stripe/core/transaction/TransactionRepository;Lcom/stripe/stripeterminal/internal/common/adapter/SimulatorConfigurationRepository;Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;Lcom/stripe/core/readerupdate/UpdateClient;Lcom/stripe/core/readerupdate/UpdateClient$OfflineConfigUpdateListener;)V
    .locals 8
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "clock"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transactionRepository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "simulatorConfigurationRepository"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "statusManager"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loggerFactory"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updateClient"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offlineConfigUpdateListener"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedIpAdapter$1;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedIpAdapter$1;

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function0;

    .line 121
    const-class v0, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedIpAdapter;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {p5, v0}, Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;->create(Lkotlin/reflect/KClass;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 32
    invoke-direct/range {v1 .. v7}, Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter;-><init>(Lcom/stripe/time/Clock;Lcom/stripe/core/transaction/TransactionRepository;Lcom/stripe/stripeterminal/internal/common/adapter/SimulatorConfigurationRepository;Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lkotlin/jvm/functions/Function0;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V

    .line 30
    iput-object p6, v1, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedIpAdapter;->updateClient:Lcom/stripe/core/readerupdate/UpdateClient;

    .line 31
    iput-object p7, v1, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedIpAdapter;->offlineConfigUpdateListener:Lcom/stripe/core/readerupdate/UpdateClient$OfflineConfigUpdateListener;

    return-void
.end method


# virtual methods
.method public checkForUpdate(Lcom/stripe/stripeterminal/external/models/Reader;Z)Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;
    .locals 0

    const-string p2, "reader"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public collectPaymentMethod(Lcom/stripe/transaction/PaymentMethodCollectionType;)Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    const-string v0, "paymentMethodCollectionType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 107
    invoke-virtual {p0, v0, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedIpAdapter;->readCard(ZLcom/stripe/transaction/PaymentMethodCollectionType;)Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;

    move-result-object p1

    return-object p1
.end method

.method public getSimulatedReader(Lcom/stripe/stripeterminal/external/models/DeviceType;)Lcom/stripe/stripeterminal/external/models/Reader;
    .locals 40

    move-object/from16 v1, p1

    const-string v0, "deviceType"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedIpAdapter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/DeviceType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v0, v5, :cond_1

    if-ne v0, v3, :cond_0

    .line 70
    new-array v0, v2, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/DeviceType;->getSerialPrefixes()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "SIMULATOR"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "My "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    .line 72
    const-string v2, "2.12.0.8"

    aput-object v2, v0, v3

    .line 69
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 75
    :cond_0
    new-instance v6, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 76
    sget-object v7, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Attempting to create simulated reader for unexpected device type "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v11, 0xc

    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 75
    invoke-direct/range {v6 .. v12}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v6

    .line 68
    :cond_1
    new-array v0, v2, [Ljava/lang/String;

    const-string v2, "123-456-789"

    aput-object v2, v0, v4

    const-string v2, "created-lamb-elephant"

    aput-object v2, v0, v5

    const-string v2, "3.0.1.16"

    aput-object v2, v0, v3

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 67
    :goto_0
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Ljava/lang/String;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/lang/String;

    .line 89
    new-instance v0, Lcom/stripe/stripeterminal/external/models/ExpandableLocation$Expanded;

    sget-object v2, Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker;

    invoke-virtual {v2}, Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker;->simulatedLocation()Lcom/stripe/stripeterminal/external/models/Location;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/stripe/stripeterminal/external/models/ExpandableLocation$Expanded;-><init>(Lcom/stripe/stripeterminal/external/models/Location;)V

    .line 91
    sget-object v6, Lcom/stripe/stripeterminal/external/models/Reader$NetworkStatus;->ONLINE:Lcom/stripe/stripeterminal/external/models/Reader$NetworkStatus;

    move-object v2, v0

    .line 80
    new-instance v0, Lcom/stripe/stripeterminal/external/models/Reader;

    .line 89
    check-cast v2, Lcom/stripe/stripeterminal/external/models/ExpandableLocation;

    .line 88
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const/16 v38, 0xf

    const/16 v39, 0x0

    const/4 v3, 0x0

    .line 80
    const-string v4, "tmr_DsNvhA6mLpMH48"

    const/4 v5, 0x1

    const-string v10, ""

    const-string v11, "192.168.2.12"

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, -0xffc

    invoke-direct/range {v0 .. v39}, Lcom/stripe/stripeterminal/external/models/Reader;-><init>(Lcom/stripe/stripeterminal/external/models/DeviceType;Lcom/stripe/stripeterminal/external/models/ExpandableLocation;Lcom/stripe/stripeterminal/external/models/LocationStatus;Ljava/lang/String;ZLcom/stripe/stripeterminal/external/models/Reader$NetworkStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Landroid/bluetooth/BluetoothDevice;Landroid/hardware/usb/UsbDevice;Lcom/stripe/stripeterminal/external/models/Location;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;Ljava/lang/Boolean;ZLjava/lang/String;Ljava/lang/Float;Ljava/lang/Boolean;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public installUpdate(Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;)V
    .locals 1

    const-string v0, "update"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Not implemented"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onReaderActivated(Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;)V
    .locals 13

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "response"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-super {p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter;->onReaderActivated(Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;)V

    .line 50
    :try_start_0
    sget-object p2, Lcom/stripe/core/hardware/reactive/emv/ClientConfigData;->Companion:Lcom/stripe/core/hardware/reactive/emv/ClientConfigData$Companion;

    const-string v0, "AB91315AB4D9E0ABA497398AE2219CD2"

    invoke-virtual {p2, v0}, Lcom/stripe/core/hardware/reactive/emv/ClientConfigData$Companion;->parseClientConfigData(Ljava/lang/String;)Lcom/stripe/core/hardware/reactive/emv/ClientConfigData;

    move-result-object p2

    .line 51
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedIpAdapter;->offlineConfigUpdateListener:Lcom/stripe/core/readerupdate/UpdateClient$OfflineConfigUpdateListener;

    .line 52
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/Reader;->getSerialNumber()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 57
    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedIpAdapter;->updateClient:Lcom/stripe/core/readerupdate/UpdateClient;

    invoke-virtual {v2, p2}, Lcom/stripe/core/readerupdate/UpdateClient;->downloadMobilePosConfig(Lcom/stripe/core/hardware/reactive/emv/ClientConfigData;)Lcom/stripe/proto/model/config/MobileClientConfig;

    move-result-object p2

    iget-object p2, p2, Lcom/stripe/proto/model/config/MobileClientConfig;->offline_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;

    .line 56
    invoke-virtual {p0, p2, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedIpAdapter;->updateOfflineConfigForSimulatedReader$adapter_release(Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;Lcom/stripe/stripeterminal/external/models/Reader;)Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 51
    invoke-interface/range {v0 .. v5}, Lcom/stripe/core/readerupdate/UpdateClient$OfflineConfigUpdateListener;->onOfflineConfigUpdateForMobileReader(Ljava/lang/String;Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;)V

    return-void

    .line 52
    :cond_0
    new-instance v6, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 53
    sget-object v7, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 54
    const-string v8, "Simulated reader serial should never be null."

    const/16 v11, 0xc

    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 52
    invoke-direct/range {v6 .. v12}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
