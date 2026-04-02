.class public final Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;
.super Ljava/lang/Object;
.source "ConfigurationHandler.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$Companion;,
        Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nConfigurationHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConfigurationHandler.kt\ncom/stripe/core/hardware/reactive/emv/ConfigurationHandler\n+ 2 LoggerFactory.kt\ncom/stripe/jvmcore/logging/terminal/log/LoggerFactoryKt\n+ 3 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,627:1\n16#2:628\n116#3,7:629\n124#3,2:637\n116#3,9:642\n116#3,9:651\n1#4:636\n1864#5,3:639\n*S KotlinDebug\n*F\n+ 1 ConfigurationHandler.kt\ncom/stripe/core/hardware/reactive/emv/ConfigurationHandler\n*L\n84#1:628\n111#1:629,7\n111#1:637,2\n325#1:642,9\n358#1:651,9\n188#1:639,3\n*E\n"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00c0\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u0000 _2\u00020\u0001:\u0001_BI\u0008\u0017\u0012\u0008\u0008\u0001\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u00a2\u0006\u0002\u0010\u0012BY\u0008\u0000\u0012\u0008\u0008\u0001\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0016\u0010\u0013\u001a\u0012\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u00160\u0014j\u0002`\u0017\u00a2\u0006\u0002\u0010\u0018J\"\u0010)\u001a\u00020%2\u0006\u0010*\u001a\u00020+2\u0008\u0008\u0002\u0010,\u001a\u00020%H\u0081@\u00a2\u0006\u0004\u0008-\u0010.J\u0010\u0010/\u001a\u0004\u0018\u000100H\u0086@\u00a2\u0006\u0002\u00101J\u0018\u00102\u001a\u0004\u0018\u0001002\u0006\u00103\u001a\u00020%H\u0082@\u00a2\u0006\u0002\u00104J\n\u00105\u001a\u0004\u0018\u000100H\u0002J\\\u00106\u001a\u0002072\u001e\u00108\u001a\u001a\u0012\u0004\u0012\u00020 \u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u00020 0\u001f0\u001f2\u0012\u00109\u001a\u000e\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u00020 0\u001f2\u0016\u0010:\u001a\u0012\u0012\u0004\u0012\u00020<\u0012\u0004\u0012\u0002070;j\u0002`=H\u0081@\u00a2\u0006\u0004\u0008>\u0010?J8\u0010@\u001a\u0002072\u0006\u0010A\u001a\u00020B2\u0008\u0010C\u001a\u0004\u0018\u00010D2\u0016\u0010:\u001a\u0012\u0012\u0004\u0012\u00020<\u0012\u0004\u0012\u0002070;j\u0002`=H\u0086@\u00a2\u0006\u0002\u0010EJ$\u0010F\u001a\u0010\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u00020 \u0018\u00010\u001f2\u0006\u0010G\u001a\u00020 H\u0087@\u00a2\u0006\u0002\u0010HJB\u0010I\u001a\u0004\u0018\u00010\"2\u0008\u0008\u0002\u0010J\u001a\u00020%2\u0008\u0008\u0002\u0010K\u001a\u00020%2\u0008\u0008\u0002\u0010L\u001a\u00020%2\u0008\u0008\u0002\u0010M\u001a\u00020%2\u0008\u0008\u0002\u0010N\u001a\u00020%H\u0086@\u00a2\u0006\u0002\u0010OJ\"\u0010P\u001a\u00020+2\u0006\u0010A\u001a\u00020B2\u0008\u0010Q\u001a\u0004\u0018\u0001002\u0006\u0010N\u001a\u00020 H\u0002J\u0006\u0010R\u001a\u000207J\u0008\u0010S\u001a\u00020TH\u0002J\"\u0010U\u001a\u00020%2\u0012\u0010V\u001a\u000e\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u00020 0\u001fH\u0087@\u00a2\u0006\u0002\u0010WJ\"\u0010X\u001a\u00020%2\u0012\u0010Y\u001a\u000e\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u00020\u00010\u001fH\u0087@\u00a2\u0006\u0002\u0010WJ\u0016\u0010Z\u001a\u00020%2\u0006\u0010*\u001a\u00020+H\u0086@\u00a2\u0006\u0002\u0010[J\u0016\u0010Z\u001a\u00020%2\u0006\u0010\\\u001a\u00020]H\u0086@\u00a2\u0006\u0002\u0010^R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u001cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0013\u001a\u0012\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u00160\u0014j\u0002`\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\"\u0010\u001d\u001a\u0016\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u00020 0\u001f\u0018\u00010\u001eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010!\u001a\n\u0012\u0004\u0012\u00020\"\u0018\u00010\u001eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020\u001cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010$\u001a\n\u0012\u0004\u0012\u00020%\u0018\u00010\u001eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010&\u001a\n\u0012\u0004\u0012\u00020%\u0018\u00010\u001eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\'\u001a\n\u0012\u0004\u0012\u00020%\u0018\u00010\u001eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010(\u001a\u00020\u001cX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006`"
    }
    d2 = {
        "Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;",
        "",
        "scheduler",
        "Lio/reactivex/rxjava3/core/Scheduler;",
        "configurationUpdateController",
        "Lcom/stripe/core/hardware/updates/ReaderConfigurationUpdateController;",
        "deviceInfoRepository",
        "Lcom/stripe/device/DeviceInfoRepository;",
        "sharedPrefs",
        "Lcom/stripe/jvmcore/storage/SharedPrefs;",
        "configListener",
        "Lcom/stripe/core/hardware/reactive/emv/ReactiveConfigurationListener;",
        "transactionRepository",
        "Lcom/stripe/core/transaction/TransactionRepository;",
        "domesticDebitAidsParser",
        "Lcom/stripe/hardware/emv/DomesticDebitAidsParser;",
        "loggerFactory",
        "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
        "(Lio/reactivex/rxjava3/core/Scheduler;Lcom/stripe/core/hardware/updates/ReaderConfigurationUpdateController;Lcom/stripe/device/DeviceInfoRepository;Lcom/stripe/jvmcore/storage/SharedPrefs;Lcom/stripe/core/hardware/reactive/emv/ReactiveConfigurationListener;Lcom/stripe/core/transaction/TransactionRepository;Lcom/stripe/hardware/emv/DomesticDebitAidsParser;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)V",
        "logger",
        "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;",
        "Lcom/stripe/loggingmodels/ApplicationTrace;",
        "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
        "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;",
        "(Lio/reactivex/rxjava3/core/Scheduler;Lcom/stripe/core/hardware/updates/ReaderConfigurationUpdateController;Lcom/stripe/device/DeviceInfoRepository;Lcom/stripe/jvmcore/storage/SharedPrefs;Lcom/stripe/core/hardware/reactive/emv/ReactiveConfigurationListener;Lcom/stripe/core/transaction/TransactionRepository;Lcom/stripe/hardware/emv/DomesticDebitAidsParser;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V",
        "compositeDisposable",
        "Lio/reactivex/rxjava3/disposables/CompositeDisposable;",
        "installConfigMutex",
        "Lkotlinx/coroutines/sync/Mutex;",
        "readAidDeferred",
        "Lkotlinx/coroutines/CompletableDeferred;",
        "",
        "",
        "readTerminalSettingDeferred",
        "Lcom/stripe/hardware/emv/ReaderSettings;",
        "readTerminalSettingMutex",
        "updateAidDeferred",
        "",
        "updateDisplayDeferred",
        "updateTerminalSettingFuture",
        "updateTerminalSettingMutex",
        "configureTerminalSetting",
        "desiredSetting",
        "Lcom/stripe/core/hardware/reactive/emv/DesiredSettings;",
        "includeDomesticDebitAidList",
        "configureTerminalSetting$hardware_reactive_release",
        "(Lcom/stripe/core/hardware/reactive/emv/DesiredSettings;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getClientConfigData",
        "Lcom/stripe/core/hardware/reactive/emv/ClientConfigData;",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getClientConfigDataFromEmvTag",
        "readConfigHashTag",
        "(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getClientConfigDataFromSharedPref",
        "handleAidData",
        "",
        "updateMap",
        "aidMap",
        "updater",
        "Lkotlin/Function1;",
        "",
        "Lcom/stripe/core/hardware/reactive/emv/ProgressUpdater;",
        "handleAidData$hardware_reactive_release",
        "(Ljava/util/Map;Ljava/util/Map;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "installConfig",
        "config",
        "Lcom/stripe/proto/model/config/MobileClientConfig;",
        "image",
        "Landroid/graphics/Bitmap;",
        "(Lcom/stripe/proto/model/config/MobileClientConfig;Landroid/graphics/Bitmap;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "readAid",
        "index",
        "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "readTerminalSetting",
        "merchantName",
        "buzzerSoundEnabled",
        "countryCode",
        "domesticDebitAidList",
        "configHash",
        "(ZZZZZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "recordNewSetting",
        "currentSettings",
        "resetSettingCacheDueToBBPOSConfigUpdate",
        "storedConfigSource",
        "Lcom/stripe/core/hardware/reactive/emv/ClientConfigDataSource;",
        "updateAid",
        "aidData",
        "(Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "updateDisplaySettings",
        "displayData",
        "updateTerminalSetting",
        "(Lcom/stripe/core/hardware/reactive/emv/DesiredSettings;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "tlvMap",
        "Lcom/stripe/hardware/emv/TlvMap;",
        "(Lcom/stripe/hardware/emv/TlvMap;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Companion",
        "hardware-reactive_release"
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
.field private static final AID_DISABLED:Ljava/lang/String; = "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"

.field public static final Companion:Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$Companion;

.field private static final DEFAULT_BACKGROUND_COLOR:Ljava/lang/String; = "FFFF"

.field private static final DEFAULT_FOREGROUND_COLOR:Ljava/lang/String; = "E618"

.field private static final GET_CLIENT_CONFIG_DATA_TIMEOUT:J

.field private static final TIMEOUT_DELAY:J

.field private static final TIMEOUT_DELAY_LONG:J


# instance fields
.field private final compositeDisposable:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

.field private final configListener:Lcom/stripe/core/hardware/reactive/emv/ReactiveConfigurationListener;

.field private final configurationUpdateController:Lcom/stripe/core/hardware/updates/ReaderConfigurationUpdateController;

.field private final deviceInfoRepository:Lcom/stripe/device/DeviceInfoRepository;

.field private final domesticDebitAidsParser:Lcom/stripe/hardware/emv/DomesticDebitAidsParser;

.field private final installConfigMutex:Lkotlinx/coroutines/sync/Mutex;

.field private final logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;"
        }
    .end annotation
.end field

.field private readAidDeferred:Lkotlinx/coroutines/CompletableDeferred;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/CompletableDeferred<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private readTerminalSettingDeferred:Lkotlinx/coroutines/CompletableDeferred;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/CompletableDeferred<",
            "Lcom/stripe/hardware/emv/ReaderSettings;",
            ">;"
        }
    .end annotation
.end field

.field private final readTerminalSettingMutex:Lkotlinx/coroutines/sync/Mutex;

.field private final scheduler:Lio/reactivex/rxjava3/core/Scheduler;

.field private final sharedPrefs:Lcom/stripe/jvmcore/storage/SharedPrefs;

.field private final transactionRepository:Lcom/stripe/core/transaction/TransactionRepository;

.field private updateAidDeferred:Lkotlinx/coroutines/CompletableDeferred;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/CompletableDeferred<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private updateDisplayDeferred:Lkotlinx/coroutines/CompletableDeferred;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/CompletableDeferred<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private updateTerminalSettingFuture:Lkotlinx/coroutines/CompletableDeferred;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/CompletableDeferred<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final updateTerminalSettingMutex:Lkotlinx/coroutines/sync/Mutex;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->Companion:Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$Companion;

    .line 456
    sget-object v0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    sget-object v0, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    const/4 v1, 0x3

    invoke-static {v1, v0}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v2

    sput-wide v2, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->TIMEOUT_DELAY:J

    .line 457
    sget-object v0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    const/4 v0, 0x5

    sget-object v2, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v0, v2}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v2

    sput-wide v2, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->TIMEOUT_DELAY_LONG:J

    .line 463
    sget-object v0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    sget-object v0, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v1, v0}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v0

    sput-wide v0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->GET_CLIENT_CONFIG_DATA_TIMEOUT:J

    return-void
.end method

.method public constructor <init>(Lio/reactivex/rxjava3/core/Scheduler;Lcom/stripe/core/hardware/updates/ReaderConfigurationUpdateController;Lcom/stripe/device/DeviceInfoRepository;Lcom/stripe/jvmcore/storage/SharedPrefs;Lcom/stripe/core/hardware/reactive/emv/ReactiveConfigurationListener;Lcom/stripe/core/transaction/TransactionRepository;Lcom/stripe/hardware/emv/DomesticDebitAidsParser;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)V
    .locals 11
    .param p1    # Lio/reactivex/rxjava3/core/Scheduler;
        .annotation runtime Lcom/stripe/jvmcore/dagger/IO;
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    move-object/from16 v0, p8

    const-string v1, "scheduler"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "configurationUpdateController"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "deviceInfoRepository"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "sharedPrefs"

    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "configListener"

    move-object/from16 v7, p5

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "transactionRepository"

    move-object/from16 v8, p6

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "domesticDebitAidsParser"

    move-object/from16 v9, p7

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "loggerFactory"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 628
    const-class v1, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;->create(Lkotlin/reflect/KClass;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v10

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 76
    invoke-direct/range {v2 .. v10}, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;-><init>(Lio/reactivex/rxjava3/core/Scheduler;Lcom/stripe/core/hardware/updates/ReaderConfigurationUpdateController;Lcom/stripe/device/DeviceInfoRepository;Lcom/stripe/jvmcore/storage/SharedPrefs;Lcom/stripe/core/hardware/reactive/emv/ReactiveConfigurationListener;Lcom/stripe/core/transaction/TransactionRepository;Lcom/stripe/hardware/emv/DomesticDebitAidsParser;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V

    return-void
.end method

.method public constructor <init>(Lio/reactivex/rxjava3/core/Scheduler;Lcom/stripe/core/hardware/updates/ReaderConfigurationUpdateController;Lcom/stripe/device/DeviceInfoRepository;Lcom/stripe/jvmcore/storage/SharedPrefs;Lcom/stripe/core/hardware/reactive/emv/ReactiveConfigurationListener;Lcom/stripe/core/transaction/TransactionRepository;Lcom/stripe/hardware/emv/DomesticDebitAidsParser;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V
    .locals 1
    .param p1    # Lio/reactivex/rxjava3/core/Scheduler;
        .annotation runtime Lcom/stripe/jvmcore/dagger/IO;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/Scheduler;",
            "Lcom/stripe/core/hardware/updates/ReaderConfigurationUpdateController;",
            "Lcom/stripe/device/DeviceInfoRepository;",
            "Lcom/stripe/jvmcore/storage/SharedPrefs;",
            "Lcom/stripe/core/hardware/reactive/emv/ReactiveConfigurationListener;",
            "Lcom/stripe/core/transaction/TransactionRepository;",
            "Lcom/stripe/hardware/emv/DomesticDebitAidsParser;",
            "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "scheduler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configurationUpdateController"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceInfoRepository"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sharedPrefs"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configListener"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transactionRepository"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "domesticDebitAidsParser"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->scheduler:Lio/reactivex/rxjava3/core/Scheduler;

    .line 43
    iput-object p2, p0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->configurationUpdateController:Lcom/stripe/core/hardware/updates/ReaderConfigurationUpdateController;

    .line 44
    iput-object p3, p0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->deviceInfoRepository:Lcom/stripe/device/DeviceInfoRepository;

    .line 45
    iput-object p4, p0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->sharedPrefs:Lcom/stripe/jvmcore/storage/SharedPrefs;

    .line 46
    iput-object p5, p0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->configListener:Lcom/stripe/core/hardware/reactive/emv/ReactiveConfigurationListener;

    .line 47
    iput-object p6, p0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->transactionRepository:Lcom/stripe/core/transaction/TransactionRepository;

    .line 48
    iput-object p7, p0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->domesticDebitAidsParser:Lcom/stripe/hardware/emv/DomesticDebitAidsParser;

    .line 49
    iput-object p8, p0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    .line 53
    new-instance p2, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {p2}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object p2, p0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->compositeDisposable:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    const/4 p3, 0x0

    const/4 p4, 0x1

    const/4 p6, 0x0

    .line 62
    invoke-static {p3, p4, p6}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object p7

    iput-object p7, p0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->installConfigMutex:Lkotlinx/coroutines/sync/Mutex;

    .line 63
    invoke-static {p3, p4, p6}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object p7

    iput-object p7, p0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->readTerminalSettingMutex:Lkotlinx/coroutines/sync/Mutex;

    .line 64
    invoke-static {p3, p4, p6}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object p6

    iput-object p6, p0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->updateTerminalSettingMutex:Lkotlinx/coroutines/sync/Mutex;

    const/4 p6, 0x5

    .line 89
    new-array p6, p6, [Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-virtual {p5}, Lcom/stripe/core/hardware/reactive/emv/ReactiveConfigurationListener;->getReaderAidObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p7

    invoke-virtual {p7, p1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p7

    new-instance p8, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$1;

    invoke-direct {p8, p0}, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$1;-><init>(Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;)V

    check-cast p8, Lio/reactivex/rxjava3/functions/Consumer;

    invoke-virtual {p7, p8}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p7

    aput-object p7, p6, p3

    .line 92
    invoke-virtual {p5}, Lcom/stripe/core/hardware/reactive/emv/ReactiveConfigurationListener;->getReaderDisplayObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p3

    invoke-virtual {p3, p1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p3

    new-instance p7, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$2;

    invoke-direct {p7, p0}, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$2;-><init>(Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;)V

    check-cast p7, Lio/reactivex/rxjava3/functions/Consumer;

    invoke-virtual {p3, p7}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p3

    aput-object p3, p6, p4

    .line 95
    invoke-virtual {p5}, Lcom/stripe/core/hardware/reactive/emv/ReactiveConfigurationListener;->getReaderSettingsObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p3

    invoke-virtual {p3, p1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p3

    new-instance p4, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$3;

    invoke-direct {p4, p0}, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$3;-><init>(Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;)V

    check-cast p4, Lio/reactivex/rxjava3/functions/Consumer;

    invoke-virtual {p3, p4}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p3

    const/4 p4, 0x2

    aput-object p3, p6, p4

    .line 98
    invoke-virtual {p5}, Lcom/stripe/core/hardware/reactive/emv/ReactiveConfigurationListener;->getReaderUpdateAidObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p3

    invoke-virtual {p3, p1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p3

    new-instance p4, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$4;

    invoke-direct {p4, p0}, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$4;-><init>(Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;)V

    check-cast p4, Lio/reactivex/rxjava3/functions/Consumer;

    invoke-virtual {p3, p4}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p3

    const/4 p4, 0x3

    aput-object p3, p6, p4

    .line 101
    invoke-virtual {p5}, Lcom/stripe/core/hardware/reactive/emv/ReactiveConfigurationListener;->getReaderUpdateSettingsObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p3

    invoke-virtual {p3, p1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance p3, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$5;

    invoke-direct {p3, p0}, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$5;-><init>(Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;)V

    check-cast p3, Lio/reactivex/rxjava3/functions/Consumer;

    invoke-virtual {p1, p3}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    const/4 p3, 0x4

    aput-object p1, p6, p3

    .line 88
    invoke-virtual {p2, p6}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->addAll([Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method public static final synthetic access$getClientConfigDataFromEmvTag(Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->getClientConfigDataFromEmvTag(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getConfigListener$p(Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;)Lcom/stripe/core/hardware/reactive/emv/ReactiveConfigurationListener;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->configListener:Lcom/stripe/core/hardware/reactive/emv/ReactiveConfigurationListener;

    return-object p0
.end method

.method public static final synthetic access$getConfigurationUpdateController$p(Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;)Lcom/stripe/core/hardware/updates/ReaderConfigurationUpdateController;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->configurationUpdateController:Lcom/stripe/core/hardware/updates/ReaderConfigurationUpdateController;

    return-object p0
.end method

.method public static final synthetic access$getGET_CLIENT_CONFIG_DATA_TIMEOUT$cp()J
    .locals 2

    .line 40
    sget-wide v0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->GET_CLIENT_CONFIG_DATA_TIMEOUT:J

    return-wide v0
.end method

.method public static final synthetic access$getReadAidDeferred$p(Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;)Lkotlinx/coroutines/CompletableDeferred;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->readAidDeferred:Lkotlinx/coroutines/CompletableDeferred;

    return-object p0
.end method

.method public static final synthetic access$getReadTerminalSettingDeferred$p(Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;)Lkotlinx/coroutines/CompletableDeferred;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->readTerminalSettingDeferred:Lkotlinx/coroutines/CompletableDeferred;

    return-object p0
.end method

.method public static final synthetic access$getScheduler$p(Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;)Lio/reactivex/rxjava3/core/Scheduler;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->scheduler:Lio/reactivex/rxjava3/core/Scheduler;

    return-object p0
.end method

.method public static final synthetic access$getUpdateAidDeferred$p(Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;)Lkotlinx/coroutines/CompletableDeferred;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->updateAidDeferred:Lkotlinx/coroutines/CompletableDeferred;

    return-object p0
.end method

.method public static final synthetic access$getUpdateDisplayDeferred$p(Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;)Lkotlinx/coroutines/CompletableDeferred;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->updateDisplayDeferred:Lkotlinx/coroutines/CompletableDeferred;

    return-object p0
.end method

.method public static final synthetic access$getUpdateTerminalSettingFuture$p(Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;)Lkotlinx/coroutines/CompletableDeferred;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->updateTerminalSettingFuture:Lkotlinx/coroutines/CompletableDeferred;

    return-object p0
.end method

.method public static synthetic configureTerminalSetting$hardware_reactive_release$default(Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;Lcom/stripe/core/hardware/reactive/emv/DesiredSettings;ZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    .line 212
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->configureTerminalSetting$hardware_reactive_release(Lcom/stripe/core/hardware/reactive/emv/DesiredSettings;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final getClientConfigDataFromEmvTag(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/core/hardware/reactive/emv/ClientConfigData;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$getClientConfigDataFromEmvTag$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$getClientConfigDataFromEmvTag$1;

    iget v1, v0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$getClientConfigDataFromEmvTag$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$getClientConfigDataFromEmvTag$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$getClientConfigDataFromEmvTag$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$getClientConfigDataFromEmvTag$1;

    invoke-direct {v0, p0, p2}, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$getClientConfigDataFromEmvTag$1;-><init>(Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$getClientConfigDataFromEmvTag$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 383
    iget v2, v0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$getClientConfigDataFromEmvTag$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 384
    :try_start_1
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object p2, p0

    check-cast p2, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;

    .line 385
    sget-wide v5, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->GET_CLIENT_CONFIG_DATA_TIMEOUT:J

    new-instance p2, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$getClientConfigDataFromEmvTag$2$1;

    invoke-direct {p2, p0, p1, v3}, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$getClientConfigDataFromEmvTag$2$1;-><init>(Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;ZLkotlin/coroutines/Continuation;)V

    check-cast p2, Lkotlin/jvm/functions/Function2;

    iput v4, v0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$getClientConfigDataFromEmvTag$1;->label:I

    invoke-static {v5, v6, p2, v0}, Lkotlinx/coroutines/TimeoutKt;->withTimeout-KLykuaI(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    return-object p1

    :catchall_0
    move-exception p1

    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 403
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_1

    :cond_4
    move-object v3, p1

    :goto_1
    return-object v3
.end method

.method private final getClientConfigDataFromSharedPref()Lcom/stripe/core/hardware/reactive/emv/ClientConfigData;
    .locals 2

    .line 406
    iget-object v0, p0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->sharedPrefs:Lcom/stripe/jvmcore/storage/SharedPrefs;

    invoke-virtual {v0}, Lcom/stripe/jvmcore/storage/SharedPrefs;->getMobilePosConfig()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/stripe/core/hardware/reactive/emv/ClientConfigData;->Companion:Lcom/stripe/core/hardware/reactive/emv/ClientConfigData$Companion;

    invoke-virtual {v1, v0}, Lcom/stripe/core/hardware/reactive/emv/ClientConfigData$Companion;->parseClientConfigData(Ljava/lang/String;)Lcom/stripe/core/hardware/reactive/emv/ClientConfigData;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static synthetic readTerminalSetting$default(Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;ZZZZZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    and-int/lit8 p8, p7, 0x1

    const/4 v0, 0x0

    if-eqz p8, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    move p3, v0

    :cond_2
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_3

    move p4, v0

    :cond_3
    and-int/lit8 p7, p7, 0x10

    if-eqz p7, :cond_4

    move p5, v0

    .line 319
    :cond_4
    invoke-virtual/range {p0 .. p6}, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->readTerminalSetting(ZZZZZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final recordNewSetting(Lcom/stripe/proto/model/config/MobileClientConfig;Lcom/stripe/core/hardware/reactive/emv/ClientConfigData;Ljava/lang/String;)Lcom/stripe/core/hardware/reactive/emv/DesiredSettings;
    .locals 8

    .line 413
    invoke-direct {p0}, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->storedConfigSource()Lcom/stripe/core/hardware/reactive/emv/ClientConfigDataSource;

    move-result-object v0

    sget-object v1, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/stripe/core/hardware/reactive/emv/ClientConfigDataSource;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 p2, 0x2

    if-eq v0, p2, :cond_1

    const/4 p2, 0x3

    if-ne v0, p2, :cond_0

    .line 420
    sget-object v1, Lcom/stripe/core/hardware/reactive/emv/DesiredSettings;->Companion:Lcom/stripe/core/hardware/reactive/emv/DesiredSettings$Companion;

    const/4 v6, 0x6

    const/4 v7, 0x0

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, p3

    invoke-static/range {v1 .. v7}, Lcom/stripe/core/hardware/reactive/emv/DesiredSettings$Companion;->create$default(Lcom/stripe/core/hardware/reactive/emv/DesiredSettings$Companion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/stripe/core/hardware/reactive/emv/DesiredSettings;

    move-result-object p2

    goto :goto_0

    .line 428
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_1
    move-object v1, p3

    .line 415
    sget-object v0, Lcom/stripe/core/hardware/reactive/emv/DesiredSettings;->Companion:Lcom/stripe/core/hardware/reactive/emv/DesiredSettings$Companion;

    const/16 v5, 0xe

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lcom/stripe/core/hardware/reactive/emv/DesiredSettings$Companion;->create$default(Lcom/stripe/core/hardware/reactive/emv/DesiredSettings$Companion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/stripe/core/hardware/reactive/emv/DesiredSettings;

    move-result-object p2

    :goto_0
    move-object v0, p2

    goto :goto_2

    :cond_2
    move-object v1, p3

    .line 424
    iget-object p3, p0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->sharedPrefs:Lcom/stripe/jvmcore/storage/SharedPrefs;

    invoke-virtual {p3, v1}, Lcom/stripe/jvmcore/storage/SharedPrefs;->putMobilePosConfig(Ljava/lang/String;)V

    if-eqz p2, :cond_3

    .line 425
    invoke-virtual {p2}, Lcom/stripe/core/hardware/reactive/emv/ClientConfigData;->getConfigHash()Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :cond_3
    const/4 p3, 0x0

    :goto_1
    if-eqz p3, :cond_4

    invoke-virtual {p2}, Lcom/stripe/core/hardware/reactive/emv/ClientConfigData;->getConfigHash()Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-lez p2, :cond_4

    .line 426
    sget-object v0, Lcom/stripe/core/hardware/reactive/emv/DesiredSettings;->Companion:Lcom/stripe/core/hardware/reactive/emv/DesiredSettings$Companion;

    const/16 v5, 0xe

    const/4 v6, 0x0

    const-string v1, ""

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lcom/stripe/core/hardware/reactive/emv/DesiredSettings$Companion;->create$default(Lcom/stripe/core/hardware/reactive/emv/DesiredSettings$Companion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/stripe/core/hardware/reactive/emv/DesiredSettings;

    move-result-object p2

    goto :goto_0

    .line 428
    :cond_4
    sget-object v0, Lcom/stripe/core/hardware/reactive/emv/DesiredSettings;->Companion:Lcom/stripe/core/hardware/reactive/emv/DesiredSettings$Companion;

    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lcom/stripe/core/hardware/reactive/emv/DesiredSettings$Companion;->create$default(Lcom/stripe/core/hardware/reactive/emv/DesiredSettings$Companion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/stripe/core/hardware/reactive/emv/DesiredSettings;

    move-result-object p2

    goto :goto_0

    .line 432
    :goto_2
    iget-object p1, p1, Lcom/stripe/proto/model/config/MobileClientConfig;->client_checkout_options:Lcom/stripe/proto/model/config/ClientCheckoutOptions;

    if-eqz p1, :cond_5

    iget-object p1, p1, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->vector_config:Lcom/stripe/proto/model/config/VectorRegionalConfiguration;

    if-eqz p1, :cond_5

    invoke-static {p1}, Lcom/stripe/core/hardware/reactive/emv/VectorRegionalConfigurationExtKt;->toCountryCode(Lcom/stripe/proto/model/config/VectorRegionalConfiguration;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    const/16 v5, 0xd

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 433
    invoke-static/range {v0 .. v6}, Lcom/stripe/core/hardware/reactive/emv/DesiredSettings;->copy$default(Lcom/stripe/core/hardware/reactive/emv/DesiredSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/stripe/core/hardware/reactive/emv/DesiredSettings;

    move-result-object p1

    return-object p1

    :cond_5
    return-object v0
.end method

.method private final storedConfigSource()Lcom/stripe/core/hardware/reactive/emv/ClientConfigDataSource;
    .locals 1

    .line 451
    iget-object v0, p0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->deviceInfoRepository:Lcom/stripe/device/DeviceInfoRepository;

    invoke-interface {v0}, Lcom/stripe/device/DeviceInfoRepository;->getPlatformDeviceInfo()Lcom/stripe/device/PlatformDeviceInfo;

    move-result-object v0

    .line 452
    invoke-interface {v0}, Lcom/stripe/device/PlatformDeviceInfo;->getHardwareModel()Lcom/stripe/proto/model/common/HardwareModel;

    move-result-object v0

    iget-object v0, v0, Lcom/stripe/proto/model/common/HardwareModel;->bbpos_hardware:Lcom/stripe/proto/model/common/BBPosHardware;

    invoke-static {v0}, Lcom/stripe/core/hardware/reactive/emv/ClientConfigDataSourceKt;->getStoredConfigSource(Lcom/stripe/proto/model/common/BBPosHardware;)Lcom/stripe/core/hardware/reactive/emv/ClientConfigDataSource;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final configureTerminalSetting$hardware_reactive_release(Lcom/stripe/core/hardware/reactive/emv/DesiredSettings;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/core/hardware/reactive/emv/DesiredSettings;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$configureTerminalSetting$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$configureTerminalSetting$1;

    iget v1, v0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$configureTerminalSetting$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$configureTerminalSetting$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$configureTerminalSetting$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$configureTerminalSetting$1;

    invoke-direct {v0, p0, p3}, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$configureTerminalSetting$1;-><init>(Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v7, v0

    iget-object p3, v7, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$configureTerminalSetting$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 212
    iget v1, v7, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$configureTerminalSetting$1;->label:I

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v1, :cond_3

    if-eq v1, v9, :cond_2

    if-ne v1, v8, :cond_1

    iget-object p1, v7, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$configureTerminalSetting$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v7, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$configureTerminalSetting$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lcom/stripe/core/hardware/reactive/emv/DesiredSettings;

    iget-object p2, v7, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$configureTerminalSetting$1;->L$0:Ljava/lang/Object;

    check-cast p2, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v11, p2

    move-object p2, p1

    move-object p1, v11

    goto :goto_5

    :cond_3
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 217
    invoke-virtual {p1}, Lcom/stripe/core/hardware/reactive/emv/DesiredSettings;->getMerchantName()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_4

    move v2, v9

    goto :goto_1

    :cond_4
    move v2, v10

    .line 218
    :goto_1
    invoke-virtual {p1}, Lcom/stripe/core/hardware/reactive/emv/DesiredSettings;->getCountryCode()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_5

    move v4, v9

    goto :goto_2

    :cond_5
    move v4, v10

    .line 219
    :goto_2
    invoke-virtual {p1}, Lcom/stripe/core/hardware/reactive/emv/DesiredSettings;->getBuzzerEnabled()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_6

    move v3, v9

    goto :goto_3

    :cond_6
    move v3, v10

    .line 221
    :goto_3
    invoke-virtual {p1}, Lcom/stripe/core/hardware/reactive/emv/DesiredSettings;->getConfigHash()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_7

    move v6, v9

    goto :goto_4

    :cond_7
    move v6, v10

    .line 216
    :goto_4
    iput-object p0, v7, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$configureTerminalSetting$1;->L$0:Ljava/lang/Object;

    iput-object p1, v7, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$configureTerminalSetting$1;->L$1:Ljava/lang/Object;

    iput v9, v7, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$configureTerminalSetting$1;->label:I

    move-object v1, p0

    move v5, p2

    invoke-virtual/range {v1 .. v7}, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->readTerminalSetting(ZZZZZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v0, :cond_8

    goto :goto_6

    :cond_8
    move-object p2, p1

    move-object p1, p0

    .line 222
    :goto_5
    check-cast p3, Lcom/stripe/hardware/emv/ReaderSettings;

    if-eqz p3, :cond_f

    .line 225
    new-instance v1, Lcom/stripe/core/hardware/reactive/emv/DesiredSettings;

    .line 226
    invoke-virtual {p3}, Lcom/stripe/hardware/emv/ReaderSettings;->getMerchantNameAndLocation()Ljava/lang/String;

    move-result-object v2

    .line 227
    invoke-virtual {p3}, Lcom/stripe/hardware/emv/ReaderSettings;->getTerminalCountryCode()Ljava/lang/String;

    move-result-object v3

    .line 228
    invoke-virtual {p3}, Lcom/stripe/hardware/emv/ReaderSettings;->getBuzzerSoundEnabled()Ljava/lang/String;

    move-result-object v4

    .line 229
    invoke-virtual {p3}, Lcom/stripe/hardware/emv/ReaderSettings;->getConfigHash()Ljava/lang/String;

    move-result-object v5

    .line 225
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/stripe/core/hardware/reactive/emv/DesiredSettings;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    invoke-direct {p1}, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->storedConfigSource()Lcom/stripe/core/hardware/reactive/emv/ClientConfigDataSource;

    move-result-object v2

    sget-object v3, Lcom/stripe/core/hardware/reactive/emv/ClientConfigDataSource;->SHARED_PREFS:Lcom/stripe/core/hardware/reactive/emv/ClientConfigDataSource;

    if-eq v2, v3, :cond_b

    .line 238
    iget-object v2, p1, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->transactionRepository:Lcom/stripe/core/transaction/TransactionRepository;

    invoke-virtual {p3}, Lcom/stripe/hardware/emv/ReaderSettings;->getDomesticDebitAidList()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_9

    .line 239
    iget-object v3, p1, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->domesticDebitAidsParser:Lcom/stripe/hardware/emv/DomesticDebitAidsParser;

    invoke-interface {v3, p3}, Lcom/stripe/hardware/emv/DomesticDebitAidsParser;->parse(Ljava/lang/String;)Ljava/util/List;

    move-result-object p3

    if-nez p3, :cond_a

    .line 240
    :cond_9
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p3

    .line 238
    :cond_a
    invoke-virtual {v2, p3}, Lcom/stripe/core/transaction/TransactionRepository;->setDomesticDebitAids(Ljava/util/List;)V

    .line 242
    :cond_b
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_e

    .line 243
    iput-object p1, v7, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$configureTerminalSetting$1;->L$0:Ljava/lang/Object;

    const/4 p3, 0x0

    iput-object p3, v7, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$configureTerminalSetting$1;->L$1:Ljava/lang/Object;

    iput v8, v7, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$configureTerminalSetting$1;->label:I

    invoke-virtual {p1, p2, v7}, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->updateTerminalSetting(Lcom/stripe/core/hardware/reactive/emv/DesiredSettings;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v0, :cond_c

    :goto_6
    return-object v0

    :cond_c
    :goto_7
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_d

    .line 244
    iget-object p1, p1, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const-string p2, "Successfully updated terminal setting"

    new-array p3, v10, [Lkotlin/Pair;

    invoke-interface {p1, p2, p3}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    goto :goto_8

    .line 247
    :cond_d
    iget-object p1, p1, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const-string p2, "Unable to update terminal setting. Check logs for onError() response"

    new-array p3, v10, [Lkotlin/Pair;

    invoke-interface {p1, p2, p3}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->w(Ljava/lang/String;[Lkotlin/Pair;)V

    move v9, v10

    .line 248
    :goto_8
    invoke-static {v9}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 251
    :cond_e
    iget-object p1, p1, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const-string p2, "configureTerminalSetting: No need to change."

    new-array p3, v10, [Lkotlin/Pair;

    invoke-interface {p1, p2, p3}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 252
    invoke-static {v9}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 253
    :cond_f
    move-object p2, p1

    check-cast p2, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;

    .line 254
    iget-object p1, p1, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const-string p2, "Unable to read terminal setting. Check logs for onError() response"

    new-array p3, v10, [Lkotlin/Pair;

    invoke-interface {p1, p2, p3}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->w(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 256
    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final getClientConfigData(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/core/hardware/reactive/emv/ClientConfigData;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 377
    invoke-direct {p0}, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->storedConfigSource()Lcom/stripe/core/hardware/reactive/emv/ClientConfigDataSource;

    move-result-object v0

    sget-object v1, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/stripe/core/hardware/reactive/emv/ClientConfigDataSource;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 380
    invoke-direct {p0, v1, p1}, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->getClientConfigDataFromEmvTag(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 381
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_1
    const/4 v0, 0x0

    .line 379
    invoke-direct {p0, v0, p1}, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->getClientConfigDataFromEmvTag(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 378
    :cond_2
    invoke-direct {p0}, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->getClientConfigDataFromSharedPref()Lcom/stripe/core/hardware/reactive/emv/ClientConfigData;

    move-result-object p1

    return-object p1
.end method

.method public final handleAidData$hardware_reactive_release(Ljava/util/Map;Ljava/util/Map;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p4

    instance-of v1, v0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$handleAidData$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$handleAidData$1;

    iget v2, v1, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$handleAidData$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v0, v1, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$handleAidData$1;->label:I

    sub-int/2addr v0, v3

    iput v0, v1, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$handleAidData$1;->label:I

    move-object/from16 v2, p0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$handleAidData$1;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$handleAidData$1;-><init>(Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v1, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$handleAidData$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 183
    iget v4, v1, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$handleAidData$1;->label:I

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v4, :cond_3

    if-eq v4, v6, :cond_2

    if-ne v4, v5, :cond_1

    iget v4, v1, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$handleAidData$1;->I$1:I

    iget v7, v1, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$handleAidData$1;->I$0:I

    iget-object v8, v1, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$handleAidData$1;->L$4:Ljava/lang/Object;

    check-cast v8, Ljava/util/Iterator;

    iget-object v9, v1, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$handleAidData$1;->L$3:Ljava/lang/Object;

    check-cast v9, Lkotlin/jvm/functions/Function1;

    iget-object v10, v1, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$handleAidData$1;->L$2:Ljava/lang/Object;

    check-cast v10, Ljava/util/Map;

    iget-object v11, v1, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$handleAidData$1;->L$1:Ljava/lang/Object;

    check-cast v11, Ljava/util/Map;

    iget-object v12, v1, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$handleAidData$1;->L$0:Ljava/lang/Object;

    check-cast v12, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move/from16 p4, v6

    goto/16 :goto_5

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget v4, v1, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$handleAidData$1;->I$1:I

    iget v7, v1, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$handleAidData$1;->I$0:I

    iget-object v8, v1, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$handleAidData$1;->L$6:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    iget-object v9, v1, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$handleAidData$1;->L$5:Ljava/lang/Object;

    check-cast v9, Ljava/util/Map$Entry;

    iget-object v10, v1, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$handleAidData$1;->L$4:Ljava/lang/Object;

    check-cast v10, Ljava/util/Iterator;

    iget-object v11, v1, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$handleAidData$1;->L$3:Ljava/lang/Object;

    check-cast v11, Lkotlin/jvm/functions/Function1;

    iget-object v12, v1, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$handleAidData$1;->L$2:Ljava/lang/Object;

    check-cast v12, Ljava/util/Map;

    iget-object v13, v1, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$handleAidData$1;->L$1:Ljava/lang/Object;

    check-cast v13, Ljava/util/Map;

    iget-object v14, v1, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$handleAidData$1;->L$0:Ljava/lang/Object;

    check-cast v14, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_3
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 188
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 640
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v4, 0x0

    move-object v7, v0

    move-object v8, v1

    move-object v10, v2

    move v9, v4

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v4, p3

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v12, v9, 0x1

    if-gez v9, :cond_4

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_4
    check-cast v11, Ljava/util/Map$Entry;

    .line 190
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    const/16 v14, 0x8

    const/16 v15, 0x30

    invoke-static {v13, v14, v15}, Lkotlin/text/StringsKt;->padStart(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v13

    .line 191
    iput-object v10, v8, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$handleAidData$1;->L$0:Ljava/lang/Object;

    iput-object v0, v8, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$handleAidData$1;->L$1:Ljava/lang/Object;

    iput-object v1, v8, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$handleAidData$1;->L$2:Ljava/lang/Object;

    iput-object v4, v8, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$handleAidData$1;->L$3:Ljava/lang/Object;

    iput-object v7, v8, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$handleAidData$1;->L$4:Ljava/lang/Object;

    iput-object v11, v8, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$handleAidData$1;->L$5:Ljava/lang/Object;

    iput-object v13, v8, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$handleAidData$1;->L$6:Ljava/lang/Object;

    iput v12, v8, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$handleAidData$1;->I$0:I

    iput v9, v8, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$handleAidData$1;->I$1:I

    iput v6, v8, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$handleAidData$1;->label:I

    invoke-virtual {v10, v13, v8}, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->readAid(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v14

    if-ne v14, v3, :cond_5

    goto/16 :goto_4

    :cond_5
    move-object/from16 v17, v13

    move-object v13, v0

    move-object v0, v14

    move-object v14, v10

    move-object v10, v7

    move v7, v12

    move-object v12, v1

    move-object v1, v8

    move-object/from16 v8, v17

    move-object/from16 v17, v11

    move-object v11, v4

    move v4, v9

    move-object/from16 v9, v17

    .line 183
    :goto_2
    check-cast v0, Ljava/util/Map;

    .line 193
    invoke-static {}, Lkotlin/collections/MapsKt;->createMapBuilder()Ljava/util/Map;

    move-result-object v15

    if-nez v0, :cond_6

    .line 194
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v16

    move/from16 p4, v6

    move-object/from16 v6, v16

    goto :goto_3

    :cond_6
    move/from16 p4, v6

    move-object v6, v0

    :goto_3
    invoke-interface {v15, v6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 196
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v13, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    if-nez v6, :cond_7

    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v6

    :cond_7
    invoke-interface {v15, v6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 197
    const-string v6, "appIndex"

    invoke-interface {v15, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    invoke-static {v15}, Lkotlin/collections/MapsKt;->build(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v6

    .line 201
    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 202
    iput-object v14, v1, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$handleAidData$1;->L$0:Ljava/lang/Object;

    iput-object v13, v1, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$handleAidData$1;->L$1:Ljava/lang/Object;

    iput-object v12, v1, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$handleAidData$1;->L$2:Ljava/lang/Object;

    iput-object v11, v1, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$handleAidData$1;->L$3:Ljava/lang/Object;

    iput-object v10, v1, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$handleAidData$1;->L$4:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, v1, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$handleAidData$1;->L$5:Ljava/lang/Object;

    iput-object v0, v1, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$handleAidData$1;->L$6:Ljava/lang/Object;

    iput v7, v1, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$handleAidData$1;->I$0:I

    iput v4, v1, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$handleAidData$1;->I$1:I

    iput v5, v1, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$handleAidData$1;->label:I

    invoke-virtual {v14, v6, v1}, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->updateAid(Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_8

    :goto_4
    return-object v3

    :cond_8
    move-object v8, v10

    move-object v9, v11

    move-object v10, v12

    move-object v11, v13

    move-object v12, v14

    :goto_5
    move v6, v4

    move-object v4, v9

    move-object v0, v11

    move v9, v7

    move-object v7, v8

    move-object v8, v1

    move-object v1, v10

    move-object v10, v12

    goto :goto_6

    :cond_9
    move-object v8, v1

    move v6, v4

    move v9, v7

    move-object v7, v10

    move-object v4, v11

    move-object v1, v12

    move-object v0, v13

    move-object v10, v14

    :goto_6
    add-int/lit8 v6, v6, 0x1

    int-to-float v6, v6

    .line 206
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v6, v11

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/Boxing;->boxFloat(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v4, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v6, p4

    goto/16 :goto_1

    .line 208
    :cond_a
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final installConfig(Lcom/stripe/proto/model/config/MobileClientConfig;Landroid/graphics/Bitmap;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/model/config/MobileClientConfig;",
            "Landroid/graphics/Bitmap;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p4

    const-string v2, "FFFF"

    const-string v3, "010000000000400100FF"

    const-string v4, "new settings are is "

    const-string v5, "currentSettings is "

    instance-of v6, v0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$installConfig$1;

    if-eqz v6, :cond_0

    move-object v6, v0

    check-cast v6, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$installConfig$1;

    iget v7, v6, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$installConfig$1;->label:I

    const/high16 v8, -0x80000000

    and-int/2addr v7, v8

    if-eqz v7, :cond_0

    iget v0, v6, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$installConfig$1;->label:I

    sub-int/2addr v0, v8

    iput v0, v6, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$installConfig$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v6, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$installConfig$1;

    invoke-direct {v6, v1, v0}, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$installConfig$1;-><init>(Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v13, v6

    iget-object v0, v13, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$installConfig$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v6

    .line 107
    iget v7, v13, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$installConfig$1;->label:I

    const/4 v11, 0x1

    packed-switch v7, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v2, v13, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$installConfig$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/sync/Mutex;

    iget-object v3, v13, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$installConfig$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lkotlin/jvm/functions/Function1;

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_12

    :catchall_0
    move-exception v0

    goto/16 :goto_1

    :pswitch_1
    iget-object v2, v13, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$installConfig$1;->L$5:Ljava/lang/Object;

    check-cast v2, Lcom/stripe/core/hardware/reactive/emv/ClientConfigData;

    iget-object v3, v13, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$installConfig$1;->L$4:Ljava/lang/Object;

    check-cast v3, Lcom/stripe/core/hardware/reactive/emv/ClientConfigData;

    iget-object v4, v13, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$installConfig$1;->L$3:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/sync/Mutex;

    iget-object v5, v13, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$installConfig$1;->L$2:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    iget-object v7, v13, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$installConfig$1;->L$1:Ljava/lang/Object;

    check-cast v7, Lcom/stripe/proto/model/config/MobileClientConfig;

    iget-object v8, v13, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$installConfig$1;->L$0:Ljava/lang/Object;

    check-cast v8, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;

    :try_start_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v3

    move-object v15, v4

    move-object v3, v5

    move v5, v11

    goto/16 :goto_10

    :catchall_1
    move-exception v0

    move-object v2, v4

    goto :goto_1

    :pswitch_2
    iget-object v2, v13, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$installConfig$1;->L$5:Ljava/lang/Object;

    check-cast v2, Lcom/stripe/core/hardware/reactive/emv/ClientConfigData;

    iget-object v3, v13, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$installConfig$1;->L$4:Ljava/lang/Object;

    check-cast v3, Lcom/stripe/core/hardware/reactive/emv/ClientConfigData;

    iget-object v5, v13, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$installConfig$1;->L$3:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/sync/Mutex;

    iget-object v7, v13, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$installConfig$1;->L$2:Ljava/lang/Object;

    check-cast v7, Lkotlin/jvm/functions/Function1;

    iget-object v8, v13, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$installConfig$1;->L$1:Ljava/lang/Object;

    check-cast v8, Lcom/stripe/proto/model/config/MobileClientConfig;

    iget-object v9, v13, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$installConfig$1;->L$0:Ljava/lang/Object;

    check-cast v9, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;

    :try_start_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v15, v5

    move v5, v11

    goto/16 :goto_e

    :catchall_2
    move-exception v0

    move-object v2, v5

    goto :goto_1

    :pswitch_3
    iget v7, v13, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$installConfig$1;->I$0:I

    iget-object v14, v13, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$installConfig$1;->L$5:Ljava/lang/Object;

    check-cast v14, Lcom/stripe/core/hardware/reactive/emv/ClientConfigData;

    iget-object v15, v13, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$installConfig$1;->L$4:Ljava/lang/Object;

    check-cast v15, Lkotlinx/coroutines/sync/Mutex;

    iget-object v8, v13, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$installConfig$1;->L$3:Ljava/lang/Object;

    check-cast v8, Lkotlin/jvm/functions/Function1;

    iget-object v10, v13, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$installConfig$1;->L$2:Ljava/lang/Object;

    check-cast v10, Landroid/graphics/Bitmap;

    iget-object v9, v13, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$installConfig$1;->L$1:Ljava/lang/Object;

    check-cast v9, Lcom/stripe/proto/model/config/MobileClientConfig;

    iget-object v12, v13, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$installConfig$1;->L$0:Ljava/lang/Object;

    check-cast v12, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;

    :try_start_3
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    const/4 v1, 0x0

    goto/16 :goto_9

    :catchall_3
    move-exception v0

    move-object v2, v15

    goto :goto_1

    :pswitch_4
    iget-object v7, v13, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$installConfig$1;->L$4:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/sync/Mutex;

    iget-object v8, v13, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$installConfig$1;->L$3:Ljava/lang/Object;

    check-cast v8, Lkotlin/jvm/functions/Function1;

    iget-object v9, v13, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$installConfig$1;->L$2:Ljava/lang/Object;

    check-cast v9, Landroid/graphics/Bitmap;

    iget-object v10, v13, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$installConfig$1;->L$1:Ljava/lang/Object;

    check-cast v10, Lcom/stripe/proto/model/config/MobileClientConfig;

    iget-object v12, v13, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$installConfig$1;->L$0:Ljava/lang/Object;

    check-cast v12, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;

    :try_start_4
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    move-object v0, v12

    const/4 v11, 0x2

    move-object v12, v7

    goto/16 :goto_3

    :catchall_4
    move-exception v0

    move-object v2, v7

    :goto_1
    const/4 v10, 0x0

    goto/16 :goto_14

    :pswitch_5
    iget-object v7, v13, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$installConfig$1;->L$4:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/sync/Mutex;

    iget-object v8, v13, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$installConfig$1;->L$3:Ljava/lang/Object;

    check-cast v8, Lkotlin/jvm/functions/Function1;

    iget-object v9, v13, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$installConfig$1;->L$2:Ljava/lang/Object;

    check-cast v9, Landroid/graphics/Bitmap;

    iget-object v10, v13, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$installConfig$1;->L$1:Ljava/lang/Object;

    check-cast v10, Lcom/stripe/proto/model/config/MobileClientConfig;

    iget-object v12, v13, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$installConfig$1;->L$0:Ljava/lang/Object;

    check-cast v12, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v0, v9

    move-object v9, v8

    move-object v8, v0

    move-object v0, v12

    move-object v12, v7

    move-object v7, v10

    const/4 v10, 0x0

    goto :goto_2

    :pswitch_6
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 111
    iget-object v0, v1, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->installConfigMutex:Lkotlinx/coroutines/sync/Mutex;

    .line 633
    iput-object v1, v13, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$installConfig$1;->L$0:Ljava/lang/Object;

    move-object/from16 v7, p1

    iput-object v7, v13, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$installConfig$1;->L$1:Ljava/lang/Object;

    move-object/from16 v8, p2

    iput-object v8, v13, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$installConfig$1;->L$2:Ljava/lang/Object;

    move-object/from16 v9, p3

    iput-object v9, v13, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$installConfig$1;->L$3:Ljava/lang/Object;

    iput-object v0, v13, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$installConfig$1;->L$4:Ljava/lang/Object;

    iput v11, v13, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$installConfig$1;->label:I

    const/4 v10, 0x0

    invoke-interface {v0, v10, v13}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v6, :cond_1

    goto/16 :goto_11

    :cond_1
    move-object v12, v0

    move-object v0, v1

    .line 113
    :goto_2
    :try_start_5
    iget-object v14, v7, Lcom/stripe/proto/model/config/MobileClientConfig;->bbpos_config:Lcom/stripe/proto/model/config/BBPOSConfig;

    if-eqz v14, :cond_5

    iget-object v14, v14, Lcom/stripe/proto/model/config/BBPOSConfig;->aid_order:Lcom/stripe/proto/terminal/terminal/pub/message/config/RegionalAidOrder;

    if-eqz v14, :cond_5

    iget-object v14, v14, Lcom/stripe/proto/terminal/terminal/pub/message/config/RegionalAidOrder;->aid_order:Ljava/util/Map;

    if-eqz v14, :cond_5

    .line 114
    iget-object v15, v7, Lcom/stripe/proto/model/config/MobileClientConfig;->client_checkout_options:Lcom/stripe/proto/model/config/ClientCheckoutOptions;

    if-eqz v15, :cond_3

    iget-object v15, v15, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->vector_config:Lcom/stripe/proto/model/config/VectorRegionalConfiguration;

    if-eqz v15, :cond_3

    sget-object v10, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->Companion:Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$Companion;

    iget-object v11, v0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    invoke-virtual {v10, v15, v14, v11}, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$Companion;->toAidData$hardware_reactive_release(Lcom/stripe/proto/model/config/VectorRegionalConfiguration;Ljava/util/Map;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)Ljava/util/Map;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 115
    iput-object v0, v13, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$installConfig$1;->L$0:Ljava/lang/Object;

    iput-object v7, v13, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$installConfig$1;->L$1:Ljava/lang/Object;

    iput-object v8, v13, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$installConfig$1;->L$2:Ljava/lang/Object;

    iput-object v9, v13, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$installConfig$1;->L$3:Ljava/lang/Object;

    iput-object v12, v13, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$installConfig$1;->L$4:Ljava/lang/Object;

    const/4 v11, 0x2

    iput v11, v13, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$installConfig$1;->label:I

    invoke-virtual {v0, v10, v14, v9, v13}, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->handleAidData$hardware_reactive_release(Ljava/util/Map;Ljava/util/Map;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v6, :cond_2

    goto/16 :goto_11

    :cond_2
    move-object v10, v9

    move-object v9, v8

    move-object v8, v10

    move-object v10, v7

    .line 114
    :goto_3
    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v24, v9

    move-object v9, v8

    move-object/from16 v8, v24

    goto :goto_4

    :cond_3
    const/4 v11, 0x2

    move-object v10, v7

    const/4 v7, 0x0

    :goto_4
    if-nez v7, :cond_4

    .line 120
    iget-object v7, v0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const-string v14, "MobileClientConfig missing vectorConfig"

    const/4 v15, 0x0

    new-array v11, v15, [Lkotlin/Pair;

    invoke-interface {v7, v14, v11}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->w(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 113
    :cond_4
    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_8

    move-object v11, v7

    move-object v7, v0

    move-object v0, v11

    move-object v11, v10

    move-object v10, v9

    move-object v9, v11

    goto :goto_5

    :cond_5
    move-object v10, v9

    move-object v9, v7

    move-object v7, v0

    const/4 v0, 0x0

    :goto_5
    move-object v11, v8

    move-object v8, v12

    if-nez v0, :cond_6

    .line 121
    :try_start_6
    iget-object v0, v7, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const-string v12, "MobileClientConfig missing aidOrderMap"

    const/4 v15, 0x0

    new-array v14, v15, [Lkotlin/Pair;

    invoke-interface {v0, v12, v14}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->w(Ljava/lang/String;[Lkotlin/Pair;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    goto :goto_6

    :catchall_5
    move-exception v0

    move-object v2, v8

    goto/16 :goto_1

    :cond_6
    const/4 v15, 0x0

    .line 124
    :goto_6
    :try_start_7
    new-instance v0, Lcom/stripe/core/hardware/reactive/emv/ClientConfigData;

    .line 125
    iget-object v12, v9, Lcom/stripe/proto/model/config/MobileClientConfig;->client_config_version:Ljava/lang/String;

    .line 126
    iget-object v14, v9, Lcom/stripe/proto/model/config/MobileClientConfig;->bbpos_config:Lcom/stripe/proto/model/config/BBPOSConfig;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    if-eqz v14, :cond_7

    :try_start_8
    iget-object v14, v14, Lcom/stripe/proto/model/config/BBPOSConfig;->pinpad_image_assets:Lcom/stripe/proto/model/config/PinpadImageAssets;

    if-eqz v14, :cond_7

    iget-object v14, v14, Lcom/stripe/proto/model/config/PinpadImageAssets;->splash_screen:Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;

    if-eqz v14, :cond_7

    iget-object v14, v14, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;->image_id:Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    goto :goto_7

    :cond_7
    const/4 v14, 0x0

    .line 124
    :goto_7
    :try_start_9
    invoke-direct {v0, v12, v14}, Lcom/stripe/core/hardware/reactive/emv/ClientConfigData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-direct {v7}, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->storedConfigSource()Lcom/stripe/core/hardware/reactive/emv/ClientConfigDataSource;

    move-result-object v12

    sget-object v14, Lcom/stripe/core/hardware/reactive/emv/ClientConfigDataSource;->EMV_TAG_CONFIG_HASH:Lcom/stripe/core/hardware/reactive/emv/ClientConfigDataSource;

    if-ne v12, v14, :cond_8

    const/4 v12, 0x1

    goto :goto_8

    :cond_8
    move v12, v15

    :goto_8
    xor-int/lit8 v14, v12, 0x1

    .line 130
    iput-object v7, v13, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$installConfig$1;->L$0:Ljava/lang/Object;

    iput-object v9, v13, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$installConfig$1;->L$1:Ljava/lang/Object;

    iput-object v11, v13, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$installConfig$1;->L$2:Ljava/lang/Object;

    iput-object v10, v13, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$installConfig$1;->L$3:Ljava/lang/Object;

    iput-object v8, v13, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$installConfig$1;->L$4:Ljava/lang/Object;

    iput-object v0, v13, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$installConfig$1;->L$5:Ljava/lang/Object;

    iput v12, v13, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$installConfig$1;->I$0:I

    const/4 v15, 0x3

    iput v15, v13, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$installConfig$1;->label:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    move-object/from16 v19, v9

    const/4 v9, 0x0

    move-object/from16 v20, v10

    const/4 v10, 0x0

    move-object/from16 v21, v11

    const/4 v11, 0x0

    move-object/from16 v22, v8

    move v8, v14

    const/16 v14, 0xe

    move/from16 v23, v15

    const/4 v15, 0x0

    const/4 v1, 0x0

    :try_start_a
    invoke-static/range {v7 .. v15}, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->readTerminalSetting$default(Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;ZZZZZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    if-ne v8, v6, :cond_9

    goto/16 :goto_11

    :cond_9
    move v9, v12

    move-object v12, v7

    move v7, v9

    move-object v14, v0

    move-object v0, v8

    move-object/from16 v9, v19

    move-object/from16 v8, v20

    move-object/from16 v10, v21

    move-object/from16 v15, v22

    .line 107
    :goto_9
    :try_start_b
    check-cast v0, Lcom/stripe/hardware/emv/ReaderSettings;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 133
    const-string v11, ""

    if-eqz v0, :cond_c

    .line 138
    :try_start_c
    sget-object v1, Lcom/stripe/core/hardware/reactive/emv/ClientConfigData;->Companion:Lcom/stripe/core/hardware/reactive/emv/ClientConfigData$Companion;

    if-eqz v7, :cond_a

    .line 135
    invoke-virtual {v0}, Lcom/stripe/hardware/emv/ReaderSettings;->getConfigHash()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 137
    :cond_a
    invoke-virtual {v0}, Lcom/stripe/hardware/emv/ReaderSettings;->getMerchantNameAndLocation()Ljava/lang/String;

    move-result-object v0

    :goto_a
    if-nez v0, :cond_b

    move-object v0, v11

    .line 138
    :cond_b
    invoke-virtual {v1, v0}, Lcom/stripe/core/hardware/reactive/emv/ClientConfigData$Companion;->parseClientConfigData(Ljava/lang/String;)Lcom/stripe/core/hardware/reactive/emv/ClientConfigData;

    move-result-object v0

    goto :goto_b

    :cond_c
    const/4 v0, 0x0

    .line 141
    :goto_b
    iget-object v1, v12, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 p1, v11

    const/4 v7, 0x0

    new-array v11, v7, [Lkotlin/Pair;

    invoke-interface {v1, v5, v11}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    if-eqz v10, :cond_11

    .line 144
    iget-object v1, v9, Lcom/stripe/proto/model/config/MobileClientConfig;->bbpos_config:Lcom/stripe/proto/model/config/BBPOSConfig;

    if-eqz v1, :cond_d

    iget-object v1, v1, Lcom/stripe/proto/model/config/BBPOSConfig;->pinpad_image_assets:Lcom/stripe/proto/model/config/PinpadImageAssets;

    if-eqz v1, :cond_d

    iget-object v1, v1, Lcom/stripe/proto/model/config/PinpadImageAssets;->splash_screen:Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;

    if-eqz v1, :cond_d

    iget-object v1, v1, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;->image_color:Ljava/lang/String;

    goto :goto_c

    :cond_d
    const/4 v1, 0x0

    :goto_c
    if-nez v1, :cond_e

    move-object/from16 v11, p1

    goto :goto_d

    :cond_e
    move-object v11, v1

    :goto_d
    check-cast v11, Ljava/lang/CharSequence;

    .line 145
    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_f

    const-string v11, "E618"

    :cond_f
    check-cast v11, Ljava/lang/String;

    .line 146
    const-string v1, "010000000000400100FFFFFF0000"

    .line 147
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "0000"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 148
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v11, 0x2

    .line 151
    new-array v5, v11, [Lkotlin/Pair;

    const-string v7, "image"

    new-instance v11, Ljava/util/Hashtable;

    move-object/from16 v18, v5

    const/4 v5, 0x3

    .line 153
    new-array v5, v5, [Lkotlin/Pair;

    move-object/from16 v19, v5

    const-string v5, "data"

    invoke-static {v5, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    const/16 v16, 0x0

    aput-object v5, v19, v16

    .line 154
    const-string v5, "backgroundColor"

    invoke-static {v5, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v5, 0x1

    aput-object v1, v19, v5

    .line 155
    const-string v1, "foregroundColor"

    invoke-static {v1, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v17, 0x2

    aput-object v1, v19, v17

    .line 152
    invoke-static/range {v19 .. v19}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1

    .line 151
    invoke-direct {v11, v1}, Ljava/util/Hashtable;-><init>(Ljava/util/Map;)V

    invoke-static {v7, v11}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v16, 0x0

    aput-object v1, v18, v16

    .line 158
    const-string v1, "theme"

    new-instance v3, Ljava/util/Hashtable;

    .line 160
    const-string v7, "statusBarColor"

    invoke-static {v7, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    .line 159
    invoke-static {v2}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v2

    .line 158
    invoke-direct {v3, v2}, Ljava/util/Hashtable;-><init>(Ljava/util/Map;)V

    invoke-static {v1, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v18, v5

    .line 150
    invoke-static/range {v18 .. v18}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1

    .line 165
    iput-object v12, v13, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$installConfig$1;->L$0:Ljava/lang/Object;

    iput-object v9, v13, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$installConfig$1;->L$1:Ljava/lang/Object;

    iput-object v8, v13, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$installConfig$1;->L$2:Ljava/lang/Object;

    iput-object v15, v13, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$installConfig$1;->L$3:Ljava/lang/Object;

    iput-object v0, v13, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$installConfig$1;->L$4:Ljava/lang/Object;

    iput-object v14, v13, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$installConfig$1;->L$5:Ljava/lang/Object;

    const/4 v2, 0x4

    iput v2, v13, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$installConfig$1;->label:I

    invoke-virtual {v12, v1, v13}, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->updateDisplaySettings(Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v6, :cond_10

    goto/16 :goto_11

    :cond_10
    move-object v3, v0

    move-object v0, v1

    move-object v7, v8

    move-object v8, v9

    move-object v9, v12

    move-object v2, v14

    :goto_e
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-object v0, v7

    move-object v7, v8

    move-object v8, v9

    goto :goto_f

    :cond_11
    const/4 v5, 0x1

    move-object v3, v0

    move-object v0, v8

    move-object v7, v9

    move-object v8, v12

    move-object v2, v14

    .line 169
    :goto_f
    invoke-virtual {v2}, Lcom/stripe/core/hardware/reactive/emv/ClientConfigData;->toTagValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v7, v3, v1}, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->recordNewSetting(Lcom/stripe/proto/model/config/MobileClientConfig;Lcom/stripe/core/hardware/reactive/emv/ClientConfigData;Ljava/lang/String;)Lcom/stripe/core/hardware/reactive/emv/DesiredSettings;

    move-result-object v1

    .line 170
    iget-object v9, v8, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v10, 0x0

    new-array v10, v10, [Lkotlin/Pair;

    invoke-interface {v9, v4, v10}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 172
    iput-object v8, v13, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$installConfig$1;->L$0:Ljava/lang/Object;

    iput-object v7, v13, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$installConfig$1;->L$1:Ljava/lang/Object;

    iput-object v0, v13, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$installConfig$1;->L$2:Ljava/lang/Object;

    iput-object v15, v13, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$installConfig$1;->L$3:Ljava/lang/Object;

    iput-object v3, v13, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$installConfig$1;->L$4:Ljava/lang/Object;

    iput-object v2, v13, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$installConfig$1;->L$5:Ljava/lang/Object;

    const/4 v4, 0x5

    iput v4, v13, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$installConfig$1;->label:I

    invoke-virtual {v8, v1, v5, v13}, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->configureTerminalSetting$hardware_reactive_release(Lcom/stripe/core/hardware/reactive/emv/DesiredSettings;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v6, :cond_12

    goto :goto_11

    :cond_12
    move-object/from16 v24, v3

    move-object v3, v0

    move-object v0, v1

    move-object/from16 v1, v24

    :goto_10
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_13

    const/4 v10, 0x0

    .line 175
    invoke-static {v2, v10, v10, v5, v10}, Lcom/stripe/core/hardware/reactive/emv/ClientConfigData;->copy$default(Lcom/stripe/core/hardware/reactive/emv/ClientConfigData;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/stripe/core/hardware/reactive/emv/ClientConfigData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/core/hardware/reactive/emv/ClientConfigData;->toTagValue()Ljava/lang/String;

    move-result-object v0

    .line 176
    invoke-direct {v8, v7, v1, v0}, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->recordNewSetting(Lcom/stripe/proto/model/config/MobileClientConfig;Lcom/stripe/core/hardware/reactive/emv/ClientConfigData;Ljava/lang/String;)Lcom/stripe/core/hardware/reactive/emv/DesiredSettings;

    move-result-object v0

    .line 177
    iput-object v3, v13, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$installConfig$1;->L$0:Ljava/lang/Object;

    iput-object v15, v13, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$installConfig$1;->L$1:Ljava/lang/Object;

    iput-object v10, v13, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$installConfig$1;->L$2:Ljava/lang/Object;

    iput-object v10, v13, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$installConfig$1;->L$3:Ljava/lang/Object;

    iput-object v10, v13, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$installConfig$1;->L$4:Ljava/lang/Object;

    iput-object v10, v13, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$installConfig$1;->L$5:Ljava/lang/Object;

    const/4 v1, 0x6

    iput v1, v13, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$installConfig$1;->label:I

    invoke-virtual {v8, v0, v5, v13}, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->configureTerminalSetting$hardware_reactive_release(Lcom/stripe/core/hardware/reactive/emv/DesiredSettings;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    if-ne v0, v6, :cond_13

    :goto_11
    return-object v6

    :cond_13
    move-object v2, v15

    :goto_12
    const/high16 v0, 0x3f800000    # 1.0f

    .line 179
    :try_start_d
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxFloat(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    const/4 v10, 0x0

    .line 637
    invoke-interface {v2, v10}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object v0

    :catchall_6
    move-exception v0

    goto :goto_13

    :catchall_7
    move-exception v0

    move-object/from16 v22, v8

    :goto_13
    move-object/from16 v2, v22

    goto/16 :goto_1

    :catchall_8
    move-exception v0

    move-object v2, v12

    goto/16 :goto_1

    :goto_14
    invoke-interface {v2, v10}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final readAid(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$readAid$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$readAid$1;

    iget v1, v0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$readAid$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$readAid$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$readAid$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$readAid$1;

    invoke-direct {v0, p0, p2}, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$readAid$1;-><init>(Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$readAid$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 260
    iget v2, v0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$readAid$1;->label:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$readAid$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 261
    invoke-static {v4, v3, v4}, Lkotlinx/coroutines/CompletableDeferredKt;->CompletableDeferred$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object p2

    iput-object p2, p0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->readAidDeferred:Lkotlinx/coroutines/CompletableDeferred;

    .line 263
    iget-object p2, p0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->configurationUpdateController:Lcom/stripe/core/hardware/updates/ReaderConfigurationUpdateController;

    invoke-interface {p2, p1}, Lcom/stripe/core/hardware/updates/ReaderConfigurationUpdateController;->readAid(Ljava/lang/String;)V

    .line 264
    iget-object p1, p0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->readAidDeferred:Lkotlinx/coroutines/CompletableDeferred;

    if-eqz p1, :cond_4

    .line 266
    :try_start_1
    sget-wide v5, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->TIMEOUT_DELAY:J

    new-instance p2, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$readAid$ret$1$1;

    invoke-direct {p2, p1, v4}, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$readAid$ret$1$1;-><init>(Lkotlinx/coroutines/CompletableDeferred;Lkotlin/coroutines/Continuation;)V

    check-cast p2, Lkotlin/jvm/functions/Function2;

    iput-object p0, v0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$readAid$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$readAid$1;->label:I

    invoke-static {v5, v6, p2, v0}, Lkotlinx/coroutines/TimeoutKt;->withTimeout-KLykuaI(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    move-object p1, p0

    :goto_1
    :try_start_2
    check-cast p2, Ljava/util/Map;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_1
    move-exception p2

    move-object p1, p0

    .line 270
    :goto_2
    iget-object v0, p1, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    check-cast p2, Ljava/lang/Throwable;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "Failed to read AID"

    invoke-interface {v0, p2, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Lkotlin/Pair;)V

    goto :goto_3

    :cond_4
    move-object p1, p0

    :goto_3
    move-object p2, v4

    .line 275
    :goto_4
    iput-object v4, p1, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->readAidDeferred:Lkotlinx/coroutines/CompletableDeferred;

    return-object p2
.end method

.method public final readTerminalSetting(ZZZZZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZZZ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/hardware/emv/ReaderSettings;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p6

    instance-of v1, v0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$readTerminalSetting$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$readTerminalSetting$1;

    iget v2, v1, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$readTerminalSetting$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v0, v1, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$readTerminalSetting$1;->label:I

    sub-int/2addr v0, v3

    iput v0, v1, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$readTerminalSetting$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$readTerminalSetting$1;

    invoke-direct {v1, p0, v0}, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$readTerminalSetting$1;-><init>(Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v1, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$readTerminalSetting$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 319
    iget v3, v1, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$readTerminalSetting$1;->label:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_3

    if-eq v3, v5, :cond_2

    if-ne v3, v4, :cond_1

    iget-object p1, v1, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$readTerminalSetting$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/sync/Mutex;

    iget-object p2, v1, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$readTerminalSetting$1;->L$0:Ljava/lang/Object;

    check-cast p2, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    move-object p2, v0

    goto/16 :goto_7

    :catch_0
    move-exception v0

    goto/16 :goto_5

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-boolean p1, v1, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$readTerminalSetting$1;->Z$4:Z

    iget-boolean p2, v1, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$readTerminalSetting$1;->Z$3:Z

    iget-boolean v3, v1, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$readTerminalSetting$1;->Z$2:Z

    iget-boolean v7, v1, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$readTerminalSetting$1;->Z$1:Z

    iget-boolean v8, v1, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$readTerminalSetting$1;->Z$0:Z

    iget-object v9, v1, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$readTerminalSetting$1;->L$1:Ljava/lang/Object;

    check-cast v9, Lkotlinx/coroutines/sync/Mutex;

    iget-object v10, v1, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$readTerminalSetting$1;->L$0:Ljava/lang/Object;

    check-cast v10, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v11, v8

    move v8, p1

    move p1, p2

    move p2, v11

    goto :goto_1

    :cond_3
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 325
    iget-object v0, p0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->readTerminalSettingMutex:Lkotlinx/coroutines/sync/Mutex;

    .line 646
    iput-object p0, v1, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$readTerminalSetting$1;->L$0:Ljava/lang/Object;

    iput-object v0, v1, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$readTerminalSetting$1;->L$1:Ljava/lang/Object;

    iput-boolean p1, v1, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$readTerminalSetting$1;->Z$0:Z

    iput-boolean p2, v1, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$readTerminalSetting$1;->Z$1:Z

    iput-boolean p3, v1, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$readTerminalSetting$1;->Z$2:Z

    move/from16 v7, p4

    iput-boolean v7, v1, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$readTerminalSetting$1;->Z$3:Z

    move/from16 v8, p5

    iput-boolean v8, v1, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$readTerminalSetting$1;->Z$4:Z

    iput v5, v1, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$readTerminalSetting$1;->label:I

    invoke-interface {v0, v6, v1}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v2, :cond_4

    goto :goto_2

    :cond_4
    move v3, p2

    move p2, p1

    move p1, v7

    move v7, v3

    move-object v10, p0

    move v3, p3

    move-object v9, v0

    .line 326
    :goto_1
    :try_start_1
    invoke-static {v6, v5, v6}, Lkotlinx/coroutines/CompletableDeferredKt;->CompletableDeferred$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v0

    iput-object v0, v10, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->readTerminalSettingDeferred:Lkotlinx/coroutines/CompletableDeferred;

    .line 328
    iget-object v0, v10, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->configurationUpdateController:Lcom/stripe/core/hardware/updates/ReaderConfigurationUpdateController;

    move/from16 p4, p1

    move-object p1, v0

    move p3, v3

    move/from16 p5, v7

    move/from16 p6, v8

    invoke-interface/range {p1 .. p6}, Lcom/stripe/core/hardware/updates/ReaderConfigurationUpdateController;->readSettings(ZZZZZ)V

    .line 335
    iget-object p1, v10, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->readTerminalSettingDeferred:Lkotlinx/coroutines/CompletableDeferred;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p1, :cond_6

    .line 337
    :try_start_2
    sget-wide v7, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->TIMEOUT_DELAY:J

    new-instance p2, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$readTerminalSetting$2$ret$1$1;

    invoke-direct {p2, p1, v6}, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$readTerminalSetting$2$ret$1$1;-><init>(Lkotlinx/coroutines/CompletableDeferred;Lkotlin/coroutines/Continuation;)V

    check-cast p2, Lkotlin/jvm/functions/Function2;

    iput-object v10, v1, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$readTerminalSetting$1;->L$0:Ljava/lang/Object;

    iput-object v9, v1, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$readTerminalSetting$1;->L$1:Ljava/lang/Object;

    iput v4, v1, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$readTerminalSetting$1;->label:I

    invoke-static {v7, v8, p2, v1}, Lkotlinx/coroutines/TimeoutKt;->withTimeout-KLykuaI(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v0, v2, :cond_5

    :goto_2
    return-object v2

    :cond_5
    move-object p1, v9

    move-object p2, v10

    :goto_3
    :try_start_3
    check-cast v0, Lcom/stripe/hardware/emv/ReaderSettings;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_4
    move-object v10, p2

    goto :goto_6

    :catch_1
    move-exception v0

    move-object p1, v9

    move-object p2, v10

    .line 341
    :goto_5
    :try_start_4
    iget-object v1, p2, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    check-cast v0, Ljava/lang/Throwable;

    const-string v2, "Failed to read terminal setting"

    const/4 v3, 0x0

    new-array v3, v3, [Lkotlin/Pair;

    invoke-interface {v1, v0, v2, v3}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Lkotlin/Pair;)V

    move-object v0, v6

    goto :goto_4

    :cond_6
    move-object v0, v6

    move-object p1, v9

    .line 346
    :goto_6
    iput-object v6, v10, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->readTerminalSettingDeferred:Lkotlinx/coroutines/CompletableDeferred;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 650
    invoke-interface {p1, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object v0

    :catchall_1
    move-exception v0

    move-object p2, v0

    move-object p1, v9

    :goto_7
    invoke-interface {p1, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p2
.end method

.method public final resetSettingCacheDueToBBPOSConfigUpdate()V
    .locals 2

    .line 441
    invoke-direct {p0}, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->storedConfigSource()Lcom/stripe/core/hardware/reactive/emv/ClientConfigDataSource;

    move-result-object v0

    sget-object v1, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/stripe/core/hardware/reactive/emv/ClientConfigDataSource;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 445
    :cond_0
    iget-object v0, p0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->sharedPrefs:Lcom/stripe/jvmcore/storage/SharedPrefs;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/stripe/jvmcore/storage/SharedPrefs;->putMobilePosConfig(Ljava/lang/String;)V

    return-void
.end method

.method public final updateAid(Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$updateAid$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$updateAid$1;

    iget v1, v0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$updateAid$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$updateAid$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$updateAid$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$updateAid$1;

    invoke-direct {v0, p0, p2}, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$updateAid$1;-><init>(Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$updateAid$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 280
    iget v2, v0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$updateAid$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p1, v0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$updateAid$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 281
    invoke-static {v5, v4, v5}, Lkotlinx/coroutines/CompletableDeferredKt;->CompletableDeferred$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object p2

    iput-object p2, p0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->updateAidDeferred:Lkotlinx/coroutines/CompletableDeferred;

    .line 283
    iget-object p2, p0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->configurationUpdateController:Lcom/stripe/core/hardware/updates/ReaderConfigurationUpdateController;

    invoke-interface {p2, p1}, Lcom/stripe/core/hardware/updates/ReaderConfigurationUpdateController;->updateAid(Ljava/util/Map;)V

    .line 284
    iget-object p1, p0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->updateAidDeferred:Lkotlinx/coroutines/CompletableDeferred;

    if-eqz p1, :cond_4

    .line 286
    :try_start_1
    sget-wide v6, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->TIMEOUT_DELAY:J

    new-instance p2, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$updateAid$ret$1$1;

    invoke-direct {p2, p1, v5}, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$updateAid$ret$1$1;-><init>(Lkotlinx/coroutines/CompletableDeferred;Lkotlin/coroutines/Continuation;)V

    check-cast p2, Lkotlin/jvm/functions/Function2;

    iput-object p0, v0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$updateAid$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$updateAid$1;->label:I

    invoke-static {v6, v7, p2, v0}, Lkotlinx/coroutines/TimeoutKt;->withTimeout-KLykuaI(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    move-object p1, p0

    :goto_1
    :try_start_2
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move v3, p2

    goto :goto_3

    :catch_1
    move-exception p2

    move-object p1, p0

    .line 290
    :goto_2
    iget-object v0, p1, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    check-cast p2, Ljava/lang/Throwable;

    const-string v1, "Failed to update AID"

    new-array v2, v3, [Lkotlin/Pair;

    invoke-interface {v0, p2, v1, v2}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Lkotlin/Pair;)V

    goto :goto_3

    :cond_4
    move-object p1, p0

    .line 295
    :goto_3
    iput-object v5, p1, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->updateAidDeferred:Lkotlinx/coroutines/CompletableDeferred;

    .line 296
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final updateDisplaySettings(Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$updateDisplaySettings$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$updateDisplaySettings$1;

    iget v1, v0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$updateDisplaySettings$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$updateDisplaySettings$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$updateDisplaySettings$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$updateDisplaySettings$1;

    invoke-direct {v0, p0, p2}, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$updateDisplaySettings$1;-><init>(Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$updateDisplaySettings$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 300
    iget v2, v0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$updateDisplaySettings$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v5, :cond_1

    iget-object p1, v0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$updateDisplaySettings$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 301
    invoke-static {v4, v5, v4}, Lkotlinx/coroutines/CompletableDeferredKt;->CompletableDeferred$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object p2

    iput-object p2, p0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->updateDisplayDeferred:Lkotlinx/coroutines/CompletableDeferred;

    .line 303
    iget-object p2, p0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->configurationUpdateController:Lcom/stripe/core/hardware/updates/ReaderConfigurationUpdateController;

    invoke-interface {p2, p1}, Lcom/stripe/core/hardware/updates/ReaderConfigurationUpdateController;->updateDisplay(Ljava/util/Map;)V

    .line 304
    iget-object p1, p0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->updateDisplayDeferred:Lkotlinx/coroutines/CompletableDeferred;

    if-eqz p1, :cond_4

    .line 306
    :try_start_1
    sget-object p2, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    sget-object p2, Lkotlin/time/DurationUnit;->MINUTES:Lkotlin/time/DurationUnit;

    invoke-static {v5, p2}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v6

    new-instance p2, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$updateDisplaySettings$ret$1$1;

    invoke-direct {p2, p1, v4}, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$updateDisplaySettings$ret$1$1;-><init>(Lkotlinx/coroutines/CompletableDeferred;Lkotlin/coroutines/Continuation;)V

    check-cast p2, Lkotlin/jvm/functions/Function2;

    iput-object p0, v0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$updateDisplaySettings$1;->L$0:Ljava/lang/Object;

    iput v5, v0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$updateDisplaySettings$1;->label:I

    invoke-static {v6, v7, p2, v0}, Lkotlinx/coroutines/TimeoutKt;->withTimeout-KLykuaI(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    move-object p1, p0

    :goto_1
    :try_start_2
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move v3, p2

    goto :goto_2

    :catch_0
    move-object p1, p0

    .line 310
    :catch_1
    iget-object p2, p1, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const-string v0, "Failed to update display"

    new-array v1, v3, [Lkotlin/Pair;

    invoke-interface {p2, v0, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->w(Ljava/lang/String;[Lkotlin/Pair;)V

    goto :goto_2

    :cond_4
    move-object p1, p0

    .line 315
    :goto_2
    iput-object v4, p1, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->updateDisplayDeferred:Lkotlinx/coroutines/CompletableDeferred;

    .line 316
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final updateTerminalSetting(Lcom/stripe/core/hardware/reactive/emv/DesiredSettings;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/core/hardware/reactive/emv/DesiredSettings;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 353
    new-instance v0, Lcom/stripe/hardware/emv/TlvMap;

    invoke-virtual {p1}, Lcom/stripe/core/hardware/reactive/emv/DesiredSettings;->toTlvMap$hardware_reactive_release()Ljava/util/Map;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/stripe/hardware/emv/TlvMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0, v0, p2}, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->updateTerminalSetting(Lcom/stripe/hardware/emv/TlvMap;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final updateTerminalSetting(Lcom/stripe/hardware/emv/TlvMap;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/hardware/emv/TlvMap;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$updateTerminalSetting$2;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$updateTerminalSetting$2;

    iget v1, v0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$updateTerminalSetting$2;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$updateTerminalSetting$2;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$updateTerminalSetting$2;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$updateTerminalSetting$2;

    invoke-direct {v0, p0, p2}, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$updateTerminalSetting$2;-><init>(Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$updateTerminalSetting$2;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 356
    iget v2, v0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$updateTerminalSetting$2;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$updateTerminalSetting$2;->L$1:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$updateTerminalSetting$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p2

    goto/16 :goto_7

    :catch_0
    move-exception p2

    goto/16 :goto_5

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$updateTerminalSetting$2;->L$2:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$updateTerminalSetting$2;->L$1:Ljava/lang/Object;

    check-cast v2, Lcom/stripe/hardware/emv/TlvMap;

    iget-object v7, v0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$updateTerminalSetting$2;->L$0:Ljava/lang/Object;

    check-cast v7, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p2, p1

    move-object p1, v2

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 358
    iget-object p2, p0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->updateTerminalSettingMutex:Lkotlinx/coroutines/sync/Mutex;

    .line 655
    iput-object p0, v0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$updateTerminalSetting$2;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$updateTerminalSetting$2;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$updateTerminalSetting$2;->L$2:Ljava/lang/Object;

    iput v5, v0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$updateTerminalSetting$2;->label:I

    invoke-interface {p2, v6, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_4

    goto :goto_2

    :cond_4
    move-object v7, p0

    .line 359
    :goto_1
    :try_start_1
    invoke-static {v6, v5, v6}, Lkotlinx/coroutines/CompletableDeferredKt;->CompletableDeferred$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v2

    iput-object v2, v7, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->updateTerminalSettingFuture:Lkotlinx/coroutines/CompletableDeferred;

    .line 361
    iget-object v2, v7, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->configurationUpdateController:Lcom/stripe/core/hardware/updates/ReaderConfigurationUpdateController;

    invoke-interface {v2, p1}, Lcom/stripe/core/hardware/updates/ReaderConfigurationUpdateController;->updateSettings(Lcom/stripe/hardware/emv/TlvMap;)V

    .line 362
    iget-object p1, v7, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->updateTerminalSettingFuture:Lkotlinx/coroutines/CompletableDeferred;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p1, :cond_6

    .line 364
    :try_start_2
    sget-wide v8, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->TIMEOUT_DELAY_LONG:J

    new-instance v2, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$updateTerminalSetting$3$ret$1$1;

    invoke-direct {v2, p1, v6}, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$updateTerminalSetting$3$ret$1$1;-><init>(Lkotlinx/coroutines/CompletableDeferred;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    iput-object v7, v0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$updateTerminalSetting$2;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$updateTerminalSetting$2;->L$1:Ljava/lang/Object;

    iput-object v6, v0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$updateTerminalSetting$2;->L$2:Ljava/lang/Object;

    iput v3, v0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$updateTerminalSetting$2;->label:I

    invoke-static {v8, v9, v2, v0}, Lkotlinx/coroutines/TimeoutKt;->withTimeout-KLykuaI(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne p1, v1, :cond_5

    :goto_2
    return-object v1

    :cond_5
    move-object v0, p2

    move-object p2, p1

    move-object p1, v0

    move-object v0, v7

    :goto_3
    :try_start_3
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v4, p2

    :goto_4
    move-object v7, v0

    goto :goto_6

    :catch_1
    move-exception p1

    move-object v0, p2

    move-object p2, p1

    move-object p1, v0

    move-object v0, v7

    .line 368
    :goto_5
    :try_start_4
    iget-object v1, v0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    check-cast p2, Ljava/lang/Throwable;

    const-string v2, "Failed to update terminal setting"

    new-array v3, v4, [Lkotlin/Pair;

    invoke-interface {v1, p2, v2, v3}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Lkotlin/Pair;)V

    goto :goto_4

    :cond_6
    move-object p1, p2

    .line 373
    :goto_6
    iput-object v6, v7, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->updateTerminalSettingFuture:Lkotlinx/coroutines/CompletableDeferred;

    .line 374
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 659
    invoke-interface {p1, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p2

    :catchall_1
    move-exception p1

    move-object v10, p2

    move-object p2, p1

    move-object p1, v10

    :goto_7
    invoke-interface {p1, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p2
.end method
