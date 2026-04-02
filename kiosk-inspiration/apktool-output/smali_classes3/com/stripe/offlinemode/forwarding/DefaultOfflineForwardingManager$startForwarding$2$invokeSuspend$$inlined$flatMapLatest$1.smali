.class public final Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$startForwarding$2$invokeSuspend$$inlined$flatMapLatest$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Merge.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$startForwarding$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Lkotlinx/coroutines/flow/FlowCollector<",
        "-",
        "Lcom/stripe/offlinemode/models/OfflineForwardingResponse;",
        ">;",
        "Lkotlin/Pair<",
        "+",
        "Ljava/lang/Boolean;",
        "+",
        "Ljava/lang/String;",
        ">;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMerge.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Merge.kt\nkotlinx/coroutines/flow/FlowKt__MergeKt$flatMapLatest$1\n+ 2 DefaultOfflineForwardingManager.kt\ncom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$startForwarding$2\n+ 3 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 4 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 5 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n*L\n1#1,214:1\n137#2,25:215\n184#2:240\n202#2:241\n203#2:247\n218#2:248\n231#2:249\n49#3:242\n51#3:246\n46#4:243\n51#4:245\n105#5:244\n*S KotlinDebug\n*F\n+ 1 DefaultOfflineForwardingManager.kt\ncom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$startForwarding$2\n*L\n202#1:242\n202#1:246\n202#1:243\n202#1:245\n202#1:244\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002\"\u0004\u0008\u0001\u0010\u0003*\u0008\u0012\u0004\u0012\u0002H\u00030\u00042\u0006\u0010\u0005\u001a\u0002H\u0002H\u008a@\u00a8\u0006\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "R",
        "Lkotlinx/coroutines/flow/FlowCollector;",
        "it",
        "kotlinx/coroutines/flow/FlowKt__MergeKt$flatMapLatest$1"
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
    c = "com.stripe.offlinemode.forwarding.DefaultOfflineForwardingManager$startForwarding$2$invokeSuspend$$inlined$flatMapLatest$1"
    f = "DefaultOfflineForwardingManager.kt"
    i = {
        0x0,
        0x0
    }
    l = {
        0xe3,
        0xbd
    }
    m = "invokeSuspend"
    n = {
        "consecutiveSuccesses",
        "pendingTimer"
    }
    s = {
        "L$1",
        "L$2"
    }
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;)V
    .locals 0

    iput-object p2, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$startForwarding$2$invokeSuspend$$inlined$flatMapLatest$1;->this$0:Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;

    const/4 p2, 0x3

    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    check-cast p3, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2, p3}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$startForwarding$2$invokeSuspend$$inlined$flatMapLatest$1;->invoke(Lkotlinx/coroutines/flow/FlowCollector;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/flow/FlowCollector;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/FlowCollector<",
            "-",
            "Lcom/stripe/offlinemode/models/OfflineForwardingResponse;",
            ">;",
            "Lkotlin/Pair<",
            "+",
            "Ljava/lang/Boolean;",
            "+",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$startForwarding$2$invokeSuspend$$inlined$flatMapLatest$1;

    iget-object v1, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$startForwarding$2$invokeSuspend$$inlined$flatMapLatest$1;->this$0:Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;

    invoke-direct {v0, p3, v1}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$startForwarding$2$invokeSuspend$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;)V

    iput-object p1, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$startForwarding$2$invokeSuspend$$inlined$flatMapLatest$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$startForwarding$2$invokeSuspend$$inlined$flatMapLatest$1;->L$1:Ljava/lang/Object;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p1}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$startForwarding$2$invokeSuspend$$inlined$flatMapLatest$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 0
    iget v1, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$startForwarding$2$invokeSuspend$$inlined$flatMapLatest$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v1, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$startForwarding$2$invokeSuspend$$inlined$flatMapLatest$1;->L$2:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$startForwarding$2$invokeSuspend$$inlined$flatMapLatest$1;->L$1:Ljava/lang/Object;

    check-cast v3, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v5, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$startForwarding$2$invokeSuspend$$inlined$flatMapLatest$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/flow/FlowCollector;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$startForwarding$2$invokeSuspend$$inlined$flatMapLatest$1;->L$0:Ljava/lang/Object;

    move-object v5, p1

    check-cast v5, Lkotlinx/coroutines/flow/FlowCollector;

    iget-object p1, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$startForwarding$2$invokeSuspend$$inlined$flatMapLatest$1;->L$1:Ljava/lang/Object;

    .line 189
    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    check-cast p1, Lkotlin/Pair;

    .line 215
    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 216
    iget-object v6, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$startForwarding$2$invokeSuspend$$inlined$flatMapLatest$1;->this$0:Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;

    invoke-static {v6}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;->access$getTraceLogger$p(Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;)Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;

    move-result-object v6

    .line 218
    new-array v7, v2, [Lkotlin/Pair;

    const/4 v8, 0x0

    if-eqz p1, :cond_3

    move v9, v3

    goto :goto_0

    :cond_3
    move v9, v8

    :goto_0
    invoke-static {v9}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v9

    const-string v10, "hasAccount"

    invoke-static {v10, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    aput-object v9, v7, v8

    .line 219
    const-string v8, "hasNetwork"

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-static {v8, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    aput-object v8, v7, v3

    .line 216
    const-string v8, "Forwarding started"

    invoke-interface {v6, v8, v7}, Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 221
    new-instance v6, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v6}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 222
    new-instance v7, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    if-eqz v1, :cond_5

    if-eqz p1, :cond_5

    .line 227
    iget-object v1, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$startForwarding$2$invokeSuspend$$inlined$flatMapLatest$1;->this$0:Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;

    invoke-static {v1}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;->access$getOfflineRepository$p(Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;)Lcom/stripe/offlinemode/storage/OfflineRepository;

    move-result-object v1

    iput-object v5, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$startForwarding$2$invokeSuspend$$inlined$flatMapLatest$1;->L$0:Ljava/lang/Object;

    iput-object v6, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$startForwarding$2$invokeSuspend$$inlined$flatMapLatest$1;->L$1:Ljava/lang/Object;

    iput-object v7, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$startForwarding$2$invokeSuspend$$inlined$flatMapLatest$1;->L$2:Ljava/lang/Object;

    iput v3, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$startForwarding$2$invokeSuspend$$inlined$flatMapLatest$1;->label:I

    invoke-interface {v1, p1, p0}, Lcom/stripe/offlinemode/storage/OfflineRepository;->fetchNextToForward(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    goto :goto_3

    :cond_4
    move-object v3, v6

    move-object v1, v7

    .line 0
    :goto_1
    check-cast p1, Lkotlinx/coroutines/flow/Flow;

    .line 228
    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    .line 229
    new-instance v6, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$startForwarding$2$3$1;

    iget-object v7, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$startForwarding$2$invokeSuspend$$inlined$flatMapLatest$1;->this$0:Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;

    invoke-direct {v6, v7, v4}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$startForwarding$2$3$1;-><init>(Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;Lkotlin/coroutines/Continuation;)V

    check-cast v6, Lkotlin/jvm/functions/Function2;

    invoke-static {p1, v6}, Lkotlinx/coroutines/flow/FlowKt;->onEach(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    .line 239
    new-instance v6, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$startForwarding$2$3$2;

    iget-object v7, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$startForwarding$2$invokeSuspend$$inlined$flatMapLatest$1;->this$0:Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;

    invoke-direct {v6, v7}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$startForwarding$2$3$2;-><init>(Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;)V

    check-cast v6, Lkotlin/jvm/functions/Function1;

    invoke-static {p1, v6}, Lkotlinx/coroutines/flow/FlowKt;->debounce(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    .line 240
    new-instance v6, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$startForwarding$2$3$3;

    iget-object v7, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$startForwarding$2$invokeSuspend$$inlined$flatMapLatest$1;->this$0:Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;

    invoke-direct {v6, v1, v7, v3, v4}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$startForwarding$2$3$3;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/coroutines/Continuation;)V

    check-cast v6, Lkotlin/jvm/functions/Function2;

    invoke-static {p1, v6}, Lkotlinx/coroutines/flow/FlowKt;->onEach(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    .line 244
    new-instance v6, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$startForwarding$2$invokeSuspend$lambda$1$$inlined$map$1;

    iget-object v7, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$startForwarding$2$invokeSuspend$$inlined$flatMapLatest$1;->this$0:Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;

    invoke-direct {v6, p1, v7}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$startForwarding$2$invokeSuspend$lambda$1$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;)V

    check-cast v6, Lkotlinx/coroutines/flow/Flow;

    .line 247
    new-instance p1, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$startForwarding$2$3$5;

    iget-object v7, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$startForwarding$2$invokeSuspend$$inlined$flatMapLatest$1;->this$0:Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;

    invoke-direct {p1, v3, v1, v7, v4}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$startForwarding$2$3$5;-><init>(Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/jvm/functions/Function2;

    invoke-static {v6, p1}, Lkotlinx/coroutines/flow/FlowKt;->onEach(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    .line 248
    new-instance v3, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$startForwarding$2$3$6;

    iget-object v6, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$startForwarding$2$invokeSuspend$$inlined$flatMapLatest$1;->this$0:Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;

    invoke-direct {v3, v1, v6, v4}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$startForwarding$2$3$6;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;Lkotlin/coroutines/Continuation;)V

    check-cast v3, Lkotlin/jvm/functions/Function3;

    invoke-static {p1, v3}, Lkotlinx/coroutines/flow/FlowKt;->onCompletion(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    goto :goto_2

    .line 249
    :cond_5
    invoke-static {}, Lkotlinx/coroutines/flow/FlowKt;->emptyFlow()Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    .line 189
    :goto_2
    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    iput-object v4, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$startForwarding$2$invokeSuspend$$inlined$flatMapLatest$1;->L$0:Ljava/lang/Object;

    iput-object v4, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$startForwarding$2$invokeSuspend$$inlined$flatMapLatest$1;->L$1:Ljava/lang/Object;

    iput-object v4, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$startForwarding$2$invokeSuspend$$inlined$flatMapLatest$1;->L$2:Ljava/lang/Object;

    iput v2, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$startForwarding$2$invokeSuspend$$inlined$flatMapLatest$1;->label:I

    invoke-static {v5, p1, v1}, Lkotlinx/coroutines/flow/FlowKt;->emitAll(Lkotlinx/coroutines/flow/FlowCollector;Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    :goto_3
    return-object v0

    :cond_6
    :goto_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
