.class public final Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector;
.super Ljava/lang/Object;
.source "BbposPaymentCollector.kt"

# interfaces
.implements Lcom/stripe/hardware/paymentcollection/PaymentCollector;
.implements Lcom/stripe/core/bbpos/hardware/DelegatedDeviceController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector$Companion;,
        Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBbposPaymentCollector.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BbposPaymentCollector.kt\ncom/stripe/core/bbpos/hardware/BbposPaymentCollector\n+ 2 HealthLogger.kt\ncom/stripe/jvmcore/logging/HealthLoggerBuilder\n+ 3 HealthLogger.kt\ncom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,172:1\n436#2,4:173\n457#3,4:177\n1#4:181\n*S KotlinDebug\n*F\n+ 1 BbposPaymentCollector.kt\ncom/stripe/core/bbpos/hardware/BbposPaymentCollector\n*L\n55#1:173,4\n56#1:177,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00c6\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u0000 P2\u00020\u00012\u00020\u0002:\u0001PBY\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0011\u0012\u0006\u0010\u0013\u001a\u00020\u0014\u0012\u0006\u0010\u0015\u001a\u00020\u0016\u00a2\u0006\u0002\u0010\u0017J\u0008\u0010,\u001a\u00020-H\u0016J\u0012\u0010.\u001a\u00020-2\u0008\u0008\u0002\u0010/\u001a\u000200H\u0002J\u0016\u00101\u001a\u00020-2\u000c\u00102\u001a\u0008\u0012\u0004\u0012\u00020403H\u0016J\u0010\u00105\u001a\u00020-2\u0006\u00106\u001a\u000207H\u0017J\u0010\u00108\u001a\u00020-2\u0006\u00109\u001a\u00020:H\u0016J\u0010\u0010;\u001a\u00020-2\u0006\u0010<\u001a\u00020=H\u0016J\u0010\u0010>\u001a\u00020-2\u0006\u0010?\u001a\u00020@H\u0016J\u0010\u0010A\u001a\u00020-2\u0006\u0010B\u001a\u00020CH\u0016J\u0010\u0010D\u001a\u00020-2\u0006\u0010E\u001a\u00020:H\u0016J\u0008\u0010F\u001a\u00020-H\u0016J\u0008\u0010G\u001a\u00020-H\u0016J\u0016\u0010H\u001a\u00020-2\u0006\u0010I\u001a\u00020JH\u0096@\u00a2\u0006\u0002\u0010KJ\u0016\u0010L\u001a\u00020-2\u0006\u0010M\u001a\u00020NH\u0096@\u00a2\u0006\u0002\u0010OR\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u00020\u0007X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u001c\u0010\u001a\u001a\n \u001b*\u0004\u0018\u00010\u00050\u00058BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001c\u0010\u001dR\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0011X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001fR\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R&\u0010 \u001a\u001a\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020#\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u00020%0!X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010&\u001a\u0004\u0018\u00010\'X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010(\u001a\u00020)X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0015\u001a\u00020\u0016X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008*\u0010+\u00a8\u0006Q"
    }
    d2 = {
        "Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector;",
        "Lcom/stripe/hardware/paymentcollection/PaymentCollector;",
        "Lcom/stripe/core/bbpos/hardware/DelegatedDeviceController;",
        "lazyController",
        "Ldagger/Lazy;",
        "Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;",
        "clock",
        "Lcom/stripe/time/Clock;",
        "coroutineScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "coroutineDispatcher",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "healthLoggerBuilder",
        "Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;",
        "pinButtonsRepository",
        "Lcom/stripe/core/hardware/paymentcollection/PinButtonsRepository;",
        "featureFlagsProvider",
        "Ljavax/inject/Provider;",
        "Lcom/stripe/proto/model/config/ReaderFeatureFlags;",
        "cardRemovalChecker",
        "Lcom/stripe/core/bbpos/hardware/CardRemovalChecker;",
        "pinPadAccessibilityChecker",
        "Lcom/stripe/core/bbpos/hardware/PinPadAccessibilityChecker;",
        "(Ldagger/Lazy;Lcom/stripe/time/Clock;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;Lcom/stripe/core/hardware/paymentcollection/PinButtonsRepository;Ljavax/inject/Provider;Lcom/stripe/core/bbpos/hardware/CardRemovalChecker;Lcom/stripe/core/bbpos/hardware/PinPadAccessibilityChecker;)V",
        "getClock",
        "()Lcom/stripe/time/Clock;",
        "controller",
        "kotlin.jvm.PlatformType",
        "getController",
        "()Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;",
        "getFeatureFlagsProvider",
        "()Ljavax/inject/Provider;",
        "paymentHealthLogger",
        "Lcom/stripe/jvmcore/logging/HealthLogger;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposDomain;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposDomain$Builder;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;",
        "pinEntryJob",
        "Lkotlinx/coroutines/Job;",
        "pinEntryJobLock",
        "Ljava/util/concurrent/locks/Lock;",
        "getPinPadAccessibilityChecker",
        "()Lcom/stripe/core/bbpos/hardware/PinPadAccessibilityChecker;",
        "cancelCollectTipAmount",
        "",
        "checkCard",
        "checkCardMode",
        "Lcom/stripe/bbpos/sdk/CheckCardMode;",
        "checkCardUntilRemoved",
        "readerType",
        "",
        "Lcom/stripe/hardware/ReaderConfiguration$ReaderType;",
        "collectTipAmount",
        "tipConfigValidationResult",
        "Lcom/stripe/hardware/tipping/TipConfigValidationResult;",
        "handleAuthorisationResponseData",
        "tlvBlob",
        "",
        "handleFinalConfirmationRequest",
        "confirm",
        "",
        "selectAccountType",
        "accountType",
        "Lcom/stripe/hardware/emv/AccountType;",
        "selectApplication",
        "index",
        "",
        "selectLanguage",
        "language",
        "setPinEntryButtons",
        "startPinEntry",
        "startReader",
        "configuration",
        "Lcom/stripe/hardware/ReaderConfiguration;",
        "(Lcom/stripe/hardware/ReaderConfiguration;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "stopReader",
        "phase",
        "Lcom/stripe/hardware/emv/CancellationPhase;",
        "(Lcom/stripe/hardware/emv/CancellationPhase;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Companion",
        "hardware_release"
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
.field public static final Companion:Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector$Companion;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final cardRemovalChecker:Lcom/stripe/core/bbpos/hardware/CardRemovalChecker;

.field private final clock:Lcom/stripe/time/Clock;

.field private final coroutineDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field private final coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field private final featureFlagsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/proto/model/config/ReaderFeatureFlags;",
            ">;"
        }
    .end annotation
.end field

.field private final lazyController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final paymentHealthLogger:Lcom/stripe/jvmcore/logging/HealthLogger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private final pinButtonsRepository:Lcom/stripe/core/hardware/paymentcollection/PinButtonsRepository;

.field private pinEntryJob:Lkotlinx/coroutines/Job;

.field private final pinEntryJobLock:Ljava/util/concurrent/locks/Lock;

.field private final pinPadAccessibilityChecker:Lcom/stripe/core/bbpos/hardware/PinPadAccessibilityChecker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector;->Companion:Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector$Companion;

    .line 48
    const-string v0, "BbposPaymentCollector"

    sput-object v0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ldagger/Lazy;Lcom/stripe/time/Clock;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;Lcom/stripe/core/hardware/paymentcollection/PinButtonsRepository;Ljavax/inject/Provider;Lcom/stripe/core/bbpos/hardware/CardRemovalChecker;Lcom/stripe/core/bbpos/hardware/PinPadAccessibilityChecker;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/Lazy<",
            "Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;",
            ">;",
            "Lcom/stripe/time/Clock;",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            "Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;",
            "Lcom/stripe/core/hardware/paymentcollection/PinButtonsRepository;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/proto/model/config/ReaderFeatureFlags;",
            ">;",
            "Lcom/stripe/core/bbpos/hardware/CardRemovalChecker;",
            "Lcom/stripe/core/bbpos/hardware/PinPadAccessibilityChecker;",
            ")V"
        }
    .end annotation

    const-string v0, "lazyController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coroutineScope"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coroutineDispatcher"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "healthLoggerBuilder"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pinButtonsRepository"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featureFlagsProvider"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cardRemovalChecker"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pinPadAccessibilityChecker"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector;->lazyController:Ldagger/Lazy;

    .line 38
    iput-object p2, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector;->clock:Lcom/stripe/time/Clock;

    .line 39
    iput-object p3, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    .line 40
    iput-object p4, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector;->coroutineDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 42
    iput-object p6, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector;->pinButtonsRepository:Lcom/stripe/core/hardware/paymentcollection/PinButtonsRepository;

    .line 43
    iput-object p7, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector;->featureFlagsProvider:Ljavax/inject/Provider;

    .line 44
    iput-object p8, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector;->cardRemovalChecker:Lcom/stripe/core/bbpos/hardware/CardRemovalChecker;

    .line 45
    iput-object p9, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector;->pinPadAccessibilityChecker:Lcom/stripe/core/bbpos/hardware/PinPadAccessibilityChecker;

    .line 51
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    check-cast p1, Ljava/util/concurrent/locks/Lock;

    iput-object p1, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector;->pinEntryJobLock:Ljava/util/concurrent/locks/Lock;

    .line 55
    sget-object p1, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector$paymentHealthLogger$1;->INSTANCE:Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector$paymentHealthLogger$1;

    check-cast p1, Lkotlin/jvm/functions/Function2;

    .line 173
    new-instance p2, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder;

    const-class p3, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposDomain;

    const-class p4, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposDomain$Builder;

    invoke-direct {p2, p5, p3, p4, p1}, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder;-><init>(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;Ljava/lang/Class;Ljava/lang/Class;Lkotlin/jvm/functions/Function2;)V

    .line 56
    sget-object p1, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector$paymentHealthLogger$2;->INSTANCE:Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector$paymentHealthLogger$2;

    check-cast p1, Lkotlin/jvm/functions/Function2;

    .line 177
    new-instance p3, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder$ScopedBuilder;

    const-class p4, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope;

    const-class p5, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;

    invoke-direct {p3, p2, p4, p5, p1}, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder$ScopedBuilder;-><init>(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder;Ljava/lang/Class;Ljava/lang/Class;Lkotlin/jvm/functions/Function2;)V

    .line 57
    invoke-virtual {p3}, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder$ScopedBuilder;->build()Lcom/stripe/jvmcore/logging/HealthLogger;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector;->paymentHealthLogger:Lcom/stripe/jvmcore/logging/HealthLogger;

    return-void
.end method

.method public static final synthetic access$checkCard(Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector;Lcom/stripe/bbpos/sdk/CheckCardMode;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector;->checkCard(Lcom/stripe/bbpos/sdk/CheckCardMode;)V

    return-void
.end method

.method public static final synthetic access$getController(Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector;)Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector;->getController()Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getPinButtonsRepository$p(Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector;)Lcom/stripe/core/hardware/paymentcollection/PinButtonsRepository;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector;->pinButtonsRepository:Lcom/stripe/core/hardware/paymentcollection/PinButtonsRepository;

    return-object p0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 36
    sget-object v0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private final checkCard(Lcom/stripe/bbpos/sdk/CheckCardMode;)V
    .locals 2

    .line 166
    invoke-direct {p0}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector;->getController()Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;->checkCard(Lcom/stripe/bbpos/sdk/CheckCardMode;I)V

    return-void
.end method

.method static synthetic checkCard$default(Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector;Lcom/stripe/bbpos/sdk/CheckCardMode;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 164
    sget-object p1, Lcom/stripe/bbpos/sdk/CheckCardMode;->INSERT:Lcom/stripe/bbpos/sdk/CheckCardMode;

    .line 163
    :cond_0
    invoke-direct {p0, p1}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector;->checkCard(Lcom/stripe/bbpos/sdk/CheckCardMode;)V

    return-void
.end method

.method private final getController()Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector;->lazyController:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;

    return-object v0
.end method


# virtual methods
.method public cancelCollectTipAmount()V
    .locals 3

    .line 150
    sget-object v0, Lcom/stripe/core/stripeterminal/log/AndroidLog;->INSTANCE:Lcom/stripe/core/stripeterminal/log/AndroidLog;

    sget-object v1, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector;->TAG:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "disableInputAmount"

    invoke-virtual {v0, v1, v2}, Lcom/stripe/core/stripeterminal/log/AndroidLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-direct {p0}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector;->getController()Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;->disableInputAmount()V

    return-void
.end method

.method public checkCardUntilRemoved(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lcom/stripe/hardware/ReaderConfiguration$ReaderType;",
            ">;)V"
        }
    .end annotation

    const-string v0, "readerType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector;->cardRemovalChecker:Lcom/stripe/core/bbpos/hardware/CardRemovalChecker;

    new-instance v1, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector$checkCardUntilRemoved$1;

    invoke-direct {v1, p0, p1}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector$checkCardUntilRemoved$1;-><init>(Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector;Ljava/util/Set;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, v1}, Lcom/stripe/core/bbpos/hardware/CardRemovalChecker;->checkCardUntilRemoved(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public collectTipAmount(Lcom/stripe/hardware/tipping/TipConfigValidationResult;)V
    .locals 3
    .annotation runtime Lcom/stripe/jvmcore/dagger/BluetoothUsbPinPadReaders;
    .end annotation

    const-string v0, "tipConfigValidationResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    sget-object v0, Lcom/stripe/core/stripeterminal/log/AndroidLog;->INSTANCE:Lcom/stripe/core/stripeterminal/log/AndroidLog;

    sget-object v1, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector;->TAG:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "enableInputAmount"

    invoke-virtual {v0, v1, v2}, Lcom/stripe/core/stripeterminal/log/AndroidLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-direct {p0}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector;->getController()Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;

    move-result-object v0

    const-string v1, "<get-controller>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p1}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector;->enableInputAmount(Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;Lcom/stripe/hardware/tipping/TipConfigValidationResult;)V

    return-void
.end method

.method public getClock()Lcom/stripe/time/Clock;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector;->clock:Lcom/stripe/time/Clock;

    return-object v0
.end method

.method public getFeatureFlagsProvider()Ljavax/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/proto/model/config/ReaderFeatureFlags;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector;->featureFlagsProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method public getPinPadAccessibilityChecker()Lcom/stripe/core/bbpos/hardware/PinPadAccessibilityChecker;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector;->pinPadAccessibilityChecker:Lcom/stripe/core/bbpos/hardware/PinPadAccessibilityChecker;

    return-object v0
.end method

.method public handleAuthorisationResponseData(Ljava/lang/String;)V
    .locals 8

    const-string v0, "tlvBlob"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    iget-object v1, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector;->paymentHealthLogger:Lcom/stripe/jvmcore/logging/HealthLogger;

    sget-object v0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector$handleAuthorisationResponseData$1;->INSTANCE:Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector$handleAuthorisationResponseData$1;

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v7}, Lcom/stripe/jvmcore/logging/HealthLogger;->incrementCounter$default(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/loggingmodels/Outcome;Ljava/util/Map;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    .line 131
    invoke-direct {p0}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector;->getController()Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;->sendOnlineProcessResult(Ljava/lang/String;)V

    return-void
.end method

.method public handleFinalConfirmationRequest(Z)V
    .locals 7

    .line 136
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector;->paymentHealthLogger:Lcom/stripe/jvmcore/logging/HealthLogger;

    sget-object v1, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector$handleFinalConfirmationRequest$1;->INSTANCE:Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector$handleFinalConfirmationRequest$1;

    move-object v4, v1

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x7

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v6}, Lcom/stripe/jvmcore/logging/HealthLogger;->incrementCounter$default(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/loggingmodels/Outcome;Ljava/util/Map;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    .line 137
    invoke-direct {p0}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector;->getController()Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;->sendFinalConfirmResult(Z)V

    return-void
.end method

.method public selectAccountType(Lcom/stripe/hardware/emv/AccountType;)V
    .locals 8

    const-string v0, "accountType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    iget-object v1, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector;->paymentHealthLogger:Lcom/stripe/jvmcore/logging/HealthLogger;

    sget-object v0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector$selectAccountType$1;->INSTANCE:Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector$selectAccountType$1;

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v7}, Lcom/stripe/jvmcore/logging/HealthLogger;->incrementCounter$default(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/loggingmodels/Outcome;Ljava/util/Map;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    .line 94
    invoke-direct {p0}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector;->getController()Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;

    move-result-object v0

    const-string v1, "<get-controller>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/stripe/core/bbpos/hardware/BbposUtilsKt;->selectAccountType(Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;Lcom/stripe/hardware/emv/AccountType;)V

    return-void
.end method

.method public selectApplication(I)V
    .locals 7

    .line 88
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector;->paymentHealthLogger:Lcom/stripe/jvmcore/logging/HealthLogger;

    sget-object v1, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector$selectApplication$1;->INSTANCE:Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector$selectApplication$1;

    move-object v4, v1

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x7

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v6}, Lcom/stripe/jvmcore/logging/HealthLogger;->incrementCounter$default(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/loggingmodels/Outcome;Ljava/util/Map;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    .line 89
    invoke-direct {p0}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector;->getController()Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;->selectApplication(I)V

    return-void
.end method

.method public selectLanguage(Ljava/lang/String;)V
    .locals 2

    const-string v0, "language"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    sget-object p1, Lcom/stripe/core/stripeterminal/log/AndroidLog;->INSTANCE:Lcom/stripe/core/stripeterminal/log/AndroidLog;

    sget-object v0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector;->TAG:Ljava/lang/String;

    const-string v1, "TAG"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "Selecting language is not supported in BBPOS. No-op."

    invoke-virtual {p1, v0, v1}, Lcom/stripe/core/stripeterminal/log/AndroidLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setPinEntryButtons()V
    .locals 8

    .line 102
    iget-object v1, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector;->pinEntryJobLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector;->pinEntryJob:Lkotlinx/coroutines/Job;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v2}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_0
    move-object v0, v2

    .line 104
    iget-object v2, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    iget-object v3, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector;->coroutineDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v3, Lkotlin/coroutines/CoroutineContext;

    new-instance v4, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector$setPinEntryButtons$1$1;

    invoke-direct {v4, p0, v0}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector$setPinEntryButtons$1$1;-><init>(Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector;Lkotlin/coroutines/Continuation;)V

    move-object v5, v4

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector;->pinEntryJob:Lkotlinx/coroutines/Job;

    .line 126
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public startPinEntry()V
    .locals 4

    .line 155
    sget-object v0, Lcom/stripe/core/stripeterminal/log/AndroidLog;->INSTANCE:Lcom/stripe/core/stripeterminal/log/AndroidLog;

    sget-object v1, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector;->TAG:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "requestPinEntry"

    invoke-virtual {v0, v1, v2}, Lcom/stripe/core/stripeterminal/log/AndroidLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-virtual {p0}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector;->getPinPadAccessibilityChecker()Lcom/stripe/core/bbpos/hardware/PinPadAccessibilityChecker;

    move-result-object v0

    invoke-interface {v0}, Lcom/stripe/core/bbpos/hardware/PinPadAccessibilityChecker;->isPinPadAccessible()Z

    move-result v0

    .line 157
    invoke-direct {p0}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector;->getController()Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;

    move-result-object v1

    .line 159
    invoke-static {}, Lcom/stripe/core/bbpos/hardware/DelegatedDeviceControllerKt;->getACCESSIBLE_PIN_ENTRY_TIMEOUT_VALUE_IN_SECONDS()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 157
    :goto_0
    invoke-interface {v1, v0, v2}, Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;->startPinEntry(ZLjava/lang/Integer;)V

    return-void
.end method

.method public startReader(Lcom/stripe/hardware/ReaderConfiguration;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/hardware/ReaderConfiguration;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector$startReader$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector$startReader$1;

    iget v1, v0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector$startReader$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector$startReader$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector$startReader$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector$startReader$1;

    invoke-direct {v0, p0, p2}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector$startReader$1;-><init>(Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector$startReader$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 62
    iget v2, v0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector$startReader$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector$startReader$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lcom/stripe/hardware/ReaderConfiguration;

    iget-object v0, v0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector$startReader$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 65
    iget-object p2, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector;->cardRemovalChecker:Lcom/stripe/core/bbpos/hardware/CardRemovalChecker;

    iput-object p0, v0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector$startReader$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector$startReader$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector$startReader$1;->label:I

    invoke-virtual {p2, v0}, Lcom/stripe/core/bbpos/hardware/CardRemovalChecker;->stop(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    :goto_1
    move-object v4, p1

    .line 66
    iget-object v5, v0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector;->paymentHealthLogger:Lcom/stripe/jvmcore/logging/HealthLogger;

    sget-object p1, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector$startReader$2;->INSTANCE:Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector$startReader$2;

    move-object v9, p1

    check-cast v9, Lkotlin/jvm/functions/Function2;

    const/4 v10, 0x7

    const/4 v11, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v5 .. v11}, Lcom/stripe/jvmcore/logging/HealthLogger;->incrementCounter$default(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/loggingmodels/Outcome;Ljava/util/Map;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    .line 68
    move-object v2, v0

    check-cast v2, Lcom/stripe/core/bbpos/hardware/DelegatedDeviceController;

    invoke-direct {v0}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector;->getController()Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;

    move-result-object v3

    const-string p1, "<get-controller>(...)"

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x2

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lcom/stripe/core/bbpos/hardware/DelegatedDeviceController;->startEmv$default(Lcom/stripe/core/bbpos/hardware/DelegatedDeviceController;Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;Lcom/stripe/hardware/ReaderConfiguration;Lcom/stripe/bbpos/sdk/CheckCardMode;ILjava/lang/Object;)V

    .line 69
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public stopReader(Lcom/stripe/hardware/emv/CancellationPhase;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/hardware/emv/CancellationPhase;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 76
    sget-object p2, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/stripe/hardware/emv/CancellationPhase;->ordinal()I

    move-result p1

    aget p1, p2, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 83
    :pswitch_0
    invoke-direct {p0}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector;->getController()Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;->sendFinalConfirmResult(Z)V

    goto :goto_0

    .line 82
    :pswitch_1
    invoke-direct {p0}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector;->getController()Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;

    move-result-object p1

    invoke-interface {p1}, Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;->cancelPinEntry()V

    goto :goto_0

    .line 81
    :pswitch_2
    invoke-direct {p0}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector;->getController()Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;

    move-result-object p1

    invoke-interface {p1}, Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;->cancelSelectApplication()V

    goto :goto_0

    .line 80
    :pswitch_3
    invoke-direct {p0}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector;->getController()Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;

    move-result-object p1

    invoke-interface {p1}, Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;->cancelSelectAccountType()V

    goto :goto_0

    .line 79
    :pswitch_4
    invoke-direct {p0}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector;->getController()Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;

    move-result-object p1

    const-string p2, "8A023035"

    invoke-interface {p1, p2}, Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;->sendOnlineProcessResult(Ljava/lang/String;)V

    goto :goto_0

    .line 77
    :pswitch_5
    invoke-direct {p0}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector;->getController()Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;

    move-result-object p1

    invoke-interface {p1}, Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;->cancelCheckCard()V

    .line 85
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
