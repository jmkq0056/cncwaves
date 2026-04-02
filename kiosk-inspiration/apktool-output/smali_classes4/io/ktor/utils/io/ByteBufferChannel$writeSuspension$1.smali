.class final Lio/ktor/utils/io/ByteBufferChannel$writeSuspension$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ByteBufferChannel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/utils/io/ByteBufferChannel;-><init>(ZLio/ktor/utils/io/pool/ObjectPool;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nByteBufferChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ByteBufferChannel.kt\nio/ktor/utils/io/ByteBufferChannel$writeSuspension$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 ByteBufferChannel.kt\nio/ktor/utils/io/ByteBufferChannel\n*L\n1#1,2411:1\n1#2:2412\n1#2:2416\n2341#3,3:2413\n2345#3,6:2417\n*S KotlinDebug\n*F\n+ 1 ByteBufferChannel.kt\nio/ktor/utils/io/ByteBufferChannel$writeSuspension$1\n*L\n2280#1:2416\n2280#1:2413,3\n2280#1:2417,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "ucont",
        "Lkotlin/coroutines/Continuation;",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lio/ktor/utils/io/ByteBufferChannel;


# direct methods
.method constructor <init>(Lio/ktor/utils/io/ByteBufferChannel;)V
    .locals 0

    iput-object p1, p0, Lio/ktor/utils/io/ByteBufferChannel$writeSuspension$1;->this$0:Lio/ktor/utils/io/ByteBufferChannel;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2271
    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Lio/ktor/utils/io/ByteBufferChannel$writeSuspension$1;->invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
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

    const-string v0, "ucont"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2272
    iget-object v0, p0, Lio/ktor/utils/io/ByteBufferChannel$writeSuspension$1;->this$0:Lio/ktor/utils/io/ByteBufferChannel;

    invoke-static {v0}, Lio/ktor/utils/io/ByteBufferChannel;->access$getWriteSuspensionSize$p(Lio/ktor/utils/io/ByteBufferChannel;)I

    move-result v0

    .line 2275
    :cond_0
    :goto_0
    iget-object v1, p0, Lio/ktor/utils/io/ByteBufferChannel$writeSuspension$1;->this$0:Lio/ktor/utils/io/ByteBufferChannel;

    invoke-static {v1}, Lio/ktor/utils/io/ByteBufferChannel;->access$getClosed(Lio/ktor/utils/io/ByteBufferChannel;)Lio/ktor/utils/io/internal/ClosedElement;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lio/ktor/utils/io/internal/ClosedElement;->getSendException()Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v1}, Lio/ktor/utils/io/ByteBufferChannelKt;->access$rethrowClosed(Ljava/lang/Throwable;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1

    .line 2276
    :cond_2
    :goto_1
    iget-object v1, p0, Lio/ktor/utils/io/ByteBufferChannel$writeSuspension$1;->this$0:Lio/ktor/utils/io/ByteBufferChannel;

    invoke-static {v1, v0}, Lio/ktor/utils/io/ByteBufferChannel;->access$writeSuspendPredicate(Lio/ktor/utils/io/ByteBufferChannel;I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2277
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    goto :goto_2

    .line 2280
    :cond_3
    iget-object v1, p0, Lio/ktor/utils/io/ByteBufferChannel$writeSuspension$1;->this$0:Lio/ktor/utils/io/ByteBufferChannel;

    invoke-static {p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v2

    iget-object v3, p0, Lio/ktor/utils/io/ByteBufferChannel$writeSuspension$1;->this$0:Lio/ktor/utils/io/ByteBufferChannel;

    :cond_4
    invoke-static {v1}, Lio/ktor/utils/io/ByteBufferChannel;->access$getWriteOp(Lio/ktor/utils/io/ByteBufferChannel;)Lkotlin/coroutines/Continuation;

    move-result-object v4

    if-nez v4, :cond_8

    invoke-static {v3, v0}, Lio/ktor/utils/io/ByteBufferChannel;->access$writeSuspendPredicate(Lio/ktor/utils/io/ByteBufferChannel;I)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_0

    .line 2421
    :cond_5
    sget-object v4, Lio/ktor/utils/io/ByteBufferChannel;->_writeOp$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v5, 0x0

    invoke-static {v4, v1, v5, v2}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2280
    invoke-static {v3, v0}, Lio/ktor/utils/io/ByteBufferChannel;->access$writeSuspendPredicate(Lio/ktor/utils/io/ByteBufferChannel;I)Z

    move-result v3

    if-nez v3, :cond_6

    .line 2422
    sget-object v3, Lio/ktor/utils/io/ByteBufferChannel;->_writeOp$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v3, v1, v2, v5}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2282
    :cond_6
    :goto_2
    iget-object p1, p0, Lio/ktor/utils/io/ByteBufferChannel$writeSuspension$1;->this$0:Lio/ktor/utils/io/ByteBufferChannel;

    invoke-static {p1, v0}, Lio/ktor/utils/io/ByteBufferChannel;->access$flushImpl(Lio/ktor/utils/io/ByteBufferChannel;I)V

    .line 2284
    iget-object p1, p0, Lio/ktor/utils/io/ByteBufferChannel$writeSuspension$1;->this$0:Lio/ktor/utils/io/ByteBufferChannel;

    invoke-static {p1}, Lio/ktor/utils/io/ByteBufferChannel;->access$shouldResumeReadOp(Lio/ktor/utils/io/ByteBufferChannel;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 2285
    iget-object p1, p0, Lio/ktor/utils/io/ByteBufferChannel$writeSuspension$1;->this$0:Lio/ktor/utils/io/ByteBufferChannel;

    invoke-static {p1}, Lio/ktor/utils/io/ByteBufferChannel;->access$resumeReadOp(Lio/ktor/utils/io/ByteBufferChannel;)V

    .line 2288
    :cond_7
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 2415
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Operation is already in progress"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
