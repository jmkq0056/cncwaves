.class public final Lio/ktor/client/statement/DefaultHttpResponse;
.super Lio/ktor/client/statement/HttpResponse;
.source "DefaultHttpResponse.kt"


# annotations
.annotation runtime Lio/ktor/util/InternalAPI;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\t\u001a\u00020\nX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\r\u001a\u00020\u000eX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0014\u0010\u0011\u001a\u00020\u0012X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0014\u0010\u0015\u001a\u00020\u0016X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u0014\u0010\u0019\u001a\u00020\u0016X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u0018R\u0014\u0010\u001b\u001a\u00020\u001cX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001eR\u0014\u0010\u001f\u001a\u00020 X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\"\u00a8\u0006#"
    }
    d2 = {
        "Lio/ktor/client/statement/DefaultHttpResponse;",
        "Lio/ktor/client/statement/HttpResponse;",
        "call",
        "Lio/ktor/client/call/HttpClientCall;",
        "responseData",
        "Lio/ktor/client/request/HttpResponseData;",
        "(Lio/ktor/client/call/HttpClientCall;Lio/ktor/client/request/HttpResponseData;)V",
        "getCall",
        "()Lio/ktor/client/call/HttpClientCall;",
        "content",
        "Lio/ktor/utils/io/ByteReadChannel;",
        "getContent",
        "()Lio/ktor/utils/io/ByteReadChannel;",
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
.field private final call:Lio/ktor/client/call/HttpClientCall;

.field private final content:Lio/ktor/utils/io/ByteReadChannel;

.field private final coroutineContext:Lkotlin/coroutines/CoroutineContext;

.field private final headers:Lio/ktor/http/Headers;

.field private final requestTime:Lio/ktor/util/date/GMTDate;

.field private final responseTime:Lio/ktor/util/date/GMTDate;

.field private final status:Lio/ktor/http/HttpStatusCode;

.field private final version:Lio/ktor/http/HttpProtocolVersion;


# direct methods
.method public constructor <init>(Lio/ktor/client/call/HttpClientCall;Lio/ktor/client/request/HttpResponseData;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "responseData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Lio/ktor/client/statement/HttpResponse;-><init>()V

    .line 17
    iput-object p1, p0, Lio/ktor/client/statement/DefaultHttpResponse;->call:Lio/ktor/client/call/HttpClientCall;

    .line 20
    invoke-virtual {p2}, Lio/ktor/client/request/HttpResponseData;->getCallContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/client/statement/DefaultHttpResponse;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 22
    invoke-virtual {p2}, Lio/ktor/client/request/HttpResponseData;->getStatusCode()Lio/ktor/http/HttpStatusCode;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/client/statement/DefaultHttpResponse;->status:Lio/ktor/http/HttpStatusCode;

    .line 24
    invoke-virtual {p2}, Lio/ktor/client/request/HttpResponseData;->getVersion()Lio/ktor/http/HttpProtocolVersion;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/client/statement/DefaultHttpResponse;->version:Lio/ktor/http/HttpProtocolVersion;

    .line 26
    invoke-virtual {p2}, Lio/ktor/client/request/HttpResponseData;->getRequestTime()Lio/ktor/util/date/GMTDate;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/client/statement/DefaultHttpResponse;->requestTime:Lio/ktor/util/date/GMTDate;

    .line 28
    invoke-virtual {p2}, Lio/ktor/client/request/HttpResponseData;->getResponseTime()Lio/ktor/util/date/GMTDate;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/client/statement/DefaultHttpResponse;->responseTime:Lio/ktor/util/date/GMTDate;

    .line 30
    invoke-virtual {p2}, Lio/ktor/client/request/HttpResponseData;->getBody()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lio/ktor/utils/io/ByteReadChannel;

    if-eqz v0, :cond_0

    check-cast p1, Lio/ktor/utils/io/ByteReadChannel;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    .line 31
    sget-object p1, Lio/ktor/utils/io/ByteReadChannel;->Companion:Lio/ktor/utils/io/ByteReadChannel$Companion;

    invoke-virtual {p1}, Lio/ktor/utils/io/ByteReadChannel$Companion;->getEmpty()Lio/ktor/utils/io/ByteReadChannel;

    move-result-object p1

    .line 30
    :cond_1
    iput-object p1, p0, Lio/ktor/client/statement/DefaultHttpResponse;->content:Lio/ktor/utils/io/ByteReadChannel;

    .line 33
    invoke-virtual {p2}, Lio/ktor/client/request/HttpResponseData;->getHeaders()Lio/ktor/http/Headers;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/client/statement/DefaultHttpResponse;->headers:Lio/ktor/http/Headers;

    return-void
.end method


# virtual methods
.method public getCall()Lio/ktor/client/call/HttpClientCall;
    .locals 1

    .line 17
    iget-object v0, p0, Lio/ktor/client/statement/DefaultHttpResponse;->call:Lio/ktor/client/call/HttpClientCall;

    return-object v0
.end method

.method public getContent()Lio/ktor/utils/io/ByteReadChannel;
    .locals 1

    .line 30
    iget-object v0, p0, Lio/ktor/client/statement/DefaultHttpResponse;->content:Lio/ktor/utils/io/ByteReadChannel;

    return-object v0
.end method

.method public getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .locals 1

    .line 20
    iget-object v0, p0, Lio/ktor/client/statement/DefaultHttpResponse;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    return-object v0
.end method

.method public getHeaders()Lio/ktor/http/Headers;
    .locals 1

    .line 33
    iget-object v0, p0, Lio/ktor/client/statement/DefaultHttpResponse;->headers:Lio/ktor/http/Headers;

    return-object v0
.end method

.method public getRequestTime()Lio/ktor/util/date/GMTDate;
    .locals 1

    .line 26
    iget-object v0, p0, Lio/ktor/client/statement/DefaultHttpResponse;->requestTime:Lio/ktor/util/date/GMTDate;

    return-object v0
.end method

.method public getResponseTime()Lio/ktor/util/date/GMTDate;
    .locals 1

    .line 28
    iget-object v0, p0, Lio/ktor/client/statement/DefaultHttpResponse;->responseTime:Lio/ktor/util/date/GMTDate;

    return-object v0
.end method

.method public getStatus()Lio/ktor/http/HttpStatusCode;
    .locals 1

    .line 22
    iget-object v0, p0, Lio/ktor/client/statement/DefaultHttpResponse;->status:Lio/ktor/http/HttpStatusCode;

    return-object v0
.end method

.method public getVersion()Lio/ktor/http/HttpProtocolVersion;
    .locals 1

    .line 24
    iget-object v0, p0, Lio/ktor/client/statement/DefaultHttpResponse;->version:Lio/ktor/http/HttpProtocolVersion;

    return-object v0
.end method
