.class public final Lcom/stripe/offlinemode/forwarding/OfflineRestService$makeRequest$2$1$1;
.super Ljava/lang/Object;
.source "OfflineRestService.kt"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/offlinemode/forwarding/OfflineRestService;->makeRequest(Lokhttp3/HttpUrl;Lokhttp3/Request;Lcom/squareup/wire/Message;Ljava/lang/Class;Lcom/squareup/wire/Message;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/StageScope$RequestType;Lcom/stripe/loggingmodels/Trace$Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOfflineRestService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OfflineRestService.kt\ncom/stripe/offlinemode/forwarding/OfflineRestService$makeRequest$2$1$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,281:1\n1#2:282\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0018\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\nH\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/stripe/offlinemode/forwarding/OfflineRestService$makeRequest$2$1$1",
        "Lokhttp3/Callback;",
        "onFailure",
        "",
        "call",
        "Lokhttp3/Call;",
        "e",
        "Ljava/io/IOException;",
        "onResponse",
        "response",
        "Lokhttp3/Response;",
        "offlinemode_release"
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
.field final synthetic $continuation:Lkotlinx/coroutines/CancellableContinuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/CancellableContinuation<",
            "Lcom/stripe/jvmcore/restclient/RestResponse<",
            "TRsp;TErr;>;>;"
        }
    .end annotation
.end field

.field final synthetic $error:Lcom/squareup/wire/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TErr;"
        }
    .end annotation
.end field

.field final synthetic $httpUrl:Lokhttp3/HttpUrl;

.field final synthetic $responseType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TRsp;>;"
        }
    .end annotation
.end field

.field final synthetic $timer:Lcom/stripe/jvmcore/logging/PendingTimer;

.field final synthetic $trace:Lcom/stripe/loggingmodels/Trace;

.field final synthetic this$0:Lcom/stripe/offlinemode/forwarding/OfflineRestService;


# direct methods
.method constructor <init>(Lcom/squareup/wire/Message;Lokhttp3/HttpUrl;Lcom/stripe/offlinemode/forwarding/OfflineRestService;Lkotlinx/coroutines/CancellableContinuation;Lcom/stripe/jvmcore/logging/PendingTimer;Lcom/stripe/loggingmodels/Trace;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TErr;",
            "Lokhttp3/HttpUrl;",
            "Lcom/stripe/offlinemode/forwarding/OfflineRestService;",
            "Lkotlinx/coroutines/CancellableContinuation<",
            "-",
            "Lcom/stripe/jvmcore/restclient/RestResponse<",
            "TRsp;TErr;>;>;",
            "Lcom/stripe/jvmcore/logging/PendingTimer;",
            "Lcom/stripe/loggingmodels/Trace;",
            "Ljava/lang/Class<",
            "TRsp;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stripe/offlinemode/forwarding/OfflineRestService$makeRequest$2$1$1;->$error:Lcom/squareup/wire/Message;

    iput-object p2, p0, Lcom/stripe/offlinemode/forwarding/OfflineRestService$makeRequest$2$1$1;->$httpUrl:Lokhttp3/HttpUrl;

    iput-object p3, p0, Lcom/stripe/offlinemode/forwarding/OfflineRestService$makeRequest$2$1$1;->this$0:Lcom/stripe/offlinemode/forwarding/OfflineRestService;

    iput-object p4, p0, Lcom/stripe/offlinemode/forwarding/OfflineRestService$makeRequest$2$1$1;->$continuation:Lkotlinx/coroutines/CancellableContinuation;

    iput-object p5, p0, Lcom/stripe/offlinemode/forwarding/OfflineRestService$makeRequest$2$1$1;->$timer:Lcom/stripe/jvmcore/logging/PendingTimer;

    iput-object p6, p0, Lcom/stripe/offlinemode/forwarding/OfflineRestService$makeRequest$2$1$1;->$trace:Lcom/stripe/loggingmodels/Trace;

    iput-object p7, p0, Lcom/stripe/offlinemode/forwarding/OfflineRestService$makeRequest$2$1$1;->$responseType:Ljava/lang/Class;

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 8

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "e"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    new-instance v0, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;

    .line 152
    iget-object v1, p0, Lcom/stripe/offlinemode/forwarding/OfflineRestService$makeRequest$2$1$1;->$error:Lcom/squareup/wire/Message;

    .line 153
    sget-object v2, Lcom/stripe/proto/model/rest/StatusCode;->HTTP_ERROR_UNKNOWN_STATE:Lcom/stripe/proto/model/rest/StatusCode;

    .line 154
    iget-object p1, p0, Lcom/stripe/offlinemode/forwarding/OfflineRestService$makeRequest$2$1$1;->$httpUrl:Lokhttp3/HttpUrl;

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v3

    .line 156
    iget-object p1, p0, Lcom/stripe/offlinemode/forwarding/OfflineRestService$makeRequest$2$1$1;->this$0:Lcom/stripe/offlinemode/forwarding/OfflineRestService;

    invoke-static {p1}, Lcom/stripe/offlinemode/forwarding/OfflineRestService;->access$getMoshi$p(Lcom/stripe/offlinemode/forwarding/OfflineRestService;)Lcom/squareup/moshi/Moshi;

    move-result-object v5

    .line 157
    sget-object p1, Lcom/stripe/jvmcore/redaction/terminal/TerminalMessageRedactor;->INSTANCE:Lcom/stripe/jvmcore/redaction/terminal/TerminalMessageRedactor;

    move-object v6, p1

    check-cast v6, Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;

    .line 158
    new-instance v7, Ljava/util/TreeMap;

    invoke-direct {v7}, Ljava/util/TreeMap;-><init>()V

    const/4 v4, 0x0

    .line 151
    invoke-direct/range {v0 .. v7}, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;-><init>(Lcom/squareup/wire/Message;Lcom/stripe/proto/model/rest/StatusCode;Ljava/lang/String;Ljava/lang/Long;Lcom/squareup/moshi/Moshi;Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;Ljava/util/TreeMap;)V

    .line 160
    iget-object p1, p0, Lcom/stripe/offlinemode/forwarding/OfflineRestService$makeRequest$2$1$1;->this$0:Lcom/stripe/offlinemode/forwarding/OfflineRestService;

    iget-object p2, p0, Lcom/stripe/offlinemode/forwarding/OfflineRestService$makeRequest$2$1$1;->$timer:Lcom/stripe/jvmcore/logging/PendingTimer;

    iget-object v1, p0, Lcom/stripe/offlinemode/forwarding/OfflineRestService$makeRequest$2$1$1;->$trace:Lcom/stripe/loggingmodels/Trace;

    move-object v2, v0

    check-cast v2, Lcom/stripe/jvmcore/restclient/RestResponse;

    invoke-static {p1, v2, p2, v1}, Lcom/stripe/offlinemode/forwarding/OfflineRestService;->access$endLogs(Lcom/stripe/offlinemode/forwarding/OfflineRestService;Lcom/stripe/jvmcore/restclient/RestResponse;Lcom/stripe/jvmcore/logging/PendingTimer;Lcom/stripe/loggingmodels/Trace;)V

    .line 161
    iget-object p1, p0, Lcom/stripe/offlinemode/forwarding/OfflineRestService$makeRequest$2$1$1;->$continuation:Lkotlinx/coroutines/CancellableContinuation;

    check-cast p1, Lkotlin/coroutines/Continuation;

    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 7

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "response"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    sget-object v0, Lcom/stripe/jvmcore/restclient/RestResponse;->Companion:Lcom/stripe/jvmcore/restclient/RestResponse$Companion;

    iget-object p1, p0, Lcom/stripe/offlinemode/forwarding/OfflineRestService$makeRequest$2$1$1;->this$0:Lcom/stripe/offlinemode/forwarding/OfflineRestService;

    invoke-static {p1}, Lcom/stripe/offlinemode/forwarding/OfflineRestService;->access$getMoshi$p(Lcom/stripe/offlinemode/forwarding/OfflineRestService;)Lcom/squareup/moshi/Moshi;

    move-result-object v2

    iget-object v3, p0, Lcom/stripe/offlinemode/forwarding/OfflineRestService$makeRequest$2$1$1;->$responseType:Ljava/lang/Class;

    iget-object v4, p0, Lcom/stripe/offlinemode/forwarding/OfflineRestService$makeRequest$2$1$1;->$error:Lcom/squareup/wire/Message;

    sget-object p1, Lcom/stripe/jvmcore/redaction/terminal/TerminalMessageRedactor;->INSTANCE:Lcom/stripe/jvmcore/redaction/terminal/TerminalMessageRedactor;

    move-object v5, p1

    check-cast v5, Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;

    iget-object p1, p0, Lcom/stripe/offlinemode/forwarding/OfflineRestService$makeRequest$2$1$1;->this$0:Lcom/stripe/offlinemode/forwarding/OfflineRestService;

    invoke-static {p1}, Lcom/stripe/offlinemode/forwarding/OfflineRestService;->access$getLogWriter$p(Lcom/stripe/offlinemode/forwarding/OfflineRestService;)Lcom/stripe/logwriter/LogWriter;

    move-result-object v6

    move-object v1, p2

    invoke-virtual/range {v0 .. v6}, Lcom/stripe/jvmcore/restclient/RestResponse$Companion;->toRestResponse(Lokhttp3/Response;Lcom/squareup/moshi/Moshi;Ljava/lang/Class;Lcom/squareup/wire/Message;Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;Lcom/stripe/logwriter/LogWriter;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object p1

    .line 166
    iget-object p2, p0, Lcom/stripe/offlinemode/forwarding/OfflineRestService$makeRequest$2$1$1;->this$0:Lcom/stripe/offlinemode/forwarding/OfflineRestService;

    iget-object v0, p0, Lcom/stripe/offlinemode/forwarding/OfflineRestService$makeRequest$2$1$1;->$timer:Lcom/stripe/jvmcore/logging/PendingTimer;

    iget-object v1, p0, Lcom/stripe/offlinemode/forwarding/OfflineRestService$makeRequest$2$1$1;->$trace:Lcom/stripe/loggingmodels/Trace;

    invoke-static {p2, p1, v0, v1}, Lcom/stripe/offlinemode/forwarding/OfflineRestService;->access$endLogs(Lcom/stripe/offlinemode/forwarding/OfflineRestService;Lcom/stripe/jvmcore/restclient/RestResponse;Lcom/stripe/jvmcore/logging/PendingTimer;Lcom/stripe/loggingmodels/Trace;)V

    .line 167
    iget-object p2, p0, Lcom/stripe/offlinemode/forwarding/OfflineRestService$makeRequest$2$1$1;->$continuation:Lkotlinx/coroutines/CancellableContinuation;

    check-cast p2, Lkotlin/coroutines/Continuation;

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method
