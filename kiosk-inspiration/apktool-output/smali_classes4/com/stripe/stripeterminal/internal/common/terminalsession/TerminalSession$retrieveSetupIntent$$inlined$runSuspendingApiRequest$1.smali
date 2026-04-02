.class public final Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$retrieveSetupIntent$$inlined$runSuspendingApiRequest$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "TerminalSession.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->retrieveSetupIntent(Ljava/lang/String;Lcom/stripe/stripeterminal/external/callable/SetupIntentCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTerminalSession.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TerminalSession.kt\ncom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$runSuspendingApiRequest$1\n+ 2 TerminalSession.kt\ncom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession\n*L\n1#1,3360:1\n666#2,9:3361\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@\u00a8\u0006\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;",
        "com/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$runSuspendingApiRequest$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession$retrieveSetupIntent$$inlined$runSuspendingApiRequest$1"
    f = "TerminalSession.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $callback:Lcom/stripe/stripeterminal/external/callable/ErrorCallback;

.field final synthetic $clientSecret$inlined:Ljava/lang/String;

.field final synthetic $errorMessage:Ljava/lang/String;

.field final synthetic $wrappedCallback$inlined:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$retrieveSetupIntent$wrappedCallback$1;

.field label:I

.field final synthetic this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

.field final synthetic this$0$inline_fun:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;


# direct methods
.method public constructor <init>(Lcom/stripe/stripeterminal/external/callable/ErrorCallback;Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Ljava/lang/String;Lkotlin/coroutines/Continuation;Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Ljava/lang/String;Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$retrieveSetupIntent$wrappedCallback$1;)V
    .locals 0

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$retrieveSetupIntent$$inlined$runSuspendingApiRequest$1;->$callback:Lcom/stripe/stripeterminal/external/callable/ErrorCallback;

    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$retrieveSetupIntent$$inlined$runSuspendingApiRequest$1;->this$0$inline_fun:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    iput-object p3, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$retrieveSetupIntent$$inlined$runSuspendingApiRequest$1;->$errorMessage:Ljava/lang/String;

    iput-object p5, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$retrieveSetupIntent$$inlined$runSuspendingApiRequest$1;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    iput-object p6, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$retrieveSetupIntent$$inlined$runSuspendingApiRequest$1;->$clientSecret$inlined:Ljava/lang/String;

    iput-object p7, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$retrieveSetupIntent$$inlined$runSuspendingApiRequest$1;->$wrappedCallback$inlined:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$retrieveSetupIntent$wrappedCallback$1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$retrieveSetupIntent$$inlined$runSuspendingApiRequest$1;

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$retrieveSetupIntent$$inlined$runSuspendingApiRequest$1;->$callback:Lcom/stripe/stripeterminal/external/callable/ErrorCallback;

    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$retrieveSetupIntent$$inlined$runSuspendingApiRequest$1;->this$0$inline_fun:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    iget-object v3, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$retrieveSetupIntent$$inlined$runSuspendingApiRequest$1;->$errorMessage:Ljava/lang/String;

    iget-object v5, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$retrieveSetupIntent$$inlined$runSuspendingApiRequest$1;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    iget-object v6, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$retrieveSetupIntent$$inlined$runSuspendingApiRequest$1;->$clientSecret$inlined:Ljava/lang/String;

    iget-object v7, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$retrieveSetupIntent$$inlined$runSuspendingApiRequest$1;->$wrappedCallback$inlined:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$retrieveSetupIntent$wrappedCallback$1;

    move-object v4, p2

    invoke-direct/range {v0 .. v7}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$retrieveSetupIntent$$inlined$runSuspendingApiRequest$1;-><init>(Lcom/stripe/stripeterminal/external/callable/ErrorCallback;Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Ljava/lang/String;Lkotlin/coroutines/Continuation;Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Ljava/lang/String;Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$retrieveSetupIntent$wrappedCallback$1;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$retrieveSetupIntent$$inlined$runSuspendingApiRequest$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$retrieveSetupIntent$$inlined$runSuspendingApiRequest$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$retrieveSetupIntent$$inlined$runSuspendingApiRequest$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$retrieveSetupIntent$$inlined$runSuspendingApiRequest$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 1008
    iget v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$retrieveSetupIntent$$inlined$runSuspendingApiRequest$1;->label:I

    if-nez v0, :cond_2

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1015
    :try_start_0
    move-object p1, p0

    check-cast p1, Lkotlin/coroutines/Continuation;

    .line 3361
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$retrieveSetupIntent$$inlined$runSuspendingApiRequest$1;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {p1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getSessionTokenRepository$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;

    move-result-object p1

    invoke-virtual {p1}, Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;->getStripeSessionToken()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3362
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$retrieveSetupIntent$$inlined$runSuspendingApiRequest$1;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {p1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getApiClient$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/stripeterminal/internal/common/api/ApiClient;

    move-result-object p1

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$retrieveSetupIntent$$inlined$runSuspendingApiRequest$1;->$clientSecret$inlined:Ljava/lang/String;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1, v2}, Lcom/stripe/stripeterminal/internal/common/api/ApiClient;->retrieveSetupIntent$default(Lcom/stripe/stripeterminal/internal/common/api/ApiClient;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/stripe/stripeterminal/external/models/SetupIntent;

    move-result-object p1

    goto :goto_0

    .line 3365
    :cond_0
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$retrieveSetupIntent$$inlined$runSuspendingApiRequest$1;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {p1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getApiClient$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/stripeterminal/internal/common/api/ApiClient;

    move-result-object p1

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$retrieveSetupIntent$$inlined$runSuspendingApiRequest$1;->$clientSecret$inlined:Ljava/lang/String;

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$retrieveSetupIntent$$inlined$runSuspendingApiRequest$1;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getConnectionTokenRepository$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;

    move-result-object v1

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/stripe/stripeterminal/internal/common/api/ApiClient;->retrieveSetupIntent(Ljava/lang/String;Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/SetupIntent;

    move-result-object p1

    .line 3368
    :goto_0
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$retrieveSetupIntent$$inlined$runSuspendingApiRequest$1;->$wrappedCallback$inlined:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$retrieveSetupIntent$wrappedCallback$1;

    invoke-virtual {v0, p1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$retrieveSetupIntent$wrappedCallback$1;->onSuccess(Lcom/stripe/stripeterminal/external/models/SetupIntent;)V
    :try_end_0
    .catch Lcom/stripe/stripeterminal/external/models/TerminalException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v3, p1

    .line 1019
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$retrieveSetupIntent$$inlined$runSuspendingApiRequest$1;->this$0$inline_fun:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {p1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getLogger$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object p1

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$retrieveSetupIntent$$inlined$runSuspendingApiRequest$1;->$errorMessage:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    invoke-interface {p1, v0, v3, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Lkotlin/Pair;)V

    .line 1020
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$retrieveSetupIntent$$inlined$runSuspendingApiRequest$1;->$callback:Lcom/stripe/stripeterminal/external/callable/ErrorCallback;

    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$retrieveSetupIntent$$inlined$runSuspendingApiRequest$1;->$errorMessage:Ljava/lang/String;

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {p1, v0}, Lcom/stripe/stripeterminal/external/callable/ErrorCallback;->onFailure(Lcom/stripe/stripeterminal/external/models/TerminalException;)V

    .line 1021
    instance-of p1, v3, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    throw v3

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 1017
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$retrieveSetupIntent$$inlined$runSuspendingApiRequest$1;->$callback:Lcom/stripe/stripeterminal/external/callable/ErrorCallback;

    invoke-interface {v0, p1}, Lcom/stripe/stripeterminal/external/callable/ErrorCallback;->onFailure(Lcom/stripe/stripeterminal/external/models/TerminalException;)V

    .line 1023
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 1008
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
