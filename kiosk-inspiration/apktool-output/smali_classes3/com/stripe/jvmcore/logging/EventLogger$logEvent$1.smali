.class final Lcom/stripe/jvmcore/logging/EventLogger$logEvent$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "EventLogger.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/jvmcore/logging/EventLogger;->logEvent(Lcom/stripe/proto/model/observability/schema/Payload;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Result<",
        "+",
        "Lcom/stripe/proto/api/gator/LogEvent;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "Lkotlin/Result;",
        "Lcom/stripe/proto/api/gator/LogEvent;"
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
    c = "com.stripe.jvmcore.logging.EventLogger$logEvent$1"
    f = "EventLogger.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $payload:Lcom/stripe/proto/model/observability/schema/Payload;

.field label:I

.field final synthetic this$0:Lcom/stripe/jvmcore/logging/EventLogger;


# direct methods
.method constructor <init>(Lcom/stripe/jvmcore/logging/EventLogger;Lcom/stripe/proto/model/observability/schema/Payload;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/logging/EventLogger;",
            "Lcom/stripe/proto/model/observability/schema/Payload;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/jvmcore/logging/EventLogger$logEvent$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stripe/jvmcore/logging/EventLogger$logEvent$1;->this$0:Lcom/stripe/jvmcore/logging/EventLogger;

    iput-object p2, p0, Lcom/stripe/jvmcore/logging/EventLogger$logEvent$1;->$payload:Lcom/stripe/proto/model/observability/schema/Payload;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/stripe/jvmcore/logging/EventLogger$logEvent$1;

    iget-object v1, p0, Lcom/stripe/jvmcore/logging/EventLogger$logEvent$1;->this$0:Lcom/stripe/jvmcore/logging/EventLogger;

    iget-object v2, p0, Lcom/stripe/jvmcore/logging/EventLogger$logEvent$1;->$payload:Lcom/stripe/proto/model/observability/schema/Payload;

    invoke-direct {v0, v1, v2, p1}, Lcom/stripe/jvmcore/logging/EventLogger$logEvent$1;-><init>(Lcom/stripe/jvmcore/logging/EventLogger;Lcom/stripe/proto/model/observability/schema/Payload;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Lcom/stripe/jvmcore/logging/EventLogger$logEvent$1;->invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "Lcom/stripe/proto/api/gator/LogEvent;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/stripe/jvmcore/logging/EventLogger$logEvent$1;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/stripe/jvmcore/logging/EventLogger$logEvent$1;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Lcom/stripe/jvmcore/logging/EventLogger$logEvent$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    const-string v1, "access$getTAG$cp(...)"

    const-string v0, "Dropping an event payload that is "

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 65
    iget v2, p0, Lcom/stripe/jvmcore/logging/EventLogger$logEvent$1;->label:I

    if-nez v2, :cond_3

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 68
    iget-object p1, p0, Lcom/stripe/jvmcore/logging/EventLogger$logEvent$1;->this$0:Lcom/stripe/jvmcore/logging/EventLogger;

    iget-object v2, p0, Lcom/stripe/jvmcore/logging/EventLogger$logEvent$1;->$payload:Lcom/stripe/proto/model/observability/schema/Payload;

    :try_start_0
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 69
    invoke-virtual {v2}, Lcom/stripe/proto/model/observability/schema/Payload;->encode()[B

    move-result-object v2

    array-length v2, v2

    int-to-long v3, v2

    .line 70
    invoke-static {p1}, Lcom/stripe/jvmcore/logging/EventLogger;->access$getMaxEntryBytes$p(Lcom/stripe/jvmcore/logging/EventLogger;)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-ltz v3, :cond_0

    .line 71
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " bytes."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-static {p1}, Lcom/stripe/jvmcore/logging/EventLogger;->access$getLogWriter$p(Lcom/stripe/jvmcore/logging/EventLogger;)Lcom/stripe/logwriter/LogWriter;

    move-result-object p1

    invoke-static {}, Lcom/stripe/jvmcore/logging/EventLogger;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v2, v0}, Lcom/stripe/logwriter/LogWriter;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object p1

    return-object p1

    .line 75
    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 68
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 75
    :goto_0
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/EventLogger$logEvent$1;->this$0:Lcom/stripe/jvmcore/logging/EventLogger;

    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 76
    invoke-static {v0}, Lcom/stripe/jvmcore/logging/EventLogger;->access$getLogWriter$p(Lcom/stripe/jvmcore/logging/EventLogger;)Lcom/stripe/logwriter/LogWriter;

    move-result-object v0

    invoke-static {}, Lcom/stripe/jvmcore/logging/EventLogger;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "Failed to determine protobuf size in bytes."

    invoke-interface {v0, v2, v1, p1}, Lcom/stripe/logwriter/LogWriter;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 77
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object p1

    return-object p1

    .line 80
    :cond_1
    iget-object p1, p0, Lcom/stripe/jvmcore/logging/EventLogger$logEvent$1;->this$0:Lcom/stripe/jvmcore/logging/EventLogger;

    invoke-static {p1}, Lcom/stripe/jvmcore/logging/EventLogger;->access$getProtoFlattener$p(Lcom/stripe/jvmcore/logging/EventLogger;)Lcom/stripe/jvmcore/proto/ProtoFlattener;

    move-result-object p1

    .line 81
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/EventLogger$logEvent$1;->$payload:Lcom/stripe/proto/model/observability/schema/Payload;

    check-cast v0, Lcom/squareup/wire/Message;

    invoke-virtual {p1, v0}, Lcom/stripe/jvmcore/proto/ProtoFlattener;->flattenToKeyValueMap-IoAF18A(Lcom/squareup/wire/Message;)Ljava/lang/Object;

    move-result-object p1

    .line 82
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/EventLogger$logEvent$1;->this$0:Lcom/stripe/jvmcore/logging/EventLogger;

    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_2

    move-object v5, p1

    check-cast v5, Ljava/util/Map;

    .line 87
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 88
    new-instance v3, Lcom/stripe/proto/api/gator/LogEvent;

    .line 89
    new-instance v4, Lcom/stripe/proto/model/common/InstantPb;

    iget-object p1, p0, Lcom/stripe/jvmcore/logging/EventLogger$logEvent$1;->this$0:Lcom/stripe/jvmcore/logging/EventLogger;

    invoke-static {p1}, Lcom/stripe/jvmcore/logging/EventLogger;->access$getClock$p(Lcom/stripe/jvmcore/logging/EventLogger;)Lcom/stripe/time/Clock;

    move-result-object p1

    invoke-interface {p1}, Lcom/stripe/time/Clock;->currentTimeMillis()J

    move-result-wide v7

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v9, 0x0

    move-object v6, v4

    invoke-direct/range {v6 .. v11}, Lcom/stripe/proto/model/common/InstantPb;-><init>(JLokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v6, 0x0

    .line 88
    invoke-direct/range {v3 .. v8}, Lcom/stripe/proto/api/gator/LogEvent;-><init>(Lcom/stripe/proto/model/common/InstantPb;Ljava/util/Map;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 87
    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object p1

    return-object p1

    .line 83
    :cond_2
    invoke-static {v0}, Lcom/stripe/jvmcore/logging/EventLogger;->access$getLogWriter$p(Lcom/stripe/jvmcore/logging/EventLogger;)Lcom/stripe/logwriter/LogWriter;

    move-result-object p1

    invoke-static {}, Lcom/stripe/jvmcore/logging/EventLogger;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "Failed to convert event payload to JSON pairs."

    invoke-interface {p1, v0, v1, v2}, Lcom/stripe/logwriter/LogWriter;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 84
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object p1

    return-object p1

    .line 65
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
