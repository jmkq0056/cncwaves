.class public final Lio/ktor/websocket/DefaultWebSocketSessionImpl;
.super Ljava/lang/Object;
.source "DefaultWebSocketSession.kt"

# interfaces
.implements Lio/ktor/websocket/DefaultWebSocketSession;
.implements Lio/ktor/websocket/WebSocketSession;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/websocket/DefaultWebSocketSessionImpl$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDefaultWebSocketSession.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultWebSocketSession.kt\nio/ktor/websocket/DefaultWebSocketSessionImpl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,344:1\n1789#2,3:345\n1789#2,3:348\n*S KotlinDebug\n*F\n+ 1 DefaultWebSocketSession.kt\nio/ktor/websocket/DefaultWebSocketSessionImpl\n*L\n333#1:345,3\n336#1:348,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u009e\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u001b\n\u0002\u0018\u0002\u0008\u0000\u0018\u0000 e2\u00020g2\u00020\u0001:\u0001eB\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J%\u0010\r\u001a\u00020\u000c2\u0008\u0010\t\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u000b\u001a\u00020\nH\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0013\u0010\u000f\u001a\u00020\u000cH\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u001d\u0010\u0013\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0011H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0013\u0010\u0015\u001a\u00020\u000cH\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0015\u0010\u0010J\u0017\u0010\u0016\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0017\u0010\u0018\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u0017J\u001d\u0010\u001d\u001a\u00020\u001c2\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u0019H\u0002\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u000f\u0010\u001f\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u001f\u0010 J\u000f\u0010!\u001a\u00020\u001cH\u0002\u00a2\u0006\u0004\u0008!\u0010\"J)\u0010\'\u001a\u00020\u000c2\u0008\u0010$\u001a\u0004\u0018\u00010#2\n\u0008\u0002\u0010&\u001a\u0004\u0018\u00010%H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\'\u0010(J!\u0010,\u001a\u00020\u000c2\u0010\u0010+\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030*0)H\u0016\u00a2\u0006\u0004\u0008,\u0010-J\u000f\u0010.\u001a\u00020\u000cH\u0017\u00a2\u0006\u0004\u0008.\u0010 J\u000f\u00100\u001a\u00020/H\u0002\u00a2\u0006\u0004\u00080\u00101R\u001e\u00103\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030*028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00083\u00104R\"\u00106\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010#058\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u00086\u00107\u001a\u0004\u00088\u00109R\u001a\u0010;\u001a\u0008\u0012\u0004\u0012\u00020#0:8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008;\u0010<R\u0014\u0010>\u001a\u00020=8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008>\u0010?R\u001a\u0010A\u001a\u00020@8\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008A\u0010B\u001a\u0004\u0008C\u0010DR\u001e\u0010G\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030*0)8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008E\u0010FR\u001a\u0010I\u001a\u0008\u0012\u0004\u0012\u00020\n0H8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008I\u0010JR\u001a\u0010N\u001a\u0008\u0012\u0004\u0012\u00020\n0K8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008L\u0010MR$\u0010S\u001a\u00020/2\u0006\u0010O\u001a\u00020/8V@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008P\u00101\"\u0004\u0008Q\u0010RR$\u0010X\u001a\u00020\u00032\u0006\u0010O\u001a\u00020\u00038V@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008T\u0010U\"\u0004\u0008V\u0010WR\u001a\u0010[\u001a\u0008\u0012\u0004\u0012\u00020\n0\u00198VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008Y\u0010ZR\u001a\u0010\\\u001a\u0008\u0012\u0004\u0012\u00020\n0H8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\\\u0010JR*\u0010^\u001a\u00020\u00032\u0006\u0010]\u001a\u00020\u00038\u0016@VX\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008^\u0010_\u001a\u0004\u0008`\u0010U\"\u0004\u0008a\u0010WR\u0014\u0010\u0002\u001a\u00020\u00018\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0002\u0010bR*\u0010\u0005\u001a\u00020\u00032\u0006\u0010]\u001a\u00020\u00038\u0016@VX\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0005\u0010_\u001a\u0004\u0008c\u0010U\"\u0004\u0008d\u0010W\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006f"
    }
    d2 = {
        "Lio/ktor/websocket/DefaultWebSocketSessionImpl;",
        "Lio/ktor/websocket/WebSocketSession;",
        "raw",
        "",
        "pingInterval",
        "timeoutMillis",
        "<init>",
        "(Lio/ktor/websocket/WebSocketSession;JJ)V",
        "Lio/ktor/utils/io/core/BytePacketBuilder;",
        "packet",
        "Lio/ktor/websocket/Frame;",
        "frame",
        "",
        "checkMaxFrameSize",
        "(Lio/ktor/utils/io/core/BytePacketBuilder;Lio/ktor/websocket/Frame;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "flush",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "",
        "message",
        "goingAway",
        "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "outgoingProcessorLoop",
        "processIncomingExtensions",
        "(Lio/ktor/websocket/Frame;)Lio/ktor/websocket/Frame;",
        "processOutgoingExtensions",
        "Lkotlinx/coroutines/channels/SendChannel;",
        "Lio/ktor/websocket/Frame$Ping;",
        "ponger",
        "Lkotlinx/coroutines/Job;",
        "runIncomingProcessor",
        "(Lkotlinx/coroutines/channels/SendChannel;)Lkotlinx/coroutines/Job;",
        "runOrCancelPinger",
        "()V",
        "runOutgoingProcessor",
        "()Lkotlinx/coroutines/Job;",
        "Lio/ktor/websocket/CloseReason;",
        "reason",
        "",
        "exception",
        "sendCloseSequence",
        "(Lio/ktor/websocket/CloseReason;Ljava/lang/Throwable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "",
        "Lio/ktor/websocket/WebSocketExtension;",
        "negotiatedExtensions",
        "start",
        "(Ljava/util/List;)V",
        "terminate",
        "",
        "tryClose",
        "()Z",
        "",
        "_extensions",
        "Ljava/util/List;",
        "Lkotlinx/coroutines/Deferred;",
        "closeReason",
        "Lkotlinx/coroutines/Deferred;",
        "getCloseReason",
        "()Lkotlinx/coroutines/Deferred;",
        "Lkotlinx/coroutines/CompletableDeferred;",
        "closeReasonRef",
        "Lkotlinx/coroutines/CompletableDeferred;",
        "Lkotlinx/coroutines/CompletableJob;",
        "context",
        "Lkotlinx/coroutines/CompletableJob;",
        "Lkotlin/coroutines/CoroutineContext;",
        "coroutineContext",
        "Lkotlin/coroutines/CoroutineContext;",
        "getCoroutineContext",
        "()Lkotlin/coroutines/CoroutineContext;",
        "getExtensions",
        "()Ljava/util/List;",
        "extensions",
        "Lkotlinx/coroutines/channels/Channel;",
        "filtered",
        "Lkotlinx/coroutines/channels/Channel;",
        "Lkotlinx/coroutines/channels/ReceiveChannel;",
        "getIncoming",
        "()Lkotlinx/coroutines/channels/ReceiveChannel;",
        "incoming",
        "value",
        "getMasking",
        "setMasking",
        "(Z)V",
        "masking",
        "getMaxFrameSize",
        "()J",
        "setMaxFrameSize",
        "(J)V",
        "maxFrameSize",
        "getOutgoing",
        "()Lkotlinx/coroutines/channels/SendChannel;",
        "outgoing",
        "outgoingToBeProcessed",
        "newValue",
        "pingIntervalMillis",
        "J",
        "getPingIntervalMillis",
        "setPingIntervalMillis",
        "Lio/ktor/websocket/WebSocketSession;",
        "getTimeoutMillis",
        "setTimeoutMillis",
        "Companion",
        "ktor-websockets",
        "Lio/ktor/websocket/DefaultWebSocketSession;"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lio/ktor/websocket/DefaultWebSocketSessionImpl$Companion;

.field private static final EmptyPong:Lio/ktor/websocket/Frame$Pong;

.field private static final synthetic closed$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field static final synthetic pinger$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field private static final synthetic started$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private final _extensions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/ktor/websocket/WebSocketExtension<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final closeReason:Lkotlinx/coroutines/Deferred;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/Deferred<",
            "Lio/ktor/websocket/CloseReason;",
            ">;"
        }
    .end annotation
.end field

.field private final closeReasonRef:Lkotlinx/coroutines/CompletableDeferred;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/CompletableDeferred<",
            "Lio/ktor/websocket/CloseReason;",
            ">;"
        }
    .end annotation
.end field

.field private volatile synthetic closed:I

.field private final context:Lkotlinx/coroutines/CompletableJob;

.field private final coroutineContext:Lkotlin/coroutines/CoroutineContext;

.field private final filtered:Lkotlinx/coroutines/channels/Channel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/Channel<",
            "Lio/ktor/websocket/Frame;",
            ">;"
        }
    .end annotation
.end field

.field private final outgoingToBeProcessed:Lkotlinx/coroutines/channels/Channel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/Channel<",
            "Lio/ktor/websocket/Frame;",
            ">;"
        }
    .end annotation
.end field

.field private pingIntervalMillis:J

.field volatile synthetic pinger:Ljava/lang/Object;

.field private final raw:Lio/ktor/websocket/WebSocketSession;

.field private volatile synthetic started:I

.field private timeoutMillis:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lio/ktor/websocket/DefaultWebSocketSessionImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/ktor/websocket/DefaultWebSocketSessionImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/websocket/DefaultWebSocketSessionImpl;->Companion:Lio/ktor/websocket/DefaultWebSocketSessionImpl$Companion;

    .line 339
    new-instance v0, Lio/ktor/websocket/Frame$Pong;

    const/4 v1, 0x0

    new-array v1, v1, [B

    sget-object v2, Lio/ktor/websocket/NonDisposableHandle;->INSTANCE:Lio/ktor/websocket/NonDisposableHandle;

    check-cast v2, Lkotlinx/coroutines/DisposableHandle;

    invoke-direct {v0, v1, v2}, Lio/ktor/websocket/Frame$Pong;-><init>([BLkotlinx/coroutines/DisposableHandle;)V

    sput-object v0, Lio/ktor/websocket/DefaultWebSocketSessionImpl;->EmptyPong:Lio/ktor/websocket/Frame$Pong;

    const-class v0, Ljava/lang/Object;

    const-string v1, "pinger"

    const-class v2, Lio/ktor/websocket/DefaultWebSocketSessionImpl;

    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lio/ktor/websocket/DefaultWebSocketSessionImpl;->pinger$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "closed"

    invoke-static {v2, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lio/ktor/websocket/DefaultWebSocketSessionImpl;->closed$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const-string v0, "started"

    invoke-static {v2, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lio/ktor/websocket/DefaultWebSocketSessionImpl;->started$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lio/ktor/websocket/WebSocketSession;JJ)V
    .locals 4

    const-string v0, "raw"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lio/ktor/websocket/DefaultWebSocketSessionImpl;->raw:Lio/ktor/websocket/WebSocketSession;

    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lio/ktor/websocket/DefaultWebSocketSessionImpl;->pinger:Ljava/lang/Object;

    const/4 v1, 0x1

    .line 76
    invoke-static {v0, v1, v0}, Lkotlinx/coroutines/CompletableDeferredKt;->CompletableDeferred$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v1

    iput-object v1, p0, Lio/ktor/websocket/DefaultWebSocketSessionImpl;->closeReasonRef:Lkotlinx/coroutines/CompletableDeferred;

    const/16 v2, 0x8

    const/4 v3, 0x6

    .line 77
    invoke-static {v2, v0, v0, v3, v0}, Lkotlinx/coroutines/channels/ChannelKt;->Channel$default(ILkotlinx/coroutines/channels/BufferOverflow;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/channels/Channel;

    move-result-object v2

    iput-object v2, p0, Lio/ktor/websocket/DefaultWebSocketSessionImpl;->filtered:Lkotlinx/coroutines/channels/Channel;

    .line 78
    invoke-static {}, Lio/ktor/websocket/UtilsKt;->getOUTGOING_CHANNEL_CAPACITY()I

    move-result v2

    invoke-static {v2, v0, v0, v3, v0}, Lkotlinx/coroutines/channels/ChannelKt;->Channel$default(ILkotlinx/coroutines/channels/BufferOverflow;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/channels/Channel;

    move-result-object v0

    iput-object v0, p0, Lio/ktor/websocket/DefaultWebSocketSessionImpl;->outgoingToBeProcessed:Lkotlinx/coroutines/channels/Channel;

    const/4 v0, 0x0

    .line 79
    iput v0, p0, Lio/ktor/websocket/DefaultWebSocketSessionImpl;->closed:I

    .line 80
    invoke-interface {p1}, Lio/ktor/websocket/WebSocketSession;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v2

    sget-object v3, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    check-cast v3, Lkotlin/coroutines/CoroutineContext$Key;

    invoke-interface {v2, v3}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v2

    check-cast v2, Lkotlinx/coroutines/Job;

    invoke-static {v2}, Lkotlinx/coroutines/JobKt;->Job(Lkotlinx/coroutines/Job;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v2

    iput-object v2, p0, Lio/ktor/websocket/DefaultWebSocketSessionImpl;->context:Lkotlinx/coroutines/CompletableJob;

    .line 82
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/List;

    iput-object v3, p0, Lio/ktor/websocket/DefaultWebSocketSessionImpl;->_extensions:Ljava/util/List;

    .line 83
    iput v0, p0, Lio/ktor/websocket/DefaultWebSocketSessionImpl;->started:I

    .line 92
    invoke-interface {p1}, Lio/ktor/websocket/WebSocketSession;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    invoke-interface {p1, v2}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    new-instance v0, Lkotlinx/coroutines/CoroutineName;

    const-string v2, "ws-default"

    invoke-direct {v0, v2}, Lkotlinx/coroutines/CoroutineName;-><init>(Ljava/lang/String;)V

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-interface {p1, v0}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/websocket/DefaultWebSocketSessionImpl;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 106
    iput-wide p2, p0, Lio/ktor/websocket/DefaultWebSocketSessionImpl;->pingIntervalMillis:J

    .line 112
    iput-wide p4, p0, Lio/ktor/websocket/DefaultWebSocketSessionImpl;->timeoutMillis:J

    .line 118
    check-cast v1, Lkotlinx/coroutines/Deferred;

    iput-object v1, p0, Lio/ktor/websocket/DefaultWebSocketSessionImpl;->closeReason:Lkotlinx/coroutines/Deferred;

    return-void
.end method

.method public static final synthetic access$checkMaxFrameSize(Lio/ktor/websocket/DefaultWebSocketSessionImpl;Lio/ktor/utils/io/core/BytePacketBuilder;Lio/ktor/websocket/Frame;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2, p3}, Lio/ktor/websocket/DefaultWebSocketSessionImpl;->checkMaxFrameSize(Lio/ktor/utils/io/core/BytePacketBuilder;Lio/ktor/websocket/Frame;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getFiltered$p(Lio/ktor/websocket/DefaultWebSocketSessionImpl;)Lkotlinx/coroutines/channels/Channel;
    .locals 0

    .line 70
    iget-object p0, p0, Lio/ktor/websocket/DefaultWebSocketSessionImpl;->filtered:Lkotlinx/coroutines/channels/Channel;

    return-object p0
.end method

.method public static final synthetic access$getOutgoingToBeProcessed$p(Lio/ktor/websocket/DefaultWebSocketSessionImpl;)Lkotlinx/coroutines/channels/Channel;
    .locals 0

    .line 70
    iget-object p0, p0, Lio/ktor/websocket/DefaultWebSocketSessionImpl;->outgoingToBeProcessed:Lkotlinx/coroutines/channels/Channel;

    return-object p0
.end method

.method public static final synthetic access$getRaw$p(Lio/ktor/websocket/DefaultWebSocketSessionImpl;)Lio/ktor/websocket/WebSocketSession;
    .locals 0

    .line 70
    iget-object p0, p0, Lio/ktor/websocket/DefaultWebSocketSessionImpl;->raw:Lio/ktor/websocket/WebSocketSession;

    return-object p0
.end method

.method public static final synthetic access$outgoingProcessorLoop(Lio/ktor/websocket/DefaultWebSocketSessionImpl;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lio/ktor/websocket/DefaultWebSocketSessionImpl;->outgoingProcessorLoop(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$processIncomingExtensions(Lio/ktor/websocket/DefaultWebSocketSessionImpl;Lio/ktor/websocket/Frame;)Lio/ktor/websocket/Frame;
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lio/ktor/websocket/DefaultWebSocketSessionImpl;->processIncomingExtensions(Lio/ktor/websocket/Frame;)Lio/ktor/websocket/Frame;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$sendCloseSequence(Lio/ktor/websocket/DefaultWebSocketSessionImpl;Lio/ktor/websocket/CloseReason;Ljava/lang/Throwable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2, p3}, Lio/ktor/websocket/DefaultWebSocketSessionImpl;->sendCloseSequence(Lio/ktor/websocket/CloseReason;Ljava/lang/Throwable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final checkMaxFrameSize(Lio/ktor/utils/io/core/BytePacketBuilder;Lio/ktor/websocket/Frame;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/core/BytePacketBuilder;",
            "Lio/ktor/websocket/Frame;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lio/ktor/websocket/DefaultWebSocketSessionImpl$checkMaxFrameSize$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lio/ktor/websocket/DefaultWebSocketSessionImpl$checkMaxFrameSize$1;

    iget v1, v0, Lio/ktor/websocket/DefaultWebSocketSessionImpl$checkMaxFrameSize$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lio/ktor/websocket/DefaultWebSocketSessionImpl$checkMaxFrameSize$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lio/ktor/websocket/DefaultWebSocketSessionImpl$checkMaxFrameSize$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/websocket/DefaultWebSocketSessionImpl$checkMaxFrameSize$1;

    invoke-direct {v0, p0, p3}, Lio/ktor/websocket/DefaultWebSocketSessionImpl$checkMaxFrameSize$1;-><init>(Lio/ktor/websocket/DefaultWebSocketSessionImpl;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lio/ktor/websocket/DefaultWebSocketSessionImpl$checkMaxFrameSize$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 320
    iget v2, v0, Lio/ktor/websocket/DefaultWebSocketSessionImpl$checkMaxFrameSize$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v3, :cond_1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget p1, v0, Lio/ktor/websocket/DefaultWebSocketSessionImpl$checkMaxFrameSize$1;->I$0:I

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 324
    invoke-virtual {p2}, Lio/ktor/websocket/Frame;->getData()[B

    move-result-object p2

    array-length p2, p2

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lio/ktor/utils/io/core/BytePacketBuilder;->getSize()I

    move-result p3

    goto :goto_1

    :cond_3
    const/4 p3, 0x0

    :goto_1
    add-int/2addr p2, p3

    int-to-long v4, p2

    .line 325
    invoke-virtual {p0}, Lio/ktor/websocket/DefaultWebSocketSessionImpl;->getMaxFrameSize()J

    move-result-wide v6

    cmp-long p3, v4, v6

    if-lez p3, :cond_6

    if-eqz p1, :cond_4

    .line 326
    invoke-virtual {p1}, Lio/ktor/utils/io/core/BytePacketBuilder;->release()V

    .line 327
    :cond_4
    move-object p1, p0

    check-cast p1, Lio/ktor/websocket/WebSocketSession;

    new-instance p3, Lio/ktor/websocket/CloseReason;

    sget-object v2, Lio/ktor/websocket/CloseReason$Codes;->TOO_BIG:Lio/ktor/websocket/CloseReason$Codes;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Frame is too big: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". Max size is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lio/ktor/websocket/DefaultWebSocketSessionImpl;->getMaxFrameSize()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p3, v2, v4}, Lio/ktor/websocket/CloseReason;-><init>(Lio/ktor/websocket/CloseReason$Codes;Ljava/lang/String;)V

    iput p2, v0, Lio/ktor/websocket/DefaultWebSocketSessionImpl$checkMaxFrameSize$1;->I$0:I

    iput v3, v0, Lio/ktor/websocket/DefaultWebSocketSessionImpl$checkMaxFrameSize$1;->label:I

    invoke-static {p1, p3, v0}, Lio/ktor/websocket/WebSocketSessionKt;->close(Lio/ktor/websocket/WebSocketSession;Lio/ktor/websocket/CloseReason;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    move p1, p2

    .line 328
    :goto_2
    new-instance p2, Lio/ktor/websocket/FrameTooBigException;

    int-to-long v0, p1

    invoke-direct {p2, v0, v1}, Lio/ktor/websocket/FrameTooBigException;-><init>(J)V

    throw p2

    .line 330
    :cond_6
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public static synthetic goingAway$default(Lio/ktor/websocket/DefaultWebSocketSessionImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 140
    const-string p1, "Server is going down"

    :cond_0
    invoke-virtual {p0, p1, p2}, Lio/ktor/websocket/DefaultWebSocketSessionImpl;->goingAway(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final outgoingProcessorLoop(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12
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

    instance-of v0, p1, Lio/ktor/websocket/DefaultWebSocketSessionImpl$outgoingProcessorLoop$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lio/ktor/websocket/DefaultWebSocketSessionImpl$outgoingProcessorLoop$1;

    iget v1, v0, Lio/ktor/websocket/DefaultWebSocketSessionImpl$outgoingProcessorLoop$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lio/ktor/websocket/DefaultWebSocketSessionImpl$outgoingProcessorLoop$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lio/ktor/websocket/DefaultWebSocketSessionImpl$outgoingProcessorLoop$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/websocket/DefaultWebSocketSessionImpl$outgoingProcessorLoop$1;

    invoke-direct {v0, p0, p1}, Lio/ktor/websocket/DefaultWebSocketSessionImpl$outgoingProcessorLoop$1;-><init>(Lio/ktor/websocket/DefaultWebSocketSessionImpl;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lio/ktor/websocket/DefaultWebSocketSessionImpl$outgoingProcessorLoop$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 251
    iget v2, v0, Lio/ktor/websocket/DefaultWebSocketSessionImpl$outgoingProcessorLoop$1;->label:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v2, v0, Lio/ktor/websocket/DefaultWebSocketSessionImpl$outgoingProcessorLoop$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v6, v0, Lio/ktor/websocket/DefaultWebSocketSessionImpl$outgoingProcessorLoop$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :goto_1
    move-object p1, v2

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_3
    iget-object v2, v0, Lio/ktor/websocket/DefaultWebSocketSessionImpl$outgoingProcessorLoop$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v6, v0, Lio/ktor/websocket/DefaultWebSocketSessionImpl$outgoingProcessorLoop$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :goto_2
    move-object v9, v0

    goto :goto_4

    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 252
    iget-object p1, p0, Lio/ktor/websocket/DefaultWebSocketSessionImpl;->outgoingToBeProcessed:Lkotlinx/coroutines/channels/Channel;

    invoke-interface {p1}, Lkotlinx/coroutines/channels/Channel;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object p1

    move-object v6, p0

    :goto_3
    iput-object v6, v0, Lio/ktor/websocket/DefaultWebSocketSessionImpl$outgoingProcessorLoop$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lio/ktor/websocket/DefaultWebSocketSessionImpl$outgoingProcessorLoop$1;->L$1:Ljava/lang/Object;

    iput v5, v0, Lio/ktor/websocket/DefaultWebSocketSessionImpl$outgoingProcessorLoop$1;->label:I

    invoke-interface {p1, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->hasNext(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_5

    goto/16 :goto_6

    :cond_5
    move-object v9, v2

    move-object v2, p1

    move-object p1, v9

    goto :goto_2

    :goto_4
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-interface {v2}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/ktor/websocket/Frame;

    .line 253
    invoke-static {}, Lio/ktor/websocket/DefaultWebSocketSessionKt;->getLOGGER()Lorg/slf4j/Logger;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Sending "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " from session "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 255
    instance-of v0, p1, Lio/ktor/websocket/Frame$Close;

    if-eqz v0, :cond_6

    .line 256
    check-cast p1, Lio/ktor/websocket/Frame$Close;

    invoke-static {p1}, Lio/ktor/websocket/FrameCommonKt;->readReason(Lio/ktor/websocket/Frame$Close;)Lio/ktor/websocket/CloseReason;

    move-result-object v7

    const/4 p1, 0x0

    iput-object p1, v9, Lio/ktor/websocket/DefaultWebSocketSessionImpl$outgoingProcessorLoop$1;->L$0:Ljava/lang/Object;

    iput-object p1, v9, Lio/ktor/websocket/DefaultWebSocketSessionImpl$outgoingProcessorLoop$1;->L$1:Ljava/lang/Object;

    iput v4, v9, Lio/ktor/websocket/DefaultWebSocketSessionImpl$outgoingProcessorLoop$1;->label:I

    const/4 v8, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lio/ktor/websocket/DefaultWebSocketSessionImpl;->sendCloseSequence$default(Lio/ktor/websocket/DefaultWebSocketSessionImpl;Lio/ktor/websocket/CloseReason;Ljava/lang/Throwable;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_a

    goto :goto_6

    .line 260
    :cond_6
    instance-of v0, p1, Lio/ktor/websocket/Frame$Text;

    if-eqz v0, :cond_7

    move v0, v5

    goto :goto_5

    .line 261
    :cond_7
    instance-of v0, p1, Lio/ktor/websocket/Frame$Binary;

    :goto_5
    if-eqz v0, :cond_8

    invoke-direct {v6, p1}, Lio/ktor/websocket/DefaultWebSocketSessionImpl;->processOutgoingExtensions(Lio/ktor/websocket/Frame;)Lio/ktor/websocket/Frame;

    move-result-object p1

    .line 266
    :cond_8
    iget-object v0, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl;->raw:Lio/ktor/websocket/WebSocketSession;

    invoke-interface {v0}, Lio/ktor/websocket/WebSocketSession;->getOutgoing()Lkotlinx/coroutines/channels/SendChannel;

    move-result-object v0

    iput-object v6, v9, Lio/ktor/websocket/DefaultWebSocketSessionImpl$outgoingProcessorLoop$1;->L$0:Ljava/lang/Object;

    iput-object v2, v9, Lio/ktor/websocket/DefaultWebSocketSessionImpl$outgoingProcessorLoop$1;->L$1:Ljava/lang/Object;

    iput v3, v9, Lio/ktor/websocket/DefaultWebSocketSessionImpl$outgoingProcessorLoop$1;->label:I

    invoke-interface {v0, p1, v9}, Lkotlinx/coroutines/channels/SendChannel;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_9

    :goto_6
    return-object v1

    :cond_9
    move-object v0, v9

    goto/16 :goto_1

    .line 268
    :cond_a
    :goto_7
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private final processIncomingExtensions(Lio/ktor/websocket/Frame;)Lio/ktor/websocket/Frame;
    .locals 2

    .line 333
    invoke-virtual {p0}, Lio/ktor/websocket/DefaultWebSocketSessionImpl;->getExtensions()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 346
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/ktor/websocket/WebSocketExtension;

    .line 333
    invoke-interface {v1, p1}, Lio/ktor/websocket/WebSocketExtension;->processIncomingFrame(Lio/ktor/websocket/Frame;)Lio/ktor/websocket/Frame;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method private final processOutgoingExtensions(Lio/ktor/websocket/Frame;)Lio/ktor/websocket/Frame;
    .locals 2

    .line 336
    invoke-virtual {p0}, Lio/ktor/websocket/DefaultWebSocketSessionImpl;->getExtensions()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 349
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/ktor/websocket/WebSocketExtension;

    .line 336
    invoke-interface {v1, p1}, Lio/ktor/websocket/WebSocketExtension;->processOutgoingFrame(Lio/ktor/websocket/Frame;)Lio/ktor/websocket/Frame;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method private final runIncomingProcessor(Lkotlinx/coroutines/channels/SendChannel;)Lkotlinx/coroutines/Job;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/SendChannel<",
            "-",
            "Lio/ktor/websocket/Frame$Ping;",
            ">;)",
            "Lkotlinx/coroutines/Job;"
        }
    .end annotation

    .line 159
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    .line 160
    invoke-static {}, Lio/ktor/websocket/DefaultWebSocketSessionKt;->access$getIncomingProcessorCoroutineName$p()Lkotlinx/coroutines/CoroutineName;

    move-result-object v1

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getUnconfined()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v2

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    invoke-virtual {v1, v2}, Lkotlinx/coroutines/CoroutineName;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    .line 159
    new-instance v2, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;-><init>(Lio/ktor/websocket/DefaultWebSocketSessionImpl;Lkotlinx/coroutines/channels/SendChannel;Lkotlin/coroutines/Continuation;)V

    move-object v3, v2

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    return-object p1
.end method

.method private final runOrCancelPinger()V
    .locals 8

    .line 296
    invoke-virtual {p0}, Lio/ktor/websocket/DefaultWebSocketSessionImpl;->getPingIntervalMillis()J

    move-result-wide v2

    .line 299
    iget v0, p0, Lio/ktor/websocket/DefaultWebSocketSessionImpl;->closed:I

    const/4 v7, 0x0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v7

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    .line 300
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    iget-object v1, p0, Lio/ktor/websocket/DefaultWebSocketSessionImpl;->raw:Lio/ktor/websocket/WebSocketSession;

    invoke-interface {v1}, Lio/ktor/websocket/WebSocketSession;->getOutgoing()Lkotlinx/coroutines/channels/SendChannel;

    move-result-object v1

    invoke-virtual {p0}, Lio/ktor/websocket/DefaultWebSocketSessionImpl;->getTimeoutMillis()J

    move-result-wide v4

    new-instance v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runOrCancelPinger$newPinger$1;

    invoke-direct {v6, p0, v7}, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runOrCancelPinger$newPinger$1;-><init>(Lio/ktor/websocket/DefaultWebSocketSessionImpl;Lkotlin/coroutines/Continuation;)V

    check-cast v6, Lkotlin/jvm/functions/Function2;

    invoke-static/range {v0 .. v6}, Lio/ktor/websocket/PingPongKt;->pinger(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/channels/SendChannel;JJLkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/channels/SendChannel;

    move-result-object v0

    .line 310
    :goto_0
    sget-object v1, Lio/ktor/websocket/DefaultWebSocketSessionImpl;->pinger$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/channels/SendChannel;

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    invoke-static {v1, v7, v2, v7}, Lkotlinx/coroutines/channels/SendChannel$DefaultImpls;->close$default(Lkotlinx/coroutines/channels/SendChannel;Ljava/lang/Throwable;ILjava/lang/Object;)Z

    :cond_2
    if-eqz v0, :cond_3

    .line 313
    sget-object v1, Lio/ktor/websocket/DefaultWebSocketSessionImpl;->EmptyPong:Lio/ktor/websocket/Frame$Pong;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/channels/SendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlinx/coroutines/channels/ChannelResult;->isSuccess-impl(Ljava/lang/Object;)Z

    .line 315
    :cond_3
    iget v1, p0, Lio/ktor/websocket/DefaultWebSocketSessionImpl;->closed:I

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    .line 316
    invoke-direct {p0}, Lio/ktor/websocket/DefaultWebSocketSessionImpl;->runOrCancelPinger()V

    :cond_4
    return-void
.end method

.method private final runOutgoingProcessor()Lkotlinx/coroutines/Job;
    .locals 5

    .line 231
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    .line 232
    invoke-static {}, Lio/ktor/websocket/DefaultWebSocketSessionKt;->access$getOutgoingProcessorCoroutineName$p()Lkotlinx/coroutines/CoroutineName;

    move-result-object v1

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getUnconfined()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v2

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    invoke-virtual {v1, v2}, Lkotlinx/coroutines/CoroutineName;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    .line 233
    sget-object v2, Lkotlinx/coroutines/CoroutineStart;->UNDISPATCHED:Lkotlinx/coroutines/CoroutineStart;

    .line 231
    new-instance v3, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runOutgoingProcessor$1;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runOutgoingProcessor$1;-><init>(Lio/ktor/websocket/DefaultWebSocketSessionImpl;Lkotlin/coroutines/Continuation;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, v2, v3}, Lkotlinx/coroutines/BuildersKt;->launch(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    move-result-object v0

    return-object v0
.end method

.method private final sendCloseSequence(Lio/ktor/websocket/CloseReason;Ljava/lang/Throwable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/websocket/CloseReason;",
            "Ljava/lang/Throwable;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lio/ktor/websocket/DefaultWebSocketSessionImpl$sendCloseSequence$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lio/ktor/websocket/DefaultWebSocketSessionImpl$sendCloseSequence$1;

    iget v1, v0, Lio/ktor/websocket/DefaultWebSocketSessionImpl$sendCloseSequence$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lio/ktor/websocket/DefaultWebSocketSessionImpl$sendCloseSequence$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lio/ktor/websocket/DefaultWebSocketSessionImpl$sendCloseSequence$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/websocket/DefaultWebSocketSessionImpl$sendCloseSequence$1;

    invoke-direct {v0, p0, p3}, Lio/ktor/websocket/DefaultWebSocketSessionImpl$sendCloseSequence$1;-><init>(Lio/ktor/websocket/DefaultWebSocketSessionImpl;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lio/ktor/websocket/DefaultWebSocketSessionImpl$sendCloseSequence$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 271
    iget v2, v0, Lio/ktor/websocket/DefaultWebSocketSessionImpl$sendCloseSequence$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lio/ktor/websocket/DefaultWebSocketSessionImpl$sendCloseSequence$1;->L$2:Ljava/lang/Object;

    check-cast p1, Lio/ktor/websocket/CloseReason;

    iget-object p2, v0, Lio/ktor/websocket/DefaultWebSocketSessionImpl$sendCloseSequence$1;->L$1:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Throwable;

    iget-object v0, v0, Lio/ktor/websocket/DefaultWebSocketSessionImpl$sendCloseSequence$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lio/ktor/websocket/DefaultWebSocketSessionImpl;

    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception p3

    goto/16 :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 272
    invoke-direct {p0}, Lio/ktor/websocket/DefaultWebSocketSessionImpl;->tryClose()Z

    move-result p3

    if-nez p3, :cond_3

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 273
    :cond_3
    invoke-static {}, Lio/ktor/websocket/DefaultWebSocketSessionKt;->getLOGGER()Lorg/slf4j/Logger;

    move-result-object p3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Sending Close Sequence for session "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " with reason "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " and exception "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p3, v2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 274
    iget-object p3, p0, Lio/ktor/websocket/DefaultWebSocketSessionImpl;->context:Lkotlinx/coroutines/CompletableJob;

    invoke-interface {p3}, Lkotlinx/coroutines/CompletableJob;->complete()Z

    if-nez p1, :cond_4

    .line 276
    new-instance p1, Lio/ktor/websocket/CloseReason;

    sget-object p3, Lio/ktor/websocket/CloseReason$Codes;->NORMAL:Lio/ktor/websocket/CloseReason$Codes;

    const-string v2, ""

    invoke-direct {p1, p3, v2}, Lio/ktor/websocket/CloseReason;-><init>(Lio/ktor/websocket/CloseReason$Codes;Ljava/lang/String;)V

    .line 278
    :cond_4
    :try_start_1
    invoke-direct {p0}, Lio/ktor/websocket/DefaultWebSocketSessionImpl;->runOrCancelPinger()V

    .line 280
    invoke-virtual {p1}, Lio/ktor/websocket/CloseReason;->getCode()S

    move-result p3

    sget-object v2, Lio/ktor/websocket/CloseReason$Codes;->CLOSED_ABNORMALLY:Lio/ktor/websocket/CloseReason$Codes;

    invoke-virtual {v2}, Lio/ktor/websocket/CloseReason$Codes;->getCode()S

    move-result v2

    if-eq p3, v2, :cond_5

    .line 281
    iget-object p3, p0, Lio/ktor/websocket/DefaultWebSocketSessionImpl;->raw:Lio/ktor/websocket/WebSocketSession;

    invoke-interface {p3}, Lio/ktor/websocket/WebSocketSession;->getOutgoing()Lkotlinx/coroutines/channels/SendChannel;

    move-result-object p3

    new-instance v2, Lio/ktor/websocket/Frame$Close;

    invoke-direct {v2, p1}, Lio/ktor/websocket/Frame$Close;-><init>(Lio/ktor/websocket/CloseReason;)V

    iput-object p0, v0, Lio/ktor/websocket/DefaultWebSocketSessionImpl$sendCloseSequence$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lio/ktor/websocket/DefaultWebSocketSessionImpl$sendCloseSequence$1;->L$1:Ljava/lang/Object;

    iput-object p1, v0, Lio/ktor/websocket/DefaultWebSocketSessionImpl$sendCloseSequence$1;->L$2:Ljava/lang/Object;

    iput v3, v0, Lio/ktor/websocket/DefaultWebSocketSessionImpl$sendCloseSequence$1;->label:I

    invoke-interface {p3, v2, v0}, Lkotlinx/coroutines/channels/SendChannel;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p3, v1, :cond_5

    return-object v1

    :cond_5
    move-object v0, p0

    .line 284
    :goto_1
    iget-object p3, v0, Lio/ktor/websocket/DefaultWebSocketSessionImpl;->closeReasonRef:Lkotlinx/coroutines/CompletableDeferred;

    invoke-interface {p3, p1}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    if-eqz p2, :cond_6

    .line 287
    iget-object p1, v0, Lio/ktor/websocket/DefaultWebSocketSessionImpl;->outgoingToBeProcessed:Lkotlinx/coroutines/channels/Channel;

    invoke-interface {p1, p2}, Lkotlinx/coroutines/channels/Channel;->close(Ljava/lang/Throwable;)Z

    .line 288
    iget-object p1, v0, Lio/ktor/websocket/DefaultWebSocketSessionImpl;->filtered:Lkotlinx/coroutines/channels/Channel;

    invoke-interface {p1, p2}, Lkotlinx/coroutines/channels/Channel;->close(Ljava/lang/Throwable;)Z

    .line 291
    :cond_6
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catchall_1
    move-exception p3

    move-object v0, p0

    .line 284
    :goto_2
    iget-object v1, v0, Lio/ktor/websocket/DefaultWebSocketSessionImpl;->closeReasonRef:Lkotlinx/coroutines/CompletableDeferred;

    invoke-interface {v1, p1}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    if-eqz p2, :cond_7

    .line 287
    iget-object p1, v0, Lio/ktor/websocket/DefaultWebSocketSessionImpl;->outgoingToBeProcessed:Lkotlinx/coroutines/channels/Channel;

    invoke-interface {p1, p2}, Lkotlinx/coroutines/channels/Channel;->close(Ljava/lang/Throwable;)Z

    .line 288
    iget-object p1, v0, Lio/ktor/websocket/DefaultWebSocketSessionImpl;->filtered:Lkotlinx/coroutines/channels/Channel;

    invoke-interface {p1, p2}, Lkotlinx/coroutines/channels/Channel;->close(Ljava/lang/Throwable;)Z

    :cond_7
    throw p3
.end method

.method static synthetic sendCloseSequence$default(Lio/ktor/websocket/DefaultWebSocketSessionImpl;Lio/ktor/websocket/CloseReason;Ljava/lang/Throwable;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    .line 271
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lio/ktor/websocket/DefaultWebSocketSessionImpl;->sendCloseSequence(Lio/ktor/websocket/CloseReason;Ljava/lang/Throwable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final tryClose()Z
    .locals 3

    .line 293
    sget-object v0, Lio/ktor/websocket/DefaultWebSocketSessionImpl;->closed$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public flush(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
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

    .line 145
    iget-object v0, p0, Lio/ktor/websocket/DefaultWebSocketSessionImpl;->raw:Lio/ktor/websocket/WebSocketSession;

    invoke-interface {v0, p1}, Lio/ktor/websocket/WebSocketSession;->flush(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public getCloseReason()Lkotlinx/coroutines/Deferred;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/Deferred<",
            "Lio/ktor/websocket/CloseReason;",
            ">;"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lio/ktor/websocket/DefaultWebSocketSessionImpl;->closeReason:Lkotlinx/coroutines/Deferred;

    return-object v0
.end method

.method public getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .locals 1

    .line 92
    iget-object v0, p0, Lio/ktor/websocket/DefaultWebSocketSessionImpl;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    return-object v0
.end method

.method public getExtensions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/ktor/websocket/WebSocketExtension<",
            "*>;>;"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lio/ktor/websocket/DefaultWebSocketSessionImpl;->_extensions:Ljava/util/List;

    return-object v0
.end method

.method public getIncoming()Lkotlinx/coroutines/channels/ReceiveChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "Lio/ktor/websocket/Frame;",
            ">;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lio/ktor/websocket/DefaultWebSocketSessionImpl;->filtered:Lkotlinx/coroutines/channels/Channel;

    check-cast v0, Lkotlinx/coroutines/channels/ReceiveChannel;

    return-object v0
.end method

.method public getMasking()Z
    .locals 1

    .line 95
    iget-object v0, p0, Lio/ktor/websocket/DefaultWebSocketSessionImpl;->raw:Lio/ktor/websocket/WebSocketSession;

    invoke-interface {v0}, Lio/ktor/websocket/WebSocketSession;->getMasking()Z

    move-result v0

    return v0
.end method

.method public getMaxFrameSize()J
    .locals 2

    .line 101
    iget-object v0, p0, Lio/ktor/websocket/DefaultWebSocketSessionImpl;->raw:Lio/ktor/websocket/WebSocketSession;

    invoke-interface {v0}, Lio/ktor/websocket/WebSocketSession;->getMaxFrameSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getOutgoing()Lkotlinx/coroutines/channels/SendChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/channels/SendChannel<",
            "Lio/ktor/websocket/Frame;",
            ">;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lio/ktor/websocket/DefaultWebSocketSessionImpl;->outgoingToBeProcessed:Lkotlinx/coroutines/channels/Channel;

    check-cast v0, Lkotlinx/coroutines/channels/SendChannel;

    return-object v0
.end method

.method public getPingIntervalMillis()J
    .locals 2

    .line 106
    iget-wide v0, p0, Lio/ktor/websocket/DefaultWebSocketSessionImpl;->pingIntervalMillis:J

    return-wide v0
.end method

.method public getTimeoutMillis()J
    .locals 2

    .line 112
    iget-wide v0, p0, Lio/ktor/websocket/DefaultWebSocketSessionImpl;->timeoutMillis:J

    return-wide v0
.end method

.method public final goingAway(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 141
    new-instance v1, Lio/ktor/websocket/CloseReason;

    sget-object v0, Lio/ktor/websocket/CloseReason$Codes;->GOING_AWAY:Lio/ktor/websocket/CloseReason$Codes;

    invoke-direct {v1, v0, p1}, Lio/ktor/websocket/CloseReason;-><init>(Lio/ktor/websocket/CloseReason$Codes;Ljava/lang/String;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lio/ktor/websocket/DefaultWebSocketSessionImpl;->sendCloseSequence$default(Lio/ktor/websocket/DefaultWebSocketSessionImpl;Lio/ktor/websocket/CloseReason;Ljava/lang/Throwable;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public send(Lio/ktor/websocket/Frame;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/websocket/Frame;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 70
    invoke-static {p0, p1, p2}, Lio/ktor/websocket/DefaultWebSocketSession$DefaultImpls;->send(Lio/ktor/websocket/DefaultWebSocketSession;Lio/ktor/websocket/Frame;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public setMasking(Z)V
    .locals 1

    .line 97
    iget-object v0, p0, Lio/ktor/websocket/DefaultWebSocketSessionImpl;->raw:Lio/ktor/websocket/WebSocketSession;

    invoke-interface {v0, p1}, Lio/ktor/websocket/WebSocketSession;->setMasking(Z)V

    return-void
.end method

.method public setMaxFrameSize(J)V
    .locals 1

    .line 103
    iget-object v0, p0, Lio/ktor/websocket/DefaultWebSocketSessionImpl;->raw:Lio/ktor/websocket/WebSocketSession;

    invoke-interface {v0, p1, p2}, Lio/ktor/websocket/WebSocketSession;->setMaxFrameSize(J)V

    return-void
.end method

.method public setPingIntervalMillis(J)V
    .locals 0

    .line 108
    iput-wide p1, p0, Lio/ktor/websocket/DefaultWebSocketSessionImpl;->pingIntervalMillis:J

    .line 109
    invoke-direct {p0}, Lio/ktor/websocket/DefaultWebSocketSessionImpl;->runOrCancelPinger()V

    return-void
.end method

.method public setTimeoutMillis(J)V
    .locals 0

    .line 114
    iput-wide p1, p0, Lio/ktor/websocket/DefaultWebSocketSessionImpl;->timeoutMillis:J

    .line 115
    invoke-direct {p0}, Lio/ktor/websocket/DefaultWebSocketSessionImpl;->runOrCancelPinger()V

    return-void
.end method

.method public start(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lio/ktor/websocket/WebSocketExtension<",
            "*>;>;)V"
        }
    .end annotation

    const-string v0, "negotiatedExtensions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    sget-object v0, Lio/ktor/websocket/DefaultWebSocketSessionImpl;->started$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    invoke-static {}, Lio/ktor/websocket/DefaultWebSocketSessionKt;->getLOGGER()Lorg/slf4j/Logger;

    move-result-object v0

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Starting default WebSocketSession("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") with negotiated extensions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 128
    move-object v2, p1

    check-cast v2, Ljava/lang/Iterable;

    const/16 v9, 0x3f

    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v10}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 127
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 126
    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lio/ktor/websocket/DefaultWebSocketSessionImpl;->_extensions:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 132
    invoke-direct {p0}, Lio/ktor/websocket/DefaultWebSocketSessionImpl;->runOrCancelPinger()V

    .line 133
    move-object p1, p0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    invoke-virtual {p0}, Lio/ktor/websocket/DefaultWebSocketSessionImpl;->getOutgoing()Lkotlinx/coroutines/channels/SendChannel;

    move-result-object v0

    invoke-static {p1, v0}, Lio/ktor/websocket/PingPongKt;->ponger(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/channels/SendChannel;)Lkotlinx/coroutines/channels/SendChannel;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/ktor/websocket/DefaultWebSocketSessionImpl;->runIncomingProcessor(Lkotlinx/coroutines/channels/SendChannel;)Lkotlinx/coroutines/Job;

    .line 134
    invoke-direct {p0}, Lio/ktor/websocket/DefaultWebSocketSessionImpl;->runOutgoingProcessor()Lkotlinx/coroutines/Job;

    return-void

    .line 122
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WebSocket session "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is already started."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public terminate()V
    .locals 3
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "Use cancel() instead."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "cancel()"
            imports = {
                "kotlinx.coroutines.cancel"
            }
        .end subannotation
    .end annotation

    .line 154
    iget-object v0, p0, Lio/ktor/websocket/DefaultWebSocketSessionImpl;->context:Lkotlinx/coroutines/CompletableJob;

    check-cast v0, Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 155
    iget-object v0, p0, Lio/ktor/websocket/DefaultWebSocketSessionImpl;->raw:Lio/ktor/websocket/WebSocketSession;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/CoroutineScopeKt;->cancel$default(Lkotlinx/coroutines/CoroutineScope;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    return-void
.end method
