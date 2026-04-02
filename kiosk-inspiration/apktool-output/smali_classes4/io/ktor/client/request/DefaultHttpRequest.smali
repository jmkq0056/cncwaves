.class public Lio/ktor/client/request/DefaultHttpRequest;
.super Ljava/lang/Object;
.source "DefaultHttpRequest.kt"

# interfaces
.implements Lio/ktor/client/request/HttpRequest;


# annotations
.annotation runtime Lio/ktor/util/InternalAPI;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0017\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u0008X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\r\u001a\u00020\u000eX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0014\u0010\u0011\u001a\u00020\u00128VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0014R\u0014\u0010\u0015\u001a\u00020\u0016X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u0014\u0010\u0019\u001a\u00020\u001aX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001cR\u0014\u0010\u001d\u001a\u00020\u001eX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010 \u00a8\u0006!"
    }
    d2 = {
        "Lio/ktor/client/request/DefaultHttpRequest;",
        "Lio/ktor/client/request/HttpRequest;",
        "call",
        "Lio/ktor/client/call/HttpClientCall;",
        "data",
        "Lio/ktor/client/request/HttpRequestData;",
        "(Lio/ktor/client/call/HttpClientCall;Lio/ktor/client/request/HttpRequestData;)V",
        "attributes",
        "Lio/ktor/util/Attributes;",
        "getAttributes",
        "()Lio/ktor/util/Attributes;",
        "getCall",
        "()Lio/ktor/client/call/HttpClientCall;",
        "content",
        "Lio/ktor/http/content/OutgoingContent;",
        "getContent",
        "()Lio/ktor/http/content/OutgoingContent;",
        "coroutineContext",
        "Lkotlin/coroutines/CoroutineContext;",
        "getCoroutineContext",
        "()Lkotlin/coroutines/CoroutineContext;",
        "headers",
        "Lio/ktor/http/Headers;",
        "getHeaders",
        "()Lio/ktor/http/Headers;",
        "method",
        "Lio/ktor/http/HttpMethod;",
        "getMethod",
        "()Lio/ktor/http/HttpMethod;",
        "url",
        "Lio/ktor/http/Url;",
        "getUrl",
        "()Lio/ktor/http/Url;",
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
.field private final attributes:Lio/ktor/util/Attributes;

.field private final call:Lio/ktor/client/call/HttpClientCall;

.field private final content:Lio/ktor/http/content/OutgoingContent;

.field private final headers:Lio/ktor/http/Headers;

.field private final method:Lio/ktor/http/HttpMethod;

.field private final url:Lio/ktor/http/Url;


# direct methods
.method public constructor <init>(Lio/ktor/client/call/HttpClientCall;Lio/ktor/client/request/HttpRequestData;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lio/ktor/client/request/DefaultHttpRequest;->call:Lio/ktor/client/call/HttpClientCall;

    .line 20
    invoke-virtual {p2}, Lio/ktor/client/request/HttpRequestData;->getMethod()Lio/ktor/http/HttpMethod;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/client/request/DefaultHttpRequest;->method:Lio/ktor/http/HttpMethod;

    .line 22
    invoke-virtual {p2}, Lio/ktor/client/request/HttpRequestData;->getUrl()Lio/ktor/http/Url;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/client/request/DefaultHttpRequest;->url:Lio/ktor/http/Url;

    .line 24
    invoke-virtual {p2}, Lio/ktor/client/request/HttpRequestData;->getBody()Lio/ktor/http/content/OutgoingContent;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/client/request/DefaultHttpRequest;->content:Lio/ktor/http/content/OutgoingContent;

    .line 26
    invoke-virtual {p2}, Lio/ktor/client/request/HttpRequestData;->getHeaders()Lio/ktor/http/Headers;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/client/request/DefaultHttpRequest;->headers:Lio/ktor/http/Headers;

    .line 28
    invoke-virtual {p2}, Lio/ktor/client/request/HttpRequestData;->getAttributes()Lio/ktor/util/Attributes;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/client/request/DefaultHttpRequest;->attributes:Lio/ktor/util/Attributes;

    return-void
.end method


# virtual methods
.method public getAttributes()Lio/ktor/util/Attributes;
    .locals 1

    .line 28
    iget-object v0, p0, Lio/ktor/client/request/DefaultHttpRequest;->attributes:Lio/ktor/util/Attributes;

    return-object v0
.end method

.method public getCall()Lio/ktor/client/call/HttpClientCall;
    .locals 1

    .line 17
    iget-object v0, p0, Lio/ktor/client/request/DefaultHttpRequest;->call:Lio/ktor/client/call/HttpClientCall;

    return-object v0
.end method

.method public getContent()Lio/ktor/http/content/OutgoingContent;
    .locals 1

    .line 24
    iget-object v0, p0, Lio/ktor/client/request/DefaultHttpRequest;->content:Lio/ktor/http/content/OutgoingContent;

    return-object v0
.end method

.method public getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lio/ktor/client/request/DefaultHttpRequest;->getCall()Lio/ktor/client/call/HttpClientCall;

    move-result-object v0

    invoke-virtual {v0}, Lio/ktor/client/call/HttpClientCall;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    return-object v0
.end method

.method public getHeaders()Lio/ktor/http/Headers;
    .locals 1

    .line 26
    iget-object v0, p0, Lio/ktor/client/request/DefaultHttpRequest;->headers:Lio/ktor/http/Headers;

    return-object v0
.end method

.method public getMethod()Lio/ktor/http/HttpMethod;
    .locals 1

    .line 20
    iget-object v0, p0, Lio/ktor/client/request/DefaultHttpRequest;->method:Lio/ktor/http/HttpMethod;

    return-object v0
.end method

.method public getUrl()Lio/ktor/http/Url;
    .locals 1

    .line 22
    iget-object v0, p0, Lio/ktor/client/request/DefaultHttpRequest;->url:Lio/ktor/http/Url;

    return-object v0
.end method
