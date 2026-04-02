.class final Lcom/stripe/jvmcore/gator/GatorSchemaEventDispatcher$dispatch$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "GatorDispatchers.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/jvmcore/gator/GatorSchemaEventDispatcher;->dispatch(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Lcom/stripe/jvmcore/batchdispatcher/Dispatcher$Result;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "Lcom/stripe/jvmcore/batchdispatcher/Dispatcher$Result;",
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
    c = "com.stripe.jvmcore.gator.GatorSchemaEventDispatcher$dispatch$2"
    f = "GatorDispatchers.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $batch:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/proto/api/gator/LogEvent;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lcom/stripe/jvmcore/gator/GatorSchemaEventDispatcher;


# direct methods
.method constructor <init>(Lcom/stripe/jvmcore/gator/GatorSchemaEventDispatcher;Ljava/util/List;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/gator/GatorSchemaEventDispatcher;",
            "Ljava/util/List<",
            "Lcom/stripe/proto/api/gator/LogEvent;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/jvmcore/gator/GatorSchemaEventDispatcher$dispatch$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stripe/jvmcore/gator/GatorSchemaEventDispatcher$dispatch$2;->this$0:Lcom/stripe/jvmcore/gator/GatorSchemaEventDispatcher;

    iput-object p2, p0, Lcom/stripe/jvmcore/gator/GatorSchemaEventDispatcher$dispatch$2;->$batch:Ljava/util/List;

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

    new-instance p1, Lcom/stripe/jvmcore/gator/GatorSchemaEventDispatcher$dispatch$2;

    iget-object v0, p0, Lcom/stripe/jvmcore/gator/GatorSchemaEventDispatcher$dispatch$2;->this$0:Lcom/stripe/jvmcore/gator/GatorSchemaEventDispatcher;

    iget-object v1, p0, Lcom/stripe/jvmcore/gator/GatorSchemaEventDispatcher$dispatch$2;->$batch:Ljava/util/List;

    invoke-direct {p1, v0, v1, p2}, Lcom/stripe/jvmcore/gator/GatorSchemaEventDispatcher$dispatch$2;-><init>(Lcom/stripe/jvmcore/gator/GatorSchemaEventDispatcher;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/jvmcore/gator/GatorSchemaEventDispatcher$dispatch$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lcom/stripe/jvmcore/batchdispatcher/Dispatcher$Result;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/stripe/jvmcore/gator/GatorSchemaEventDispatcher$dispatch$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/stripe/jvmcore/gator/GatorSchemaEventDispatcher$dispatch$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/stripe/jvmcore/gator/GatorSchemaEventDispatcher$dispatch$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 40
    iget v0, p0, Lcom/stripe/jvmcore/gator/GatorSchemaEventDispatcher$dispatch$2;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 41
    iget-object p1, p0, Lcom/stripe/jvmcore/gator/GatorSchemaEventDispatcher$dispatch$2;->this$0:Lcom/stripe/jvmcore/gator/GatorSchemaEventDispatcher;

    invoke-static {p1}, Lcom/stripe/jvmcore/gator/GatorSchemaEventDispatcher;->access$isNetworkAvailable$p(Lcom/stripe/jvmcore/gator/GatorSchemaEventDispatcher;)Ljavax/inject/Provider;

    move-result-object p1

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    .line 42
    sget-object p1, Lcom/stripe/jvmcore/batchdispatcher/Dispatcher$Result$Retry;->INSTANCE:Lcom/stripe/jvmcore/batchdispatcher/Dispatcher$Result$Retry;

    return-object p1

    .line 45
    :cond_0
    new-instance p1, Lcom/stripe/proto/api/gator/ReportLogEventsRequest;

    iget-object v0, p0, Lcom/stripe/jvmcore/gator/GatorSchemaEventDispatcher$dispatch$2;->$batch:Ljava/util/List;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p1, v0, v2, v1, v2}, Lcom/stripe/proto/api/gator/ReportLogEventsRequest;-><init>(Ljava/util/List;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 47
    iget-object v0, p0, Lcom/stripe/jvmcore/gator/GatorSchemaEventDispatcher$dispatch$2;->this$0:Lcom/stripe/jvmcore/gator/GatorSchemaEventDispatcher;

    invoke-static {v0}, Lcom/stripe/jvmcore/gator/GatorSchemaEventDispatcher;->access$getGatorApi$p(Lcom/stripe/jvmcore/gator/GatorSchemaEventDispatcher;)Lcom/stripe/proto/api/gator/GatorApi;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/stripe/proto/api/gator/GatorApi;->reportLogEvents(Lcom/stripe/proto/api/gator/ReportLogEventsRequest;)Lcom/stripe/jvmcore/crpcclient/CrpcResponse;

    move-result-object p1

    .line 48
    invoke-static {p1}, Lcom/stripe/jvmcore/gator/GatorDispatchersKt;->access$toResult(Lcom/stripe/jvmcore/crpcclient/CrpcResponse;)Lcom/stripe/jvmcore/batchdispatcher/Dispatcher$Result;

    move-result-object p1

    return-object p1

    .line 40
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
