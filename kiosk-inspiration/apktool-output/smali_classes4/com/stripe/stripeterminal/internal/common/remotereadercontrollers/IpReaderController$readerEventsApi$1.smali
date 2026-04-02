.class public final Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$readerEventsApi$1;
.super Ljava/lang/Object;
.source "IpReaderController.kt"

# interfaces
.implements Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Api;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->getReaderEventsApi(Lcom/stripe/proto/api/sdk/JackRabbitApi;)Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Api;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J*\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0003H\u0096@\u00a2\u0006\u0002\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "com/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$readerEventsApi$1",
        "Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Api;",
        "fetchReaderEvents",
        "",
        "Lcom/stripe/proto/api/sdk/ReaderEvent;",
        "afterId",
        "",
        "idsToAck",
        "(JLjava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "common_publish"
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
.field final synthetic $this_readerEventsApi:Lcom/stripe/proto/api/sdk/JackRabbitApi;

.field final synthetic this$0:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;


# direct methods
.method constructor <init>(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;Lcom/stripe/proto/api/sdk/JackRabbitApi;)V
    .locals 0

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$readerEventsApi$1;->this$0:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;

    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$readerEventsApi$1;->$this_readerEventsApi:Lcom/stripe/proto/api/sdk/JackRabbitApi;

    .line 754
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fetchReaderEvents(JLjava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/stripe/proto/api/sdk/ReaderEvent;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 757
    iget-object p4, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$readerEventsApi$1;->this$0:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;

    .line 756
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$readerEventsApi$1;->$this_readerEventsApi:Lcom/stripe/proto/api/sdk/JackRabbitApi;

    new-instance v1, Lcom/stripe/proto/api/sdk/FetchReaderEventsRequest;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-wide v2, p1

    move-object v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/stripe/proto/api/sdk/FetchReaderEventsRequest;-><init>(JLjava/util/List;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v1}, Lcom/stripe/proto/api/sdk/JackRabbitApi;->fetchReaderEvents(Lcom/stripe/proto/api/sdk/FetchReaderEventsRequest;)Lcom/stripe/jvmcore/crpcclient/CrpcResponse;

    move-result-object p1

    .line 757
    invoke-static {p4, p1}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->access$ensureConnectedJackrabbitResponse(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;Lcom/stripe/jvmcore/crpcclient/CrpcResponse;)Lcom/squareup/wire/Message;

    move-result-object p1

    check-cast p1, Lcom/stripe/proto/api/sdk/FetchReaderEventsResponse;

    iget-object p1, p1, Lcom/stripe/proto/api/sdk/FetchReaderEventsResponse;->reader_events:Ljava/util/List;

    return-object p1
.end method
