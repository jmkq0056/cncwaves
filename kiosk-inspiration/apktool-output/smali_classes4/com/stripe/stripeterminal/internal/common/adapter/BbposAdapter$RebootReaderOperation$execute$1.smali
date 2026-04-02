.class final Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$RebootReaderOperation$execute$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BbposAdapter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$RebootReaderOperation;->execute()Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
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
    value = "SMAP\nBbposAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BbposAdapter.kt\ncom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$RebootReaderOperation$execute$1\n+ 2 BbposAdapter.kt\ncom/stripe/stripeterminal/internal/common/adapter/BbposAdapter\n*L\n1#1,1324:1\n693#2:1325\n717#2:1326\n*S KotlinDebug\n*F\n+ 1 BbposAdapter.kt\ncom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$RebootReaderOperation$execute$1\n*L\n921#1:1325\n921#1:1326\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
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
    c = "com.stripe.stripeterminal.internal.common.adapter.BbposAdapter$RebootReaderOperation$execute$1"
    f = "BbposAdapter.kt"
    i = {}
    l = {
        0x52e
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;

.field final synthetic this$1:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$RebootReaderOperation;


# direct methods
.method constructor <init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$RebootReaderOperation;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;",
            "Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$RebootReaderOperation;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$RebootReaderOperation$execute$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$RebootReaderOperation$execute$1;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;

    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$RebootReaderOperation$execute$1;->this$1:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$RebootReaderOperation;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
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

    new-instance p1, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$RebootReaderOperation$execute$1;

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$RebootReaderOperation$execute$1;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$RebootReaderOperation$execute$1;->this$1:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$RebootReaderOperation;

    invoke-direct {p1, v0, v1, p2}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$RebootReaderOperation$execute$1;-><init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$RebootReaderOperation;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$RebootReaderOperation$execute$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$RebootReaderOperation$execute$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$RebootReaderOperation$execute$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$RebootReaderOperation$execute$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 920
    iget v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$RebootReaderOperation$execute$1;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 921
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$RebootReaderOperation$execute$1;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;

    new-instance v1, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$RebootReaderOperation$execute$1$rebootAttemptResult$1;

    iget-object v4, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$RebootReaderOperation$execute$1;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;

    iget-object v5, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$RebootReaderOperation$execute$1;->this$1:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$RebootReaderOperation;

    invoke-direct {v1, v4, v5}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$RebootReaderOperation$execute$1$rebootAttemptResult$1;-><init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$RebootReaderOperation;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 926
    iget-object v4, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$RebootReaderOperation$execute$1;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;

    invoke-static {v4}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->access$getReaderStatusListener$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;)Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;

    move-result-object v4

    .line 927
    invoke-virtual {v4}, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->getReaderRebootAttemptObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v4

    .line 929
    sget-object v5, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$RebootReaderOperation$execute$1$rebootAttemptResult$2;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$RebootReaderOperation$execute$1$rebootAttemptResult$2;

    check-cast v5, Lio/reactivex/rxjava3/functions/Predicate;

    invoke-virtual {v4, v5}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v4

    .line 930
    iget-object v5, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$RebootReaderOperation$execute$1;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;

    invoke-static {v5}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->access$getScheduler$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v5

    invoke-virtual {v4, v5}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v4

    const-string v5, "observeOn(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1325
    new-instance v5, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$doWhenReaderIdle$2;

    invoke-direct {v5, p1, v4, v1, v2}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$doWhenReaderIdle$2;-><init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    check-cast v5, Lkotlin/jvm/functions/Function2;

    invoke-static {v5}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    .line 1326
    iput v3, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$RebootReaderOperation$execute$1;->label:I

    invoke-static {p1, v1}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 921
    :cond_2
    :goto_0
    check-cast p1, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$ReaderInteractionResult;

    .line 934
    instance-of v0, p1, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$ReaderInteractionResult$Succeeded;

    if-eqz v0, :cond_4

    .line 935
    check-cast p1, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$ReaderInteractionResult$Succeeded;

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$ReaderInteractionResult$Succeeded;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/stripe/hardware/status/ReaderRebootAttempt;

    invoke-virtual {p1}, Lcom/stripe/hardware/status/ReaderRebootAttempt;->getSuccess()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 936
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$RebootReaderOperation$execute$1;->this$1:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$RebootReaderOperation;

    invoke-virtual {p1, v2}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$RebootReaderOperation;->set(Ljava/lang/Object;)V

    goto :goto_1

    .line 938
    :cond_3
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$RebootReaderOperation$execute$1;->this$1:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$RebootReaderOperation;

    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v5, 0xc

    const/4 v6, 0x0

    const-string v2, "Reboot attempt failed"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p1, v0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$RebootReaderOperation;->setException(Lcom/stripe/stripeterminal/external/models/TerminalException;)V

    goto :goto_1

    .line 942
    :cond_4
    instance-of v0, p1, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$ReaderInteractionResult$ReaderBusy;

    if-eqz v0, :cond_5

    .line 943
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$RebootReaderOperation$execute$1;->this$1:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$RebootReaderOperation;

    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->READER_BUSY:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v5, 0xc

    const/4 v6, 0x0

    const-string v2, "Reader is busy"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p1, v0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$RebootReaderOperation;->setException(Lcom/stripe/stripeterminal/external/models/TerminalException;)V

    goto :goto_1

    .line 946
    :cond_5
    instance-of v0, p1, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$ReaderInteractionResult$ReaderFailed;

    if-eqz v0, :cond_7

    .line 947
    check-cast p1, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$ReaderInteractionResult$ReaderFailed;

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$ReaderInteractionResult$ReaderFailed;->getException()Lcom/stripe/hardware/status/ReaderException;

    move-result-object p1

    invoke-virtual {p1}, Lcom/stripe/hardware/status/ReaderException;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_6

    const-string p1, "Reboot attempt failed"

    :cond_6
    move-object v2, p1

    .line 948
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$RebootReaderOperation$execute$1;->this$1:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$RebootReaderOperation;

    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v5, 0xc

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p1, v0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$RebootReaderOperation;->setException(Lcom/stripe/stripeterminal/external/models/TerminalException;)V

    .line 951
    :cond_7
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
