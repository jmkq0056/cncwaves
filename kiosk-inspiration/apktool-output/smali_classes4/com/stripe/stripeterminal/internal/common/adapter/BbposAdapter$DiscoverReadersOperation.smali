.class public abstract Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoverReadersOperation;
.super Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;
.source "BbposAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "DiscoverReadersOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000v\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\u0008\u00a4\u0004\u0018\u00002\u000e\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001R\u00020\u0003B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u000e\u0010\'\u001a\u00020(2\u0006\u0010)\u001a\u00020*J\u0008\u0010+\u001a\u00020(H\u0016J\u0012\u0010,\u001a\u00020(2\u0008\u0010-\u001a\u0004\u0018\u00010$H\u0002J\u0008\u0010.\u001a\u00020#H&J\n\u0010/\u001a\u0004\u0018\u00010\u0002H\u0016J\u0014\u00100\u001a\u00020(2\u000c\u00101\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rJ$\u00102\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002030\u00190\u0010*\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\r0\u0010H&R\u0012\u0010\u0007\u001a\u00020\u0008X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\nR\u001a\u0010\u000b\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\r0\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R!\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u00108BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0012\u0010\u0013R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R \u0010\u0018\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u000e0\u001a0\u0019X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010\u001cR\u0018\u0010\u001d\u001a\u00020\u001eX\u00a6\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0006\u001a\u0004\u0008\u001f\u0010 R\u0014\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\"\u001a\u00020#*\u00020$8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008%\u0010&\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u00064"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoverReadersOperation;",
        "Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;",
        "Ljava/lang/Void;",
        "Lcom/stripe/stripeterminal/internal/common/Adapter;",
        "listener",
        "Lcom/stripe/stripeterminal/external/callable/DiscoveryListener;",
        "(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;Lcom/stripe/stripeterminal/external/callable/DiscoveryListener;)V",
        "connectionType",
        "Lcom/stripe/core/hardware/ConnectionType;",
        "getConnectionType",
        "()Lcom/stripe/core/hardware/ConnectionType;",
        "discoveredReaders",
        "Lkotlinx/coroutines/flow/MutableSharedFlow;",
        "",
        "Lcom/stripe/core/hardware/Reader;",
        "discoveredReadersFlow",
        "Lkotlinx/coroutines/flow/Flow;",
        "Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoveryResult;",
        "getDiscoveredReadersFlow",
        "()Lkotlinx/coroutines/flow/Flow;",
        "discoveredReadersFlow$delegate",
        "Lkotlin/Lazy;",
        "discoveryJob",
        "Lkotlinx/coroutines/Job;",
        "readerClasses",
        "",
        "Lkotlin/reflect/KClass;",
        "getReaderClasses",
        "()Ljava/util/List;",
        "timeout",
        "Lkotlin/time/Duration;",
        "getTimeout-UwyO8pc",
        "()J",
        "timeoutFlow",
        "asTerminalException",
        "Lcom/stripe/stripeterminal/external/models/TerminalException;",
        "",
        "getAsTerminalException",
        "(Ljava/lang/Throwable;)Lcom/stripe/stripeterminal/external/models/TerminalException;",
        "cancel",
        "",
        "cancelDiscoverReadersReason",
        "Lcom/stripe/discoverreaders/CancelDiscoverReadersReason;",
        "checkPrerequisites",
        "complete",
        "e",
        "createTimeoutException",
        "execute",
        "onUpdateDiscoveredReaders",
        "readers",
        "transformDiscoveredReaders",
        "Lcom/stripe/stripeterminal/external/models/Reader;",
        "adapter_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final discoveredReaders:Lkotlinx/coroutines/flow/MutableSharedFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableSharedFlow<",
            "Ljava/util/Set<",
            "Lcom/stripe/core/hardware/Reader;",
            ">;>;"
        }
    .end annotation
.end field

.field private final discoveredReadersFlow$delegate:Lkotlin/Lazy;

.field private final discoveryJob:Lkotlinx/coroutines/Job;

.field private final listener:Lcom/stripe/stripeterminal/external/callable/DiscoveryListener;

.field final synthetic this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;

.field private final timeoutFlow:Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoveryResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;Lcom/stripe/stripeterminal/external/callable/DiscoveryListener;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/external/callable/DiscoveryListener;",
            ")V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1110
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoverReadersOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;

    .line 1112
    move-object v0, p1

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/Adapter;

    invoke-direct {p0, v0}, Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;-><init>(Lcom/stripe/stripeterminal/internal/common/Adapter;)V

    .line 1111
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoverReadersOperation;->listener:Lcom/stripe/stripeterminal/external/callable/DiscoveryListener;

    const/4 p2, 0x6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1117
    invoke-static {v0, v1, v2, p2, v2}, Lkotlinx/coroutines/flow/SharedFlowKt;->MutableSharedFlow$default(IILkotlinx/coroutines/channels/BufferOverflow;ILjava/lang/Object;)Lkotlinx/coroutines/flow/MutableSharedFlow;

    move-result-object p2

    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoverReadersOperation;->discoveredReaders:Lkotlinx/coroutines/flow/MutableSharedFlow;

    .line 1122
    new-instance p2, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoverReadersOperation$discoveredReadersFlow$2;

    invoke-direct {p2, p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoverReadersOperation$discoveredReadersFlow$2;-><init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoverReadersOperation;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoverReadersOperation;->discoveredReadersFlow$delegate:Lkotlin/Lazy;

    .line 1131
    new-instance p2, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoverReadersOperation$timeoutFlow$1;

    invoke-direct {p2, p0, v2}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoverReadersOperation$timeoutFlow$1;-><init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoverReadersOperation;Lkotlin/coroutines/Continuation;)V

    check-cast p2, Lkotlin/jvm/functions/Function2;

    invoke-static {p2}, Lkotlinx/coroutines/flow/FlowKt;->flow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p2

    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoverReadersOperation;->timeoutFlow:Lkotlinx/coroutines/flow/Flow;

    .line 1138
    invoke-static {p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->access$getScope$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v3

    .line 1139
    sget-object v5, Lkotlinx/coroutines/CoroutineStart;->LAZY:Lkotlinx/coroutines/CoroutineStart;

    .line 1138
    new-instance p2, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoverReadersOperation$discoveryJob$1;

    invoke-direct {p2, p0, p1, v2}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoverReadersOperation$discoveryJob$1;-><init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoverReadersOperation;Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;Lkotlin/coroutines/Continuation;)V

    move-object v6, p2

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v4, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p2

    .line 1169
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoverReadersOperation$discoveryJob$2$1;

    invoke-direct {v0, p1, p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoverReadersOperation$discoveryJob$2$1;-><init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoverReadersOperation;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-interface {p2, v0}, Lkotlinx/coroutines/Job;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    .line 1168
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoverReadersOperation;->discoveryJob:Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final synthetic access$complete(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoverReadersOperation;Ljava/lang/Throwable;)V
    .locals 0

    .line 1110
    invoke-direct {p0, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoverReadersOperation;->complete(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final synthetic access$getAsTerminalException(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoverReadersOperation;Ljava/lang/Throwable;)Lcom/stripe/stripeterminal/external/models/TerminalException;
    .locals 0

    .line 1110
    invoke-direct {p0, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoverReadersOperation;->getAsTerminalException(Ljava/lang/Throwable;)Lcom/stripe/stripeterminal/external/models/TerminalException;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getDiscoveredReaders$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoverReadersOperation;)Lkotlinx/coroutines/flow/MutableSharedFlow;
    .locals 0

    .line 1110
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoverReadersOperation;->discoveredReaders:Lkotlinx/coroutines/flow/MutableSharedFlow;

    return-object p0
.end method

.method public static final synthetic access$getDiscoveredReadersFlow(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoverReadersOperation;)Lkotlinx/coroutines/flow/Flow;
    .locals 0

    .line 1110
    invoke-direct {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoverReadersOperation;->getDiscoveredReadersFlow()Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getDiscoveryJob$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoverReadersOperation;)Lkotlinx/coroutines/Job;
    .locals 0

    .line 1110
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoverReadersOperation;->discoveryJob:Lkotlinx/coroutines/Job;

    return-object p0
.end method

.method public static final synthetic access$getListener$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoverReadersOperation;)Lcom/stripe/stripeterminal/external/callable/DiscoveryListener;
    .locals 0

    .line 1110
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoverReadersOperation;->listener:Lcom/stripe/stripeterminal/external/callable/DiscoveryListener;

    return-object p0
.end method

.method public static final synthetic access$getTimeoutFlow$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoverReadersOperation;)Lkotlinx/coroutines/flow/Flow;
    .locals 0

    .line 1110
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoverReadersOperation;->timeoutFlow:Lkotlinx/coroutines/flow/Flow;

    return-object p0
.end method

.method private final complete(Ljava/lang/Throwable;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 1188
    invoke-virtual {p0, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoverReadersOperation;->set(Ljava/lang/Object;)V

    return-void

    .line 1189
    :cond_0
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/util/concurrent/CancellationException;

    invoke-virtual {p1}, Ljava/util/concurrent/CancellationException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoverReadersOperation;->complete(Ljava/lang/Throwable;)V

    return-void

    .line 1190
    :cond_1
    invoke-direct {p0, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoverReadersOperation;->getAsTerminalException(Ljava/lang/Throwable;)Lcom/stripe/stripeterminal/external/models/TerminalException;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoverReadersOperation;->setException(Lcom/stripe/stripeterminal/external/models/TerminalException;)V

    return-void
.end method

.method private final getAsTerminalException(Ljava/lang/Throwable;)Lcom/stripe/stripeterminal/external/models/TerminalException;
    .locals 7

    .line 1182
    instance-of v0, p1, Lcom/stripe/stripeterminal/external/models/TerminalException;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/stripe/stripeterminal/external/models/TerminalException;

    return-object p1

    .line 1183
    :cond_0
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v5, 0x8

    const/4 v6, 0x0

    const-string v2, "Unexpected error"

    const/4 v4, 0x0

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method private final getDiscoveredReadersFlow()Lkotlinx/coroutines/flow/Flow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoveryResult;",
            ">;"
        }
    .end annotation

    .line 1122
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoverReadersOperation;->discoveredReadersFlow$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/flow/Flow;

    return-object v0
.end method


# virtual methods
.method public final cancel(Lcom/stripe/discoverreaders/CancelDiscoverReadersReason;)V
    .locals 2

    const-string v0, "cancelDiscoverReadersReason"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1237
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoverReadersOperation$cancel$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoverReadersOperation$cancel$1;-><init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoverReadersOperation;Lcom/stripe/discoverreaders/CancelDiscoverReadersReason;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    const/4 p1, 0x1

    invoke-static {v1, v0, p1, v1}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public checkPrerequisites()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    return-void
.end method

.method public abstract createTimeoutException()Lcom/stripe/stripeterminal/external/models/TerminalException;
.end method

.method public bridge synthetic execute()Ljava/lang/Object;
    .locals 1

    .line 1110
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoverReadersOperation;->execute()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public execute()Ljava/lang/Void;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    .line 1216
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoverReadersOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->access$getOperationToCancel(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;)Lkotlin/reflect/KClass;

    move-result-object v0

    const-class v1, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoverReadersOperation;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1222
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoverReadersOperation;->checkPrerequisites()V

    .line 1225
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoverReadersOperation;->discoveryJob:Lkotlinx/coroutines/Job;

    invoke-interface {v0}, Lkotlinx/coroutines/Job;->start()Z

    .line 1228
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoverReadersOperation;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0

    .line 1217
    :cond_0
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoverReadersOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->access$setOperationToCancel(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;Lkotlin/reflect/KClass;)V

    .line 1218
    new-instance v2, Lcom/stripe/stripeterminal/external/models/TerminalException;

    sget-object v3, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->CANCELED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v7, 0xc

    const/4 v8, 0x0

    const-string v4, "DiscoverReaders was canceled by the user"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v2
.end method

.method public abstract getConnectionType()Lcom/stripe/core/hardware/ConnectionType;
.end method

.method public abstract getReaderClasses()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/KClass<",
            "+",
            "Lcom/stripe/core/hardware/Reader;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getTimeout-UwyO8pc()J
.end method

.method public final onUpdateDiscoveredReaders(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lcom/stripe/core/hardware/Reader;",
            ">;)V"
        }
    .end annotation

    const-string v0, "readers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1232
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoverReadersOperation;->discoveredReaders:Lkotlinx/coroutines/flow/MutableSharedFlow;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/flow/MutableSharedFlow;->tryEmit(Ljava/lang/Object;)Z

    return-void
.end method

.method public abstract transformDiscoveredReaders(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/Flow<",
            "+",
            "Ljava/util/Set<",
            "+",
            "Lcom/stripe/core/hardware/Reader;",
            ">;>;)",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/util/List<",
            "Lcom/stripe/stripeterminal/external/models/Reader;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation
.end method
