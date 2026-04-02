.class public final Lio/ktor/utils/io/jvm/javaio/OutputAdapter$loop$1;
.super Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;
.source "Blocking.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/utils/io/jvm/javaio/OutputAdapter;-><init>(Lkotlinx/coroutines/Job;Lio/ktor/utils/io/ByteWriteChannel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBlocking.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Blocking.kt\nio/ktor/utils/io/jvm/javaio/OutputAdapter$loop$1\n+ 2 Blocking.kt\nio/ktor/utils/io/jvm/javaio/BlockingAdapter\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,316:1\n275#2,4:317\n1#3:321\n*S KotlinDebug\n*F\n+ 1 Blocking.kt\nio/ktor/utils/io/jvm/javaio/OutputAdapter$loop$1\n*L\n88#1:317,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0011\u0010\u0002\u001a\u00020\u0003H\u0094@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0004\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0005"
    }
    d2 = {
        "io/ktor/utils/io/jvm/javaio/OutputAdapter$loop$1",
        "Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;",
        "loop",
        "",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "ktor-io"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lio/ktor/utils/io/jvm/javaio/OutputAdapter;


# direct methods
.method constructor <init>(Lkotlinx/coroutines/Job;Lio/ktor/utils/io/jvm/javaio/OutputAdapter;)V
    .locals 0

    iput-object p2, p0, Lio/ktor/utils/io/jvm/javaio/OutputAdapter$loop$1;->this$0:Lio/ktor/utils/io/jvm/javaio/OutputAdapter;

    .line 84
    invoke-direct {p0, p1}, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;-><init>(Lkotlinx/coroutines/Job;)V

    return-void
.end method


# virtual methods
.method protected loop(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lio/ktor/utils/io/jvm/javaio/OutputAdapter$loop$1$loop$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lio/ktor/utils/io/jvm/javaio/OutputAdapter$loop$1$loop$1;

    iget v1, v0, Lio/ktor/utils/io/jvm/javaio/OutputAdapter$loop$1$loop$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lio/ktor/utils/io/jvm/javaio/OutputAdapter$loop$1$loop$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lio/ktor/utils/io/jvm/javaio/OutputAdapter$loop$1$loop$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/utils/io/jvm/javaio/OutputAdapter$loop$1$loop$1;

    invoke-direct {v0, p0, p1}, Lio/ktor/utils/io/jvm/javaio/OutputAdapter$loop$1$loop$1;-><init>(Lio/ktor/utils/io/jvm/javaio/OutputAdapter$loop$1;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lio/ktor/utils/io/jvm/javaio/OutputAdapter$loop$1$loop$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 85
    iget v2, v0, Lio/ktor/utils/io/jvm/javaio/OutputAdapter$loop$1$loop$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v2, v0, Lio/ktor/utils/io/jvm/javaio/OutputAdapter$loop$1$loop$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lio/ktor/utils/io/jvm/javaio/OutputAdapter$loop$1;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v2, v0, Lio/ktor/utils/io/jvm/javaio/OutputAdapter$loop$1$loop$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;

    iget-object v2, v0, Lio/ktor/utils/io/jvm/javaio/OutputAdapter$loop$1$loop$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lio/ktor/utils/io/jvm/javaio/OutputAdapter$loop$1;

    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 88
    :cond_4
    :goto_1
    :try_start_2
    move-object p1, v2

    check-cast p1, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;

    const/4 v5, 0x0

    .line 317
    iput v5, p1, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->result:I

    .line 319
    iput-object v2, v0, Lio/ktor/utils/io/jvm/javaio/OutputAdapter$loop$1$loop$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lio/ktor/utils/io/jvm/javaio/OutputAdapter$loop$1$loop$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Lio/ktor/utils/io/jvm/javaio/OutputAdapter$loop$1$loop$1;->label:I

    move-object v5, v0

    check-cast v5, Lkotlin/coroutines/Continuation;

    .line 320
    invoke-static {p1, v5}, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->access$rendezvousBlock(Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    .line 319
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v5

    if-ne p1, v5, :cond_5

    move-object v5, v0

    check-cast v5, Lkotlin/coroutines/Continuation;

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_5
    if-ne p1, v1, :cond_6

    goto :goto_4

    .line 89
    :cond_6
    :goto_2
    invoke-static {}, Lio/ktor/utils/io/jvm/javaio/BlockingKt;->access$getCloseToken$p()Ljava/lang/Object;

    move-result-object v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne p1, v5, :cond_9

    .line 102
    iget-object p1, v2, Lio/ktor/utils/io/jvm/javaio/OutputAdapter$loop$1;->this$0:Lio/ktor/utils/io/jvm/javaio/OutputAdapter;

    invoke-static {p1}, Lio/ktor/utils/io/jvm/javaio/OutputAdapter;->access$getChannel$p(Lio/ktor/utils/io/jvm/javaio/OutputAdapter;)Lio/ktor/utils/io/ByteWriteChannel;

    move-result-object p1

    invoke-static {p1}, Lio/ktor/utils/io/ByteWriteChannelKt;->close(Lio/ktor/utils/io/ByteWriteChannel;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 103
    iget-object p1, v2, Lio/ktor/utils/io/jvm/javaio/OutputAdapter$loop$1;->this$0:Lio/ktor/utils/io/jvm/javaio/OutputAdapter;

    invoke-static {p1}, Lio/ktor/utils/io/jvm/javaio/OutputAdapter;->access$getChannel$p(Lio/ktor/utils/io/jvm/javaio/OutputAdapter;)Lio/ktor/utils/io/ByteWriteChannel;

    move-result-object p1

    invoke-interface {p1}, Lio/ktor/utils/io/ByteWriteChannel;->getClosedCause()Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_7

    goto :goto_3

    :cond_7
    throw p1

    .line 106
    :cond_8
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 91
    :cond_9
    :try_start_3
    invoke-static {}, Lio/ktor/utils/io/jvm/javaio/BlockingKt;->access$getFlushToken$p()Ljava/lang/Object;

    move-result-object v5

    if-ne p1, v5, :cond_b

    .line 92
    iget-object p1, v2, Lio/ktor/utils/io/jvm/javaio/OutputAdapter$loop$1;->this$0:Lio/ktor/utils/io/jvm/javaio/OutputAdapter;

    invoke-static {p1}, Lio/ktor/utils/io/jvm/javaio/OutputAdapter;->access$getChannel$p(Lio/ktor/utils/io/jvm/javaio/OutputAdapter;)Lio/ktor/utils/io/ByteWriteChannel;

    move-result-object p1

    invoke-interface {p1}, Lio/ktor/utils/io/ByteWriteChannel;->flush()V

    .line 93
    iget-object p1, v2, Lio/ktor/utils/io/jvm/javaio/OutputAdapter$loop$1;->this$0:Lio/ktor/utils/io/jvm/javaio/OutputAdapter;

    invoke-static {p1}, Lio/ktor/utils/io/jvm/javaio/OutputAdapter;->access$getChannel$p(Lio/ktor/utils/io/jvm/javaio/OutputAdapter;)Lio/ktor/utils/io/ByteWriteChannel;

    move-result-object p1

    invoke-interface {p1}, Lio/ktor/utils/io/ByteWriteChannel;->getClosedCause()Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_a

    goto :goto_1

    :cond_a
    throw p1

    .line 94
    :cond_b
    instance-of v5, p1, [B

    if-eqz v5, :cond_4

    iget-object v5, v2, Lio/ktor/utils/io/jvm/javaio/OutputAdapter$loop$1;->this$0:Lio/ktor/utils/io/jvm/javaio/OutputAdapter;

    invoke-static {v5}, Lio/ktor/utils/io/jvm/javaio/OutputAdapter;->access$getChannel$p(Lio/ktor/utils/io/jvm/javaio/OutputAdapter;)Lio/ktor/utils/io/ByteWriteChannel;

    move-result-object v5

    check-cast p1, [B

    invoke-virtual {v2}, Lio/ktor/utils/io/jvm/javaio/OutputAdapter$loop$1;->getOffset()I

    move-result v6

    invoke-virtual {v2}, Lio/ktor/utils/io/jvm/javaio/OutputAdapter$loop$1;->getLength()I

    move-result v7

    iput-object v2, v0, Lio/ktor/utils/io/jvm/javaio/OutputAdapter$loop$1$loop$1;->L$0:Ljava/lang/Object;

    const/4 v8, 0x0

    iput-object v8, v0, Lio/ktor/utils/io/jvm/javaio/OutputAdapter$loop$1$loop$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lio/ktor/utils/io/jvm/javaio/OutputAdapter$loop$1$loop$1;->label:I

    invoke-interface {v5, p1, v6, v7, v0}, Lio/ktor/utils/io/ByteWriteChannel;->writeFully([BIILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ne p1, v1, :cond_4

    :goto_4
    return-object v1

    .line 97
    :goto_5
    :try_start_4
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_c

    .line 98
    iget-object v0, v2, Lio/ktor/utils/io/jvm/javaio/OutputAdapter$loop$1;->this$0:Lio/ktor/utils/io/jvm/javaio/OutputAdapter;

    invoke-static {v0}, Lio/ktor/utils/io/jvm/javaio/OutputAdapter;->access$getChannel$p(Lio/ktor/utils/io/jvm/javaio/OutputAdapter;)Lio/ktor/utils/io/ByteWriteChannel;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/ktor/utils/io/ByteWriteChannel;->close(Ljava/lang/Throwable;)Z

    .line 100
    :cond_c
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    .line 102
    iget-object v0, v2, Lio/ktor/utils/io/jvm/javaio/OutputAdapter$loop$1;->this$0:Lio/ktor/utils/io/jvm/javaio/OutputAdapter;

    invoke-static {v0}, Lio/ktor/utils/io/jvm/javaio/OutputAdapter;->access$getChannel$p(Lio/ktor/utils/io/jvm/javaio/OutputAdapter;)Lio/ktor/utils/io/ByteWriteChannel;

    move-result-object v0

    invoke-static {v0}, Lio/ktor/utils/io/ByteWriteChannelKt;->close(Lio/ktor/utils/io/ByteWriteChannel;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 103
    iget-object v0, v2, Lio/ktor/utils/io/jvm/javaio/OutputAdapter$loop$1;->this$0:Lio/ktor/utils/io/jvm/javaio/OutputAdapter;

    invoke-static {v0}, Lio/ktor/utils/io/jvm/javaio/OutputAdapter;->access$getChannel$p(Lio/ktor/utils/io/jvm/javaio/OutputAdapter;)Lio/ktor/utils/io/ByteWriteChannel;

    move-result-object v0

    invoke-interface {v0}, Lio/ktor/utils/io/ByteWriteChannel;->getClosedCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_d

    throw v0

    :cond_d
    throw p1
.end method
