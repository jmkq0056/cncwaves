.class public final Lio/ktor/websocket/WebSocketReader;
.super Ljava/lang/Object;
.source "WebSocketReader.kt"

# interfaces
.implements Lkotlinx/coroutines/CoroutineScope;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/websocket/WebSocketReader$State;,
        Lio/ktor/websocket/WebSocketReader$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001:\u0001*B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u000e\u0008\u0002\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t\u00a2\u0006\u0002\u0010\u000bJ\u0011\u0010#\u001a\u00020$H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010%J\u0019\u0010&\u001a\u00020$2\u0006\u0010\'\u001a\u00020\nH\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010(J\u0019\u0010)\u001a\u00020$2\u0006\u0010\'\u001a\u00020\nH\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010(R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u00138F\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0016R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u0014\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u001cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001d\u001a\u00020\u001eX\u0082\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u001f\u0010 R\u000e\u0010!\u001a\u00020\"X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006+"
    }
    d2 = {
        "Lio/ktor/websocket/WebSocketReader;",
        "Lkotlinx/coroutines/CoroutineScope;",
        "byteChannel",
        "Lio/ktor/utils/io/ByteReadChannel;",
        "coroutineContext",
        "Lkotlin/coroutines/CoroutineContext;",
        "maxFrameSize",
        "",
        "pool",
        "Lio/ktor/utils/io/pool/ObjectPool;",
        "Ljava/nio/ByteBuffer;",
        "(Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/CoroutineContext;JLio/ktor/utils/io/pool/ObjectPool;)V",
        "collector",
        "Lio/ktor/websocket/SimpleFrameCollector;",
        "getCoroutineContext",
        "()Lkotlin/coroutines/CoroutineContext;",
        "frameParser",
        "Lio/ktor/websocket/FrameParser;",
        "incoming",
        "Lkotlinx/coroutines/channels/ReceiveChannel;",
        "Lio/ktor/websocket/Frame;",
        "getIncoming",
        "()Lkotlinx/coroutines/channels/ReceiveChannel;",
        "getMaxFrameSize",
        "()J",
        "setMaxFrameSize",
        "(J)V",
        "queue",
        "Lkotlinx/coroutines/channels/Channel;",
        "readerJob",
        "Lkotlinx/coroutines/Job;",
        "getReaderJob$annotations",
        "()V",
        "state",
        "Lio/ktor/websocket/WebSocketReader$State;",
        "handleFrameIfProduced",
        "",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "parseLoop",
        "buffer",
        "(Ljava/nio/ByteBuffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "readLoop",
        "State",
        "ktor-websockets"
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
.field private final byteChannel:Lio/ktor/utils/io/ByteReadChannel;

.field private final collector:Lio/ktor/websocket/SimpleFrameCollector;

.field private final coroutineContext:Lkotlin/coroutines/CoroutineContext;

.field private final frameParser:Lio/ktor/websocket/FrameParser;

.field private maxFrameSize:J

.field private final queue:Lkotlinx/coroutines/channels/Channel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/Channel<",
            "Lio/ktor/websocket/Frame;",
            ">;"
        }
    .end annotation
.end field

.field private final readerJob:Lkotlinx/coroutines/Job;

.field private state:Lio/ktor/websocket/WebSocketReader$State;


# direct methods
.method public constructor <init>(Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/CoroutineContext;JLio/ktor/utils/io/pool/ObjectPool;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteReadChannel;",
            "Lkotlin/coroutines/CoroutineContext;",
            "J",
            "Lio/ktor/utils/io/pool/ObjectPool<",
            "Ljava/nio/ByteBuffer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "byteChannel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coroutineContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pool"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lio/ktor/websocket/WebSocketReader;->byteChannel:Lio/ktor/utils/io/ByteReadChannel;

    .line 26
    iput-object p2, p0, Lio/ktor/websocket/WebSocketReader;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 27
    iput-wide p3, p0, Lio/ktor/websocket/WebSocketReader;->maxFrameSize:J

    .line 30
    sget-object p1, Lio/ktor/websocket/WebSocketReader$State;->HEADER:Lio/ktor/websocket/WebSocketReader$State;

    iput-object p1, p0, Lio/ktor/websocket/WebSocketReader;->state:Lio/ktor/websocket/WebSocketReader$State;

    .line 31
    new-instance p1, Lio/ktor/websocket/FrameParser;

    invoke-direct {p1}, Lio/ktor/websocket/FrameParser;-><init>()V

    iput-object p1, p0, Lio/ktor/websocket/WebSocketReader;->frameParser:Lio/ktor/websocket/FrameParser;

    .line 32
    new-instance p1, Lio/ktor/websocket/SimpleFrameCollector;

    invoke-direct {p1}, Lio/ktor/websocket/SimpleFrameCollector;-><init>()V

    iput-object p1, p0, Lio/ktor/websocket/WebSocketReader;->collector:Lio/ktor/websocket/SimpleFrameCollector;

    const/4 p1, 0x6

    const/16 p2, 0x8

    const/4 p3, 0x0

    .line 34
    invoke-static {p2, p3, p3, p1, p3}, Lkotlinx/coroutines/channels/ChannelKt;->Channel$default(ILkotlinx/coroutines/channels/BufferOverflow;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/channels/Channel;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/websocket/WebSocketReader;->queue:Lkotlinx/coroutines/channels/Channel;

    .line 37
    move-object p1, p0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    new-instance p2, Lkotlinx/coroutines/CoroutineName;

    const-string p4, "ws-reader"

    invoke-direct {p2, p4}, Lkotlinx/coroutines/CoroutineName;-><init>(Ljava/lang/String;)V

    check-cast p2, Lkotlin/coroutines/CoroutineContext;

    sget-object p4, Lkotlinx/coroutines/CoroutineStart;->ATOMIC:Lkotlinx/coroutines/CoroutineStart;

    new-instance v0, Lio/ktor/websocket/WebSocketReader$readerJob$1;

    invoke-direct {v0, p5, p0, p3}, Lio/ktor/websocket/WebSocketReader$readerJob$1;-><init>(Lio/ktor/utils/io/pool/ObjectPool;Lio/ktor/websocket/WebSocketReader;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {p1, p2, p4, v0}, Lkotlinx/coroutines/BuildersKt;->launch(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/websocket/WebSocketReader;->readerJob:Lkotlinx/coroutines/Job;

    return-void
.end method

.method public synthetic constructor <init>(Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/CoroutineContext;JLio/ktor/utils/io/pool/ObjectPool;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_0

    .line 28
    invoke-static {}, Lio/ktor/util/cio/ByteBufferPoolKt;->getKtorDefaultPool()Lio/ktor/utils/io/pool/ObjectPool;

    move-result-object p5

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    .line 24
    invoke-direct/range {v0 .. v5}, Lio/ktor/websocket/WebSocketReader;-><init>(Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/CoroutineContext;JLio/ktor/utils/io/pool/ObjectPool;)V

    return-void
.end method

.method public static final synthetic access$getQueue$p(Lio/ktor/websocket/WebSocketReader;)Lkotlinx/coroutines/channels/Channel;
    .locals 0

    .line 24
    iget-object p0, p0, Lio/ktor/websocket/WebSocketReader;->queue:Lkotlinx/coroutines/channels/Channel;

    return-object p0
.end method

.method public static final synthetic access$handleFrameIfProduced(Lio/ktor/websocket/WebSocketReader;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lio/ktor/websocket/WebSocketReader;->handleFrameIfProduced(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$parseLoop(Lio/ktor/websocket/WebSocketReader;Ljava/nio/ByteBuffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lio/ktor/websocket/WebSocketReader;->parseLoop(Ljava/nio/ByteBuffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$readLoop(Lio/ktor/websocket/WebSocketReader;Ljava/nio/ByteBuffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lio/ktor/websocket/WebSocketReader;->readLoop(Ljava/nio/ByteBuffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic getReaderJob$annotations()V
    .locals 0

    return-void
.end method

.method private final handleFrameIfProduced(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11
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

    instance-of v0, p1, Lio/ktor/websocket/WebSocketReader$handleFrameIfProduced$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lio/ktor/websocket/WebSocketReader$handleFrameIfProduced$1;

    iget v1, v0, Lio/ktor/websocket/WebSocketReader$handleFrameIfProduced$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lio/ktor/websocket/WebSocketReader$handleFrameIfProduced$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lio/ktor/websocket/WebSocketReader$handleFrameIfProduced$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/websocket/WebSocketReader$handleFrameIfProduced$1;

    invoke-direct {v0, p0, p1}, Lio/ktor/websocket/WebSocketReader$handleFrameIfProduced$1;-><init>(Lio/ktor/websocket/WebSocketReader;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lio/ktor/websocket/WebSocketReader$handleFrameIfProduced$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 107
    iget v2, v0, Lio/ktor/websocket/WebSocketReader$handleFrameIfProduced$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Lio/ktor/websocket/WebSocketReader$handleFrameIfProduced$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lio/ktor/websocket/WebSocketReader;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 108
    iget-object p1, p0, Lio/ktor/websocket/WebSocketReader;->collector:Lio/ktor/websocket/SimpleFrameCollector;

    invoke-virtual {p1}, Lio/ktor/websocket/SimpleFrameCollector;->getHasRemaining()Z

    move-result p1

    if-nez p1, :cond_5

    .line 109
    iget-object p1, p0, Lio/ktor/websocket/WebSocketReader;->frameParser:Lio/ktor/websocket/FrameParser;

    invoke-virtual {p1}, Lio/ktor/websocket/FrameParser;->getFrameType()Lio/ktor/websocket/FrameType;

    move-result-object p1

    sget-object v2, Lio/ktor/websocket/FrameType;->CLOSE:Lio/ktor/websocket/FrameType;

    if-ne p1, v2, :cond_3

    sget-object p1, Lio/ktor/websocket/WebSocketReader$State;->CLOSED:Lio/ktor/websocket/WebSocketReader$State;

    goto :goto_1

    :cond_3
    sget-object p1, Lio/ktor/websocket/WebSocketReader$State;->HEADER:Lio/ktor/websocket/WebSocketReader$State;

    :goto_1
    iput-object p1, p0, Lio/ktor/websocket/WebSocketReader;->state:Lio/ktor/websocket/WebSocketReader$State;

    .line 111
    iget-object p1, p0, Lio/ktor/websocket/WebSocketReader;->frameParser:Lio/ktor/websocket/FrameParser;

    .line 112
    sget-object v4, Lio/ktor/websocket/Frame;->Companion:Lio/ktor/websocket/Frame$Companion;

    invoke-virtual {p1}, Lio/ktor/websocket/FrameParser;->getFin()Z

    move-result v5

    invoke-virtual {p1}, Lio/ktor/websocket/FrameParser;->getFrameType()Lio/ktor/websocket/FrameType;

    move-result-object v6

    iget-object v2, p0, Lio/ktor/websocket/WebSocketReader;->collector:Lio/ktor/websocket/SimpleFrameCollector;

    invoke-virtual {p1}, Lio/ktor/websocket/FrameParser;->getMaskKey()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v7}, Lio/ktor/websocket/SimpleFrameCollector;->take(Ljava/lang/Integer;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {v2}, Lio/ktor/util/NIOKt;->moveToByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v7

    invoke-virtual {p1}, Lio/ktor/websocket/FrameParser;->getRsv1()Z

    move-result v8

    invoke-virtual {p1}, Lio/ktor/websocket/FrameParser;->getRsv2()Z

    move-result v9

    invoke-virtual {p1}, Lio/ktor/websocket/FrameParser;->getRsv3()Z

    move-result v10

    invoke-virtual/range {v4 .. v10}, Lio/ktor/websocket/Frame$Companion;->byType(ZLio/ktor/websocket/FrameType;[BZZZ)Lio/ktor/websocket/Frame;

    move-result-object p1

    .line 115
    iget-object v2, p0, Lio/ktor/websocket/WebSocketReader;->queue:Lkotlinx/coroutines/channels/Channel;

    iput-object p0, v0, Lio/ktor/websocket/WebSocketReader$handleFrameIfProduced$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lio/ktor/websocket/WebSocketReader$handleFrameIfProduced$1;->label:I

    invoke-interface {v2, p1, v0}, Lkotlinx/coroutines/channels/Channel;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    move-object v0, p0

    .line 116
    :goto_2
    iget-object p1, v0, Lio/ktor/websocket/WebSocketReader;->frameParser:Lio/ktor/websocket/FrameParser;

    invoke-virtual {p1}, Lio/ktor/websocket/FrameParser;->bodyComplete()V

    .line 118
    :cond_5
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private final parseLoop(Ljava/nio/ByteBuffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lio/ktor/websocket/WebSocketReader$parseLoop$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lio/ktor/websocket/WebSocketReader$parseLoop$1;

    iget v1, v0, Lio/ktor/websocket/WebSocketReader$parseLoop$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lio/ktor/websocket/WebSocketReader$parseLoop$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lio/ktor/websocket/WebSocketReader$parseLoop$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/websocket/WebSocketReader$parseLoop$1;

    invoke-direct {v0, p0, p2}, Lio/ktor/websocket/WebSocketReader$parseLoop$1;-><init>(Lio/ktor/websocket/WebSocketReader;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lio/ktor/websocket/WebSocketReader$parseLoop$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 79
    iget v2, v0, Lio/ktor/websocket/WebSocketReader$parseLoop$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_2

    :cond_1
    iget-object p1, v0, Lio/ktor/websocket/WebSocketReader$parseLoop$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/nio/ByteBuffer;

    iget-object v2, v0, Lio/ktor/websocket/WebSocketReader$parseLoop$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lio/ktor/websocket/WebSocketReader;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 80
    :cond_4
    :goto_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result p2

    if-eqz p2, :cond_a

    .line 81
    iget-object p2, v2, Lio/ktor/websocket/WebSocketReader;->state:Lio/ktor/websocket/WebSocketReader$State;

    sget-object v5, Lio/ktor/websocket/WebSocketReader$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Lio/ktor/websocket/WebSocketReader$State;->ordinal()I

    move-result p2

    aget p2, v5, p2

    if-eq p2, v4, :cond_7

    if-eq p2, v3, :cond_6

    const/4 v5, 0x3

    if-eq p2, v5, :cond_5

    goto :goto_1

    .line 102
    :cond_5
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 98
    :cond_6
    iget-object p2, v2, Lio/ktor/websocket/WebSocketReader;->collector:Lio/ktor/websocket/SimpleFrameCollector;

    invoke-virtual {p2, p1}, Lio/ktor/websocket/SimpleFrameCollector;->handle(Ljava/nio/ByteBuffer;)V

    .line 100
    iput-object v2, v0, Lio/ktor/websocket/WebSocketReader$parseLoop$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lio/ktor/websocket/WebSocketReader$parseLoop$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lio/ktor/websocket/WebSocketReader$parseLoop$1;->label:I

    invoke-direct {v2, v0}, Lio/ktor/websocket/WebSocketReader;->handleFrameIfProduced(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    goto :goto_2

    .line 83
    :cond_7
    iget-object p2, v2, Lio/ktor/websocket/WebSocketReader;->frameParser:Lio/ktor/websocket/FrameParser;

    invoke-virtual {p2, p1}, Lio/ktor/websocket/FrameParser;->frame(Ljava/nio/ByteBuffer;)V

    .line 85
    iget-object p2, v2, Lio/ktor/websocket/WebSocketReader;->frameParser:Lio/ktor/websocket/FrameParser;

    invoke-virtual {p2}, Lio/ktor/websocket/FrameParser;->getBodyReady()Z

    move-result p2

    if-eqz p2, :cond_9

    .line 86
    sget-object p2, Lio/ktor/websocket/WebSocketReader$State;->BODY:Lio/ktor/websocket/WebSocketReader$State;

    iput-object p2, v2, Lio/ktor/websocket/WebSocketReader;->state:Lio/ktor/websocket/WebSocketReader$State;

    .line 87
    iget-object p2, v2, Lio/ktor/websocket/WebSocketReader;->frameParser:Lio/ktor/websocket/FrameParser;

    invoke-virtual {p2}, Lio/ktor/websocket/FrameParser;->getLength()J

    move-result-wide v5

    const-wide/32 v7, 0x7fffffff

    cmp-long p2, v5, v7

    if-gtz p2, :cond_8

    iget-object p2, v2, Lio/ktor/websocket/WebSocketReader;->frameParser:Lio/ktor/websocket/FrameParser;

    invoke-virtual {p2}, Lio/ktor/websocket/FrameParser;->getLength()J

    move-result-wide v5

    iget-wide v7, v2, Lio/ktor/websocket/WebSocketReader;->maxFrameSize:J

    cmp-long p2, v5, v7

    if-gtz p2, :cond_8

    .line 91
    iget-object p2, v2, Lio/ktor/websocket/WebSocketReader;->collector:Lio/ktor/websocket/SimpleFrameCollector;

    iget-object v5, v2, Lio/ktor/websocket/WebSocketReader;->frameParser:Lio/ktor/websocket/FrameParser;

    invoke-virtual {v5}, Lio/ktor/websocket/FrameParser;->getLength()J

    move-result-wide v5

    long-to-int v5, v5

    invoke-virtual {p2, v5, p1}, Lio/ktor/websocket/SimpleFrameCollector;->start(ILjava/nio/ByteBuffer;)V

    .line 92
    iput-object v2, v0, Lio/ktor/websocket/WebSocketReader$parseLoop$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lio/ktor/websocket/WebSocketReader$parseLoop$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Lio/ktor/websocket/WebSocketReader$parseLoop$1;->label:I

    invoke-direct {v2, v0}, Lio/ktor/websocket/WebSocketReader;->handleFrameIfProduced(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    :goto_2
    return-object v1

    .line 88
    :cond_8
    new-instance p1, Lio/ktor/websocket/FrameTooBigException;

    iget-object p2, v2, Lio/ktor/websocket/WebSocketReader;->frameParser:Lio/ktor/websocket/FrameParser;

    invoke-virtual {p2}, Lio/ktor/websocket/FrameParser;->getLength()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Lio/ktor/websocket/FrameTooBigException;-><init>(J)V

    throw p1

    .line 94
    :cond_9
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 105
    :cond_a
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private final readLoop(Ljava/nio/ByteBuffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lio/ktor/websocket/WebSocketReader$readLoop$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lio/ktor/websocket/WebSocketReader$readLoop$1;

    iget v1, v0, Lio/ktor/websocket/WebSocketReader$readLoop$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lio/ktor/websocket/WebSocketReader$readLoop$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lio/ktor/websocket/WebSocketReader$readLoop$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/websocket/WebSocketReader$readLoop$1;

    invoke-direct {v0, p0, p2}, Lio/ktor/websocket/WebSocketReader$readLoop$1;-><init>(Lio/ktor/websocket/WebSocketReader;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lio/ktor/websocket/WebSocketReader$readLoop$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 64
    iget v2, v0, Lio/ktor/websocket/WebSocketReader$readLoop$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v4, :cond_3

    if-ne v2, v3, :cond_2

    iget-object p1, v0, Lio/ktor/websocket/WebSocketReader$readLoop$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/nio/ByteBuffer;

    iget-object v2, v0, Lio/ktor/websocket/WebSocketReader$readLoop$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lio/ktor/websocket/WebSocketReader;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :cond_1
    move-object p2, v2

    goto :goto_4

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    iget-object p1, v0, Lio/ktor/websocket/WebSocketReader$readLoop$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/nio/ByteBuffer;

    iget-object v2, v0, Lio/ktor/websocket/WebSocketReader$readLoop$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lio/ktor/websocket/WebSocketReader;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 65
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-object p2, p0

    .line 67
    :goto_1
    iget-object v2, p2, Lio/ktor/websocket/WebSocketReader;->state:Lio/ktor/websocket/WebSocketReader$State;

    sget-object v5, Lio/ktor/websocket/WebSocketReader$State;->CLOSED:Lio/ktor/websocket/WebSocketReader$State;

    if-eq v2, v5, :cond_7

    .line 68
    iget-object v2, p2, Lio/ktor/websocket/WebSocketReader;->byteChannel:Lio/ktor/utils/io/ByteReadChannel;

    iput-object p2, v0, Lio/ktor/websocket/WebSocketReader$readLoop$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lio/ktor/websocket/WebSocketReader$readLoop$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Lio/ktor/websocket/WebSocketReader$readLoop$1;->label:I

    invoke-interface {v2, p1, v0}, Lio/ktor/utils/io/ByteReadChannel;->readAvailable(Ljava/nio/ByteBuffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_5

    goto :goto_3

    :cond_5
    move-object v6, v2

    move-object v2, p2

    move-object p2, v6

    :goto_2
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    const/4 v5, -0x1

    if-ne p2, v5, :cond_6

    .line 69
    sget-object p1, Lio/ktor/websocket/WebSocketReader$State;->CLOSED:Lio/ktor/websocket/WebSocketReader$State;

    iput-object p1, v2, Lio/ktor/websocket/WebSocketReader;->state:Lio/ktor/websocket/WebSocketReader$State;

    goto :goto_5

    .line 73
    :cond_6
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 74
    iput-object v2, v0, Lio/ktor/websocket/WebSocketReader$readLoop$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lio/ktor/websocket/WebSocketReader$readLoop$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lio/ktor/websocket/WebSocketReader$readLoop$1;->label:I

    invoke-direct {v2, p1, v0}, Lio/ktor/websocket/WebSocketReader;->parseLoop(Ljava/nio/ByteBuffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_1

    :goto_3
    return-object v1

    .line 75
    :goto_4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 77
    :cond_7
    :goto_5
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method


# virtual methods
.method public getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .locals 1

    .line 26
    iget-object v0, p0, Lio/ktor/websocket/WebSocketReader;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    return-object v0
.end method

.method public final getIncoming()Lkotlinx/coroutines/channels/ReceiveChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "Lio/ktor/websocket/Frame;",
            ">;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lio/ktor/websocket/WebSocketReader;->queue:Lkotlinx/coroutines/channels/Channel;

    check-cast v0, Lkotlinx/coroutines/channels/ReceiveChannel;

    return-object v0
.end method

.method public final getMaxFrameSize()J
    .locals 2

    .line 27
    iget-wide v0, p0, Lio/ktor/websocket/WebSocketReader;->maxFrameSize:J

    return-wide v0
.end method

.method public final setMaxFrameSize(J)V
    .locals 0

    .line 27
    iput-wide p1, p0, Lio/ktor/websocket/WebSocketReader;->maxFrameSize:J

    return-void
.end method
