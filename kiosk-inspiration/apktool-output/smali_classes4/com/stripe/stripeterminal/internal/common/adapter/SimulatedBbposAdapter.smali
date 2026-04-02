.class public abstract Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedBbposAdapter;
.super Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter;
.source "SimulatedBbposAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedBbposAdapter$Companion;,
        Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedBbposAdapter$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSimulatedBbposAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SimulatedBbposAdapter.kt\ncom/stripe/stripeterminal/internal/common/adapter/SimulatedBbposAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,320:1\n766#2:321\n857#2,2:322\n*S KotlinDebug\n*F\n+ 1 SimulatedBbposAdapter.kt\ncom/stripe/stripeterminal/internal/common/adapter/SimulatedBbposAdapter\n*L\n286#1:321\n286#1:322,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a0\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0007\u0008&\u0018\u0000 <2\u00020\u0001:\u0001<Be\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u0012\u0006\u0010\u0012\u001a\u00020\u0013\u0012\u0016\u0010\u0014\u001a\u0012\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00170\u0015j\u0002`\u0018\u00a2\u0006\u0002\u0010\u0019J\u001a\u0010\'\u001a\u0004\u0018\u00010(2\u0006\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020,H\u0016J\u0010\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u000200H\u0016J\u0010\u00101\u001a\u00020*2\u0006\u00102\u001a\u000203H\u0016J\u0008\u00104\u001a\u00020&H\u0002J\u0010\u00105\u001a\u0002062\u0006\u00107\u001a\u00020(H\u0016J\u0008\u00108\u001a\u000206H\u0016J\u0008\u00109\u001a\u000206H\u0016J\u0008\u0010:\u001a\u000206H\u0002J\u0008\u0010;\u001a\u000206H\u0002R\u001b\u0010\u001a\u001a\u00020\u001b8BX\u0082\u0084\u0002\u00a2\u0006\u000c\u001a\u0004\u0008\u001e\u0010\u001f*\u0004\u0008\u001c\u0010\u001dR\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010 \u001a\u0004\u0018\u00010!X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\"\u001a\u00020#X\u0082\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\n\u0002\u0010$R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020&X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006="
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedBbposAdapter;",
        "Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter;",
        "clock",
        "Lcom/stripe/time/Clock;",
        "transactionRepository",
        "Lcom/stripe/core/transaction/TransactionRepository;",
        "mainScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "simulatorConfigurationRepository",
        "Lcom/stripe/stripeterminal/internal/common/adapter/SimulatorConfigurationRepository;",
        "statusManager",
        "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;",
        "applicationInformationProvider",
        "Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;",
        "bbposReaderInfoFactory",
        "Lcom/stripe/core/bbpos/hardware/BbposReaderInfoFactory;",
        "updateClient",
        "Lcom/stripe/core/readerupdate/UpdateClient;",
        "offlineConfigUpdateListener",
        "Lcom/stripe/core/readerupdate/UpdateClient$OfflineConfigUpdateListener;",
        "logger",
        "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;",
        "Lcom/stripe/loggingmodels/ApplicationTrace;",
        "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
        "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;",
        "(Lcom/stripe/time/Clock;Lcom/stripe/core/transaction/TransactionRepository;Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/stripeterminal/internal/common/adapter/SimulatorConfigurationRepository;Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;Lcom/stripe/core/bbpos/hardware/BbposReaderInfoFactory;Lcom/stripe/core/readerupdate/UpdateClient;Lcom/stripe/core/readerupdate/UpdateClient$OfflineConfigUpdateListener;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V",
        "appInfo",
        "Lcom/stripe/terminal/appinfo/ApplicationInformation;",
        "getAppInfo$delegate",
        "(Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedBbposAdapter;)Ljava/lang/Object;",
        "getAppInfo",
        "()Lcom/stripe/terminal/appinfo/ApplicationInformation;",
        "batteryStatusJob",
        "Lkotlinx/coroutines/Job;",
        "batteryStatusUpdateDelay",
        "Lkotlin/time/Duration;",
        "J",
        "cachedUpdateType",
        "Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;",
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
        "getUpdateType",
        "installUpdate",
        "",
        "update",
        "onConnect",
        "onDisconnect",
        "startBatteryStatusUpdates",
        "stopBatteryStatusUpdates",
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
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final CONNECTED_READER_BATTERY_INFO:Lcom/stripe/stripeterminal/external/models/ReaderBatteryInfo;

.field private static final CONNECTED_READER_LOW_BATTERY_INFO:Lcom/stripe/stripeterminal/external/models/ReaderBatteryInfo;

.field public static final Companion:Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedBbposAdapter$Companion;

.field private static final SLEEP_QUANTUM_MS:J = 0x7d0L

.field private static final UPDATE_STATES_WITH_DISALLOWED_OFFLINE_CONNECTION:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final applicationInformationProvider:Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;

.field private batteryStatusJob:Lkotlinx/coroutines/Job;

.field private final batteryStatusUpdateDelay:J

.field private final bbposReaderInfoFactory:Lcom/stripe/core/bbpos/hardware/BbposReaderInfoFactory;

.field private cachedUpdateType:Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;

.field private final mainScope:Lkotlinx/coroutines/CoroutineScope;

.field private final offlineConfigUpdateListener:Lcom/stripe/core/readerupdate/UpdateClient$OfflineConfigUpdateListener;

.field private final updateClient:Lcom/stripe/core/readerupdate/UpdateClient;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x1

    new-array v1, v0, [Lkotlin/reflect/KProperty;

    .line 69
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "appInfo"

    const-string v4, "getAppInfo()Lcom/stripe/terminal/appinfo/ApplicationInformation;"

    const-class v5, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedBbposAdapter;

    const/4 v6, 0x0

    invoke-direct {v2, v5, v3, v4, v6}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v2, Lkotlin/jvm/internal/PropertyReference1;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    aput-object v2, v1, v6

    sput-object v1, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedBbposAdapter;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v1, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedBbposAdapter$Companion;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedBbposAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedBbposAdapter;->Companion:Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedBbposAdapter$Companion;

    .line 306
    new-instance v1, Lcom/stripe/stripeterminal/external/models/ReaderBatteryInfo;

    .line 307
    sget-object v2, Lcom/stripe/stripeterminal/external/models/BatteryStatus;->NOMINAL:Lcom/stripe/stripeterminal/external/models/BatteryStatus;

    const v3, 0x3f59999a    # 0.85f

    .line 308
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 309
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 306
    invoke-direct {v1, v2, v3, v4}, Lcom/stripe/stripeterminal/external/models/ReaderBatteryInfo;-><init>(Lcom/stripe/stripeterminal/external/models/BatteryStatus;Ljava/lang/Float;Ljava/lang/Boolean;)V

    sput-object v1, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedBbposAdapter;->CONNECTED_READER_BATTERY_INFO:Lcom/stripe/stripeterminal/external/models/ReaderBatteryInfo;

    .line 312
    new-instance v1, Lcom/stripe/stripeterminal/external/models/ReaderBatteryInfo;

    .line 313
    sget-object v2, Lcom/stripe/stripeterminal/external/models/BatteryStatus;->LOW:Lcom/stripe/stripeterminal/external/models/BatteryStatus;

    const v3, 0x3e19999a    # 0.15f

    .line 314
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 315
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 312
    invoke-direct {v1, v2, v3, v4}, Lcom/stripe/stripeterminal/external/models/ReaderBatteryInfo;-><init>(Lcom/stripe/stripeterminal/external/models/BatteryStatus;Ljava/lang/Float;Ljava/lang/Boolean;)V

    sput-object v1, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedBbposAdapter;->CONNECTED_READER_LOW_BATTERY_INFO:Lcom/stripe/stripeterminal/external/models/ReaderBatteryInfo;

    const/4 v1, 0x2

    .line 317
    new-array v1, v1, [Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;

    sget-object v2, Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;->LOW_BATTERY:Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;

    aput-object v2, v1, v6

    sget-object v2, Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;->REQUIRED_FOR_OFFLINE:Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;

    aput-object v2, v1, v0

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedBbposAdapter;->UPDATE_STATES_WITH_DISALLOWED_OFFLINE_CONNECTION:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/stripe/time/Clock;Lcom/stripe/core/transaction/TransactionRepository;Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/stripeterminal/internal/common/adapter/SimulatorConfigurationRepository;Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;Lcom/stripe/core/bbpos/hardware/BbposReaderInfoFactory;Lcom/stripe/core/readerupdate/UpdateClient;Lcom/stripe/core/readerupdate/UpdateClient$OfflineConfigUpdateListener;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/time/Clock;",
            "Lcom/stripe/core/transaction/TransactionRepository;",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lcom/stripe/stripeterminal/internal/common/adapter/SimulatorConfigurationRepository;",
            "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;",
            "Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;",
            "Lcom/stripe/core/bbpos/hardware/BbposReaderInfoFactory;",
            "Lcom/stripe/core/readerupdate/UpdateClient;",
            "Lcom/stripe/core/readerupdate/UpdateClient$OfflineConfigUpdateListener;",
            "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    const-string v0, "clock"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transactionRepository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mainScope"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "simulatorConfigurationRepository"

    move-object v3, p4

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "statusManager"

    move-object/from16 v4, p5

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "applicationInformationProvider"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bbposReaderInfoFactory"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updateClient"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offlineConfigUpdateListener"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    move-object/from16 v6, p10

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedBbposAdapter$1;

    invoke-direct {v0, v7}, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedBbposAdapter$1;-><init>(Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;)V

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function0;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 57
    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter;-><init>(Lcom/stripe/time/Clock;Lcom/stripe/core/transaction/TransactionRepository;Lcom/stripe/stripeterminal/internal/common/adapter/SimulatorConfigurationRepository;Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lkotlin/jvm/functions/Function0;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V

    .line 49
    iput-object p3, p0, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedBbposAdapter;->mainScope:Lkotlinx/coroutines/CoroutineScope;

    .line 52
    iput-object v7, p0, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedBbposAdapter;->applicationInformationProvider:Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;

    .line 53
    iput-object v8, p0, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedBbposAdapter;->bbposReaderInfoFactory:Lcom/stripe/core/bbpos/hardware/BbposReaderInfoFactory;

    .line 54
    iput-object v9, p0, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedBbposAdapter;->updateClient:Lcom/stripe/core/readerupdate/UpdateClient;

    .line 55
    iput-object v10, p0, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedBbposAdapter;->offlineConfigUpdateListener:Lcom/stripe/core/readerupdate/UpdateClient$OfflineConfigUpdateListener;

    .line 65
    sget-object v1, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    const/16 v1, 0xa

    sget-object v2, Lkotlin/time/DurationUnit;->MINUTES:Lkotlin/time/DurationUnit;

    invoke-static {v1, v2}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedBbposAdapter;->batteryStatusUpdateDelay:J

    .line 67
    invoke-direct {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedBbposAdapter;->getUpdateType()Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;

    move-result-object v1

    iput-object v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedBbposAdapter;->cachedUpdateType:Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;

    return-void
.end method

.method public static final synthetic access$getBatteryStatusUpdateDelay$p(Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedBbposAdapter;)J
    .locals 2

    .line 45
    iget-wide v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedBbposAdapter;->batteryStatusUpdateDelay:J

    return-wide v0
.end method

.method public static final synthetic access$getCONNECTED_READER_BATTERY_INFO$cp()Lcom/stripe/stripeterminal/external/models/ReaderBatteryInfo;
    .locals 1

    .line 45
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedBbposAdapter;->CONNECTED_READER_BATTERY_INFO:Lcom/stripe/stripeterminal/external/models/ReaderBatteryInfo;

    return-object v0
.end method

.method public static final synthetic access$getCONNECTED_READER_LOW_BATTERY_INFO$cp()Lcom/stripe/stripeterminal/external/models/ReaderBatteryInfo;
    .locals 1

    .line 45
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedBbposAdapter;->CONNECTED_READER_LOW_BATTERY_INFO:Lcom/stripe/stripeterminal/external/models/ReaderBatteryInfo;

    return-object v0
.end method

.method public static final synthetic access$getCachedUpdateType$p(Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedBbposAdapter;)Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedBbposAdapter;->cachedUpdateType:Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;

    return-object p0
.end method

.method public static final synthetic access$getUPDATE_STATES_WITH_DISALLOWED_OFFLINE_CONNECTION$cp()Ljava/util/List;
    .locals 1

    .line 45
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedBbposAdapter;->UPDATE_STATES_WITH_DISALLOWED_OFFLINE_CONNECTION:Ljava/util/List;

    return-object v0
.end method

.method private final getAppInfo()Lcom/stripe/terminal/appinfo/ApplicationInformation;
    .locals 3

    .line 69
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedBbposAdapter;->applicationInformationProvider:Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;

    sget-object v1, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedBbposAdapter;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lcom/stripe/terminal/appinfo/ApplicationInformation;

    move-result-object v0

    return-object v0
.end method

.method private static getAppInfo$delegate(Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedBbposAdapter;)Ljava/lang/Object;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedBbposAdapter;->applicationInformationProvider:Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;

    return-object p0
.end method

.method private final getUpdateType()Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;
    .locals 2

    .line 83
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedBbposAdapter;->getSimulatorConfigurationRepository()Lcom/stripe/stripeterminal/internal/common/adapter/SimulatorConfigurationRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatorConfigurationRepository;->getSimulatorConfiguration()Lcom/stripe/stripeterminal/external/models/SimulatorConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/SimulatorConfiguration;->getUpdate()Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;

    move-result-object v0

    sget-object v1, Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;->RANDOM:Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;

    if-ne v0, v1, :cond_4

    .line 84
    sget-object v0, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lkotlin/random/Random$Default;->nextInt(I)I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 89
    sget-object v0, Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;->REQUIRED:Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;

    return-object v0

    .line 88
    :cond_0
    sget-object v0, Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;->REQUIRED_FOR_OFFLINE:Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;

    return-object v0

    .line 87
    :cond_1
    sget-object v0, Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;->LOW_BATTERY_SUCCEED_CONNECT:Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;

    return-object v0

    .line 86
    :cond_2
    sget-object v0, Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;->LOW_BATTERY:Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;

    return-object v0

    .line 85
    :cond_3
    sget-object v0, Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;->UPDATE_AVAILABLE:Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;

    return-object v0

    .line 92
    :cond_4
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedBbposAdapter;->getSimulatorConfigurationRepository()Lcom/stripe/stripeterminal/internal/common/adapter/SimulatorConfigurationRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatorConfigurationRepository;->getSimulatorConfiguration()Lcom/stripe/stripeterminal/external/models/SimulatorConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/SimulatorConfiguration;->getUpdate()Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;

    move-result-object v0

    return-object v0
.end method

.method private final startBatteryStatusUpdates()V
    .locals 6

    .line 97
    invoke-direct {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedBbposAdapter;->stopBatteryStatusUpdates()V

    .line 98
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedBbposAdapter;->mainScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedBbposAdapter$startBatteryStatusUpdates$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedBbposAdapter$startBatteryStatusUpdates$1;-><init>(Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedBbposAdapter;Lkotlin/coroutines/Continuation;)V

    move-object v3, v1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedBbposAdapter;->batteryStatusJob:Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final stopBatteryStatusUpdates()V
    .locals 3

    .line 121
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedBbposAdapter;->batteryStatusJob:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public checkForUpdate(Lcom/stripe/stripeterminal/external/models/Reader;Z)Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;
    .locals 32
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "reader"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x7d0

    .line 172
    invoke-virtual {v0, v2, v3}, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedBbposAdapter;->sleep(J)V

    const/4 v2, 0x0

    .line 184
    :try_start_0
    sget-object v3, Lcom/stripe/core/hardware/reactive/emv/ClientConfigData;->Companion:Lcom/stripe/core/hardware/reactive/emv/ClientConfigData$Companion;

    .line 177
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/Reader;->getDeviceType()Lcom/stripe/stripeterminal/external/models/DeviceType;

    move-result-object v4

    sget-object v5, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedBbposAdapter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v4}, Lcom/stripe/stripeterminal/external/models/DeviceType;->ordinal()I

    move-result v4

    aget v4, v5, v4

    const/4 v5, 0x1

    const/4 v6, 0x3

    if-eq v4, v5, :cond_2

    const/4 v7, 0x2

    if-eq v4, v7, :cond_2

    if-eq v4, v6, :cond_2

    const/4 v7, 0x4

    if-eq v4, v7, :cond_1

    const/4 v7, 0x5

    if-ne v4, v7, :cond_0

    goto :goto_0

    .line 180
    :cond_0
    new-instance v8, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 181
    sget-object v9, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 182
    const-string v10, "Unexpected simulated mPOS reader type."

    const/16 v13, 0xc

    const/4 v14, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 180
    invoke-direct/range {v8 .. v14}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v8

    .line 179
    :cond_1
    :goto_0
    const-string v4, "C5F54F0DA8D5C461AD01CC258CC22DD120494D5F57495345504144332D53504C415348"

    goto :goto_1

    .line 178
    :cond_2
    const-string v4, "AB91315AB4D9E0ABA497398AE2219CD2"

    .line 184
    :goto_1
    invoke-virtual {v3, v4}, Lcom/stripe/core/hardware/reactive/emv/ClientConfigData$Companion;->parseClientConfigData(Ljava/lang/String;)Lcom/stripe/core/hardware/reactive/emv/ClientConfigData;

    move-result-object v3

    .line 186
    iget-object v4, v0, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedBbposAdapter;->updateClient:Lcom/stripe/core/readerupdate/UpdateClient;

    invoke-virtual {v4, v3}, Lcom/stripe/core/readerupdate/UpdateClient;->downloadMobilePosConfig(Lcom/stripe/core/hardware/reactive/emv/ClientConfigData;)Lcom/stripe/proto/model/config/MobileClientConfig;

    move-result-object v7

    .line 189
    iget-object v3, v7, Lcom/stripe/proto/model/config/MobileClientConfig;->offline_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;

    .line 188
    invoke-virtual {v0, v3, v1}, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedBbposAdapter;->updateOfflineConfigForSimulatedReader$adapter_release(Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;Lcom/stripe/stripeterminal/external/models/Reader;)Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;

    move-result-object v13

    const/16 v19, 0x7df

    const/16 v20, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 187
    invoke-static/range {v7 .. v20}, Lcom/stripe/proto/model/config/MobileClientConfig;->copy$default(Lcom/stripe/proto/model/config/MobileClientConfig;Lcom/stripe/proto/model/config/ClientVisualConfig;Lcom/stripe/proto/model/config/ClientCheckoutOptions;Ljava/lang/String;Lcom/stripe/proto/model/config/BBPOSConfig;Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/LoggingConfigPb;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/model/config/MobileClientConfig;

    move-result-object v3

    .line 192
    iget-object v7, v0, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedBbposAdapter;->offlineConfigUpdateListener:Lcom/stripe/core/readerupdate/UpdateClient$OfflineConfigUpdateListener;

    .line 193
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/Reader;->getSerialNumber()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 197
    iget-object v9, v3, Lcom/stripe/proto/model/config/MobileClientConfig;->offline_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;

    .line 198
    iget-object v10, v3, Lcom/stripe/proto/model/config/MobileClientConfig;->tipping_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;

    .line 199
    iget-object v11, v3, Lcom/stripe/proto/model/config/MobileClientConfig;->bluetooth_auto_reconnect_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;

    .line 200
    iget-object v12, v3, Lcom/stripe/proto/model/config/MobileClientConfig;->usb_auto_reconnect_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;

    .line 192
    invoke-interface/range {v7 .. v12}, Lcom/stripe/core/readerupdate/UpdateClient$OfflineConfigUpdateListener;->onOfflineConfigUpdateForMobileReader(Ljava/lang/String;Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 209
    iget-object v4, v0, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedBbposAdapter;->cachedUpdateType:Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;

    sget-object v7, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedBbposAdapter$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v4}, Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;->ordinal()I

    move-result v4

    aget v4, v7, v4

    packed-switch v4, :pswitch_data_0

    .line 243
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v1

    :pswitch_0
    return-object v2

    :pswitch_1
    const/4 v2, -0x1

    .line 227
    invoke-virtual {v1, v6, v2}, Ljava/util/Calendar;->add(II)V

    .line 228
    new-instance v7, Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    const/16 v16, 0xff

    const/16 v17, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v7 .. v17}, Lcom/stripe/proto/model/common/ClientVersionSpecPb;-><init>(Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;Lcom/stripe/proto/model/common/SignedAssetPb;Lcom/stripe/proto/model/common/UrlPb;Lcom/stripe/proto/model/common/ClientVersionSpecPb$InstallType;Lcom/stripe/proto/model/common/DeviceAssetInfo;Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 229
    new-instance v21, Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;

    .line 230
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v22

    .line 231
    sget-object v24, Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate$UpdateDurationEstimate;->TWO_TO_FIVE_MINUTES:Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate$UpdateDurationEstimate;

    .line 236
    const-string v29, "new-hash"

    const/16 v30, 0x0

    .line 229
    const-string v25, "1.00.03.32-SZZZ_Generic_v37-30000"

    const-string v28, "300001"

    move-object/from16 v27, v7

    move-object/from16 v31, v3

    move-object/from16 v26, v7

    invoke-direct/range {v21 .. v31}, Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;-><init>(JLcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate$UpdateDurationEstimate;Ljava/lang/String;Lcom/stripe/proto/model/common/ClientVersionSpecPb;Lcom/stripe/proto/model/common/ClientVersionSpecPb;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;Lcom/stripe/proto/model/config/MobileClientConfig;)V

    return-object v21

    :pswitch_2
    move-object/from16 v31, v3

    .line 211
    invoke-virtual {v1, v6, v5}, Ljava/util/Calendar;->add(II)V

    .line 212
    new-instance v7, Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    const/16 v16, 0xff

    const/16 v17, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v7 .. v17}, Lcom/stripe/proto/model/common/ClientVersionSpecPb;-><init>(Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;Lcom/stripe/proto/model/common/SignedAssetPb;Lcom/stripe/proto/model/common/UrlPb;Lcom/stripe/proto/model/common/ClientVersionSpecPb$InstallType;Lcom/stripe/proto/model/common/DeviceAssetInfo;Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 213
    new-instance v21, Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;

    .line 214
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v22

    .line 215
    sget-object v24, Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate$UpdateDurationEstimate;->TWO_TO_FIVE_MINUTES:Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate$UpdateDurationEstimate;

    .line 220
    const-string v29, "new-hash"

    const/16 v30, 0x0

    .line 213
    const-string v25, "1.00.03.32-SZZZ_Generic_v37-30000"

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v26, v7

    invoke-direct/range {v21 .. v31}, Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;-><init>(JLcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate$UpdateDurationEstimate;Ljava/lang/String;Lcom/stripe/proto/model/common/ClientVersionSpecPb;Lcom/stripe/proto/model/common/ClientVersionSpecPb;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;Lcom/stripe/proto/model/config/MobileClientConfig;)V

    return-object v21

    .line 193
    :cond_3
    :try_start_1
    new-instance v3, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 194
    sget-object v4, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 195
    const-string v5, "Simulated reader serial should never be null."

    const/16 v8, 0xc

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 193
    invoke-direct/range {v3 .. v9}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-object v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public collectPaymentMethod(Lcom/stripe/transaction/PaymentMethodCollectionType;)Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    const-string v0, "paymentMethodCollectionType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x3

    .line 253
    new-array v0, v0, [Lcom/stripe/stripeterminal/external/models/ReaderInputOptions$ReaderInputOption;

    sget-object v1, Lcom/stripe/stripeterminal/external/models/ReaderInputOptions$ReaderInputOption;->INSERT:Lcom/stripe/stripeterminal/external/models/ReaderInputOptions$ReaderInputOption;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    .line 254
    sget-object v3, Lcom/stripe/stripeterminal/external/models/ReaderInputOptions$ReaderInputOption;->SWIPE:Lcom/stripe/stripeterminal/external/models/ReaderInputOptions$ReaderInputOption;

    aput-object v3, v0, v1

    const/4 v1, 0x2

    .line 255
    sget-object v3, Lcom/stripe/stripeterminal/external/models/ReaderInputOptions$ReaderInputOption;->TAP:Lcom/stripe/stripeterminal/external/models/ReaderInputOptions$ReaderInputOption;

    aput-object v3, v0, v1

    .line 252
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 258
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedBbposAdapter;->getStatusManager()Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    move-result-object v1

    new-instance v3, Lcom/stripe/stripeterminal/external/models/ReaderInputOptions;

    invoke-direct {v3, v0}, Lcom/stripe/stripeterminal/external/models/ReaderInputOptions;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v3}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->requestReaderInput(Lcom/stripe/stripeterminal/external/models/ReaderInputOptions;)V

    .line 259
    invoke-virtual {p0, v2, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedBbposAdapter;->readCard(ZLcom/stripe/transaction/PaymentMethodCollectionType;)Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;

    move-result-object p1

    .line 263
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedBbposAdapter;->getStatusManager()Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    move-result-object v0

    sget-object v1, Lcom/stripe/stripeterminal/external/models/ReaderDisplayMessage;->REMOVE_CARD:Lcom/stripe/stripeterminal/external/models/ReaderDisplayMessage;

    invoke-virtual {v0, v1}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->requestReaderDisplayMessage(Lcom/stripe/stripeterminal/external/models/ReaderDisplayMessage;)V

    return-object p1
.end method

.method public getSimulatedReader(Lcom/stripe/stripeterminal/external/models/DeviceType;)Lcom/stripe/stripeterminal/external/models/Reader;
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "deviceType"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/DeviceType;->getSerialPrefixes()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SIMULATOR:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {v0}, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedBbposAdapter;->getAppInfo()Lcom/stripe/terminal/appinfo/ApplicationInformation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/stripe/terminal/appinfo/ApplicationInformation;->getDeviceUuid()Lcom/stripe/terminal/appinfo/DeviceUuid;

    move-result-object v3

    invoke-virtual {v3}, Lcom/stripe/terminal/appinfo/DeviceUuid;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 130
    sget-object v2, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedBbposAdapter;->UPDATE_STATES_WITH_DISALLOWED_OFFLINE_CONNECTION:Ljava/util/List;

    iget-object v3, v0, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedBbposAdapter;->cachedUpdateType:Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 131
    const-string v2, "1.00.03.29"

    goto :goto_0

    .line 133
    :cond_0
    const-string v2, "1.00.03.32"

    :goto_0
    move-object v15, v2

    .line 136
    sget-object v2, Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker;

    .line 138
    iget-object v5, v0, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedBbposAdapter;->bbposReaderInfoFactory:Lcom/stripe/core/bbpos/hardware/BbposReaderInfoFactory;

    const/4 v3, 0x5

    .line 148
    new-array v3, v3, [Lkotlin/Pair;

    const-string v6, "batteryPercentage"

    const-string v7, "80"

    invoke-static {v6, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    aput-object v6, v3, v4

    .line 149
    const-string v4, "deviceSettingVersion"

    const-string v6, "SZZZ_Generic_v36"

    invoke-static {v4, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    .line 150
    const-string v4, "firmwareVersion"

    invoke-static {v4, v15}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/4 v6, 0x2

    aput-object v4, v3, v6

    .line 151
    const-string v4, "emvKsn"

    const-string v6, "30000888"

    invoke-static {v4, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/4 v6, 0x3

    aput-object v4, v3, v6

    .line 152
    const-string v4, "pinKsn"

    const-string v6, "58000145356786E99997"

    invoke-static {v4, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/4 v6, 0x4

    aput-object v4, v3, v6

    .line 147
    invoke-static {v3}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v22

    const/16 v25, 0x0

    const/16 v26, 0x0

    .line 138
    const-string v6, "58000145356786E99997"

    const-string v7, "58000352221789E01EB4"

    const-string v8, "58000414301183E01F2F"

    const-string v9, "58000214301740E01EC8"

    const-string v10, "80"

    const-string v11, "SZZZ_Generic_v36"

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-string v16, "simulated-hardware"

    const/16 v17, 0x0

    const-string v18, "300001"

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v24, 0x0

    invoke-interface/range {v5 .. v26}, Lcom/stripe/core/bbpos/hardware/BbposReaderInfoFactory;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/stripe/hardware/status/ReaderInfo;

    move-result-object v3

    .line 136
    invoke-virtual {v2, v1, v3}, Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker;->fromReaderInfoSimulated(Lcom/stripe/stripeterminal/external/models/DeviceType;Lcom/stripe/hardware/status/ReaderInfo;)Lcom/stripe/stripeterminal/external/models/Reader;

    move-result-object v1

    return-object v1
.end method

.method public installUpdate(Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    const-string v0, "update"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 270
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter$CancellationState;->NOT_CANCELED:Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter$CancellationState;

    invoke-virtual {p0, v0}, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedBbposAdapter;->setCancelInstallUpdate(Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter$CancellationState;)V

    .line 272
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedBbposAdapter;->cachedUpdateType:Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;

    sget-object v1, Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;->LOW_BATTERY:Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;

    if-eq v0, v1, :cond_a

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedBbposAdapter;->cachedUpdateType:Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;

    sget-object v1, Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;->LOW_BATTERY_SUCCEED_CONNECT:Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;

    if-eq v0, v1, :cond_a

    .line 280
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;->getRequiredAtMs()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedBbposAdapter;->getClock()Lcom/stripe/time/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/stripe/time/Clock;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_1

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;->getOnlyInstallRequiredUpdates()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    const/4 v3, 0x4

    .line 282
    new-array v3, v3, [Ljava/lang/Boolean;

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;->hasKeyUpdate()Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v0, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    move v4, v1

    :goto_2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v1

    .line 283
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;->hasConfigUpdate()Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v0, :cond_3

    move v4, v2

    goto :goto_3

    :cond_3
    move v4, v1

    :goto_3
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v2

    .line 284
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;->hasFirmwareUpdate()Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz v0, :cond_4

    goto :goto_4

    :cond_4
    move v2, v1

    :goto_4
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v3, v2

    .line 285
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;->hasIncrementalUpdate()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v0, 0x3

    aput-object p1, v3, v0

    .line 281
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 321
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 322
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 323
    :cond_6
    check-cast v0, Ljava/util/List;

    .line 286
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    move v0, v1

    :goto_6
    if-ge v0, p1, :cond_9

    move v2, v1

    :goto_7
    const/4 v3, 0x5

    if-ge v2, v3, :cond_8

    const-wide/16 v3, 0x7d0

    .line 290
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 292
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedBbposAdapter;->getCancelInstallUpdate()Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter$CancellationState;

    move-result-object v3

    sget-object v4, Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter$CancellationState;->CANCELED_WITH_ERROR:Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter$CancellationState;

    if-eq v3, v4, :cond_7

    .line 298
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedBbposAdapter;->getStatusManager()Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    move-result-object v3

    mul-int/lit8 v4, v0, 0x5

    add-int/2addr v4, v2

    int-to-float v4, v4

    mul-int/lit8 v5, p1, 0x5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->reportReaderSoftwareUpdateProgress(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 293
    :cond_7
    new-instance v3, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 294
    sget-object v4, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->CANCELED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v8, 0xc

    const/4 v9, 0x0

    .line 293
    const-string v5, "Update installation was canceled by the user."

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v3 .. v9}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v3

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_9
    return-void

    .line 273
    :cond_a
    new-instance v2, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 274
    sget-object v3, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->READER_SOFTWARE_UPDATE_FAILED_BATTERY_LOW:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v7, 0xc

    const/4 v8, 0x0

    .line 273
    const-string v4, "Update failed due to low battery"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v2
.end method

.method public onConnect()V
    .locals 1

    .line 72
    invoke-super {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter;->onConnect()V

    .line 73
    invoke-direct {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedBbposAdapter;->getUpdateType()Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedBbposAdapter;->cachedUpdateType:Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;

    .line 74
    invoke-direct {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedBbposAdapter;->startBatteryStatusUpdates()V

    return-void
.end method

.method public onDisconnect()V
    .locals 0

    .line 78
    invoke-super {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter;->onDisconnect()V

    .line 79
    invoke-direct {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedBbposAdapter;->stopBatteryStatusUpdates()V

    return-void
.end method
