.class final Lio/ktor/utils/io/DelimitedKt$readUntilDelimiterSuspend$copied$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Delimited.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/utils/io/DelimitedKt;->readUntilDelimiterSuspend(Lio/ktor/utils/io/ByteReadChannel;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lio/ktor/utils/io/LookAheadSuspendSession;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Ljava/lang/Integer;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0008\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lio/ktor/utils/io/LookAheadSuspendSession;"
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
    c = "io.ktor.utils.io.DelimitedKt$readUntilDelimiterSuspend$copied$1"
    f = "Delimited.kt"
    i = {
        0x0,
        0x0,
        0x1,
        0x1
    }
    l = {
        0x55,
        0x5f
    }
    m = "invokeSuspend"
    n = {
        "$this$lookAheadSuspend",
        "copied",
        "$this$lookAheadSuspend",
        "copied"
    }
    s = {
        "L$0",
        "I$0",
        "L$0",
        "I$0"
    }
.end annotation


# instance fields
.field final synthetic $copied0:I

.field final synthetic $delimiter:Ljava/nio/ByteBuffer;

.field final synthetic $dst:Ljava/nio/ByteBuffer;

.field final synthetic $endFound:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic $this_readUntilDelimiterSuspend:Lio/ktor/utils/io/ByteReadChannel;

.field I$0:I

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(ILjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Lkotlin/jvm/internal/Ref$BooleanRef;Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/nio/ByteBuffer;",
            "Ljava/nio/ByteBuffer;",
            "Lkotlin/jvm/internal/Ref$BooleanRef;",
            "Lio/ktor/utils/io/ByteReadChannel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/utils/io/DelimitedKt$readUntilDelimiterSuspend$copied$1;",
            ">;)V"
        }
    .end annotation

    iput p1, p0, Lio/ktor/utils/io/DelimitedKt$readUntilDelimiterSuspend$copied$1;->$copied0:I

    iput-object p2, p0, Lio/ktor/utils/io/DelimitedKt$readUntilDelimiterSuspend$copied$1;->$delimiter:Ljava/nio/ByteBuffer;

    iput-object p3, p0, Lio/ktor/utils/io/DelimitedKt$readUntilDelimiterSuspend$copied$1;->$dst:Ljava/nio/ByteBuffer;

    iput-object p4, p0, Lio/ktor/utils/io/DelimitedKt$readUntilDelimiterSuspend$copied$1;->$endFound:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p5, p0, Lio/ktor/utils/io/DelimitedKt$readUntilDelimiterSuspend$copied$1;->$this_readUntilDelimiterSuspend:Lio/ktor/utils/io/ByteReadChannel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
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

    new-instance v0, Lio/ktor/utils/io/DelimitedKt$readUntilDelimiterSuspend$copied$1;

    iget v1, p0, Lio/ktor/utils/io/DelimitedKt$readUntilDelimiterSuspend$copied$1;->$copied0:I

    iget-object v2, p0, Lio/ktor/utils/io/DelimitedKt$readUntilDelimiterSuspend$copied$1;->$delimiter:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lio/ktor/utils/io/DelimitedKt$readUntilDelimiterSuspend$copied$1;->$dst:Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lio/ktor/utils/io/DelimitedKt$readUntilDelimiterSuspend$copied$1;->$endFound:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v5, p0, Lio/ktor/utils/io/DelimitedKt$readUntilDelimiterSuspend$copied$1;->$this_readUntilDelimiterSuspend:Lio/ktor/utils/io/ByteReadChannel;

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lio/ktor/utils/io/DelimitedKt$readUntilDelimiterSuspend$copied$1;-><init>(ILjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Lkotlin/jvm/internal/Ref$BooleanRef;Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lio/ktor/utils/io/DelimitedKt$readUntilDelimiterSuspend$copied$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public final invoke(Lio/ktor/utils/io/LookAheadSuspendSession;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/LookAheadSuspendSession;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/ktor/utils/io/DelimitedKt$readUntilDelimiterSuspend$copied$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/ktor/utils/io/DelimitedKt$readUntilDelimiterSuspend$copied$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/ktor/utils/io/DelimitedKt$readUntilDelimiterSuspend$copied$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/ktor/utils/io/LookAheadSuspendSession;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/ktor/utils/io/DelimitedKt$readUntilDelimiterSuspend$copied$1;->invoke(Lio/ktor/utils/io/LookAheadSuspendSession;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 81
    iget v1, p0, Lio/ktor/utils/io/DelimitedKt$readUntilDelimiterSuspend$copied$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget v1, p0, Lio/ktor/utils/io/DelimitedKt$readUntilDelimiterSuspend$copied$1;->I$0:I

    iget-object v4, p0, Lio/ktor/utils/io/DelimitedKt$readUntilDelimiterSuspend$copied$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lio/ktor/utils/io/LookAheadSuspendSession;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget v1, p0, Lio/ktor/utils/io/DelimitedKt$readUntilDelimiterSuspend$copied$1;->I$0:I

    iget-object v4, p0, Lio/ktor/utils/io/DelimitedKt$readUntilDelimiterSuspend$copied$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lio/ktor/utils/io/LookAheadSuspendSession;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lio/ktor/utils/io/DelimitedKt$readUntilDelimiterSuspend$copied$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lio/ktor/utils/io/LookAheadSuspendSession;

    .line 82
    iget v1, p0, Lio/ktor/utils/io/DelimitedKt$readUntilDelimiterSuspend$copied$1;->$copied0:I

    .line 85
    :cond_3
    move-object v4, p0

    check-cast v4, Lkotlin/coroutines/Continuation;

    iput-object p1, p0, Lio/ktor/utils/io/DelimitedKt$readUntilDelimiterSuspend$copied$1;->L$0:Ljava/lang/Object;

    iput v1, p0, Lio/ktor/utils/io/DelimitedKt$readUntilDelimiterSuspend$copied$1;->I$0:I

    iput v3, p0, Lio/ktor/utils/io/DelimitedKt$readUntilDelimiterSuspend$copied$1;->label:I

    invoke-interface {p1, v3, v4}, Lio/ktor/utils/io/LookAheadSuspendSession;->awaitAtLeast(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_4

    goto :goto_1

    :cond_4
    move-object v4, p1

    .line 86
    :goto_0
    move-object p1, v4

    check-cast p1, Lio/ktor/utils/io/LookAheadSession;

    iget-object v5, p0, Lio/ktor/utils/io/DelimitedKt$readUntilDelimiterSuspend$copied$1;->$delimiter:Ljava/nio/ByteBuffer;

    iget-object v6, p0, Lio/ktor/utils/io/DelimitedKt$readUntilDelimiterSuspend$copied$1;->$dst:Ljava/nio/ByteBuffer;

    invoke-static {p1, v5, v6}, Lio/ktor/utils/io/DelimitedKt;->access$tryCopyUntilDelimiter(Lio/ktor/utils/io/LookAheadSession;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    move-result v5

    if-nez v5, :cond_8

    .line 88
    iget-object v5, p0, Lio/ktor/utils/io/DelimitedKt$readUntilDelimiterSuspend$copied$1;->$delimiter:Ljava/nio/ByteBuffer;

    invoke-static {p1, v5}, Lio/ktor/utils/io/DelimitedKt;->access$startsWithDelimiter(Lio/ktor/utils/io/LookAheadSession;Ljava/nio/ByteBuffer;)I

    move-result p1

    iget-object v5, p0, Lio/ktor/utils/io/DelimitedKt$readUntilDelimiterSuspend$copied$1;->$delimiter:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    if-ne p1, v5, :cond_5

    .line 89
    iget-object p1, p0, Lio/ktor/utils/io/DelimitedKt$readUntilDelimiterSuspend$copied$1;->$endFound:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-boolean v3, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    goto :goto_4

    .line 92
    :cond_5
    iget-object p1, p0, Lio/ktor/utils/io/DelimitedKt$readUntilDelimiterSuspend$copied$1;->$this_readUntilDelimiterSuspend:Lio/ktor/utils/io/ByteReadChannel;

    invoke-interface {p1}, Lio/ktor/utils/io/ByteReadChannel;->isClosedForWrite()Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_4

    .line 95
    :cond_6
    iget-object p1, p0, Lio/ktor/utils/io/DelimitedKt$readUntilDelimiterSuspend$copied$1;->$delimiter:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput-object v4, p0, Lio/ktor/utils/io/DelimitedKt$readUntilDelimiterSuspend$copied$1;->L$0:Ljava/lang/Object;

    iput v1, p0, Lio/ktor/utils/io/DelimitedKt$readUntilDelimiterSuspend$copied$1;->I$0:I

    iput v2, p0, Lio/ktor/utils/io/DelimitedKt$readUntilDelimiterSuspend$copied$1;->label:I

    invoke-interface {v4, p1, v5}, Lio/ktor/utils/io/LookAheadSuspendSession;->awaitAtLeast(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    :goto_1
    return-object v0

    :cond_7
    :goto_2
    move-object p1, v4

    goto :goto_3

    :cond_8
    if-gtz v5, :cond_9

    .line 101
    iget-object p1, p0, Lio/ktor/utils/io/DelimitedKt$readUntilDelimiterSuspend$copied$1;->$endFound:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-boolean v3, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    neg-int v5, v5

    :cond_9
    add-int/2addr v1, v5

    goto :goto_2

    .line 107
    :goto_3
    iget-object v4, p0, Lio/ktor/utils/io/DelimitedKt$readUntilDelimiterSuspend$copied$1;->$dst:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lio/ktor/utils/io/DelimitedKt$readUntilDelimiterSuspend$copied$1;->$endFound:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v4, v4, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v4, :cond_3

    .line 109
    :cond_a
    :goto_4
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
