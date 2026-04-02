.class public final Lio/ktor/client/call/SavedHttpResponse;
.super Lio/ktor/client/statement/HttpResponse;
.source "SavedCall.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0001\u00a2\u0006\u0002\u0010\u0007R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX\u0096\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000e\u0010\u000fR\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\u00020\u0013X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0014\u0010\u0016\u001a\u00020\u0017X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u0014\u0010\u001a\u001a\u00020\u001bX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001dR\u0014\u0010\u001e\u001a\u00020\u001bX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010\u001dR\u0014\u0010 \u001a\u00020!X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010#R\u0014\u0010$\u001a\u00020%X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008&\u0010\'\u00a8\u0006("
    }
    d2 = {
        "Lio/ktor/client/call/SavedHttpResponse;",
        "Lio/ktor/client/statement/HttpResponse;",
        "call",
        "Lio/ktor/client/call/SavedHttpCall;",
        "body",
        "",
        "origin",
        "(Lio/ktor/client/call/SavedHttpCall;[BLio/ktor/client/statement/HttpResponse;)V",
        "getCall",
        "()Lio/ktor/client/call/SavedHttpCall;",
        "content",
        "Lio/ktor/utils/io/ByteReadChannel;",
        "getContent$annotations",
        "()V",
        "getContent",
        "()Lio/ktor/utils/io/ByteReadChannel;",
        "context",
        "Lkotlinx/coroutines/CompletableJob;",
        "coroutineContext",
        "Lkotlin/coroutines/CoroutineContext;",
        "getCoroutineContext",
        "()Lkotlin/coroutines/CoroutineContext;",
        "headers",
        "Lio/ktor/http/Headers;",
        "getHeaders",
        "()Lio/ktor/http/Headers;",
        "requestTime",
        "Lio/ktor/util/date/GMTDate;",
        "getRequestTime",
        "()Lio/ktor/util/date/GMTDate;",
        "responseTime",
        "getResponseTime",
        "status",
        "Lio/ktor/http/HttpStatusCode;",
        "getStatus",
        "()Lio/ktor/http/HttpStatusCode;",
        "version",
        "Lio/ktor/http/HttpProtocolVersion;",
        "getVersion",
        "()Lio/ktor/http/HttpProtocolVersion;",
        "ktor-client-core"
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
.field private final call:Lio/ktor/client/call/SavedHttpCall;

.field private final content:Lio/ktor/utils/io/ByteReadChannel;

.field private final context:Lkotlinx/coroutines/CompletableJob;

.field private final coroutineContext:Lkotlin/coroutines/CoroutineContext;

.field private final headers:Lio/ktor/http/Headers;

.field private final requestTime:Lio/ktor/util/date/GMTDate;

.field private final responseTime:Lio/ktor/util/date/GMTDate;

.field private final status:Lio/ktor/http/HttpStatusCode;

.field private final version:Lio/ktor/http/HttpProtocolVersion;


# direct methods
.method public constructor <init>(Lio/ktor/client/call/SavedHttpCall;[BLio/ktor/client/statement/HttpResponse;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "body"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "origin"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-direct {p0}, Lio/ktor/client/statement/HttpResponse;-><init>()V

    .line 46
    iput-object p1, p0, Lio/ktor/client/call/SavedHttpResponse;->call:Lio/ktor/client/call/SavedHttpCall;

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 50
    invoke-static {p1, v0, p1}, Lkotlinx/coroutines/JobKt;->Job$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/client/call/SavedHttpResponse;->context:Lkotlinx/coroutines/CompletableJob;

    .line 52
    invoke-virtual {p3}, Lio/ktor/client/statement/HttpResponse;->getStatus()Lio/ktor/http/HttpStatusCode;

    move-result-object v0

    iput-object v0, p0, Lio/ktor/client/call/SavedHttpResponse;->status:Lio/ktor/http/HttpStatusCode;

    .line 54
    invoke-virtual {p3}, Lio/ktor/client/statement/HttpResponse;->getVersion()Lio/ktor/http/HttpProtocolVersion;

    move-result-object v0

    iput-object v0, p0, Lio/ktor/client/call/SavedHttpResponse;->version:Lio/ktor/http/HttpProtocolVersion;

    .line 56
    invoke-virtual {p3}, Lio/ktor/client/statement/HttpResponse;->getRequestTime()Lio/ktor/util/date/GMTDate;

    move-result-object v0

    iput-object v0, p0, Lio/ktor/client/call/SavedHttpResponse;->requestTime:Lio/ktor/util/date/GMTDate;

    .line 58
    invoke-virtual {p3}, Lio/ktor/client/statement/HttpResponse;->getResponseTime()Lio/ktor/util/date/GMTDate;

    move-result-object v0

    iput-object v0, p0, Lio/ktor/client/call/SavedHttpResponse;->responseTime:Lio/ktor/util/date/GMTDate;

    .line 60
    invoke-virtual {p3}, Lio/ktor/client/statement/HttpResponse;->getHeaders()Lio/ktor/http/Headers;

    move-result-object v0

    iput-object v0, p0, Lio/ktor/client/call/SavedHttpResponse;->headers:Lio/ktor/http/Headers;

    .line 62
    invoke-virtual {p3}, Lio/ktor/client/statement/HttpResponse;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p3

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    invoke-interface {p3, p1}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/client/call/SavedHttpResponse;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 65
    invoke-static {p2}, Lio/ktor/utils/io/ByteChannelCtorKt;->ByteReadChannel([B)Lio/ktor/utils/io/ByteReadChannel;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/client/call/SavedHttpResponse;->content:Lio/ktor/utils/io/ByteReadChannel;

    return-void
.end method

.method public static synthetic getContent$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public bridge synthetic getCall()Lio/ktor/client/call/HttpClientCall;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lio/ktor/client/call/SavedHttpResponse;->getCall()Lio/ktor/client/call/SavedHttpCall;

    move-result-object v0

    check-cast v0, Lio/ktor/client/call/HttpClientCall;

    return-object v0
.end method

.method public getCall()Lio/ktor/client/call/SavedHttpCall;
    .locals 1

    .line 46
    iget-object v0, p0, Lio/ktor/client/call/SavedHttpResponse;->call:Lio/ktor/client/call/SavedHttpCall;

    return-object v0
.end method

.method public getContent()Lio/ktor/utils/io/ByteReadChannel;
    .locals 1

    .line 65
    iget-object v0, p0, Lio/ktor/client/call/SavedHttpResponse;->content:Lio/ktor/utils/io/ByteReadChannel;

    return-object v0
.end method

.method public getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .locals 1

    .line 62
    iget-object v0, p0, Lio/ktor/client/call/SavedHttpResponse;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    return-object v0
.end method

.method public getHeaders()Lio/ktor/http/Headers;
    .locals 1

    .line 60
    iget-object v0, p0, Lio/ktor/client/call/SavedHttpResponse;->headers:Lio/ktor/http/Headers;

    return-object v0
.end method

.method public getRequestTime()Lio/ktor/util/date/GMTDate;
    .locals 1

    .line 56
    iget-object v0, p0, Lio/ktor/client/call/SavedHttpResponse;->requestTime:Lio/ktor/util/date/GMTDate;

    return-object v0
.end method

.method public getResponseTime()Lio/ktor/util/date/GMTDate;
    .locals 1

    .line 58
    iget-object v0, p0, Lio/ktor/client/call/SavedHttpResponse;->responseTime:Lio/ktor/util/date/GMTDate;

    return-object v0
.end method

.method public getStatus()Lio/ktor/http/HttpStatusCode;
    .locals 1

    .line 52
    iget-object v0, p0, Lio/ktor/client/call/SavedHttpResponse;->status:Lio/ktor/http/HttpStatusCode;

    return-object v0
.end method

.method public getVersion()Lio/ktor/http/HttpProtocolVersion;
    .locals 1

    .line 54
    iget-object v0, p0, Lio/ktor/client/call/SavedHttpResponse;->version:Lio/ktor/http/HttpProtocolVersion;

    return-object v0
.end method
