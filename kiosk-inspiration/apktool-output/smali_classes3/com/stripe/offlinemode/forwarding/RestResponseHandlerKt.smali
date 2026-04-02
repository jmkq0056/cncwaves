.class public final Lcom/stripe/offlinemode/forwarding/RestResponseHandlerKt;
.super Ljava/lang/Object;
.source "RestResponseHandler.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001ab\u0010\u0000\u001a\u0002H\u0001\"\u001c\u0008\u0000\u0010\u0001*\u0016\u0012\u0004\u0012\u0002H\u0001\u0012\u0002\u0008\u00030\u0002j\u0008\u0012\u0004\u0012\u0002H\u0001`\u0003*\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u00020\u00050\u00042$\u0010\u0006\u001a \u0008\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u0008\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00010\t\u0012\u0006\u0012\u0004\u0018\u00010\n0\u0007H\u0080@\u00a2\u0006\u0002\u0010\u000b\u001a6\u0010\u000c\u001a\u00020\r\"\u001c\u0008\u0000\u0010\u000e*\u0016\u0012\u0004\u0012\u0002H\u000e\u0012\u0002\u0008\u00030\u0002j\u0008\u0012\u0004\u0012\u0002H\u000e`\u0003*\u000e\u0012\u0004\u0012\u0002H\u000e\u0012\u0004\u0012\u00020\u00050\u000fH\u0002\u001a6\u0010\u0010\u001a\u00020\r\"\u001c\u0008\u0000\u0010\u000e*\u0016\u0012\u0004\u0012\u0002H\u000e\u0012\u0002\u0008\u00030\u0002j\u0008\u0012\u0004\u0012\u0002H\u000e`\u0003*\u000e\u0012\u0004\u0012\u0002H\u000e\u0012\u0004\u0012\u00020\u00050\u000fH\u0002\u001a6\u0010\u0011\u001a\u00020\r\"\u001c\u0008\u0000\u0010\u000e*\u0016\u0012\u0004\u0012\u0002H\u000e\u0012\u0002\u0008\u00030\u0002j\u0008\u0012\u0004\u0012\u0002H\u000e`\u0003*\u000e\u0012\u0004\u0012\u0002H\u000e\u0012\u0004\u0012\u00020\u00050\u000fH\u0002\u00a8\u0006\u0012"
    }
    d2 = {
        "decodeResponseAndHandleAuthFailure",
        "T",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/jvmcore/restclient/Proto;",
        "Lcom/stripe/jvmcore/restclient/RestResponse;",
        "Lcom/stripe/proto/model/rest/ErrorWrapper;",
        "handleAuthFailure",
        "Lkotlin/Function2;",
        "Lcom/stripe/proto/model/rest/ErrorResponse;",
        "Lkotlin/coroutines/Continuation;",
        "",
        "(Lcom/stripe/jvmcore/restclient/RestResponse;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "isAuthError",
        "",
        "Rsp",
        "Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;",
        "isConnectionError",
        "isMalformedRequestError",
        "offlinemode_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final decodeResponseAndHandleAuthFailure(Lcom/stripe/jvmcore/restclient/RestResponse;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/squareup/wire/Message<",
            "TT;*>;>(",
            "Lcom/stripe/jvmcore/restclient/RestResponse<",
            "TT;",
            "Lcom/stripe/proto/model/rest/ErrorWrapper;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/stripe/proto/model/rest/ErrorResponse;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 17
    instance-of v0, p0, Lcom/stripe/jvmcore/restclient/RestResponse$Success;

    if-eqz v0, :cond_0

    .line 19
    check-cast p0, Lcom/stripe/jvmcore/restclient/RestResponse$Success;

    invoke-virtual {p0}, Lcom/stripe/jvmcore/restclient/RestResponse$Success;->getResponse()Lcom/squareup/wire/Message;

    move-result-object p0

    return-object p0

    .line 21
    :cond_0
    instance-of v0, p0, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 23
    move-object v0, p0

    check-cast v0, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;

    invoke-static {v0}, Lcom/stripe/offlinemode/forwarding/RestResponseHandlerKt;->isAuthError(Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 24
    invoke-virtual {v0}, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;->getResponse()Lcom/squareup/wire/Message;

    move-result-object p0

    check-cast p0, Lcom/stripe/proto/model/rest/ErrorWrapper;

    iget-object p0, p0, Lcom/stripe/proto/model/rest/ErrorWrapper;->error:Lcom/stripe/proto/model/rest/ErrorResponse;

    invoke-interface {p1, p0, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 26
    :cond_1
    invoke-static {v0}, Lcom/stripe/offlinemode/forwarding/RestResponseHandlerKt;->isConnectionError(Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;)Z

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_3

    .line 37
    invoke-static {v0}, Lcom/stripe/offlinemode/forwarding/RestResponseHandlerKt;->isMalformedRequestError(Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;)Z

    move-result p1

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    .line 42
    sget-object p0, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;

    invoke-virtual {v0}, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;->getResponse()Lcom/squareup/wire/Message;

    move-result-object p1

    check-cast p1, Lcom/stripe/proto/model/rest/ErrorWrapper;

    iget-object p1, p1, Lcom/stripe/proto/model/rest/ErrorWrapper;->error:Lcom/stripe/proto/model/rest/ErrorResponse;

    invoke-static {p0, p1, v2, p2, v2}, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->toTerminalException$default(Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;Lcom/stripe/proto/model/rest/ErrorResponse;Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;ILjava/lang/Object;)Lcom/stripe/stripeterminal/external/models/TerminalException;

    move-result-object p0

    .line 38
    new-instance p1, Lcom/stripe/offlinemode/forwarding/ForwardingApiException;

    invoke-direct {p1, p0, v1, v1, p2}, Lcom/stripe/offlinemode/forwarding/ForwardingApiException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalException;ZZZ)V

    throw p1

    .line 47
    :cond_2
    invoke-virtual {p0}, Lcom/stripe/jvmcore/restclient/RestResponse;->shouldRetry()Z

    move-result p0

    .line 50
    sget-object p1, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;

    invoke-virtual {v0}, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;->getResponse()Lcom/squareup/wire/Message;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/model/rest/ErrorWrapper;

    iget-object v0, v0, Lcom/stripe/proto/model/rest/ErrorWrapper;->error:Lcom/stripe/proto/model/rest/ErrorResponse;

    invoke-static {p1, v0, v2, p2, v2}, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->toTerminalException$default(Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;Lcom/stripe/proto/model/rest/ErrorResponse;Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;ILjava/lang/Object;)Lcom/stripe/stripeterminal/external/models/TerminalException;

    move-result-object p1

    .line 46
    new-instance p2, Lcom/stripe/offlinemode/forwarding/ForwardingApiException;

    invoke-direct {p2, p1, p0, v1, v1}, Lcom/stripe/offlinemode/forwarding/ForwardingApiException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalException;ZZZ)V

    throw p2

    .line 31
    :cond_3
    new-instance v2, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 32
    sget-object v3, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->STRIPE_API_CONNECTION_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v7, 0xc

    const/4 v8, 0x0

    .line 31
    const-string v4, "Could not connect to Stripe. Please retry."

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 27
    new-instance p0, Lcom/stripe/offlinemode/forwarding/ForwardingApiException;

    invoke-direct {p0, v2, p2, v1, v1}, Lcom/stripe/offlinemode/forwarding/ForwardingApiException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalException;ZZZ)V

    throw p0

    .line 55
    :cond_4
    instance-of p1, p0, Lcom/stripe/jvmcore/restclient/RestResponse$ParseError;

    if-eqz p1, :cond_5

    .line 57
    invoke-virtual {p0}, Lcom/stripe/jvmcore/restclient/RestResponse;->shouldRetry()Z

    move-result p1

    .line 60
    new-instance v2, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 61
    sget-object v3, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->STRIPE_API_RESPONSE_DECODING_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 62
    invoke-virtual {p0}, Lcom/stripe/jvmcore/restclient/RestResponse;->toLogString()Ljava/lang/String;

    move-result-object v4

    const/16 v7, 0xc

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 60
    invoke-direct/range {v2 .. v8}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 56
    new-instance p0, Lcom/stripe/offlinemode/forwarding/ForwardingApiException;

    invoke-direct {p0, v2, p1, v1, v1}, Lcom/stripe/offlinemode/forwarding/ForwardingApiException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalException;ZZZ)V

    throw p0

    :cond_5
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method private static final isAuthError(Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Rsp:",
            "Lcom/squareup/wire/Message<",
            "TRsp;*>;>(",
            "Lcom/stripe/jvmcore/restclient/RestResponse$ServerError<",
            "TRsp;",
            "Lcom/stripe/proto/model/rest/ErrorWrapper;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x2

    .line 70
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "api_key_expired"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 71
    const-string v2, "platform_api_key_expired"

    aput-object v2, v0, v1

    .line 69
    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-virtual {p0}, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;->getResponse()Lcom/squareup/wire/Message;

    move-result-object p0

    check-cast p0, Lcom/stripe/proto/model/rest/ErrorWrapper;

    iget-object p0, p0, Lcom/stripe/proto/model/rest/ErrorWrapper;->error:Lcom/stripe/proto/model/rest/ErrorResponse;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/stripe/proto/model/rest/ErrorResponse;->code:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {v0, p0}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static final isConnectionError(Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Rsp:",
            "Lcom/squareup/wire/Message<",
            "TRsp;*>;>(",
            "Lcom/stripe/jvmcore/restclient/RestResponse$ServerError<",
            "TRsp;",
            "Lcom/stripe/proto/model/rest/ErrorWrapper;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x2

    .line 77
    new-array v0, v0, [Lcom/stripe/proto/model/rest/StatusCode;

    const/4 v1, 0x0

    sget-object v2, Lcom/stripe/proto/model/rest/StatusCode;->HTTP_ERROR:Lcom/stripe/proto/model/rest/StatusCode;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 78
    sget-object v2, Lcom/stripe/proto/model/rest/StatusCode;->HTTP_ERROR_UNKNOWN_STATE:Lcom/stripe/proto/model/rest/StatusCode;

    aput-object v2, v0, v1

    .line 76
    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0}, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;->getStatusCode()Lcom/stripe/proto/model/rest/StatusCode;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static final isMalformedRequestError(Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Rsp:",
            "Lcom/squareup/wire/Message<",
            "TRsp;*>;>(",
            "Lcom/stripe/jvmcore/restclient/RestResponse$ServerError<",
            "TRsp;",
            "Lcom/stripe/proto/model/rest/ErrorWrapper;",
            ">;)Z"
        }
    .end annotation

    .line 84
    sget-object v0, Lcom/stripe/proto/model/rest/StatusCode;->BAD_REQUEST:Lcom/stripe/proto/model/rest/StatusCode;

    .line 83
    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0}, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;->getStatusCode()Lcom/stripe/proto/model/rest/StatusCode;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    .line 86
    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "parameter_missing"

    aput-object v2, v0, v1

    .line 87
    const-string v2, "parameter_unknown"

    const/4 v3, 0x1

    aput-object v2, v0, v3

    .line 88
    const-string v2, ""

    const/4 v4, 0x2

    aput-object v2, v0, v4

    .line 85
    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-virtual {p0}, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;->getResponse()Lcom/squareup/wire/Message;

    move-result-object v2

    check-cast v2, Lcom/stripe/proto/model/rest/ErrorWrapper;

    iget-object v2, v2, Lcom/stripe/proto/model/rest/ErrorWrapper;->error:Lcom/stripe/proto/model/rest/ErrorResponse;

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    iget-object v2, v2, Lcom/stripe/proto/model/rest/ErrorResponse;->code:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, v5

    :goto_0
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 89
    invoke-virtual {p0}, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;->getResponse()Lcom/squareup/wire/Message;

    move-result-object p0

    check-cast p0, Lcom/stripe/proto/model/rest/ErrorWrapper;

    iget-object p0, p0, Lcom/stripe/proto/model/rest/ErrorWrapper;->error:Lcom/stripe/proto/model/rest/ErrorResponse;

    if-eqz p0, :cond_2

    iget-object p0, p0, Lcom/stripe/proto/model/rest/ErrorResponse;->code:Ljava/lang/String;

    if-eqz p0, :cond_2

    const-string v0, "parameter_invalid"

    invoke-static {p0, v0, v1, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p0

    if-ne p0, v3, :cond_2

    :cond_1
    return v3

    :cond_2
    return v1
.end method
