.class final Lio/ktor/client/network/sockets/TimeoutExceptionsCommonKt$mapEngineExceptions$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "TimeoutExceptionsCommon.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/network/sockets/TimeoutExceptionsCommonKt;->mapEngineExceptions(Lkotlinx/coroutines/CoroutineScope;Lio/ktor/utils/io/ByteWriteChannel;Lio/ktor/client/request/HttpRequestData;)Lio/ktor/utils/io/ByteWriteChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lio/ktor/utils/io/WriterScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lio/ktor/utils/io/WriterScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.ktor.client.network.sockets.TimeoutExceptionsCommonKt$mapEngineExceptions$2"
    f = "TimeoutExceptionsCommon.kt"
    i = {}
    l = {
        0x3f
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $output:Lio/ktor/utils/io/ByteWriteChannel;

.field final synthetic $replacementChannel:Lio/ktor/utils/io/ByteChannel;

.field label:I


# direct methods
.method constructor <init>(Lio/ktor/utils/io/ByteChannel;Lio/ktor/utils/io/ByteWriteChannel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteChannel;",
            "Lio/ktor/utils/io/ByteWriteChannel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/client/network/sockets/TimeoutExceptionsCommonKt$mapEngineExceptions$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/ktor/client/network/sockets/TimeoutExceptionsCommonKt$mapEngineExceptions$2;->$replacementChannel:Lio/ktor/utils/io/ByteChannel;

    iput-object p2, p0, Lio/ktor/client/network/sockets/TimeoutExceptionsCommonKt$mapEngineExceptions$2;->$output:Lio/ktor/utils/io/ByteWriteChannel;

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

    new-instance p1, Lio/ktor/client/network/sockets/TimeoutExceptionsCommonKt$mapEngineExceptions$2;

    iget-object v0, p0, Lio/ktor/client/network/sockets/TimeoutExceptionsCommonKt$mapEngineExceptions$2;->$replacementChannel:Lio/ktor/utils/io/ByteChannel;

    iget-object v1, p0, Lio/ktor/client/network/sockets/TimeoutExceptionsCommonKt$mapEngineExceptions$2;->$output:Lio/ktor/utils/io/ByteWriteChannel;

    invoke-direct {p1, v0, v1, p2}, Lio/ktor/client/network/sockets/TimeoutExceptionsCommonKt$mapEngineExceptions$2;-><init>(Lio/ktor/utils/io/ByteChannel;Lio/ktor/utils/io/ByteWriteChannel;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public final invoke(Lio/ktor/utils/io/WriterScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/WriterScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/ktor/client/network/sockets/TimeoutExceptionsCommonKt$mapEngineExceptions$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/ktor/client/network/sockets/TimeoutExceptionsCommonKt$mapEngineExceptions$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/ktor/client/network/sockets/TimeoutExceptionsCommonKt$mapEngineExceptions$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/ktor/utils/io/WriterScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/ktor/client/network/sockets/TimeoutExceptionsCommonKt$mapEngineExceptions$2;->invoke(Lio/ktor/utils/io/WriterScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 61
    iget v1, p0, Lio/ktor/client/network/sockets/TimeoutExceptionsCommonKt$mapEngineExceptions$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 63
    :try_start_1
    iget-object p1, p0, Lio/ktor/client/network/sockets/TimeoutExceptionsCommonKt$mapEngineExceptions$2;->$replacementChannel:Lio/ktor/utils/io/ByteChannel;

    move-object v3, p1

    check-cast v3, Lio/ktor/utils/io/ByteReadChannel;

    iget-object v4, p0, Lio/ktor/client/network/sockets/TimeoutExceptionsCommonKt$mapEngineExceptions$2;->$output:Lio/ktor/utils/io/ByteWriteChannel;

    move-object v7, p0

    check-cast v7, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lio/ktor/client/network/sockets/TimeoutExceptionsCommonKt$mapEngineExceptions$2;->label:I

    const-wide/16 v5, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lio/ktor/utils/io/ByteReadChannelKt;->copyAndClose$default(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/ByteWriteChannel;JLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p1, v0, :cond_2

    return-object v0

    .line 65
    :goto_0
    iget-object v0, p0, Lio/ktor/client/network/sockets/TimeoutExceptionsCommonKt$mapEngineExceptions$2;->$replacementChannel:Lio/ktor/utils/io/ByteChannel;

    invoke-interface {v0, p1}, Lio/ktor/utils/io/ByteChannel;->close(Ljava/lang/Throwable;)Z

    .line 67
    :cond_2
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
