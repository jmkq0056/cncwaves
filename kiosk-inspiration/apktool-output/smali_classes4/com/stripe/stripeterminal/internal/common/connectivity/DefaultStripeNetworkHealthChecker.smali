.class public final Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker;
.super Ljava/lang/Object;
.source "DefaultStripeNetworkHealthChecker.kt"

# interfaces
.implements Lcom/stripe/stripeterminal/internal/common/connectivity/StripeNetworkHealthChecker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDefaultStripeNetworkHealthChecker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultStripeNetworkHealthChecker.kt\ncom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,102:1\n318#2,11:103\n*S KotlinDebug\n*F\n+ 1 DefaultStripeNetworkHealthChecker.kt\ncom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker\n*L\n41#1:103,11\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\'\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u0016\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0082@\u00a2\u0006\u0002\u0010\u0015J\u000e\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u0017H\u0016J\u000e\u0010\u0019\u001a\u00020\u0018H\u0096@\u00a2\u0006\u0002\u0010\u001aJ \u0010\u001b\u001a\u00020\u0012*\u0008\u0012\u0004\u0012\u00020\u00180\u001c2\u0006\u0010\u0013\u001a\u00020\u0014H\u0082@\u00a2\u0006\u0002\u0010\u001dR\u001b\u0010\u000b\u001a\u00020\u000c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\r\u0010\u000eR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker;",
        "Lcom/stripe/stripeterminal/internal/common/connectivity/StripeNetworkHealthChecker;",
        "stateMachine",
        "Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerStateMachine;",
        "networkClientProvider",
        "Lcom/stripe/jvmcore/client/OkHttpClientProvider;",
        "stripeHealthCheckUrl",
        "Lokhttp3/HttpUrl;",
        "offlineConfigHelper",
        "Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;",
        "(Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerStateMachine;Lcom/stripe/jvmcore/client/OkHttpClientProvider;Lokhttp3/HttpUrl;Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;)V",
        "healthCheckTimeoutClient",
        "Lokhttp3/OkHttpClient;",
        "getHealthCheckTimeoutClient",
        "()Lokhttp3/OkHttpClient;",
        "healthCheckTimeoutClient$delegate",
        "Lkotlin/Lazy;",
        "delayForState",
        "",
        "state",
        "Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerState;",
        "(Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getNetworkHealthStatusFlow",
        "Lkotlinx/coroutines/flow/Flow;",
        "",
        "isNetworkHealthy",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "emitValueForState",
        "Lkotlinx/coroutines/flow/FlowCollector;",
        "(Lkotlinx/coroutines/flow/FlowCollector;Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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


# instance fields
.field private final healthCheckTimeoutClient$delegate:Lkotlin/Lazy;

.field private final networkClientProvider:Lcom/stripe/jvmcore/client/OkHttpClientProvider;

.field private final offlineConfigHelper:Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;

.field private final stateMachine:Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerStateMachine;

.field private final stripeHealthCheckUrl:Lokhttp3/HttpUrl;


# direct methods
.method public constructor <init>(Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerStateMachine;Lcom/stripe/jvmcore/client/OkHttpClientProvider;Lokhttp3/HttpUrl;Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "stateMachine"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkClientProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stripeHealthCheckUrl"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offlineConfigHelper"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker;->stateMachine:Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerStateMachine;

    .line 27
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker;->networkClientProvider:Lcom/stripe/jvmcore/client/OkHttpClientProvider;

    .line 28
    iput-object p3, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker;->stripeHealthCheckUrl:Lokhttp3/HttpUrl;

    .line 29
    iput-object p4, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker;->offlineConfigHelper:Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;

    .line 32
    new-instance p1, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker$healthCheckTimeoutClient$2;

    invoke-direct {p1, p0}, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker$healthCheckTimeoutClient$2;-><init>(Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker;->healthCheckTimeoutClient$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$delayForState(Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker;Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker;->delayForState(Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$emitValueForState(Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker;Lkotlinx/coroutines/flow/FlowCollector;Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker;->emitValueForState(Lkotlinx/coroutines/flow/FlowCollector;Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getHealthCheckTimeoutClient(Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker;)Lokhttp3/OkHttpClient;
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker;->getHealthCheckTimeoutClient()Lokhttp3/OkHttpClient;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getNetworkClientProvider$p(Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker;)Lcom/stripe/jvmcore/client/OkHttpClientProvider;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker;->networkClientProvider:Lcom/stripe/jvmcore/client/OkHttpClientProvider;

    return-object p0
.end method

.method public static final synthetic access$getOfflineConfigHelper$p(Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker;)Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker;->offlineConfigHelper:Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;

    return-object p0
.end method

.method public static final synthetic access$getStateMachine$p(Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker;)Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerStateMachine;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker;->stateMachine:Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerStateMachine;

    return-object p0
.end method

.method public static final synthetic access$getStripeHealthCheckUrl$p(Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker;)Lokhttp3/HttpUrl;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker;->stripeHealthCheckUrl:Lokhttp3/HttpUrl;

    return-object p0
.end method

.method private final delayForState(Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerState;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 82
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerState;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 87
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_1
    :goto_0
    const-wide/16 v0, 0x1388

    goto :goto_1

    :cond_2
    const-wide/16 v0, 0x7530

    goto :goto_1

    :cond_3
    const-wide/32 v0, 0xea60

    .line 81
    :goto_1
    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_4

    return-object p1

    :cond_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private final emitValueForState(Lkotlinx/coroutines/flow/FlowCollector;Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/FlowCollector<",
            "-",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerState;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 92
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerState;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    const/4 v1, 0x3

    if-eq p2, v1, :cond_1

    const/4 v1, 0x4

    if-eq p2, v1, :cond_1

    const/4 v1, 0x5

    if-ne p2, v1, :cond_0

    goto :goto_0

    .line 98
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p2

    .line 91
    invoke-interface {p1, p2, p3}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_3

    return-object p1

    :cond_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private final getHealthCheckTimeoutClient()Lokhttp3/OkHttpClient;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker;->healthCheckTimeoutClient$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/OkHttpClient;

    return-object v0
.end method


# virtual methods
.method public getNetworkHealthStatusFlow()Lkotlinx/coroutines/flow/Flow;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 69
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker$getNetworkHealthStatusFlow$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker$getNetworkHealthStatusFlow$1;-><init>(Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->flow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    .line 78
    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    return-object v0
.end method

.method public isNetworkHealthy(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 104
    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 110
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 111
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CancellableContinuation;

    .line 42
    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker;->access$getHealthCheckTimeoutClient(Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker;)Lokhttp3/OkHttpClient;

    move-result-object v2

    .line 43
    new-instance v3, Lokhttp3/Request$Builder;

    invoke-direct {v3}, Lokhttp3/Request$Builder;-><init>()V

    .line 44
    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker;->access$getStripeHealthCheckUrl$p(Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker;)Lokhttp3/HttpUrl;

    move-result-object v4

    invoke-virtual {v3, v4}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object v3

    .line 45
    invoke-virtual {v3}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v3

    .line 42
    invoke-virtual {v2, v3}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v2

    .line 47
    new-instance v3, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker$isNetworkHealthy$2$1$1;

    invoke-direct {v3, v1}, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker$isNetworkHealthy$2$1$1;-><init>(Lkotlinx/coroutines/CancellableContinuation;)V

    check-cast v3, Lokhttp3/Callback;

    invoke-static {v2, v3}, Lcom/google/firebase/perf/network/FirebasePerfOkHttpClient;->enqueue(Lokhttp3/Call;Lokhttp3/Callback;)V

    .line 58
    new-instance v3, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker$isNetworkHealthy$2$1$2;

    invoke-direct {v3, v2}, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker$isNetworkHealthy$2$1$2;-><init>(Lokhttp3/Call;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-interface {v1, v3}, Lkotlinx/coroutines/CancellableContinuation;->invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V

    .line 112
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object v0

    .line 103
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_0
    return-object v0
.end method
