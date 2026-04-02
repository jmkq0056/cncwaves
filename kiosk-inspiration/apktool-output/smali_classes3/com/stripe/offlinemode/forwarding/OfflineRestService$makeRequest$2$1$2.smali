.class final Lcom/stripe/offlinemode/forwarding/OfflineRestService$makeRequest$2$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "OfflineRestService.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/offlinemode/forwarding/OfflineRestService;->makeRequest(Lokhttp3/HttpUrl;Lokhttp3/Request;Lcom/squareup/wire/Message;Ljava/lang/Class;Lcom/squareup/wire/Message;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/StageScope$RequestType;Lcom/stripe/loggingmodels/Trace$Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Throwable;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0003\n\u0000\u0010\u0000\u001a\u00020\u0001\"\u001c\u0008\u0000\u0010\u0002*\u0016\u0012\u0004\u0012\u0002H\u0002\u0012\u0002\u0008\u00030\u0003j\u0008\u0012\u0004\u0012\u0002H\u0002`\u0004\"\u001c\u0008\u0001\u0010\u0005*\u0016\u0012\u0004\u0012\u0002H\u0005\u0012\u0002\u0008\u00030\u0003j\u0008\u0012\u0004\u0012\u0002H\u0005`\u0004\"\u001c\u0008\u0002\u0010\u0006*\u0016\u0012\u0004\u0012\u0002H\u0006\u0012\u0002\u0008\u00030\u0003j\u0008\u0012\u0004\u0012\u0002H\u0006`\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\n\u00a2\u0006\u0002\u0008\t"
    }
    d2 = {
        "<anonymous>",
        "",
        "Req",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/jvmcore/restclient/Proto;",
        "Rsp",
        "Err",
        "it",
        "",
        "invoke"
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
.field final synthetic $this_run:Lokhttp3/Call;

.field final synthetic $timer:Lcom/stripe/jvmcore/logging/PendingTimer;

.field final synthetic this$0:Lcom/stripe/offlinemode/forwarding/OfflineRestService;


# direct methods
.method constructor <init>(Lcom/stripe/offlinemode/forwarding/OfflineRestService;Lcom/stripe/jvmcore/logging/PendingTimer;Lokhttp3/Call;)V
    .locals 0

    iput-object p1, p0, Lcom/stripe/offlinemode/forwarding/OfflineRestService$makeRequest$2$1$2;->this$0:Lcom/stripe/offlinemode/forwarding/OfflineRestService;

    iput-object p2, p0, Lcom/stripe/offlinemode/forwarding/OfflineRestService$makeRequest$2$1$2;->$timer:Lcom/stripe/jvmcore/logging/PendingTimer;

    iput-object p3, p0, Lcom/stripe/offlinemode/forwarding/OfflineRestService$makeRequest$2$1$2;->$this_run:Lokhttp3/Call;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 171
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/stripe/offlinemode/forwarding/OfflineRestService$makeRequest$2$1$2;->invoke(Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .locals 4

    .line 173
    :try_start_0
    iget-object v0, p0, Lcom/stripe/offlinemode/forwarding/OfflineRestService$makeRequest$2$1$2;->this$0:Lcom/stripe/offlinemode/forwarding/OfflineRestService;

    invoke-static {v0}, Lcom/stripe/offlinemode/forwarding/OfflineRestService;->access$getLogger$p(Lcom/stripe/offlinemode/forwarding/OfflineRestService;)Lcom/stripe/jvmcore/logging/HealthLogger;

    move-result-object v0

    .line 174
    iget-object v1, p0, Lcom/stripe/offlinemode/forwarding/OfflineRestService$makeRequest$2$1$2;->$timer:Lcom/stripe/jvmcore/logging/PendingTimer;

    .line 175
    sget-object v2, Lcom/stripe/loggingmodels/Outcome$Canceled;->INSTANCE:Lcom/stripe/loggingmodels/Outcome$Canceled;

    check-cast v2, Lcom/stripe/loggingmodels/Outcome;

    .line 176
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v3

    .line 173
    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/stripe/jvmcore/logging/HealthLogger;->endTimer(Lcom/stripe/jvmcore/logging/PendingTimer;Lcom/stripe/loggingmodels/Outcome;Ljava/util/Map;Ljava/lang/Throwable;)V

    .line 179
    iget-object p1, p0, Lcom/stripe/offlinemode/forwarding/OfflineRestService$makeRequest$2$1$2;->$this_run:Lokhttp3/Call;

    invoke-interface {p1}, Lokhttp3/Call;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
