.class public final Lio/ktor/client/plugins/HttpRequestRetry$ModifyRequestContext;
.super Ljava/lang/Object;
.source "HttpRequestRetry.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/client/plugins/HttpRequestRetry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ModifyRequestContext"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\n\u0018\u00002\u00020\u0001B+\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0013"
    }
    d2 = {
        "Lio/ktor/client/plugins/HttpRequestRetry$ModifyRequestContext;",
        "",
        "request",
        "Lio/ktor/client/request/HttpRequestBuilder;",
        "response",
        "Lio/ktor/client/statement/HttpResponse;",
        "cause",
        "",
        "retryCount",
        "",
        "(Lio/ktor/client/request/HttpRequestBuilder;Lio/ktor/client/statement/HttpResponse;Ljava/lang/Throwable;I)V",
        "getCause",
        "()Ljava/lang/Throwable;",
        "getRequest",
        "()Lio/ktor/client/request/HttpRequestBuilder;",
        "getResponse",
        "()Lio/ktor/client/statement/HttpResponse;",
        "getRetryCount",
        "()I",
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
.field private final cause:Ljava/lang/Throwable;

.field private final request:Lio/ktor/client/request/HttpRequestBuilder;

.field private final response:Lio/ktor/client/statement/HttpResponse;

.field private final retryCount:I


# direct methods
.method public constructor <init>(Lio/ktor/client/request/HttpRequestBuilder;Lio/ktor/client/statement/HttpResponse;Ljava/lang/Throwable;I)V
    .locals 1

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lio/ktor/client/plugins/HttpRequestRetry$ModifyRequestContext;->request:Lio/ktor/client/request/HttpRequestBuilder;

    .line 76
    iput-object p2, p0, Lio/ktor/client/plugins/HttpRequestRetry$ModifyRequestContext;->response:Lio/ktor/client/statement/HttpResponse;

    .line 77
    iput-object p3, p0, Lio/ktor/client/plugins/HttpRequestRetry$ModifyRequestContext;->cause:Ljava/lang/Throwable;

    .line 81
    iput p4, p0, Lio/ktor/client/plugins/HttpRequestRetry$ModifyRequestContext;->retryCount:I

    return-void
.end method


# virtual methods
.method public final getCause()Ljava/lang/Throwable;
    .locals 1

    .line 77
    iget-object v0, p0, Lio/ktor/client/plugins/HttpRequestRetry$ModifyRequestContext;->cause:Ljava/lang/Throwable;

    return-object v0
.end method

.method public final getRequest()Lio/ktor/client/request/HttpRequestBuilder;
    .locals 1

    .line 75
    iget-object v0, p0, Lio/ktor/client/plugins/HttpRequestRetry$ModifyRequestContext;->request:Lio/ktor/client/request/HttpRequestBuilder;

    return-object v0
.end method

.method public final getResponse()Lio/ktor/client/statement/HttpResponse;
    .locals 1

    .line 76
    iget-object v0, p0, Lio/ktor/client/plugins/HttpRequestRetry$ModifyRequestContext;->response:Lio/ktor/client/statement/HttpResponse;

    return-object v0
.end method

.method public final getRetryCount()I
    .locals 1

    .line 81
    iget v0, p0, Lio/ktor/client/plugins/HttpRequestRetry$ModifyRequestContext;->retryCount:I

    return v0
.end method
