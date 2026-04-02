.class public final Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository;
.super Ljava/lang/Object;
.source "DefaultStripeConnectivityRepository.kt"

# interfaces
.implements Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;
.implements Lkotlinx/coroutines/CoroutineScope;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDefaultStripeConnectivityRepository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultStripeConnectivityRepository.kt\ncom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository\n+ 2 LoggerFactory.kt\ncom/stripe/jvmcore/logging/terminal/log/LoggerFactoryKt\n+ 3 Merge.kt\nkotlinx/coroutines/flow/FlowKt__MergeKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,200:1\n16#2:201\n189#3:202\n189#3:203\n1#4:204\n*S KotlinDebug\n*F\n+ 1 DefaultStripeConnectivityRepository.kt\ncom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository\n*L\n55#1:201\n91#1:202\n135#1:203\n*E\n"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u0000 02\u00020\u00012\u00020\u0002:\u00010BC\u0008\u0007\u0012\u0008\u0008\u0001\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0008\u0001\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\u0006\u0010\u000f\u001a\u00020\u0010\u00a2\u0006\u0002\u0010\u0011J\u000e\u0010(\u001a\u0008\u0012\u0004\u0012\u00020\u001d0&H\u0016J\u0008\u0010)\u001a\u00020*H\u0016J\u0008\u0010+\u001a\u00020*H\u0016J\u0008\u0010,\u001a\u00020*H\u0016J\r\u0010-\u001a\u00020\u0014H\u0001\u00a2\u0006\u0002\u0008.J\u0008\u0010/\u001a\u00020*H\u0016R\u0014\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0015\u001a\u00020\u00168VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0018R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u001b0\u001aX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u001dX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u001b0\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u001b0\u001aX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010 \u001a\u0012\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020#0!j\u0002`$X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010%\u001a\u0008\u0012\u0004\u0012\u00020\u001b0&X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020\u001d0&X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u00061"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository;",
        "Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;",
        "Lkotlinx/coroutines/CoroutineScope;",
        "dispatcher",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "networkConnectivityRepository",
        "Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityRepository;",
        "stripeNetworkHealthChecker",
        "Lcom/stripe/stripeterminal/internal/common/connectivity/StripeNetworkHealthChecker;",
        "offlineRepository",
        "Lcom/stripe/offlinemode/storage/OfflineRepository;",
        "proxyOfflineListener",
        "Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;",
        "sdkStatusRepository",
        "Lcom/stripe/stripeterminal/internal/common/repositories/SdkStatusRepository;",
        "loggerFactory",
        "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
        "(Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityRepository;Lcom/stripe/stripeterminal/internal/common/connectivity/StripeNetworkHealthChecker;Lcom/stripe/offlinemode/storage/OfflineRepository;Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;Lcom/stripe/stripeterminal/internal/common/repositories/SdkStatusRepository;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)V",
        "consecutiveNetworkFailureReports",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "",
        "coroutineContext",
        "Lkotlin/coroutines/CoroutineContext;",
        "getCoroutineContext",
        "()Lkotlin/coroutines/CoroutineContext;",
        "enableHealthCheckCriteriaFlow",
        "Lkotlinx/coroutines/flow/Flow;",
        "",
        "initialStatus",
        "Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;",
        "isApplicationInBackgroundFlow",
        "isOfflineReaderConfigEnabledFlow",
        "logger",
        "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;",
        "Lcom/stripe/loggingmodels/ApplicationTrace;",
        "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
        "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;",
        "offlineStickyStateFlow",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "stripeConnectivityFlow",
        "currentState",
        "pauseNetworkHealthChecks",
        "",
        "reportNetworkFailure",
        "reportNetworkSuccess",
        "reportedFailuresCount",
        "reportedFailuresCount$connectivity_release",
        "resumeNetworkHealthChecks",
        "Companion",
        "connectivity_release"
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
.field public static final Companion:Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository$Companion;

.field private static final DELAY_QUANTUM_MS:J = 0x7530L

.field private static final EXP_DELAY_BASE:D = 2.0

.field private static final MAX_NETWORK_FAILURE_DELAY_MS:J = 0x927c0L


# instance fields
.field private final consecutiveNetworkFailureReports:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field private final enableHealthCheckCriteriaFlow:Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final initialStatus:Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;

.field private final isApplicationInBackgroundFlow:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final isOfflineReaderConfigEnabledFlow:Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

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

.field private final offlineStickyStateFlow:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final sdkStatusRepository:Lcom/stripe/stripeterminal/internal/common/repositories/SdkStatusRepository;

.field private final stripeConnectivityFlow:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final stripeNetworkHealthChecker:Lcom/stripe/stripeterminal/internal/common/connectivity/StripeNetworkHealthChecker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository;->Companion:Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository$Companion;

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityRepository;Lcom/stripe/stripeterminal/internal/common/connectivity/StripeNetworkHealthChecker;Lcom/stripe/offlinemode/storage/OfflineRepository;Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;Lcom/stripe/stripeterminal/internal/common/repositories/SdkStatusRepository;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)V
    .locals 1
    .param p1    # Lkotlinx/coroutines/CoroutineDispatcher;
        .annotation runtime Lcom/stripe/jvmcore/dagger/IO;
        .end annotation
    .end param
    .param p4    # Lcom/stripe/offlinemode/storage/OfflineRepository;
        .annotation runtime Lcom/stripe/jvmcore/dagger/Offline;
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "dispatcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkConnectivityRepository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stripeNetworkHealthChecker"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offlineRepository"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proxyOfflineListener"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkStatusRepository"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loggerFactory"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 49
    iput-object p3, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository;->stripeNetworkHealthChecker:Lcom/stripe/stripeterminal/internal/common/connectivity/StripeNetworkHealthChecker;

    .line 52
    iput-object p6, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository;->sdkStatusRepository:Lcom/stripe/stripeterminal/internal/common/repositories/SdkStatusRepository;

    .line 201
    const-class p1, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository;

    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p1

    invoke-interface {p7, p1}, Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;->create(Lkotlin/reflect/KClass;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object p1

    .line 55
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    .line 63
    invoke-interface {p4}, Lcom/stripe/offlinemode/storage/OfflineRepository;->activeReaderOfflineEnabledFlow()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/flow/Flow;

    const/4 p3, 0x0

    .line 64
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    new-instance p6, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository$isOfflineReaderConfigEnabledFlow$1;

    const/4 p7, 0x0

    invoke-direct {p6, p7}, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository$isOfflineReaderConfigEnabledFlow$1;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast p6, Lkotlin/jvm/functions/Function3;

    invoke-static {p1, p4, p6}, Lkotlinx/coroutines/flow/FlowKt;->runningFold(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository;->isOfflineReaderConfigEnabledFlow:Lkotlinx/coroutines/flow/Flow;

    .line 68
    invoke-static {p4}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p6

    iput-object p6, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository;->isApplicationInBackgroundFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 70
    invoke-virtual {p5}, Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;->isListenerSetFlow()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p5

    check-cast p5, Lkotlinx/coroutines/flow/Flow;

    .line 71
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository$enableHealthCheckCriteriaFlow$1;

    invoke-direct {v0, p7}, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository$enableHealthCheckCriteriaFlow$1;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function3;

    invoke-static {p5, p1, v0}, Lkotlinx/coroutines/flow/FlowKt;->flowCombine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    .line 73
    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository;->enableHealthCheckCriteriaFlow:Lkotlinx/coroutines/flow/Flow;

    .line 75
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository;->consecutiveNetworkFailureReports:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 90
    check-cast p1, Lkotlinx/coroutines/flow/Flow;

    .line 202
    new-instance p3, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository$special$$inlined$flatMapLatest$1;

    invoke-direct {p3, p7}, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository$special$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast p3, Lkotlin/jvm/functions/Function3;

    invoke-static {p1, p3}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    .line 104
    move-object p3, p0

    check-cast p3, Lkotlinx/coroutines/CoroutineScope;

    sget-object p5, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {p5}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->getLazily()Lkotlinx/coroutines/flow/SharingStarted;

    move-result-object p5

    invoke-static {p1, p3, p5, p4}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository;->offlineStickyStateFlow:Lkotlinx/coroutines/flow/StateFlow;

    .line 110
    invoke-interface {p2}, Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityRepository;->hasNetwork()Z

    move-result p4

    if-eqz p4, :cond_0

    sget-object p4, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;->HEALTH_CHECKS_NOT_STARTED:Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;

    goto :goto_0

    :cond_0
    sget-object p4, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;->NO_NETWORK:Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;

    .line 109
    :goto_0
    iput-object p4, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository;->initialStatus:Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;

    .line 130
    invoke-interface {p2}, Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityRepository;->getNetworkConnectivityState()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p2

    check-cast p2, Lkotlinx/coroutines/flow/Flow;

    .line 131
    check-cast p1, Lkotlinx/coroutines/flow/Flow;

    .line 132
    check-cast p6, Lkotlinx/coroutines/flow/Flow;

    .line 133
    sget-object p5, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository$stripeConnectivityFlow$2;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository$stripeConnectivityFlow$2;

    check-cast p5, Lkotlin/jvm/functions/Function4;

    .line 129
    invoke-static {p2, p1, p6, p5}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function4;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    .line 203
    new-instance p2, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository$special$$inlined$flatMapLatest$2;

    invoke-direct {p2, p7, p0}, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository$special$$inlined$flatMapLatest$2;-><init>(Lkotlin/coroutines/Continuation;Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository;)V

    check-cast p2, Lkotlin/jvm/functions/Function3;

    invoke-static {p1, p2}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    .line 168
    new-instance p2, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository$stripeConnectivityFlow$4;

    invoke-direct {p2, p0, p7}, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository$stripeConnectivityFlow$4;-><init>(Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository;Lkotlin/coroutines/Continuation;)V

    check-cast p2, Lkotlin/jvm/functions/Function3;

    invoke-static {p1, p2}, Lkotlinx/coroutines/flow/FlowKt;->catch(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    .line 169
    sget-object p2, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {p2}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->getEagerly()Lkotlinx/coroutines/flow/SharingStarted;

    move-result-object p2

    invoke-static {p1, p3, p2, p4}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository;->stripeConnectivityFlow:Lkotlinx/coroutines/flow/StateFlow;

    return-void
.end method

.method public static final synthetic access$getEnableHealthCheckCriteriaFlow$p(Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository;)Lkotlinx/coroutines/flow/Flow;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository;->enableHealthCheckCriteriaFlow:Lkotlinx/coroutines/flow/Flow;

    return-object p0
.end method

.method public static final synthetic access$getLogger$p(Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    return-object p0
.end method

.method public static final synthetic access$getSdkStatusRepository$p(Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository;)Lcom/stripe/stripeterminal/internal/common/repositories/SdkStatusRepository;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository;->sdkStatusRepository:Lcom/stripe/stripeterminal/internal/common/repositories/SdkStatusRepository;

    return-object p0
.end method

.method public static final synthetic access$getStripeNetworkHealthChecker$p(Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository;)Lcom/stripe/stripeterminal/internal/common/connectivity/StripeNetworkHealthChecker;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository;->stripeNetworkHealthChecker:Lcom/stripe/stripeterminal/internal/common/connectivity/StripeNetworkHealthChecker;

    return-object p0
.end method

.method public static final synthetic access$stripeConnectivityFlow$lambda$2(ZZZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 44
    invoke-static {p0, p1, p2, p3}, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository;->stripeConnectivityFlow$lambda$2(ZZZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final synthetic stripeConnectivityFlow$lambda$2(ZZZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 133
    new-instance p3, Lkotlin/Triple;

    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {p3, p0, p1, p2}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p3
.end method


# virtual methods
.method public currentState()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;",
            ">;"
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository;->stripeConnectivityFlow:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 172
    invoke-static {v0, v1, v0}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/CompletableJob;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    return-object v0
.end method

.method public pauseNetworkHealthChecks()V
    .locals 2

    .line 187
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository;->isApplicationInBackgroundFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public reportNetworkFailure()V
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository;->consecutiveNetworkFailureReports:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public reportNetworkSuccess()V
    .locals 2

    .line 183
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository;->consecutiveNetworkFailureReports:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final reportedFailuresCount$connectivity_release()I
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository;->consecutiveNetworkFailureReports:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public resumeNetworkHealthChecks()V
    .locals 2

    .line 191
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository;->isApplicationInBackgroundFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method
