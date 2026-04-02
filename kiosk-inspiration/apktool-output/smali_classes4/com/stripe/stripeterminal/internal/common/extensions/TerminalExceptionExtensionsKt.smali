.class public final Lcom/stripe/stripeterminal/internal/common/extensions/TerminalExceptionExtensionsKt;
.super Ljava/lang/Object;
.source "TerminalExceptionExtensions.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/internal/common/extensions/TerminalExceptionExtensionsKt$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTerminalExceptionExtensions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TerminalExceptionExtensions.kt\ncom/stripe/stripeterminal/internal/common/extensions/TerminalExceptionExtensionsKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,185:1\n1#2:186\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u001a\u001a\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u001a\u001a\u0010\u0006\u001a\u00020\u00012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u001a\u001a\u0010\u0008\u001a\u00020\u0001*\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r\u001a\u001c\u0010\u000e\u001a\u00020\u000b*\u00020\u000f2\u0006\u0010\n\u001a\u00020\r2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u000b\u001a\u0014\u0010\u0011\u001a\u00020\r*\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u000bH\u0002\u001a\u000c\u0010\u0013\u001a\u00020\u000b*\u00020\u0005H\u0002\u001a\u0016\u0010\u0014\u001a\u00020\u0001*\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u0016\u001a\u000c\u0010\u0017\u001a\u0004\u0018\u00010\u0001*\u00020\t\u00a8\u0006\u0018"
    }
    d2 = {
        "convertJackRabbitConfirmErrorToTerminalException",
        "Lcom/stripe/stripeterminal/external/models/TerminalException;",
        "declineResponse",
        "Lcom/stripe/proto/model/rest/ErrorWrapper;",
        "sdkError",
        "Lcom/stripe/proto/model/sdk/Error;",
        "convertJackRabbitErrorToTerminalException",
        "errorWrapper",
        "findTerminalExceptionOrWrap",
        "",
        "errorCode",
        "Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;",
        "errorMessage",
        "",
        "fromStringOrDefault",
        "Lcom/stripe/stripeterminal/external/models/TerminalErrorCode$Companion;",
        "default",
        "makeErrorMessage",
        "mappedErrorCode",
        "mapReaderErrorCode",
        "toTerminalException",
        "retry",
        "",
        "underlyingTerminalException",
        "public_release"
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
.method public static final convertJackRabbitConfirmErrorToTerminalException(Lcom/stripe/proto/model/rest/ErrorWrapper;Lcom/stripe/proto/model/sdk/Error;)Lcom/stripe/stripeterminal/external/models/TerminalException;
    .locals 7

    if-eqz p0, :cond_3

    .line 47
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 48
    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->DECLINED_BY_STRIPE_API:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 49
    iget-object p1, p0, Lcom/stripe/proto/model/rest/ErrorWrapper;->error:Lcom/stripe/proto/model/rest/ErrorResponse;

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/stripe/proto/model/rest/ErrorResponse;->message:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object p1, v2

    :goto_0
    if-nez p1, :cond_1

    const-string p1, ""

    .line 50
    :cond_1
    iget-object p0, p0, Lcom/stripe/proto/model/rest/ErrorWrapper;->error:Lcom/stripe/proto/model/rest/ErrorResponse;

    if-eqz p0, :cond_2

    sget-object v2, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;

    invoke-virtual {v2, p0}, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->toSdkApiError(Lcom/stripe/proto/model/rest/ErrorResponse;)Lcom/stripe/stripeterminal/external/api/ApiError;

    move-result-object v2

    :cond_2
    move-object v4, v2

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v2, p1

    .line 47
    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    :cond_3
    const/4 p0, 0x1

    .line 52
    invoke-static {p1, p0}, Lcom/stripe/stripeterminal/internal/common/extensions/TerminalExceptionExtensionsKt;->toTerminalException(Lcom/stripe/proto/model/sdk/Error;Z)Lcom/stripe/stripeterminal/external/models/TerminalException;

    move-result-object p0

    return-object p0
.end method

.method public static final convertJackRabbitErrorToTerminalException(Lcom/stripe/proto/model/rest/ErrorWrapper;Lcom/stripe/proto/model/sdk/Error;)Lcom/stripe/stripeterminal/external/models/TerminalException;
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    .line 62
    iget-object p0, p0, Lcom/stripe/proto/model/rest/ErrorWrapper;->error:Lcom/stripe/proto/model/rest/ErrorResponse;

    if-eqz p0, :cond_1

    sget-object v2, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;

    invoke-static {v2, p0, v1, v0, v1}, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->toTerminalException$default(Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;Lcom/stripe/proto/model/rest/ErrorResponse;Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;ILjava/lang/Object;)Lcom/stripe/stripeterminal/external/models/TerminalException;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 63
    invoke-static {p1, p0, v0, v1}, Lcom/stripe/stripeterminal/internal/common/extensions/TerminalExceptionExtensionsKt;->toTerminalException$default(Lcom/stripe/proto/model/sdk/Error;ZILjava/lang/Object;)Lcom/stripe/stripeterminal/external/models/TerminalException;

    move-result-object p0

    return-object p0
.end method

.method public static final findTerminalExceptionOrWrap(Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/TerminalException;
    .locals 8

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorMessage"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/extensions/TerminalExceptionExtensionsKt;->underlyingTerminalException(Ljava/lang/Throwable;)Lcom/stripe/stripeterminal/external/models/TerminalException;

    move-result-object v0

    if-nez v0, :cond_0

    .line 184
    new-instance v1, Lcom/stripe/stripeterminal/external/models/TerminalException;

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v4, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    :cond_0
    return-object v0
.end method

.method public static final fromStringOrDefault(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode$Companion;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;)Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "errorCode"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "default"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    :try_start_0
    sget-object p0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object p0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->Companion:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode$Companion;

    invoke-virtual {p0, p1}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode$Companion;->fromString(Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 23
    :goto_0
    invoke-static {p0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 24
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    const v0, -0x14c6c284

    if-eq p0, v0, :cond_5

    if-eqz p0, :cond_3

    const v0, 0x47769567

    if-eq p0, v0, :cond_1

    goto :goto_1

    :cond_1
    const-string p0, "connection_error"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_1

    .line 25
    :cond_2
    sget-object p2, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->STRIPE_API_CONNECTION_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    goto :goto_1

    .line 24
    :cond_3
    const-string p0, ""

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_1

    .line 27
    :cond_4
    sget-object p2, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    goto :goto_1

    .line 24
    :cond_5
    const-string p0, "parse_error"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_1

    .line 26
    :cond_6
    sget-object p2, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->STRIPE_API_RESPONSE_DECODING_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    :goto_1
    move-object p0, p2

    .line 23
    :goto_2
    check-cast p0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    return-object p0
.end method

.method public static synthetic fromStringOrDefault$default(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode$Companion;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;ILjava/lang/Object;)Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 20
    sget-object p2, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 18
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/extensions/TerminalExceptionExtensionsKt;->fromStringOrDefault(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode$Companion;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;)Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    move-result-object p0

    return-object p0
.end method

.method private static final makeErrorMessage(Lcom/stripe/proto/model/sdk/Error;Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;)Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/stripe/proto/model/sdk/Error;->code:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 82
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Error code: unknown. "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/stripe/proto/model/sdk/Error;->message:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 83
    :cond_0
    sget-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->GENERIC_READER_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    if-ne p1, v0, :cond_1

    .line 85
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Error code: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stripe/proto/model/sdk/Error;->code:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ". "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/stripe/proto/model/sdk/Error;->message:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 87
    :cond_1
    iget-object p0, p0, Lcom/stripe/proto/model/sdk/Error;->message:Ljava/lang/String;

    return-object p0
.end method

.method private static final mapReaderErrorCode(Lcom/stripe/proto/model/sdk/Error;)Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/stripe/proto/model/sdk/Error;->code_enum:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    sget-object v1, Lcom/stripe/stripeterminal/internal/common/extensions/TerminalExceptionExtensionsKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 163
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :pswitch_0
    sget-object p0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->INVALID_SURCHARGE_PARAMETER:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    return-object p0

    .line 162
    :pswitch_1
    sget-object p0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->READER_COMMUNICATION_SSL_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    return-object p0

    .line 161
    :pswitch_2
    sget-object p0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->READER_MISSING_ENCRYPTION_KEYS:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    return-object p0

    .line 160
    :pswitch_3
    sget-object p0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->READER_SETTINGS_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    return-object p0

    .line 159
    :pswitch_4
    sget-object p0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->COLLECT_INPUTS_UNSUPPORTED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    return-object p0

    .line 158
    :pswitch_5
    sget-object p0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->COLLECT_INPUTS_INVALID_PARAMETER:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    return-object p0

    .line 157
    :pswitch_6
    sget-object p0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->COLLECT_INPUTS_TIMED_OUT:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    return-object p0

    .line 156
    :pswitch_7
    sget-object p0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->COLLECT_INPUTS_APPLICATION_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    return-object p0

    .line 155
    :pswitch_8
    sget-object p0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->TEST_CARD_IN_LIVEMODE:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    return-object p0

    .line 154
    :pswitch_9
    sget-object p0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->NOT_CONNECTED_TO_INTERNET_AND_REQUIRE_ONLINE_SET:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    return-object p0

    .line 152
    :pswitch_a
    sget-object p0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->FORCE_OFFLINE_WITH_FEATURE_DISABLED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    return-object p0

    .line 151
    :pswitch_b
    sget-object p0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->ACCOUNT_ID_MISMATCH_WHILE_FORWARDING:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    return-object p0

    .line 150
    :pswitch_c
    sget-object p0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->CONNECTION_TOKEN_PROVIDER_ERROR_WHILE_FORWARDING:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    return-object p0

    .line 148
    :pswitch_d
    sget-object p0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->MISSING_EMV_DATA:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    return-object p0

    .line 147
    :pswitch_e
    sget-object p0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->OFFLINE_PAYMENT_INTENT_NOT_FOUND:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    return-object p0

    .line 146
    :pswitch_f
    sget-object p0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->OFFLINE_LIVEMODE_PAYMENT_IN_TESTMODE:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    return-object p0

    .line 145
    :pswitch_10
    sget-object p0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->OFFLINE_TESTMODE_PAYMENT_IN_LIVEMODE:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    return-object p0

    .line 144
    :pswitch_11
    sget-object p0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->OFFLINE_COLLECT_AND_CONFIRM_MISMATCH:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    return-object p0

    .line 143
    :pswitch_12
    sget-object p0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->OFFLINE_TRANSACTION_DECLINED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    return-object p0

    .line 142
    :pswitch_13
    sget-object p0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->OFFLINE_AND_CARD_EXPIRED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    return-object p0

    .line 141
    :pswitch_14
    sget-object p0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->MOBILE_WALLET_NOT_SUPPORTED_ON_SETUP_INTENTS:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    return-object p0

    .line 139
    :pswitch_15
    sget-object p0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->ONLINE_PIN_NOT_SUPPORTED_OFFLINE:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    return-object p0

    .line 138
    :pswitch_16
    sget-object p0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->INTERAC_NOT_SUPPORTED_OFFLINE:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    return-object p0

    .line 137
    :pswitch_17
    sget-object p0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->CARD_SWIPE_NOT_AVAILABLE:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    return-object p0

    .line 136
    :pswitch_18
    sget-object p0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->INVALID_OFFLINE_CURRENCY:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    return-object p0

    .line 135
    :pswitch_19
    sget-object p0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->NO_LAST_SEEN_ACCOUNT:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    return-object p0

    .line 134
    :pswitch_1a
    sget-object p0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->LOCATION_CONNECTION_NOT_AVAILABLE_OFFLINE:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    return-object p0

    .line 132
    :pswitch_1b
    sget-object p0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->READER_CONNECTION_NOT_AVAILABLE_OFFLINE:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    return-object p0

    .line 131
    :pswitch_1c
    sget-object p0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->OFFLINE_PAYMENTS_DATABASE_TOO_LARGE:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    return-object p0

    .line 130
    :pswitch_1d
    sget-object p0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->AMOUNT_EXCEEDS_MAX_OFFLINE_AMOUNT:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    return-object p0

    .line 129
    :pswitch_1e
    sget-object p0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->SESSION_EXPIRED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    return-object p0

    .line 128
    :pswitch_1f
    sget-object p0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->CONNECTION_TOKEN_PROVIDER_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    return-object p0

    .line 127
    :pswitch_20
    sget-object p0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->STRIPE_API_RESPONSE_DECODING_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    return-object p0

    .line 126
    :pswitch_21
    sget-object p0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->STRIPE_API_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    return-object p0

    .line 125
    :pswitch_22
    sget-object p0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->STRIPE_API_CONNECTION_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    return-object p0

    .line 124
    :pswitch_23
    sget-object p0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->REQUEST_TIMED_OUT:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    return-object p0

    .line 123
    :pswitch_24
    sget-object p0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->DECLINED_BY_READER:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    return-object p0

    .line 122
    :pswitch_25
    sget-object p0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->DECLINED_BY_STRIPE_API:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    return-object p0

    .line 121
    :pswitch_26
    sget-object p0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    return-object p0

    .line 120
    :pswitch_27
    sget-object p0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNSUPPORTED_READER_VERSION:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    return-object p0

    .line 119
    :pswitch_28
    sget-object p0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->READER_COMMUNICATION_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    return-object p0

    .line 118
    :pswitch_29
    sget-object p0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->READER_BUSY:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    return-object p0

    .line 117
    :pswitch_2a
    sget-object p0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->FEATURE_NOT_ENABLED_ON_ACCOUNT:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    return-object p0

    .line 116
    :pswitch_2b
    sget-object p0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->CARD_LEFT_IN_READER:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    return-object p0

    .line 115
    :pswitch_2c
    sget-object p0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->CUSTOMER_CONSENT_REQUIRED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    return-object p0

    .line 114
    :pswitch_2d
    sget-object p0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->CARD_REMOVED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    return-object p0

    .line 113
    :pswitch_2e
    sget-object p0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->CARD_READ_TIMED_OUT:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    return-object p0

    .line 112
    :pswitch_2f
    sget-object p0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->CARD_SWIPE_NOT_READ:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    return-object p0

    .line 111
    :pswitch_30
    sget-object p0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->CARD_INSERT_NOT_READ:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    return-object p0

    .line 110
    :pswitch_31
    sget-object p0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->LOCATION_SERVICES_DISABLED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    return-object p0

    .line 109
    :pswitch_32
    sget-object p0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->CANCELED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    return-object p0

    .line 108
    :pswitch_33
    sget-object p0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->INVALID_TIP_PARAMETER:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    return-object p0

    .line 107
    :pswitch_34
    sget-object p0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->INVALID_REQUIRED_PARAMETER:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    return-object p0

    .line 106
    :pswitch_35
    sget-object p0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->MISSING_REQUIRED_PARAMETER:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    return-object p0

    .line 105
    :pswitch_36
    sget-object p0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNSUPPORTED_SDK:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    return-object p0

    .line 104
    :pswitch_37
    sget-object p0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_OPERATION:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    return-object p0

    .line 103
    :pswitch_38
    sget-object p0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNSUPPORTED_OPERATION:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    return-object p0

    .line 102
    :pswitch_39
    sget-object p0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->INVALID_CLIENT_SECRET:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    return-object p0

    .line 101
    :pswitch_3a
    sget-object p0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->CONFIRM_INVALID_SETUP_INTENT:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    return-object p0

    .line 100
    :pswitch_3b
    sget-object p0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->CONFIRM_INVALID_PAYMENT_INTENT:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    return-object p0

    .line 99
    :pswitch_3c
    sget-object p0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->ALREADY_CONNECTED_TO_READER:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    return-object p0

    .line 98
    :pswitch_3d
    sget-object p0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->NOT_CONNECTED_TO_READER:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    return-object p0

    .line 97
    :pswitch_3e
    sget-object p0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->CANCEL_FAILED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    return-object p0

    .line 93
    :pswitch_3f
    sget-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->Companion:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode$Companion;

    .line 94
    iget-object p0, p0, Lcom/stripe/proto/model/sdk/Error;->code:Ljava/lang/String;

    .line 95
    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->GENERIC_READER_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 93
    invoke-static {v0, p0, v1}, Lcom/stripe/stripeterminal/internal/common/extensions/TerminalExceptionExtensionsKt;->fromStringOrDefault(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode$Companion;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;)Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final toTerminalException(Lcom/stripe/proto/model/sdk/Error;Z)Lcom/stripe/stripeterminal/external/models/TerminalException;
    .locals 8

    if-nez p0, :cond_1

    .line 67
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 68
    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    if-eqz p1, :cond_0

    .line 69
    const-string p0, ", retry"

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    const-string p1, "Unexpected error"

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0xc

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 67
    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 72
    :cond_1
    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/extensions/TerminalExceptionExtensionsKt;->mapReaderErrorCode(Lcom/stripe/proto/model/sdk/Error;)Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    move-result-object v2

    .line 73
    new-instance v1, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 75
    invoke-static {p0, v2}, Lcom/stripe/stripeterminal/internal/common/extensions/TerminalExceptionExtensionsKt;->makeErrorMessage(Lcom/stripe/proto/model/sdk/Error;Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;)Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 73
    invoke-direct/range {v1 .. v7}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method

.method public static synthetic toTerminalException$default(Lcom/stripe/proto/model/sdk/Error;ZILjava/lang/Object;)Lcom/stripe/stripeterminal/external/models/TerminalException;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 66
    :cond_0
    invoke-static {p0, p1}, Lcom/stripe/stripeterminal/internal/common/extensions/TerminalExceptionExtensionsKt;->toTerminalException(Lcom/stripe/proto/model/sdk/Error;Z)Lcom/stripe/stripeterminal/external/models/TerminalException;

    move-result-object p0

    return-object p0
.end method

.method public static final underlyingTerminalException(Ljava/lang/Throwable;)Lcom/stripe/stripeterminal/external/models/TerminalException;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    instance-of v0, p0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/extensions/TerminalExceptionExtensionsKt;->underlyingTerminalException(Ljava/lang/Throwable;)Lcom/stripe/stripeterminal/external/models/TerminalException;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    check-cast p0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    return-object p0

    .line 173
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/extensions/TerminalExceptionExtensionsKt;->underlyingTerminalException(Ljava/lang/Throwable;)Lcom/stripe/stripeterminal/external/models/TerminalException;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method
