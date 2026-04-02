.class public final Lio/ktor/utils/io/ConsumeEachKt;
.super Ljava/lang/Object;
.source "ConsumeEach.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nConsumeEach.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConsumeEach.kt\nio/ktor/utils/io/ConsumeEachKt\n+ 2 ReadSession.kt\nio/ktor/utils/io/ReadSessionKt\n*L\n1#1,41:1\n20#2,13:42\n*S KotlinDebug\n*F\n+ 1 ConsumeEach.kt\nio/ktor/utils/io/ConsumeEachKt\n*L\n24#1:42,13\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001aQ\u0010\u0000\u001a\u00020\u0001*\u00020\u00022:\u0010\u0003\u001a6\u0012\u0013\u0012\u00110\u0005\u00a2\u0006\u000c\u0008\u0006\u0012\u0008\u0008\u0007\u0012\u0004\u0008\u0008(\u0008\u0012\u0013\u0012\u00110\t\u00a2\u0006\u000c\u0008\u0006\u0012\u0008\u0008\u0007\u0012\u0004\u0008\u0008(\n\u0012\u0004\u0012\u00020\t0\u0004j\u0002`\u000bH\u0086H\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000c*j\u0010\r\"2\u0012\u0013\u0012\u00110\u0005\u00a2\u0006\u000c\u0008\u0006\u0012\u0008\u0008\u0007\u0012\u0004\u0008\u0008(\u0008\u0012\u0013\u0012\u00110\t\u00a2\u0006\u000c\u0008\u0006\u0012\u0008\u0008\u0007\u0012\u0004\u0008\u0008(\n\u0012\u0004\u0012\u00020\t0\u000422\u0012\u0013\u0012\u00110\u0005\u00a2\u0006\u000c\u0008\u0006\u0012\u0008\u0008\u0007\u0012\u0004\u0008\u0008(\u0008\u0012\u0013\u0012\u00110\t\u00a2\u0006\u000c\u0008\u0006\u0012\u0008\u0008\u0007\u0012\u0004\u0008\u0008(\n\u0012\u0004\u0012\u00020\t0\u0004\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u000e"
    }
    d2 = {
        "consumeEachBufferRange",
        "",
        "Lio/ktor/utils/io/ByteReadChannel;",
        "visitor",
        "Lkotlin/Function2;",
        "Ljava/nio/ByteBuffer;",
        "Lkotlin/ParameterName;",
        "name",
        "buffer",
        "",
        "last",
        "Lio/ktor/utils/io/ConsumeEachBufferVisitor;",
        "(Lio/ktor/utils/io/ByteReadChannel;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "ConsumeEachBufferVisitor",
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
.method public static final consumeEachBufferRange(Lio/ktor/utils/io/ByteReadChannel;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteReadChannel;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/nio/ByteBuffer;",
            "-",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p2

    instance-of v1, v0, Lio/ktor/utils/io/ConsumeEachKt$consumeEachBufferRange$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lio/ktor/utils/io/ConsumeEachKt$consumeEachBufferRange$1;

    iget v2, v1, Lio/ktor/utils/io/ConsumeEachKt$consumeEachBufferRange$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v0, v1, Lio/ktor/utils/io/ConsumeEachKt$consumeEachBufferRange$1;->label:I

    sub-int/2addr v0, v3

    iput v0, v1, Lio/ktor/utils/io/ConsumeEachKt$consumeEachBufferRange$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v1, Lio/ktor/utils/io/ConsumeEachKt$consumeEachBufferRange$1;

    invoke-direct {v1, v0}, Lio/ktor/utils/io/ConsumeEachKt$consumeEachBufferRange$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v1, Lio/ktor/utils/io/ConsumeEachKt$consumeEachBufferRange$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 18
    iget v3, v1, Lio/ktor/utils/io/ConsumeEachKt$consumeEachBufferRange$1;->label:I

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v3, :cond_4

    if-eq v3, v7, :cond_3

    if-eq v3, v5, :cond_2

    if-eq v3, v4, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v1, v1, Lio/ktor/utils/io/ConsumeEachKt$consumeEachBufferRange$1;->L$0:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_9

    :cond_2
    iget v3, v1, Lio/ktor/utils/io/ConsumeEachKt$consumeEachBufferRange$1;->I$0:I

    iget-object v3, v1, Lio/ktor/utils/io/ConsumeEachKt$consumeEachBufferRange$1;->L$5:Ljava/lang/Object;

    check-cast v3, Lio/ktor/utils/io/core/Buffer;

    iget-object v9, v1, Lio/ktor/utils/io/ConsumeEachKt$consumeEachBufferRange$1;->L$4:Ljava/lang/Object;

    check-cast v9, Lio/ktor/utils/io/ByteReadChannel;

    iget-object v10, v1, Lio/ktor/utils/io/ConsumeEachKt$consumeEachBufferRange$1;->L$3:Ljava/lang/Object;

    check-cast v10, Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v11, v1, Lio/ktor/utils/io/ConsumeEachKt$consumeEachBufferRange$1;->L$2:Ljava/lang/Object;

    check-cast v11, Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v12, v1, Lio/ktor/utils/io/ConsumeEachKt$consumeEachBufferRange$1;->L$1:Ljava/lang/Object;

    check-cast v12, Lkotlin/jvm/functions/Function2;

    iget-object v13, v1, Lio/ktor/utils/io/ConsumeEachKt$consumeEachBufferRange$1;->L$0:Ljava/lang/Object;

    check-cast v13, Lio/ktor/utils/io/ByteReadChannel;

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v9, v1

    move-object v3, v11

    move-object v1, v12

    move-object v0, v13

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    move-object/from16 v17, v1

    move-object v1, v0

    move-object/from16 v0, v17

    goto/16 :goto_7

    :cond_3
    iget-object v3, v1, Lio/ktor/utils/io/ConsumeEachKt$consumeEachBufferRange$1;->L$4:Ljava/lang/Object;

    check-cast v3, Lio/ktor/utils/io/ByteReadChannel;

    iget-object v9, v1, Lio/ktor/utils/io/ConsumeEachKt$consumeEachBufferRange$1;->L$3:Ljava/lang/Object;

    check-cast v9, Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v10, v1, Lio/ktor/utils/io/ConsumeEachKt$consumeEachBufferRange$1;->L$2:Ljava/lang/Object;

    check-cast v10, Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v11, v1, Lio/ktor/utils/io/ConsumeEachKt$consumeEachBufferRange$1;->L$1:Ljava/lang/Object;

    check-cast v11, Lkotlin/jvm/functions/Function2;

    iget-object v12, v1, Lio/ktor/utils/io/ConsumeEachKt$consumeEachBufferRange$1;->L$0:Ljava/lang/Object;

    check-cast v12, Lio/ktor/utils/io/ByteReadChannel;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v17, v9

    move-object v9, v3

    move-object v3, v10

    move-object/from16 v10, v17

    goto :goto_2

    :cond_4
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 19
    new-instance v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 20
    new-instance v3, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    move-object v9, v1

    move-object v10, v3

    move-object/from16 v1, p1

    move-object v3, v0

    move-object/from16 v0, p0

    .line 23
    :goto_1
    iput-boolean v6, v3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 46
    iput-object v0, v9, Lio/ktor/utils/io/ConsumeEachKt$consumeEachBufferRange$1;->L$0:Ljava/lang/Object;

    iput-object v1, v9, Lio/ktor/utils/io/ConsumeEachKt$consumeEachBufferRange$1;->L$1:Ljava/lang/Object;

    iput-object v3, v9, Lio/ktor/utils/io/ConsumeEachKt$consumeEachBufferRange$1;->L$2:Ljava/lang/Object;

    iput-object v10, v9, Lio/ktor/utils/io/ConsumeEachKt$consumeEachBufferRange$1;->L$3:Ljava/lang/Object;

    iput-object v0, v9, Lio/ktor/utils/io/ConsumeEachKt$consumeEachBufferRange$1;->L$4:Ljava/lang/Object;

    iput-object v8, v9, Lio/ktor/utils/io/ConsumeEachKt$consumeEachBufferRange$1;->L$5:Ljava/lang/Object;

    iput v7, v9, Lio/ktor/utils/io/ConsumeEachKt$consumeEachBufferRange$1;->label:I

    invoke-static {v0, v7, v9}, Lio/ktor/utils/io/ReadSessionKt;->requestBuffer(Lio/ktor/utils/io/ByteReadChannel;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v2, :cond_5

    goto/16 :goto_8

    :cond_5
    move-object v12, v0

    move-object v0, v11

    move-object v11, v1

    move-object v1, v9

    move-object v9, v12

    :goto_2
    check-cast v0, Lio/ktor/utils/io/core/Buffer;

    if-nez v0, :cond_6

    sget-object v0, Lio/ktor/utils/io/core/Buffer;->Companion:Lio/ktor/utils/io/core/Buffer$Companion;

    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer$Companion;->getEmpty()Lio/ktor/utils/io/core/Buffer;

    move-result-object v0

    :cond_6
    move-object v13, v0

    .line 49
    :try_start_1
    invoke-virtual {v13}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v13}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v14

    int-to-long v14, v14

    invoke-virtual {v13}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v7

    int-to-long v6, v7

    cmp-long v16, v6, v14

    if-lez v16, :cond_7

    sub-long/2addr v6, v14

    .line 26
    invoke-static {v0, v14, v15, v6, v7}, Lio/ktor/utils/io/bits/Memory;->slice-87lwejk(Ljava/nio/ByteBuffer;JJ)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_3

    .line 27
    :cond_7
    sget-object v0, Lio/ktor/utils/io/bits/Memory;->Companion:Lio/ktor/utils/io/bits/Memory$Companion;

    invoke-virtual {v0}, Lio/ktor/utils/io/bits/Memory$Companion;->getEmpty-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 30
    :goto_3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    invoke-interface {v12}, Lio/ktor/utils/io/ByteReadChannel;->getAvailableForRead()I

    move-result v7

    if-ne v6, v7, :cond_8

    invoke-interface {v12}, Lio/ktor/utils/io/ByteReadChannel;->isClosedForWrite()Z

    move-result v6

    if-eqz v6, :cond_8

    const/4 v6, 0x1

    goto :goto_4

    :cond_8
    const/4 v6, 0x0

    :goto_4
    iput-boolean v6, v10, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 31
    iget-boolean v6, v10, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v11, v0, v6}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iput-boolean v6, v3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 33
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 50
    iput-object v12, v1, Lio/ktor/utils/io/ConsumeEachKt$consumeEachBufferRange$1;->L$0:Ljava/lang/Object;

    iput-object v11, v1, Lio/ktor/utils/io/ConsumeEachKt$consumeEachBufferRange$1;->L$1:Ljava/lang/Object;

    iput-object v3, v1, Lio/ktor/utils/io/ConsumeEachKt$consumeEachBufferRange$1;->L$2:Ljava/lang/Object;

    iput-object v10, v1, Lio/ktor/utils/io/ConsumeEachKt$consumeEachBufferRange$1;->L$3:Ljava/lang/Object;

    iput-object v9, v1, Lio/ktor/utils/io/ConsumeEachKt$consumeEachBufferRange$1;->L$4:Ljava/lang/Object;

    iput-object v13, v1, Lio/ktor/utils/io/ConsumeEachKt$consumeEachBufferRange$1;->L$5:Ljava/lang/Object;

    iput v0, v1, Lio/ktor/utils/io/ConsumeEachKt$consumeEachBufferRange$1;->I$0:I

    iput v5, v1, Lio/ktor/utils/io/ConsumeEachKt$consumeEachBufferRange$1;->label:I

    invoke-static {v9, v13, v0, v1}, Lio/ktor/utils/io/ReadSessionKt;->completeReadingFromBuffer(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/core/Buffer;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v0, v2, :cond_9

    goto :goto_8

    :cond_9
    move-object v9, v1

    move-object v1, v11

    move-object v0, v12

    .line 36
    :goto_5
    iget-boolean v6, v10, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v6, :cond_a

    invoke-interface {v0}, Lio/ktor/utils/io/ByteReadChannel;->isClosedForRead()Z

    move-result v6

    if-eqz v6, :cond_a

    goto :goto_6

    .line 39
    :cond_a
    iget-boolean v6, v3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez v6, :cond_b

    .line 40
    :goto_6
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :cond_b
    const/4 v6, 0x0

    const/4 v7, 0x1

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    move-object v3, v13

    .line 53
    :goto_7
    iput-object v1, v0, Lio/ktor/utils/io/ConsumeEachKt$consumeEachBufferRange$1;->L$0:Ljava/lang/Object;

    iput-object v8, v0, Lio/ktor/utils/io/ConsumeEachKt$consumeEachBufferRange$1;->L$1:Ljava/lang/Object;

    iput-object v8, v0, Lio/ktor/utils/io/ConsumeEachKt$consumeEachBufferRange$1;->L$2:Ljava/lang/Object;

    iput-object v8, v0, Lio/ktor/utils/io/ConsumeEachKt$consumeEachBufferRange$1;->L$3:Ljava/lang/Object;

    iput-object v8, v0, Lio/ktor/utils/io/ConsumeEachKt$consumeEachBufferRange$1;->L$4:Ljava/lang/Object;

    iput-object v8, v0, Lio/ktor/utils/io/ConsumeEachKt$consumeEachBufferRange$1;->L$5:Ljava/lang/Object;

    iput v4, v0, Lio/ktor/utils/io/ConsumeEachKt$consumeEachBufferRange$1;->label:I

    const/4 v4, 0x0

    invoke-static {v9, v3, v4, v0}, Lio/ktor/utils/io/ReadSessionKt;->completeReadingFromBuffer(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/core/Buffer;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_c

    :goto_8
    return-object v2

    .line 54
    :cond_c
    :goto_9
    throw v1
.end method

.method private static final consumeEachBufferRange$$forInline(Lio/ktor/utils/io/ByteReadChannel;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteReadChannel;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/nio/ByteBuffer;",
            "-",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 19
    new-instance v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 20
    new-instance v1, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    :cond_0
    const/4 v2, 0x0

    .line 23
    iput-boolean v2, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    const/4 v3, 0x1

    .line 46
    invoke-static {p0, v3, p2}, Lio/ktor/utils/io/ReadSessionKt;->requestBuffer(Lio/ktor/utils/io/ByteReadChannel;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/ktor/utils/io/core/Buffer;

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    sget-object v4, Lio/ktor/utils/io/core/Buffer;->Companion:Lio/ktor/utils/io/core/Buffer$Companion;

    invoke-virtual {v4}, Lio/ktor/utils/io/core/Buffer$Companion;->getEmpty()Lio/ktor/utils/io/core/Buffer;

    move-result-object v4

    .line 49
    :goto_0
    :try_start_0
    invoke-virtual {v4}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-static {v5}, Lio/ktor/utils/io/bits/Memory;->box-impl(Ljava/nio/ByteBuffer;)Lio/ktor/utils/io/bits/Memory;

    move-result-object v5

    invoke-virtual {v4}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v6

    int-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v7

    int-to-long v7, v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->longValue()J

    move-result-wide v9

    move-object v6, v5

    check-cast v6, Lio/ktor/utils/io/bits/Memory;

    invoke-virtual {v5}, Lio/ktor/utils/io/bits/Memory;->unbox-impl()Ljava/nio/ByteBuffer;

    move-result-object v5

    cmp-long v6, v7, v9

    if-lez v6, :cond_2

    sub-long/2addr v7, v9

    .line 26
    invoke-static {v5, v9, v10, v7, v8}, Lio/ktor/utils/io/bits/Memory;->slice-87lwejk(Ljava/nio/ByteBuffer;JJ)Ljava/nio/ByteBuffer;

    move-result-object v5

    goto :goto_1

    .line 27
    :cond_2
    sget-object v5, Lio/ktor/utils/io/bits/Memory;->Companion:Lio/ktor/utils/io/bits/Memory$Companion;

    invoke-virtual {v5}, Lio/ktor/utils/io/bits/Memory$Companion;->getEmpty-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 30
    :goto_1
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    invoke-interface {p0}, Lio/ktor/utils/io/ByteReadChannel;->getAvailableForRead()I

    move-result v7

    if-ne v6, v7, :cond_3

    invoke-interface {p0}, Lio/ktor/utils/io/ByteReadChannel;->isClosedForWrite()Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_2

    :cond_3
    move v3, v2

    :goto_2
    iput-boolean v3, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 31
    iget-boolean v3, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {p1, v5, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 33
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 49
    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 50
    invoke-static {p0, v4, v3, p2}, Lio/ktor/utils/io/ReadSessionKt;->completeReadingFromBuffer(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/core/Buffer;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 51
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    iget-boolean v2, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v2, :cond_4

    invoke-interface {p0}, Lio/ktor/utils/io/ByteReadChannel;->isClosedForRead()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_3

    .line 39
    :cond_4
    iget-boolean v2, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez v2, :cond_0

    .line 40
    :goto_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :catchall_0
    move-exception p1

    .line 53
    invoke-static {p0, v4, v2, p2}, Lio/ktor/utils/io/ReadSessionKt;->completeReadingFromBuffer(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/core/Buffer;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 54
    throw p1
.end method
