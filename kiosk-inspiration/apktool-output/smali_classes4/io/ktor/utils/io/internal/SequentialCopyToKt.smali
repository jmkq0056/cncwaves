.class public final Lio/ktor/utils/io/internal/SequentialCopyToKt;
.super Ljava/lang/Object;
.source "SequentialCopyTo.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u001a%\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0001H\u0080@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0005\u001a%\u0010\u0006\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0001H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0005\u001a%\u0010\u0007\u001a\u00020\u0008*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\nH\u0080@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000b\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u000c"
    }
    d2 = {
        "copyToSequentialImpl",
        "",
        "Lio/ktor/utils/io/ByteChannelSequentialBase;",
        "dst",
        "limit",
        "(Lio/ktor/utils/io/ByteChannelSequentialBase;Lio/ktor/utils/io/ByteChannelSequentialBase;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "copyToTail",
        "joinToImpl",
        "",
        "closeOnEnd",
        "",
        "(Lio/ktor/utils/io/ByteChannelSequentialBase;Lio/ktor/utils/io/ByteChannelSequentialBase;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "ktor-io"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final synthetic access$copyToTail(Lio/ktor/utils/io/ByteChannelSequentialBase;Lio/ktor/utils/io/ByteChannelSequentialBase;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/internal/SequentialCopyToKt;->copyToTail(Lio/ktor/utils/io/ByteChannelSequentialBase;Lio/ktor/utils/io/ByteChannelSequentialBase;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final copyToSequentialImpl(Lio/ktor/utils/io/ByteChannelSequentialBase;Lio/ktor/utils/io/ByteChannelSequentialBase;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteChannelSequentialBase;",
            "Lio/ktor/utils/io/ByteChannelSequentialBase;",
            "J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    instance-of v2, v1, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToSequentialImpl$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToSequentialImpl$1;

    iget v3, v2, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToSequentialImpl$1;->label:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    iget v1, v2, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToSequentialImpl$1;->label:I

    sub-int/2addr v1, v4

    iput v1, v2, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToSequentialImpl$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToSequentialImpl$1;

    invoke-direct {v2, v1}, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToSequentialImpl$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v2, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToSequentialImpl$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 16
    iget v4, v2, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToSequentialImpl$1;->label:I

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const-wide/16 v8, 0x0

    if-eqz v4, :cond_4

    if-eq v4, v7, :cond_3

    if-eq v4, v6, :cond_2

    if-ne v4, v5, :cond_1

    iget-wide v10, v2, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToSequentialImpl$1;->J$2:J

    iget-wide v12, v2, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToSequentialImpl$1;->J$1:J

    iget-wide v14, v2, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToSequentialImpl$1;->J$0:J

    iget-object v0, v2, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToSequentialImpl$1;->L$1:Ljava/lang/Object;

    check-cast v0, Lio/ktor/utils/io/ByteChannelSequentialBase;

    iget-object v4, v2, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToSequentialImpl$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lio/ktor/utils/io/ByteChannelSequentialBase;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-wide v10, v2, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToSequentialImpl$1;->J$1:J

    iget-wide v12, v2, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToSequentialImpl$1;->J$0:J

    iget-object v0, v2, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToSequentialImpl$1;->L$1:Ljava/lang/Object;

    check-cast v0, Lio/ktor/utils/io/ByteChannelSequentialBase;

    iget-object v4, v2, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToSequentialImpl$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lio/ktor/utils/io/ByteChannelSequentialBase;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_3
    iget-wide v10, v2, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToSequentialImpl$1;->J$1:J

    iget-wide v12, v2, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToSequentialImpl$1;->J$0:J

    iget-object v0, v2, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToSequentialImpl$1;->L$1:Ljava/lang/Object;

    check-cast v0, Lio/ktor/utils/io/ByteChannelSequentialBase;

    iget-object v4, v2, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToSequentialImpl$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lio/ktor/utils/io/ByteChannelSequentialBase;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :goto_1
    move-wide v14, v12

    move-wide v12, v10

    goto :goto_3

    :cond_4
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v1, p0

    if-eq v1, v0, :cond_e

    .line 18
    invoke-virtual {v1}, Lio/ktor/utils/io/ByteChannelSequentialBase;->getClosedCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 19
    invoke-virtual {v1}, Lio/ktor/utils/io/ByteChannelSequentialBase;->getClosedCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/ktor/utils/io/ByteChannelSequentialBase;->close(Ljava/lang/Throwable;)Z

    .line 20
    invoke-static {v8, v9}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_5
    move-wide/from16 v10, p2

    move-wide v12, v10

    :cond_6
    :goto_2
    cmp-long v4, v10, v8

    if-lez v4, :cond_d

    .line 26
    iput-object v1, v2, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToSequentialImpl$1;->L$0:Ljava/lang/Object;

    iput-object v0, v2, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToSequentialImpl$1;->L$1:Ljava/lang/Object;

    iput-wide v12, v2, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToSequentialImpl$1;->J$0:J

    iput-wide v10, v2, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToSequentialImpl$1;->J$1:J

    iput v7, v2, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToSequentialImpl$1;->label:I

    invoke-virtual {v1, v2}, Lio/ktor/utils/io/ByteChannelSequentialBase;->awaitInternalAtLeast1$ktor_io(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_7

    goto :goto_6

    :cond_7
    move-object v14, v4

    move-object v4, v1

    move-object v1, v14

    goto :goto_1

    :goto_3
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_8

    move-wide v10, v12

    move-wide v12, v14

    goto :goto_9

    .line 29
    :cond_8
    invoke-virtual {v4, v0, v12, v13}, Lio/ktor/utils/io/ByteChannelSequentialBase;->transferTo$ktor_io(Lio/ktor/utils/io/ByteChannelSequentialBase;J)J

    move-result-wide v10

    cmp-long v1, v10, v8

    if-nez v1, :cond_b

    .line 31
    iput-object v4, v2, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToSequentialImpl$1;->L$0:Ljava/lang/Object;

    iput-object v0, v2, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToSequentialImpl$1;->L$1:Ljava/lang/Object;

    iput-wide v14, v2, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToSequentialImpl$1;->J$0:J

    iput-wide v12, v2, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToSequentialImpl$1;->J$1:J

    iput v6, v2, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToSequentialImpl$1;->label:I

    invoke-static {v4, v0, v12, v13, v2}, Lio/ktor/utils/io/internal/SequentialCopyToKt;->copyToTail(Lio/ktor/utils/io/ByteChannelSequentialBase;Lio/ktor/utils/io/ByteChannelSequentialBase;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_9

    goto :goto_6

    :cond_9
    move-wide v10, v12

    move-wide v12, v14

    :goto_4
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v14

    cmp-long v1, v14, v8

    if-nez v1, :cond_a

    goto :goto_9

    :cond_a
    :goto_5
    move-object v1, v4

    goto :goto_8

    .line 38
    :cond_b
    invoke-virtual {v0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->getAvailableForWrite()I

    move-result v1

    if-nez v1, :cond_c

    .line 39
    iput-object v4, v2, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToSequentialImpl$1;->L$0:Ljava/lang/Object;

    iput-object v0, v2, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToSequentialImpl$1;->L$1:Ljava/lang/Object;

    iput-wide v14, v2, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToSequentialImpl$1;->J$0:J

    iput-wide v12, v2, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToSequentialImpl$1;->J$1:J

    iput-wide v10, v2, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToSequentialImpl$1;->J$2:J

    iput v5, v2, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToSequentialImpl$1;->label:I

    invoke-virtual {v0, v7, v2}, Lio/ktor/utils/io/ByteChannelSequentialBase;->awaitAtLeastNBytesAvailableForWrite$ktor_io(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_c

    :goto_6
    return-object v3

    :cond_c
    :goto_7
    move-wide/from16 v16, v14

    move-wide v14, v10

    move-wide v10, v12

    move-wide/from16 v12, v16

    goto :goto_5

    :goto_8
    sub-long/2addr v10, v14

    cmp-long v4, v14, v8

    if-lez v4, :cond_6

    .line 48
    invoke-virtual {v0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->flush()V

    goto :goto_2

    :cond_d
    :goto_9
    sub-long/2addr v12, v10

    .line 52
    invoke-static {v12, v13}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 17
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed requirement."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final copyToTail(Lio/ktor/utils/io/ByteChannelSequentialBase;Lio/ktor/utils/io/ByteChannelSequentialBase;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteChannelSequentialBase;",
            "Lio/ktor/utils/io/ByteChannelSequentialBase;",
            "J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToTail$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToTail$1;

    iget v1, v0, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToTail$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p4, v0, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToTail$1;->label:I

    sub-int/2addr p4, v2

    iput p4, v0, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToTail$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToTail$1;

    invoke-direct {v0, p4}, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToTail$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p4, v0, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToTail$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 56
    iget v2, v0, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToTail$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget p0, v0, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToTail$1;->I$0:I

    iget-object p1, v0, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToTail$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lio/ktor/utils/io/core/internal/ChunkBuffer;

    :try_start_0
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_3

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToTail$1;->L$1:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Lio/ktor/utils/io/core/internal/ChunkBuffer;

    iget-object p0, v0, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToTail$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lio/ktor/utils/io/ByteChannelSequentialBase;

    :try_start_1
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v7, p1

    move-object p1, p0

    move-object p0, p4

    move-object p4, v7

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_3
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 57
    sget-object p4, Lio/ktor/utils/io/core/internal/ChunkBuffer;->Companion:Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;

    invoke-virtual {p4}, Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;->getPool()Lio/ktor/utils/io/pool/ObjectPool;

    move-result-object p4

    invoke-interface {p4}, Lio/ktor/utils/io/pool/ObjectPool;->borrow()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lio/ktor/utils/io/core/internal/ChunkBuffer;

    .line 59
    :try_start_2
    invoke-virtual {p4}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getCapacity()I

    move-result v2

    int-to-long v5, v2

    invoke-static {p2, p3, v5, v6}, Lkotlin/ranges/RangesKt;->coerceAtMost(JJ)J

    move-result-wide p2

    long-to-int p2, p2

    invoke-virtual {p4, p2}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->resetForWrite(I)V

    .line 60
    iput-object p1, v0, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToTail$1;->L$0:Ljava/lang/Object;

    iput-object p4, v0, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToTail$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToTail$1;->label:I

    invoke-virtual {p0, p4, v0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->readAvailable(Lio/ktor/utils/io/core/internal/ChunkBuffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    const/4 p2, -0x1

    if-ne p0, p2, :cond_5

    .line 62
    sget-object p0, Lio/ktor/utils/io/core/internal/ChunkBuffer;->Companion:Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;

    invoke-virtual {p0}, Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;->getPool()Lio/ktor/utils/io/pool/ObjectPool;

    move-result-object p0

    invoke-virtual {p4, p0}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->release(Lio/ktor/utils/io/pool/ObjectPool;)V

    const-wide/16 p0, 0x0

    .line 63
    invoke-static {p0, p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 69
    sget-object p1, Lio/ktor/utils/io/core/internal/ChunkBuffer;->Companion:Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;

    invoke-virtual {p1}, Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;->getPool()Lio/ktor/utils/io/pool/ObjectPool;

    move-result-object p1

    invoke-virtual {p4, p1}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->release(Lio/ktor/utils/io/pool/ObjectPool;)V

    return-object p0

    .line 66
    :cond_5
    :try_start_3
    move-object p2, p4

    check-cast p2, Lio/ktor/utils/io/core/Buffer;

    iput-object p4, v0, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToTail$1;->L$0:Ljava/lang/Object;

    const/4 p3, 0x0

    iput-object p3, v0, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToTail$1;->L$1:Ljava/lang/Object;

    iput p0, v0, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToTail$1;->I$0:I

    iput v3, v0, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToTail$1;->label:I

    invoke-virtual {p1, p2, v0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->writeFully(Lio/ktor/utils/io/core/Buffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-ne p1, v1, :cond_6

    :goto_2
    return-object v1

    :cond_6
    move-object p1, p4

    :goto_3
    int-to-long p2, p0

    .line 67
    :try_start_4
    invoke-static {p2, p3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 69
    sget-object p2, Lio/ktor/utils/io/core/internal/ChunkBuffer;->Companion:Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;

    invoke-virtual {p2}, Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;->getPool()Lio/ktor/utils/io/pool/ObjectPool;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->release(Lio/ktor/utils/io/pool/ObjectPool;)V

    return-object p0

    :catchall_1
    move-exception p0

    move-object p1, p4

    :goto_4
    sget-object p2, Lio/ktor/utils/io/core/internal/ChunkBuffer;->Companion:Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;

    invoke-virtual {p2}, Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;->getPool()Lio/ktor/utils/io/pool/ObjectPool;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->release(Lio/ktor/utils/io/pool/ObjectPool;)V

    throw p0
.end method

.method public static final joinToImpl(Lio/ktor/utils/io/ByteChannelSequentialBase;Lio/ktor/utils/io/ByteChannelSequentialBase;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteChannelSequentialBase;",
            "Lio/ktor/utils/io/ByteChannelSequentialBase;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lio/ktor/utils/io/internal/SequentialCopyToKt$joinToImpl$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lio/ktor/utils/io/internal/SequentialCopyToKt$joinToImpl$1;

    iget v1, v0, Lio/ktor/utils/io/internal/SequentialCopyToKt$joinToImpl$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lio/ktor/utils/io/internal/SequentialCopyToKt$joinToImpl$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lio/ktor/utils/io/internal/SequentialCopyToKt$joinToImpl$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/utils/io/internal/SequentialCopyToKt$joinToImpl$1;

    invoke-direct {v0, p3}, Lio/ktor/utils/io/internal/SequentialCopyToKt$joinToImpl$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lio/ktor/utils/io/internal/SequentialCopyToKt$joinToImpl$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 6
    iget v2, v0, Lio/ktor/utils/io/internal/SequentialCopyToKt$joinToImpl$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-boolean p2, v0, Lio/ktor/utils/io/internal/SequentialCopyToKt$joinToImpl$1;->Z$0:Z

    iget-object p0, v0, Lio/ktor/utils/io/internal/SequentialCopyToKt$joinToImpl$1;->L$0:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Lio/ktor/utils/io/ByteChannelSequentialBase;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 7
    iput-object p1, v0, Lio/ktor/utils/io/internal/SequentialCopyToKt$joinToImpl$1;->L$0:Ljava/lang/Object;

    iput-boolean p2, v0, Lio/ktor/utils/io/internal/SequentialCopyToKt$joinToImpl$1;->Z$0:Z

    iput v3, v0, Lio/ktor/utils/io/internal/SequentialCopyToKt$joinToImpl$1;->label:I

    const-wide v2, 0x7fffffffffffffffL

    invoke-static {p0, p1, v2, v3, v0}, Lio/ktor/utils/io/internal/SequentialCopyToKt;->copyToSequentialImpl(Lio/ktor/utils/io/ByteChannelSequentialBase;Lio/ktor/utils/io/ByteChannelSequentialBase;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    if-eqz p2, :cond_4

    .line 8
    check-cast p1, Lio/ktor/utils/io/ByteWriteChannel;

    invoke-static {p1}, Lio/ktor/utils/io/ByteWriteChannelKt;->close(Lio/ktor/utils/io/ByteWriteChannel;)Z

    .line 9
    :cond_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
