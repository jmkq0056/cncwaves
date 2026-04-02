.class public final Lcom/stripe/proto/model/sdk/ReaderErrorCode$Companion;
.super Ljava/lang/Object;
.source "ReaderErrorCode.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/sdk/ReaderErrorCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\u0008H\u0007R\u0016\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/stripe/proto/model/sdk/ReaderErrorCode$Companion;",
        "",
        "()V",
        "ADAPTER",
        "Lcom/squareup/wire/ProtoAdapter;",
        "Lcom/stripe/proto/model/sdk/ReaderErrorCode;",
        "fromValue",
        "value",
        "",
        "internal_release"
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

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/proto/model/sdk/ReaderErrorCode$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromValue(I)Lcom/stripe/proto/model/sdk/ReaderErrorCode;
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 160
    :pswitch_0
    sget-object p1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->INVALID_SURCHARGE_PARAMETER:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    return-object p1

    .line 159
    :pswitch_1
    sget-object p1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->READER_COMMUNICATION_SSL_ERROR:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    return-object p1

    .line 158
    :pswitch_2
    sget-object p1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->READER_MISSING_ENCRYPTION_KEYS:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    return-object p1

    .line 157
    :pswitch_3
    sget-object p1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->READER_SETTINGS_ERROR:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    return-object p1

    .line 156
    :pswitch_4
    sget-object p1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->COLLECT_INPUTS_UNSUPPORTED:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    return-object p1

    .line 155
    :pswitch_5
    sget-object p1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->COLLECT_INPUTS_INVALID_PARAMETER:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    return-object p1

    .line 154
    :pswitch_6
    sget-object p1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->COLLECT_INPUTS_TIMED_OUT:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    return-object p1

    .line 153
    :pswitch_7
    sget-object p1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->COLLECT_INPUTS_APPLICATION_ERROR:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    return-object p1

    .line 152
    :pswitch_8
    sget-object p1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->TEST_CARD_IN_LIVEMODE:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    return-object p1

    .line 151
    :pswitch_9
    sget-object p1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->NOT_CONNECTED_TO_INTERNET_AND_REQUIRE_ONLINE_SET:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    return-object p1

    .line 150
    :pswitch_a
    sget-object p1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->FORCE_OFFLINE_WITH_FEATURE_DISABLED:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    return-object p1

    .line 149
    :pswitch_b
    sget-object p1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->ACCOUNT_ID_MISMATCH_WHILE_FORWARDING:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    return-object p1

    .line 148
    :pswitch_c
    sget-object p1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->CONNECTION_TOKEN_PROVIDER_ERROR_WHILE_FORWARDING:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    return-object p1

    .line 147
    :pswitch_d
    sget-object p1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->MISSING_EMV_DATA:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    return-object p1

    .line 146
    :pswitch_e
    sget-object p1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->OFFLINE_PAYMENT_INTENT_NOT_FOUND:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    return-object p1

    .line 145
    :pswitch_f
    sget-object p1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->OFFLINE_LIVEMODE_PAYMENT_IN_TESTMODE:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    return-object p1

    .line 144
    :pswitch_10
    sget-object p1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->OFFLINE_TESTMODE_PAYMENT_IN_LIVEMODE:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    return-object p1

    .line 143
    :pswitch_11
    sget-object p1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->OFFLINE_COLLECT_AND_CONFIRM_MISMATCH:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    return-object p1

    .line 142
    :pswitch_12
    sget-object p1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->OFFLINE_TRANSACTION_DECLINED:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    return-object p1

    .line 141
    :pswitch_13
    sget-object p1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->OFFLINE_AND_CARD_EXPIRED:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    return-object p1

    .line 140
    :pswitch_14
    sget-object p1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->MOBILE_WALLET_NOT_SUPPORTED_ON_SETUP_INTENTS:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    return-object p1

    .line 139
    :pswitch_15
    sget-object p1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->ONLINE_PIN_NOT_SUPPORTED_OFFLINE:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    return-object p1

    .line 138
    :pswitch_16
    sget-object p1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->INTERAC_NOT_SUPPORTED_OFFLINE:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    return-object p1

    .line 137
    :pswitch_17
    sget-object p1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->CARD_SWIPE_NOT_AVAILABLE:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    return-object p1

    .line 136
    :pswitch_18
    sget-object p1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->INVALID_OFFLINE_CURRENCY:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    return-object p1

    .line 135
    :pswitch_19
    sget-object p1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->NO_LAST_SEEN_ACCOUNT:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    return-object p1

    .line 134
    :pswitch_1a
    sget-object p1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->LOCATION_CONNECTION_NOT_AVAILABLE_OFFLINE:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    return-object p1

    .line 133
    :pswitch_1b
    sget-object p1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->READER_CONNECTION_NOT_AVAILABLE_OFFLINE:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    return-object p1

    .line 132
    :pswitch_1c
    sget-object p1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->OFFLINE_PAYMENTS_DATABASE_TOO_LARGE:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    return-object p1

    .line 131
    :pswitch_1d
    sget-object p1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->AMOUNT_EXCEEDS_MAX_OFFLINE_AMOUNT:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    return-object p1

    .line 130
    :pswitch_1e
    sget-object p1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->SESSION_EXPIRED:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    return-object p1

    .line 129
    :pswitch_1f
    sget-object p1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->CONNECTION_TOKEN_PROVIDER_ERROR:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    return-object p1

    .line 128
    :pswitch_20
    sget-object p1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->STRIPE_API_RESPONSE_DECODING_ERROR:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    return-object p1

    .line 127
    :pswitch_21
    sget-object p1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->STRIPE_API_ERROR:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    return-object p1

    .line 126
    :pswitch_22
    sget-object p1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->STRIPE_API_CONNECTION_ERROR:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    return-object p1

    .line 125
    :pswitch_23
    sget-object p1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->REQUEST_TIMED_OUT:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    return-object p1

    .line 124
    :pswitch_24
    sget-object p1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->DECLINED_BY_READER:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    return-object p1

    .line 123
    :pswitch_25
    sget-object p1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->DECLINED_BY_STRIPE_API:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    return-object p1

    .line 122
    :pswitch_26
    sget-object p1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    return-object p1

    .line 121
    :pswitch_27
    sget-object p1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->UNSUPPORTED_READER_VERSION:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    return-object p1

    .line 120
    :pswitch_28
    sget-object p1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->READER_COMMUNICATION_ERROR:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    return-object p1

    .line 119
    :pswitch_29
    sget-object p1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->READER_BUSY:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    return-object p1

    .line 118
    :pswitch_2a
    sget-object p1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->FEATURE_NOT_ENABLED_ON_ACCOUNT:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    return-object p1

    .line 117
    :pswitch_2b
    sget-object p1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->CARD_LEFT_IN_READER:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    return-object p1

    .line 116
    :pswitch_2c
    sget-object p1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->CUSTOMER_CONSENT_REQUIRED:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    return-object p1

    .line 115
    :pswitch_2d
    sget-object p1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->CARD_REMOVED:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    return-object p1

    .line 114
    :pswitch_2e
    sget-object p1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->CARD_READ_TIMED_OUT:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    return-object p1

    .line 113
    :pswitch_2f
    sget-object p1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->CARD_SWIPE_NOT_READ:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    return-object p1

    .line 112
    :pswitch_30
    sget-object p1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->CARD_INSERT_NOT_READ:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    return-object p1

    .line 111
    :pswitch_31
    sget-object p1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->LOCATION_SERVICES_DISABLED:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    return-object p1

    .line 110
    :pswitch_32
    sget-object p1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->CANCELED:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    return-object p1

    .line 109
    :pswitch_33
    sget-object p1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->INVALID_TIP_PARAMETER:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    return-object p1

    .line 108
    :pswitch_34
    sget-object p1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->INVALID_REQUIRED_PARAMETER:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    return-object p1

    .line 107
    :pswitch_35
    sget-object p1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->MISSING_REQUIRED_PARAMETER:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    return-object p1

    .line 106
    :pswitch_36
    sget-object p1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->UNSUPPORTED_SDK:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    return-object p1

    .line 105
    :pswitch_37
    sget-object p1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->UNEXPECTED_OPERATION:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    return-object p1

    .line 104
    :pswitch_38
    sget-object p1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->UNSUPPORTED_OPERATION:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    return-object p1

    .line 103
    :pswitch_39
    sget-object p1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->INVALID_CLIENT_SECRET:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    return-object p1

    .line 102
    :pswitch_3a
    sget-object p1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->CONFIRM_INVALID_SETUP_INTENT:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    return-object p1

    .line 101
    :pswitch_3b
    sget-object p1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->CONFIRM_INVALID_PAYMENT_INTENT:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    return-object p1

    .line 100
    :pswitch_3c
    sget-object p1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->ALREADY_CONNECTED_TO_READER:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    return-object p1

    .line 99
    :pswitch_3d
    sget-object p1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->NOT_CONNECTED_TO_READER:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    return-object p1

    .line 98
    :pswitch_3e
    sget-object p1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->CANCEL_FAILED:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    return-object p1

    .line 97
    :pswitch_3f
    sget-object p1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->READER_ERROR_CODE_UNSPECIFIED:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
