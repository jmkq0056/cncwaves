.class public final Lcom/stripe/stripeterminal/internal/common/api/ApiClient$Companion;
.super Ljava/lang/Object;
.source "ApiClient.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/internal/common/api/ApiClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nApiClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ApiClient.kt\ncom/stripe/stripeterminal/internal/common/api/ApiClient$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,456:1\n1#2:457\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u00042\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00070\u0006J\u001a\u0010\u0008\u001a\u00020\t2\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00070\u0006JY\u0010\n\u001a\u0002H\u000b\"\u0012\u0008\u0000\u0010\u000b*\u000c\u0012\u0004\u0012\u0002H\u000b\u0012\u0002\u0008\u00030\u000c2\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u0002H\u000b\u0012\u0004\u0012\u00020\u00070\u00062\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0018\u0008\u0002\u0010\u000f\u001a\u0012\u0012\u0004\u0012\u0002H\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u0011\u0018\u00010\u0010\u00a2\u0006\u0002\u0010\u0012J\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0005\u001a\u00020\u0015H\u0002J/\u0010\u0016\u001a\u0002H\u000b\"\u0004\u0008\u0000\u0010\u000b2\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u0002H\u000b0\u001c\u00a2\u0006\u0002\u0010\u001d\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/api/ApiClient$Companion;",
        "",
        "()V",
        "decodeConfirmPaymentResponseCatchingLastPaymentError",
        "Lcom/stripe/proto/model/rest/PaymentIntent;",
        "response",
        "Lcom/stripe/jvmcore/restclient/RestResponse;",
        "Lcom/stripe/proto/model/rest/ErrorWrapper;",
        "decodeRefundResponseCatchingInlineFailure",
        "Lcom/stripe/proto/model/rest/Refund;",
        "decodeResponse",
        "T",
        "Lcom/squareup/wire/Message;",
        "fallbackTerminalErrorCode",
        "Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;",
        "getInlineError",
        "Lkotlin/Function1;",
        "Lcom/stripe/proto/model/rest/ErrorResponse;",
        "(Lcom/stripe/jvmcore/restclient/RestResponse;Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Lkotlin/jvm/functions/Function1;)Lcom/squareup/wire/Message;",
        "transformConnectionTokenResponseForSimulator",
        "Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation;",
        "Lcom/stripe/proto/model/rest/ActivatedConnectionToken;",
        "withDetailedConnectionError",
        "operation",
        "Lcom/stripe/stripeterminal/internal/common/api/ApiOperation;",
        "apiResource",
        "Lcom/stripe/stripeterminal/internal/common/api/ApiResource;",
        "provider",
        "Lkotlin/Function0;",
        "(Lcom/stripe/stripeterminal/internal/common/api/ApiOperation;Lcom/stripe/stripeterminal/internal/common/api/ApiResource;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/stripeterminal/internal/common/api/ApiClient$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$transformConnectionTokenResponseForSimulator(Lcom/stripe/stripeterminal/internal/common/api/ApiClient$Companion;Lcom/stripe/proto/model/rest/ActivatedConnectionToken;)Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation;
    .locals 0

    .line 322
    invoke-direct {p0, p1}, Lcom/stripe/stripeterminal/internal/common/api/ApiClient$Companion;->transformConnectionTokenResponseForSimulator(Lcom/stripe/proto/model/rest/ActivatedConnectionToken;)Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic decodeResponse$default(Lcom/stripe/stripeterminal/internal/common/api/ApiClient$Companion;Lcom/stripe/jvmcore/restclient/RestResponse;Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/squareup/wire/Message;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move-object p3, v0

    .line 336
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/stripe/stripeterminal/internal/common/api/ApiClient$Companion;->decodeResponse(Lcom/stripe/jvmcore/restclient/RestResponse;Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Lkotlin/jvm/functions/Function1;)Lcom/squareup/wire/Message;

    move-result-object p0

    return-object p0
.end method

.method private final transformConnectionTokenResponseForSimulator(Lcom/stripe/proto/model/rest/ActivatedConnectionToken;)Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation;
    .locals 25

    move-object/from16 v0, p1

    .line 437
    new-instance v1, Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation;

    move-object v2, v1

    .line 438
    new-instance v1, Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation$AccountRef;

    .line 439
    new-instance v3, Lcom/stripe/proto/model/merchant/ApiLocationPb;

    .line 440
    iget-object v4, v0, Lcom/stripe/proto/model/rest/ActivatedConnectionToken;->account_ref:Lcom/stripe/proto/model/rest/ActivatedConnectionToken$AccountRef;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    iget-object v4, v4, Lcom/stripe/proto/model/rest/ActivatedConnectionToken$AccountRef;->store_id:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v4, v5

    .line 441
    :goto_0
    iget-object v12, v0, Lcom/stripe/proto/model/rest/ActivatedConnectionToken;->livemode:Ljava/lang/Boolean;

    const v21, 0x1fefe

    const/16 v22, 0x0

    move-object v6, v5

    const/4 v5, 0x0

    move-object v7, v6

    const/4 v6, 0x0

    move-object v8, v7

    const/4 v7, 0x0

    move-object v9, v8

    const/4 v8, 0x0

    move-object v10, v9

    const/4 v9, 0x0

    move-object v11, v10

    const/4 v10, 0x0

    move-object v13, v11

    const/4 v11, 0x0

    move-object v14, v13

    const/4 v13, 0x0

    move-object v15, v14

    const/4 v14, 0x0

    move-object/from16 v16, v15

    const/4 v15, 0x0

    move-object/from16 v17, v16

    const/16 v16, 0x0

    move-object/from16 v18, v17

    const/16 v17, 0x0

    move-object/from16 v19, v18

    const/16 v18, 0x0

    move-object/from16 v20, v19

    const/16 v19, 0x0

    move-object/from16 v23, v20

    const/16 v20, 0x0

    move-object/from16 v24, v2

    move-object/from16 v2, v23

    .line 439
    invoke-direct/range {v3 .. v22}, Lcom/stripe/proto/model/merchant/ApiLocationPb;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/merchant/WrappedAddressPb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;ZLjava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Lcom/stripe/proto/model/common/InstantPb;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v4, 0x2

    .line 438
    invoke-direct {v1, v3, v2, v4, v2}, Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation$AccountRef;-><init>(Lcom/stripe/proto/model/merchant/ApiLocationPb;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 444
    iget-object v2, v0, Lcom/stripe/proto/model/rest/ActivatedConnectionToken;->sdk_rpc_session_token:Ljava/lang/String;

    .line 445
    iget-object v3, v0, Lcom/stripe/proto/model/rest/ActivatedConnectionToken;->reader_rpc_session_token:Ljava/lang/String;

    .line 446
    iget-object v4, v0, Lcom/stripe/proto/model/rest/ActivatedConnectionToken;->stripe_session_token:Ljava/lang/String;

    .line 447
    iget-object v5, v0, Lcom/stripe/proto/model/rest/ActivatedConnectionToken;->reader_id:Ljava/lang/String;

    .line 448
    iget-object v6, v0, Lcom/stripe/proto/model/rest/ActivatedConnectionToken;->livemode:Ljava/lang/Boolean;

    .line 449
    iget-object v7, v0, Lcom/stripe/proto/model/rest/ActivatedConnectionToken;->account_id:Ljava/lang/String;

    .line 450
    iget-object v8, v0, Lcom/stripe/proto/model/rest/ActivatedConnectionToken;->connection_context_id:Ljava/lang/String;

    .line 451
    iget-object v9, v0, Lcom/stripe/proto/model/rest/ActivatedConnectionToken;->offline_stripe_session_token:Ljava/lang/String;

    const/16 v11, 0x200

    const/4 v12, 0x0

    move-object/from16 v0, v24

    .line 437
    invoke-direct/range {v0 .. v12}, Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation;-><init>(Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation$AccountRef;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method


# virtual methods
.method public final decodeConfirmPaymentResponseCatchingLastPaymentError(Lcom/stripe/jvmcore/restclient/RestResponse;)Lcom/stripe/proto/model/rest/PaymentIntent;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/restclient/RestResponse<",
            "Lcom/stripe/proto/model/rest/PaymentIntent;",
            "Lcom/stripe/proto/model/rest/ErrorWrapper;",
            ">;)",
            "Lcom/stripe/proto/model/rest/PaymentIntent;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 392
    sget-object v0, Lcom/stripe/jvmcore/transaction/Extensions;->INSTANCE:Lcom/stripe/jvmcore/transaction/Extensions;

    invoke-virtual {v0, p1}, Lcom/stripe/jvmcore/transaction/Extensions;->alreadyCompletedPaymentIntent(Lcom/stripe/jvmcore/restclient/RestResponse;)Lcom/stripe/proto/model/rest/PaymentIntent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 393
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/api/ApiClient$Companion$decodeConfirmPaymentResponseCatchingLastPaymentError$1;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/api/ApiClient$Companion$decodeConfirmPaymentResponseCatchingLastPaymentError$1;

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function1;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/stripe/stripeterminal/internal/common/api/ApiClient$Companion;->decodeResponse$default(Lcom/stripe/stripeterminal/internal/common/api/ApiClient$Companion;Lcom/stripe/jvmcore/restclient/RestResponse;Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/squareup/wire/Message;

    move-result-object p1

    check-cast p1, Lcom/stripe/proto/model/rest/PaymentIntent;

    return-object p1

    :cond_0
    return-object v0
.end method

.method public final decodeRefundResponseCatchingInlineFailure(Lcom/stripe/jvmcore/restclient/RestResponse;)Lcom/stripe/proto/model/rest/Refund;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/restclient/RestResponse<",
            "Lcom/stripe/proto/model/rest/Refund;",
            "Lcom/stripe/proto/model/rest/ErrorWrapper;",
            ">;)",
            "Lcom/stripe/proto/model/rest/Refund;"
        }
    .end annotation

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 374
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/api/ApiClient$Companion$decodeRefundResponseCatchingInlineFailure$1;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/api/ApiClient$Companion$decodeRefundResponseCatchingInlineFailure$1;

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function1;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/stripe/stripeterminal/internal/common/api/ApiClient$Companion;->decodeResponse$default(Lcom/stripe/stripeterminal/internal/common/api/ApiClient$Companion;Lcom/stripe/jvmcore/restclient/RestResponse;Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/squareup/wire/Message;

    move-result-object p1

    check-cast p1, Lcom/stripe/proto/model/rest/Refund;

    return-object p1
.end method

.method public final decodeResponse(Lcom/stripe/jvmcore/restclient/RestResponse;Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Lkotlin/jvm/functions/Function1;)Lcom/squareup/wire/Message;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/squareup/wire/Message<",
            "TT;*>;>(",
            "Lcom/stripe/jvmcore/restclient/RestResponse<",
            "TT;",
            "Lcom/stripe/proto/model/rest/ErrorWrapper;",
            ">;",
            "Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lcom/stripe/proto/model/rest/ErrorResponse;",
            ">;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 342
    instance-of v0, p1, Lcom/stripe/jvmcore/restclient/RestResponse$Success;

    if-eqz v0, :cond_2

    if-eqz p3, :cond_1

    .line 345
    move-object p2, p1

    check-cast p2, Lcom/stripe/jvmcore/restclient/RestResponse$Success;

    invoke-virtual {p2}, Lcom/stripe/jvmcore/restclient/RestResponse$Success;->getResponse()Lcom/squareup/wire/Message;

    move-result-object p2

    invoke-interface {p3, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/stripe/proto/model/rest/ErrorResponse;

    if-nez p2, :cond_0

    goto :goto_0

    .line 346
    :cond_0
    sget-object p1, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;

    const/4 p3, 0x1

    const/4 v0, 0x0

    invoke-static {p1, p2, v0, p3, v0}, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->toTerminalException$default(Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;Lcom/stripe/proto/model/rest/ErrorResponse;Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;ILjava/lang/Object;)Lcom/stripe/stripeterminal/external/models/TerminalException;

    move-result-object p1

    throw p1

    .line 347
    :cond_1
    :goto_0
    move-object p2, p0

    check-cast p2, Lcom/stripe/stripeterminal/internal/common/api/ApiClient$Companion;

    .line 348
    check-cast p1, Lcom/stripe/jvmcore/restclient/RestResponse$Success;

    invoke-virtual {p1}, Lcom/stripe/jvmcore/restclient/RestResponse$Success;->getResponse()Lcom/squareup/wire/Message;

    move-result-object p1

    return-object p1

    .line 352
    :cond_2
    instance-of p3, p1, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;

    if-eqz p3, :cond_5

    .line 353
    invoke-virtual {p1}, Lcom/stripe/jvmcore/restclient/RestResponse;->getStatusCode()Lcom/stripe/proto/model/rest/StatusCode;

    move-result-object p3

    sget-object v0, Lcom/stripe/proto/model/rest/StatusCode;->HTTP_ERROR:Lcom/stripe/proto/model/rest/StatusCode;

    if-eq p3, v0, :cond_4

    .line 354
    invoke-virtual {p1}, Lcom/stripe/jvmcore/restclient/RestResponse;->getStatusCode()Lcom/stripe/proto/model/rest/StatusCode;

    move-result-object p3

    sget-object v0, Lcom/stripe/proto/model/rest/StatusCode;->HTTP_ERROR_UNKNOWN_STATE:Lcom/stripe/proto/model/rest/StatusCode;

    if-eq p3, v0, :cond_4

    .line 356
    invoke-virtual {p1}, Lcom/stripe/jvmcore/restclient/RestResponse;->getStatusCode()Lcom/stripe/proto/model/rest/StatusCode;

    move-result-object p3

    sget-object v0, Lcom/stripe/proto/model/rest/StatusCode;->CONFLICT:Lcom/stripe/proto/model/rest/StatusCode;

    if-ne p3, v0, :cond_3

    goto :goto_1

    .line 363
    :cond_3
    sget-object p3, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;

    check-cast p1, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;

    invoke-virtual {p1}, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;->getResponse()Lcom/squareup/wire/Message;

    move-result-object p1

    check-cast p1, Lcom/stripe/proto/model/rest/ErrorWrapper;

    iget-object p1, p1, Lcom/stripe/proto/model/rest/ErrorWrapper;->error:Lcom/stripe/proto/model/rest/ErrorResponse;

    invoke-virtual {p3, p1, p2}, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->toTerminalException(Lcom/stripe/proto/model/rest/ErrorResponse;Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;)Lcom/stripe/stripeterminal/external/models/TerminalException;

    move-result-object p1

    throw p1

    .line 358
    :cond_4
    :goto_1
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 359
    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->STRIPE_API_CONNECTION_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v5, 0xc

    const/4 v6, 0x0

    .line 358
    const-string v2, "Could not connect to Stripe. Please retry."

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0

    .line 367
    :cond_5
    instance-of p2, p1, Lcom/stripe/jvmcore/restclient/RestResponse$ParseError;

    if-eqz p2, :cond_6

    .line 368
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->STRIPE_API_RESPONSE_DECODING_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    invoke-virtual {p1}, Lcom/stripe/jvmcore/restclient/RestResponse;->toLogString()Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0xc

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0

    :cond_6
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method public final withDetailedConnectionError(Lcom/stripe/stripeterminal/internal/common/api/ApiOperation;Lcom/stripe/stripeterminal/internal/common/api/ApiResource;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/stripe/stripeterminal/internal/common/api/ApiOperation;",
            "Lcom/stripe/stripeterminal/internal/common/api/ApiResource;",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)TT;"
        }
    .end annotation

    const-string v0, "operation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "apiResource"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "provider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 412
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/api/ApiClient$Companion;

    invoke-interface {p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p3

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p3}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    :goto_0
    invoke-static {p3}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p3

    .line 413
    :cond_0
    instance-of p3, v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    if-eqz p3, :cond_2

    .line 415
    move-object p3, v0

    check-cast p3, Lcom/stripe/stripeterminal/external/models/TerminalException;

    invoke-virtual {p3}, Lcom/stripe/stripeterminal/external/models/TerminalException;->getErrorCode()Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    move-result-object v1

    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->STRIPE_API_CONNECTION_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    if-eq v1, v2, :cond_1

    .line 416
    throw v0

    .line 418
    :cond_1
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/internal/common/api/ApiOperation;->operationVerb()Ljava/lang/String;

    move-result-object p1

    .line 419
    invoke-virtual {p2}, Lcom/stripe/stripeterminal/internal/common/api/ApiResource;->resourceName()Ljava/lang/String;

    move-result-object p2

    .line 421
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "There was an error "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " this "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", which may have left it in an unknown state. Please retrieve the latest "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 422
    const-string p2, " status or try again."

    .line 421
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 424
    new-instance p2, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 425
    invoke-virtual {p3}, Lcom/stripe/stripeterminal/external/models/TerminalException;->getErrorCode()Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    move-result-object v1

    .line 428
    invoke-virtual {p3}, Lcom/stripe/stripeterminal/external/models/TerminalException;->getApiError()Lcom/stripe/stripeterminal/external/api/ApiError;

    move-result-object p3

    .line 424
    invoke-direct {p2, v1, p1, v0, p3}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;)V

    throw p2

    .line 414
    :cond_2
    throw v0
.end method
