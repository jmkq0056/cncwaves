.class final Lio/ktor/utils/io/ByteChannelSequentialBase$peekTo$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ByteChannelSequential.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/utils/io/ByteChannelSequentialBase;->peekTo-lBXzO7A(Ljava/nio/ByteBuffer;JJJJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lio/ktor/utils/io/SuspendableReadSession;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nByteChannelSequential.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ByteChannelSequential.kt\nio/ktor/utils/io/ByteChannelSequentialBase$peekTo$2\n+ 2 Buffer.kt\nio/ktor/utils/io/core/Buffer\n+ 3 MemoryJvm.kt\nio/ktor/utils/io/bits/Memory\n*L\n1#1,855:1\n69#2:856\n69#2:857\n15#3:858\n*S KotlinDebug\n*F\n+ 1 ByteChannelSequential.kt\nio/ktor/utils/io/ByteChannelSequentialBase$peekTo$2\n*L\n826#1:856\n827#1:857\n827#1:858\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lio/ktor/utils/io/SuspendableReadSession;"
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
    c = "io.ktor.utils.io.ByteChannelSequentialBase$peekTo$2"
    f = "ByteChannelSequential.kt"
    i = {
        0x0
    }
    l = {
        0x337
    }
    m = "invokeSuspend"
    n = {
        "$this$readSuspendableSession"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $bytesCopied:Lkotlin/jvm/internal/Ref$LongRef;

.field final synthetic $destination:Ljava/nio/ByteBuffer;

.field final synthetic $destinationOffset:J

.field final synthetic $max:J

.field final synthetic $min:J

.field final synthetic $offset:J

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(JJLkotlin/jvm/internal/Ref$LongRef;JLjava/nio/ByteBuffer;JLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lkotlin/jvm/internal/Ref$LongRef;",
            "J",
            "Ljava/nio/ByteBuffer;",
            "J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/utils/io/ByteChannelSequentialBase$peekTo$2;",
            ">;)V"
        }
    .end annotation

    iput-wide p1, p0, Lio/ktor/utils/io/ByteChannelSequentialBase$peekTo$2;->$min:J

    iput-wide p3, p0, Lio/ktor/utils/io/ByteChannelSequentialBase$peekTo$2;->$offset:J

    iput-object p5, p0, Lio/ktor/utils/io/ByteChannelSequentialBase$peekTo$2;->$bytesCopied:Lkotlin/jvm/internal/Ref$LongRef;

    iput-wide p6, p0, Lio/ktor/utils/io/ByteChannelSequentialBase$peekTo$2;->$max:J

    iput-object p8, p0, Lio/ktor/utils/io/ByteChannelSequentialBase$peekTo$2;->$destination:Ljava/nio/ByteBuffer;

    iput-wide p9, p0, Lio/ktor/utils/io/ByteChannelSequentialBase$peekTo$2;->$destinationOffset:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p11}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 12
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

    new-instance v0, Lio/ktor/utils/io/ByteChannelSequentialBase$peekTo$2;

    iget-wide v1, p0, Lio/ktor/utils/io/ByteChannelSequentialBase$peekTo$2;->$min:J

    iget-wide v3, p0, Lio/ktor/utils/io/ByteChannelSequentialBase$peekTo$2;->$offset:J

    iget-object v5, p0, Lio/ktor/utils/io/ByteChannelSequentialBase$peekTo$2;->$bytesCopied:Lkotlin/jvm/internal/Ref$LongRef;

    iget-wide v6, p0, Lio/ktor/utils/io/ByteChannelSequentialBase$peekTo$2;->$max:J

    iget-object v8, p0, Lio/ktor/utils/io/ByteChannelSequentialBase$peekTo$2;->$destination:Ljava/nio/ByteBuffer;

    iget-wide v9, p0, Lio/ktor/utils/io/ByteChannelSequentialBase$peekTo$2;->$destinationOffset:J

    move-object v11, p2

    invoke-direct/range {v0 .. v11}, Lio/ktor/utils/io/ByteChannelSequentialBase$peekTo$2;-><init>(JJLkotlin/jvm/internal/Ref$LongRef;JLjava/nio/ByteBuffer;JLkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$peekTo$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public final invoke(Lio/ktor/utils/io/SuspendableReadSession;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/SuspendableReadSession;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/ktor/utils/io/ByteChannelSequentialBase$peekTo$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/ktor/utils/io/ByteChannelSequentialBase$peekTo$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/ktor/utils/io/ByteChannelSequentialBase$peekTo$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/ktor/utils/io/SuspendableReadSession;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/ktor/utils/io/ByteChannelSequentialBase$peekTo$2;->invoke(Lio/ktor/utils/io/SuspendableReadSession;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 820
    iget v1, p0, Lio/ktor/utils/io/ByteChannelSequentialBase$peekTo$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lio/ktor/utils/io/ByteChannelSequentialBase$peekTo$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lio/ktor/utils/io/SuspendableReadSession;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lio/ktor/utils/io/ByteChannelSequentialBase$peekTo$2;->L$0:Ljava/lang/Object;

    check-cast p1, Lio/ktor/utils/io/SuspendableReadSession;

    .line 821
    iget-wide v3, p0, Lio/ktor/utils/io/ByteChannelSequentialBase$peekTo$2;->$min:J

    iget-wide v5, p0, Lio/ktor/utils/io/ByteChannelSequentialBase$peekTo$2;->$offset:J

    add-long/2addr v3, v5

    const-wide/16 v5, 0xff8

    invoke-static {v3, v4, v5, v6}, Lkotlin/ranges/RangesKt;->coerceAtMost(JJ)J

    move-result-wide v3

    long-to-int v1, v3

    .line 823
    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    iput-object p1, p0, Lio/ktor/utils/io/ByteChannelSequentialBase$peekTo$2;->L$0:Ljava/lang/Object;

    iput v2, p0, Lio/ktor/utils/io/ByteChannelSequentialBase$peekTo$2;->label:I

    invoke-interface {p1, v1, v3}, Lio/ktor/utils/io/SuspendableReadSession;->await(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_2

    return-object v0

    :cond_2
    move-object v0, p1

    .line 825
    :goto_0
    invoke-interface {v0, v2}, Lio/ktor/utils/io/SuspendableReadSession;->request(I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object p1

    if-nez p1, :cond_3

    sget-object p1, Lio/ktor/utils/io/core/internal/ChunkBuffer;->Companion:Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;

    invoke-virtual {p1}, Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;->getEmpty()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object p1

    .line 826
    :cond_3
    move-object v0, p1

    check-cast v0, Lio/ktor/utils/io/core/Buffer;

    .line 856
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v1

    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-long v1, v1

    .line 826
    iget-wide v3, p0, Lio/ktor/utils/io/ByteChannelSequentialBase$peekTo$2;->$offset:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_4

    .line 827
    iget-object v1, p0, Lio/ktor/utils/io/ByteChannelSequentialBase$peekTo$2;->$bytesCopied:Lkotlin/jvm/internal/Ref$LongRef;

    .line 857
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v2

    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v0

    sub-int/2addr v2, v0

    int-to-long v2, v2

    .line 827
    iget-wide v4, p0, Lio/ktor/utils/io/ByteChannelSequentialBase$peekTo$2;->$offset:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lio/ktor/utils/io/ByteChannelSequentialBase$peekTo$2;->$max:J

    iget-object v0, p0, Lio/ktor/utils/io/ByteChannelSequentialBase$peekTo$2;->$destination:Ljava/nio/ByteBuffer;

    .line 858
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    int-to-long v6, v0

    .line 827
    iget-wide v8, p0, Lio/ktor/utils/io/ByteChannelSequentialBase$peekTo$2;->$destinationOffset:J

    sub-long/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iput-wide v2, v1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 828
    invoke-virtual {p1}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v4

    iget-object v5, p0, Lio/ktor/utils/io/ByteChannelSequentialBase$peekTo$2;->$destination:Ljava/nio/ByteBuffer;

    iget-wide v6, p0, Lio/ktor/utils/io/ByteChannelSequentialBase$peekTo$2;->$offset:J

    iget-object p1, p0, Lio/ktor/utils/io/ByteChannelSequentialBase$peekTo$2;->$bytesCopied:Lkotlin/jvm/internal/Ref$LongRef;

    iget-wide v8, p1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    iget-wide v10, p0, Lio/ktor/utils/io/ByteChannelSequentialBase$peekTo$2;->$destinationOffset:J

    invoke-static/range {v4 .. v11}, Lio/ktor/utils/io/bits/Memory;->copyTo-JT6ljtQ(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;JJJ)V

    .line 830
    :cond_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
