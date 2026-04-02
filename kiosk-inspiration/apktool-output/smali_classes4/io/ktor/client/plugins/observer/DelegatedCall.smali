.class public final Lio/ktor/client/plugins/observer/DelegatedCall;
.super Lio/ktor/client/call/HttpClientCall;
.source "DelegatedCall.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0001\u00a2\u0006\u0002\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lio/ktor/client/plugins/observer/DelegatedCall;",
        "Lio/ktor/client/call/HttpClientCall;",
        "client",
        "Lio/ktor/client/HttpClient;",
        "content",
        "Lio/ktor/utils/io/ByteReadChannel;",
        "originCall",
        "(Lio/ktor/client/HttpClient;Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/client/call/HttpClientCall;)V",
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


# direct methods
.method public constructor <init>(Lio/ktor/client/HttpClient;Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/client/call/HttpClientCall;)V
    .locals 2

    const-string v0, "client"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "originCall"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-direct {p0, p1}, Lio/ktor/client/call/HttpClientCall;-><init>(Lio/ktor/client/HttpClient;)V

    .line 46
    new-instance p1, Lio/ktor/client/plugins/observer/DelegatedRequest;

    move-object v0, p0

    check-cast v0, Lio/ktor/client/call/HttpClientCall;

    invoke-virtual {p3}, Lio/ktor/client/call/HttpClientCall;->getRequest()Lio/ktor/client/request/HttpRequest;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lio/ktor/client/plugins/observer/DelegatedRequest;-><init>(Lio/ktor/client/call/HttpClientCall;Lio/ktor/client/request/HttpRequest;)V

    check-cast p1, Lio/ktor/client/request/HttpRequest;

    invoke-virtual {p0, p1}, Lio/ktor/client/plugins/observer/DelegatedCall;->setRequest(Lio/ktor/client/request/HttpRequest;)V

    .line 47
    new-instance p1, Lio/ktor/client/plugins/observer/DelegatedResponse;

    invoke-virtual {p3}, Lio/ktor/client/call/HttpClientCall;->getResponse()Lio/ktor/client/statement/HttpResponse;

    move-result-object p3

    invoke-direct {p1, v0, p2, p3}, Lio/ktor/client/plugins/observer/DelegatedResponse;-><init>(Lio/ktor/client/call/HttpClientCall;Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/client/statement/HttpResponse;)V

    check-cast p1, Lio/ktor/client/statement/HttpResponse;

    invoke-virtual {p0, p1}, Lio/ktor/client/plugins/observer/DelegatedCall;->setResponse(Lio/ktor/client/statement/HttpResponse;)V

    return-void
.end method
