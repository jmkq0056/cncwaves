.class public final Lcom/stripe/core/bbpos/hardware/CardRemovalChecker;
.super Ljava/lang/Object;
.source "CardRemovalChecker.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/core/bbpos/hardware/CardRemovalChecker$CardRemovalCheckStatus;,
        Lcom/stripe/core/bbpos/hardware/CardRemovalChecker$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCardRemovalChecker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CardRemovalChecker.kt\ncom/stripe/core/bbpos/hardware/CardRemovalChecker\n+ 2 LoggerFactory.kt\ncom/stripe/jvmcore/logging/terminal/log/LoggerFactoryKt\n*L\n1#1,130:1\n16#2:131\n*S KotlinDebug\n*F\n+ 1 CardRemovalChecker.kt\ncom/stripe/core/bbpos/hardware/CardRemovalChecker\n*L\n33#1:131\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0001\u001bB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0014\u0010\u0011\u001a\u00020\u000e2\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rJ\u000e\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u0015J\u0006\u0010\u0016\u001a\u00020\u0017J\u000e\u0010\u0018\u001a\u00020\u000eH\u0086@\u00a2\u0006\u0002\u0010\u0019J\u000e\u0010\u001a\u001a\u00020\u000eH\u0082@\u00a2\u0006\u0002\u0010\u0019R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/stripe/core/bbpos/hardware/CardRemovalChecker;",
        "",
        "scope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "loggerFactory",
        "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
        "(Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)V",
        "cardRemovalCheckStatus",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "Lcom/stripe/core/bbpos/hardware/CardRemovalChecker$CardRemovalCheckStatus;",
        "cardStatusCheckJob",
        "Lkotlinx/coroutines/Job;",
        "checkCardOp",
        "Lkotlin/Function0;",
        "",
        "deviceBusyDetector",
        "Lcom/stripe/core/bbpos/hardware/CardRemovalDeviceBusyDetector;",
        "checkCardUntilRemoved",
        "checkCard",
        "onCheckCardResult",
        "checkCardResult",
        "Lcom/stripe/bbpos/sdk/CheckCardResult$Type;",
        "shouldFakeCardEmptyOnDeviceBusy",
        "",
        "stop",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "waitForCardCheckResult",
        "CardRemovalCheckStatus",
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


# instance fields
.field private final cardRemovalCheckStatus:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Lcom/stripe/core/bbpos/hardware/CardRemovalChecker$CardRemovalCheckStatus;",
            ">;"
        }
    .end annotation
.end field

.field private cardStatusCheckJob:Lkotlinx/coroutines/Job;

.field private checkCardOp:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final deviceBusyDetector:Lcom/stripe/core/bbpos/hardware/CardRemovalDeviceBusyDetector;

.field private final scope:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)V
    .locals 1

    const-string v0, "scope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loggerFactory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/stripe/core/bbpos/hardware/CardRemovalChecker;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 29
    sget-object p1, Lcom/stripe/core/bbpos/hardware/CardRemovalChecker$CardRemovalCheckStatus;->IDLE:Lcom/stripe/core/bbpos/hardware/CardRemovalChecker$CardRemovalCheckStatus;

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/core/bbpos/hardware/CardRemovalChecker;->cardRemovalCheckStatus:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 31
    sget-object p1, Lcom/stripe/core/bbpos/hardware/CardRemovalChecker$checkCardOp$1;->INSTANCE:Lcom/stripe/core/bbpos/hardware/CardRemovalChecker$checkCardOp$1;

    check-cast p1, Lkotlin/jvm/functions/Function0;

    iput-object p1, p0, Lcom/stripe/core/bbpos/hardware/CardRemovalChecker;->checkCardOp:Lkotlin/jvm/functions/Function0;

    .line 32
    new-instance p1, Lcom/stripe/core/bbpos/hardware/CardRemovalDeviceBusyDetector;

    .line 131
    const-class v0, Lcom/stripe/core/bbpos/hardware/CardRemovalDeviceBusyDetector;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;->create(Lkotlin/reflect/KClass;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object p2

    .line 32
    invoke-direct {p1, p2}, Lcom/stripe/core/bbpos/hardware/CardRemovalDeviceBusyDetector;-><init>(Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V

    iput-object p1, p0, Lcom/stripe/core/bbpos/hardware/CardRemovalChecker;->deviceBusyDetector:Lcom/stripe/core/bbpos/hardware/CardRemovalDeviceBusyDetector;

    return-void
.end method

.method public static final synthetic access$getCardRemovalCheckStatus$p(Lcom/stripe/core/bbpos/hardware/CardRemovalChecker;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/stripe/core/bbpos/hardware/CardRemovalChecker;->cardRemovalCheckStatus:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object p0
.end method

.method public static final synthetic access$getCheckCardOp$p(Lcom/stripe/core/bbpos/hardware/CardRemovalChecker;)Lkotlin/jvm/functions/Function0;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/stripe/core/bbpos/hardware/CardRemovalChecker;->checkCardOp:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public static final synthetic access$getDeviceBusyDetector$p(Lcom/stripe/core/bbpos/hardware/CardRemovalChecker;)Lcom/stripe/core/bbpos/hardware/CardRemovalDeviceBusyDetector;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/stripe/core/bbpos/hardware/CardRemovalChecker;->deviceBusyDetector:Lcom/stripe/core/bbpos/hardware/CardRemovalDeviceBusyDetector;

    return-object p0
.end method

.method public static final synthetic access$waitForCardCheckResult(Lcom/stripe/core/bbpos/hardware/CardRemovalChecker;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/stripe/core/bbpos/hardware/CardRemovalChecker;->waitForCardCheckResult(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final waitForCardCheckResult(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/stripe/core/bbpos/hardware/CardRemovalChecker$waitForCardCheckResult$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/stripe/core/bbpos/hardware/CardRemovalChecker$waitForCardCheckResult$1;

    iget v1, v0, Lcom/stripe/core/bbpos/hardware/CardRemovalChecker$waitForCardCheckResult$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/stripe/core/bbpos/hardware/CardRemovalChecker$waitForCardCheckResult$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/stripe/core/bbpos/hardware/CardRemovalChecker$waitForCardCheckResult$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/stripe/core/bbpos/hardware/CardRemovalChecker$waitForCardCheckResult$1;

    invoke-direct {v0, p0, p1}, Lcom/stripe/core/bbpos/hardware/CardRemovalChecker$waitForCardCheckResult$1;-><init>(Lcom/stripe/core/bbpos/hardware/CardRemovalChecker;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/stripe/core/bbpos/hardware/CardRemovalChecker$waitForCardCheckResult$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 118
    iget v2, v0, Lcom/stripe/core/bbpos/hardware/CardRemovalChecker$waitForCardCheckResult$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Lcom/stripe/core/bbpos/hardware/CardRemovalChecker$waitForCardCheckResult$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/stripe/core/bbpos/hardware/CardRemovalChecker;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 120
    :try_start_1
    new-instance p1, Lcom/stripe/core/bbpos/hardware/CardRemovalChecker$waitForCardCheckResult$2;

    const/4 v2, 0x0

    invoke-direct {p1, p0, v2}, Lcom/stripe/core/bbpos/hardware/CardRemovalChecker$waitForCardCheckResult$2;-><init>(Lcom/stripe/core/bbpos/hardware/CardRemovalChecker;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/jvm/functions/Function2;

    iput-object p0, v0, Lcom/stripe/core/bbpos/hardware/CardRemovalChecker$waitForCardCheckResult$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/stripe/core/bbpos/hardware/CardRemovalChecker$waitForCardCheckResult$1;->label:I

    const-wide/16 v2, 0x1f4

    invoke-static {v2, v3, p1, v0}, Lkotlinx/coroutines/TimeoutKt;->withTimeout(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_1 .. :try_end_1} :catch_0

    if-ne p1, v1, :cond_3

    return-object v1

    :catch_0
    move-object v0, p0

    .line 126
    :catch_1
    iget-object p1, v0, Lcom/stripe/core/bbpos/hardware/CardRemovalChecker;->cardRemovalCheckStatus:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v0, Lcom/stripe/core/bbpos/hardware/CardRemovalChecker$CardRemovalCheckStatus;->TIMEOUT:Lcom/stripe/core/bbpos/hardware/CardRemovalChecker$CardRemovalCheckStatus;

    invoke-interface {p1, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 128
    :cond_3
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method


# virtual methods
.method public final checkCardUntilRemoved(Lkotlin/jvm/functions/Function0;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "checkCard"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iput-object p1, p0, Lcom/stripe/core/bbpos/hardware/CardRemovalChecker;->checkCardOp:Lkotlin/jvm/functions/Function0;

    .line 50
    iget-object p1, p0, Lcom/stripe/core/bbpos/hardware/CardRemovalChecker;->cardStatusCheckJob:Lkotlinx/coroutines/Job;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 54
    :cond_0
    iget-object v1, p0, Lcom/stripe/core/bbpos/hardware/CardRemovalChecker;->scope:Lkotlinx/coroutines/CoroutineScope;

    new-instance p1, Lcom/stripe/core/bbpos/hardware/CardRemovalChecker$checkCardUntilRemoved$1;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/stripe/core/bbpos/hardware/CardRemovalChecker$checkCardUntilRemoved$1;-><init>(Lcom/stripe/core/bbpos/hardware/CardRemovalChecker;Lkotlin/coroutines/Continuation;)V

    move-object v4, p1

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/core/bbpos/hardware/CardRemovalChecker;->cardStatusCheckJob:Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final onCheckCardResult(Lcom/stripe/bbpos/sdk/CheckCardResult$Type;)V
    .locals 2

    const-string v0, "checkCardResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/CardRemovalChecker;->deviceBusyDetector:Lcom/stripe/core/bbpos/hardware/CardRemovalDeviceBusyDetector;

    invoke-virtual {v0}, Lcom/stripe/core/bbpos/hardware/CardRemovalDeviceBusyDetector;->onReturnCheckCardResult()V

    .line 100
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/CardRemovalChecker;->cardRemovalCheckStatus:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/stripe/core/bbpos/hardware/CardRemovalChecker$CardRemovalCheckStatus;->CHECKING:Lcom/stripe/core/bbpos/hardware/CardRemovalChecker$CardRemovalCheckStatus;

    if-ne v0, v1, :cond_2

    .line 101
    sget-object v0, Lcom/stripe/core/bbpos/hardware/CardRemovalChecker$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/stripe/bbpos/sdk/CheckCardResult$Type;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 104
    :cond_0
    iget-object p1, p0, Lcom/stripe/core/bbpos/hardware/CardRemovalChecker;->cardRemovalCheckStatus:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v0, Lcom/stripe/core/bbpos/hardware/CardRemovalChecker$CardRemovalCheckStatus;->STILL_INSERTED:Lcom/stripe/core/bbpos/hardware/CardRemovalChecker$CardRemovalCheckStatus;

    invoke-interface {p1, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void

    .line 102
    :cond_1
    iget-object p1, p0, Lcom/stripe/core/bbpos/hardware/CardRemovalChecker;->cardRemovalCheckStatus:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v0, Lcom/stripe/core/bbpos/hardware/CardRemovalChecker$CardRemovalCheckStatus;->REMOVED:Lcom/stripe/core/bbpos/hardware/CardRemovalChecker$CardRemovalCheckStatus;

    invoke-interface {p1, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final shouldFakeCardEmptyOnDeviceBusy()Z
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/CardRemovalChecker;->deviceBusyDetector:Lcom/stripe/core/bbpos/hardware/CardRemovalDeviceBusyDetector;

    invoke-virtual {v0}, Lcom/stripe/core/bbpos/hardware/CardRemovalDeviceBusyDetector;->shouldFakeCardEmptyOnDeviceBusy()Z

    move-result v0

    return v0
.end method

.method public final stop(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/stripe/core/bbpos/hardware/CardRemovalChecker$stop$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/stripe/core/bbpos/hardware/CardRemovalChecker$stop$1;

    iget v1, v0, Lcom/stripe/core/bbpos/hardware/CardRemovalChecker$stop$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/stripe/core/bbpos/hardware/CardRemovalChecker$stop$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/stripe/core/bbpos/hardware/CardRemovalChecker$stop$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/stripe/core/bbpos/hardware/CardRemovalChecker$stop$1;

    invoke-direct {v0, p0, p1}, Lcom/stripe/core/bbpos/hardware/CardRemovalChecker$stop$1;-><init>(Lcom/stripe/core/bbpos/hardware/CardRemovalChecker;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/stripe/core/bbpos/hardware/CardRemovalChecker$stop$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 80
    iget v2, v0, Lcom/stripe/core/bbpos/hardware/CardRemovalChecker$stop$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Lcom/stripe/core/bbpos/hardware/CardRemovalChecker$stop$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/stripe/core/bbpos/hardware/CardRemovalChecker;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 81
    iget-object p1, p0, Lcom/stripe/core/bbpos/hardware/CardRemovalChecker;->cardStatusCheckJob:Lkotlinx/coroutines/Job;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result p1

    if-ne p1, v3, :cond_4

    .line 82
    iget-object p1, p0, Lcom/stripe/core/bbpos/hardware/CardRemovalChecker;->cardStatusCheckJob:Lkotlinx/coroutines/Job;

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    invoke-static {p1, v2, v3, v2}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 83
    :cond_3
    iput-object v2, p0, Lcom/stripe/core/bbpos/hardware/CardRemovalChecker;->cardStatusCheckJob:Lkotlinx/coroutines/Job;

    .line 85
    :cond_4
    iput-object p0, v0, Lcom/stripe/core/bbpos/hardware/CardRemovalChecker$stop$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/stripe/core/bbpos/hardware/CardRemovalChecker$stop$1;->label:I

    invoke-direct {p0, v0}, Lcom/stripe/core/bbpos/hardware/CardRemovalChecker;->waitForCardCheckResult(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    move-object v0, p0

    .line 86
    :goto_1
    iget-object p1, v0, Lcom/stripe/core/bbpos/hardware/CardRemovalChecker;->cardRemovalCheckStatus:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v0, Lcom/stripe/core/bbpos/hardware/CardRemovalChecker$CardRemovalCheckStatus;->IDLE:Lcom/stripe/core/bbpos/hardware/CardRemovalChecker$CardRemovalCheckStatus;

    invoke-interface {p1, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 87
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
