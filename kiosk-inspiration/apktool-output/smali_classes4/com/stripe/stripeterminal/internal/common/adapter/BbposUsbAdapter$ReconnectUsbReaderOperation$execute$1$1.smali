.class final Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$ReconnectUsbReaderOperation$execute$1$1;
.super Ljava/lang/Object;
.source "BbposUsbAdapter.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$ReconnectUsbReaderOperation$execute$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Lkotlinx/coroutines/flow/FlowCollector;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u008a@\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "event",
        "Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$ReconnectionEvent;",
        "emit",
        "(Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$ReconnectionEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"
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
.field final synthetic this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;

.field final synthetic this$1:Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$ReconnectUsbReaderOperation;


# direct methods
.method constructor <init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$ReconnectUsbReaderOperation;)V
    .locals 0

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$ReconnectUsbReaderOperation$execute$1$1;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;

    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$ReconnectUsbReaderOperation$execute$1$1;->this$1:Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$ReconnectUsbReaderOperation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$ReconnectionEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$ReconnectionEvent;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 239
    instance-of p2, p1, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$ReconnectionEvent$UpdateConnectivity;

    if-eqz p2, :cond_3

    .line 240
    move-object p2, p1

    check-cast p2, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$ReconnectionEvent$UpdateConnectivity;

    .line 241
    instance-of v0, p2, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$ReconnectionEvent$UpdateConnectivity$StartConnectAttempt;

    if-eqz v0, :cond_0

    iget-object p2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$ReconnectUsbReaderOperation$execute$1$1;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;

    invoke-static {p2}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;->access$getConnectionManager$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;)Lcom/stripe/core/readerconnection/ConnectionManager;

    move-result-object p2

    check-cast p1, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$ReconnectionEvent$UpdateConnectivity$StartConnectAttempt;

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$ReconnectionEvent$UpdateConnectivity$StartConnectAttempt;->getReader()Lcom/stripe/core/hardware/Reader;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/stripe/core/readerconnection/ConnectionManager;->startConnect(Lcom/stripe/core/hardware/Reader;)V

    goto :goto_0

    .line 242
    :cond_0
    instance-of p1, p2, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$ReconnectionEvent$UpdateConnectivity$GetReaderInfo;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$ReconnectUsbReaderOperation$execute$1$1;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;

    invoke-static {p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;->access$getConnectionManager$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;)Lcom/stripe/core/readerconnection/ConnectionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/stripe/core/readerconnection/ConnectionManager;->startReaderInfo()V

    goto :goto_0

    .line 243
    :cond_1
    instance-of p1, p2, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$ReconnectionEvent$UpdateConnectivity$EndConnectAttempt;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$ReconnectUsbReaderOperation$execute$1$1;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;

    invoke-static {p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;->access$getConnectionManager$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;)Lcom/stripe/core/readerconnection/ConnectionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/stripe/core/readerconnection/ConnectionManager;->endOperation()V

    .line 245
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$ReconnectUsbReaderOperation$execute$1$1;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;->update()V

    goto :goto_1

    .line 248
    :cond_3
    instance-of p2, p1, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$ReconnectionEvent$FailedToReconnect;

    if-eqz p2, :cond_4

    .line 249
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$ReconnectUsbReaderOperation$execute$1$1;->this$1:Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$ReconnectUsbReaderOperation;

    invoke-static {p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$ReconnectUsbReaderOperation;->access$failReconnection(Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$ReconnectUsbReaderOperation;)V

    goto :goto_1

    .line 252
    :cond_4
    instance-of p2, p1, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$ReconnectionEvent$ReconnectedToReader;

    if-eqz p2, :cond_5

    .line 253
    iget-object p2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$ReconnectUsbReaderOperation$execute$1$1;->this$1:Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$ReconnectUsbReaderOperation;

    check-cast p1, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$ReconnectionEvent$ReconnectedToReader;

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$ReconnectionEvent$ReconnectedToReader;->getReader()Lcom/stripe/stripeterminal/external/models/Reader;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$ReconnectUsbReaderOperation;->set(Ljava/lang/Object;)V

    .line 257
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$ReconnectUsbReaderOperation$execute$1$1;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;

    new-instance p2, Lcom/stripe/stripeterminal/internal/common/Adapter$NullOperation;

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$ReconnectUsbReaderOperation$execute$1$1;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/Adapter;

    invoke-direct {p2, v0}, Lcom/stripe/stripeterminal/internal/common/Adapter$NullOperation;-><init>(Lcom/stripe/stripeterminal/internal/common/Adapter;)V

    check-cast p2, Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;

    invoke-static {p1, p2}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;->access$setOperationInProgress(Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;)V

    .line 260
    :cond_5
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 237
    check-cast p1, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$ReconnectionEvent;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$ReconnectUsbReaderOperation$execute$1$1;->emit(Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$ReconnectionEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
