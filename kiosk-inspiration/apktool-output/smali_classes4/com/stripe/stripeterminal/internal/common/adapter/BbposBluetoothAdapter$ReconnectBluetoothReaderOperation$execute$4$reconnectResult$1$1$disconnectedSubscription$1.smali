.class final Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation$execute$4$reconnectResult$1$1$disconnectedSubscription$1;
.super Ljava/lang/Object;
.source "BbposBluetoothAdapter.kt"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation$execute$4$reconnectResult$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Consumer;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/stripe/hardware/status/DisconnectCause;",
        "accept"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/ProducerScope<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $btReader:Lcom/stripe/core/hardware/Reader;

.field final synthetic $reconnectAttempts:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;


# direct methods
.method constructor <init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;Lkotlin/jvm/internal/Ref$IntRef;Lkotlinx/coroutines/channels/ProducerScope;Lcom/stripe/core/hardware/Reader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;",
            "Lkotlin/jvm/internal/Ref$IntRef;",
            "Lkotlinx/coroutines/channels/ProducerScope<",
            "-",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/stripe/core/hardware/Reader;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation$execute$4$reconnectResult$1$1$disconnectedSubscription$1;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;

    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation$execute$4$reconnectResult$1$1$disconnectedSubscription$1;->$reconnectAttempts:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p3, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation$execute$4$reconnectResult$1$1$disconnectedSubscription$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    iput-object p4, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation$execute$4$reconnectResult$1$1$disconnectedSubscription$1;->$btReader:Lcom/stripe/core/hardware/Reader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Lcom/stripe/hardware/status/DisconnectCause;)V
    .locals 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 500
    sget-object v0, Lcom/stripe/hardware/status/DisconnectCause;->COMM_LINK_UNINITIALIZED:Lcom/stripe/hardware/status/DisconnectCause;

    if-ne p1, v0, :cond_0

    return-void

    .line 503
    :cond_0
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation$execute$4$reconnectResult$1$1$disconnectedSubscription$1;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;

    invoke-static {p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;->access$getLogger(Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object p1

    const-string v0, "Reconnect attempt failed. End connecting."

    const/4 v1, 0x0

    new-array v2, v1, [Lkotlin/Pair;

    invoke-interface {p1, v0, v2}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 504
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation$execute$4$reconnectResult$1$1$disconnectedSubscription$1;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;

    invoke-static {p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;->access$getConnectionManager$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;)Lcom/stripe/core/readerconnection/ConnectionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/stripe/core/readerconnection/ConnectionManager;->endOperation()V

    .line 505
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation$execute$4$reconnectResult$1$1$disconnectedSubscription$1;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;->update()V

    .line 506
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation$execute$4$reconnectResult$1$1$disconnectedSubscription$1;->$reconnectAttempts:Lkotlin/jvm/internal/Ref$IntRef;

    iget p1, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation$execute$4$reconnectResult$1$1$disconnectedSubscription$1;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;->access$getReconnectionMaxAttempts$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    :goto_0
    const/4 v2, 0x1

    if-le p1, v0, :cond_2

    .line 507
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation$execute$4$reconnectResult$1$1$disconnectedSubscription$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    check-cast p1, Lkotlinx/coroutines/channels/SendChannel;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlinx/coroutines/channels/ChannelsKt;->trySendBlocking(Lkotlinx/coroutines/channels/SendChannel;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation$execute$4$reconnectResult$1$1$disconnectedSubscription$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    check-cast p1, Lkotlinx/coroutines/channels/SendChannel;

    const/4 v0, 0x0

    invoke-static {p1, v0, v2, v0}, Lkotlinx/coroutines/channels/SendChannel$DefaultImpls;->close$default(Lkotlinx/coroutines/channels/SendChannel;Ljava/lang/Throwable;ILjava/lang/Object;)Z

    return-void

    .line 510
    :cond_2
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation$execute$4$reconnectResult$1$1$disconnectedSubscription$1;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;

    invoke-static {p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;->access$getLogger(Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object p1

    const-string v0, "Reconnect re-started, calling bbpos SDK"

    new-array v1, v1, [Lkotlin/Pair;

    invoke-interface {p1, v0, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 511
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation$execute$4$reconnectResult$1$1$disconnectedSubscription$1;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;

    invoke-static {p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;->access$getConnectionManager$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;)Lcom/stripe/core/readerconnection/ConnectionManager;

    move-result-object p1

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation$execute$4$reconnectResult$1$1$disconnectedSubscription$1;->$btReader:Lcom/stripe/core/hardware/Reader;

    invoke-virtual {p1, v0}, Lcom/stripe/core/readerconnection/ConnectionManager;->startConnect(Lcom/stripe/core/hardware/Reader;)V

    .line 512
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation$execute$4$reconnectResult$1$1$disconnectedSubscription$1;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;->update()V

    .line 513
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation$execute$4$reconnectResult$1$1$disconnectedSubscription$1;->$reconnectAttempts:Lkotlin/jvm/internal/Ref$IntRef;

    iget p1, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation$execute$4$reconnectResult$1$1$disconnectedSubscription$1;->$reconnectAttempts:Lkotlin/jvm/internal/Ref$IntRef;

    add-int/2addr p1, v2

    iput p1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 497
    check-cast p1, Lcom/stripe/hardware/status/DisconnectCause;

    invoke-virtual {p0, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation$execute$4$reconnectResult$1$1$disconnectedSubscription$1;->accept(Lcom/stripe/hardware/status/DisconnectCause;)V

    return-void
.end method
