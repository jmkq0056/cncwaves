.class public final enum Lcom/stripe/proto/model/sdk/ReaderErrorCode;
.super Ljava/lang/Enum;
.source "ReaderErrorCode.kt"

# interfaces
.implements Lcom/squareup/wire/WireEnum;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/model/sdk/ReaderErrorCode$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/proto/model/sdk/ReaderErrorCode;",
        ">;",
        "Lcom/squareup/wire/WireEnum;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008E\u0008\u0086\u0081\u0002\u0018\u0000 H2\u0008\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001HB\u000f\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017j\u0002\u0008\u0018j\u0002\u0008\u0019j\u0002\u0008\u001aj\u0002\u0008\u001bj\u0002\u0008\u001cj\u0002\u0008\u001dj\u0002\u0008\u001ej\u0002\u0008\u001fj\u0002\u0008 j\u0002\u0008!j\u0002\u0008\"j\u0002\u0008#j\u0002\u0008$j\u0002\u0008%j\u0002\u0008&j\u0002\u0008\'j\u0002\u0008(j\u0002\u0008)j\u0002\u0008*j\u0002\u0008+j\u0002\u0008,j\u0002\u0008-j\u0002\u0008.j\u0002\u0008/j\u0002\u00080j\u0002\u00081j\u0002\u00082j\u0002\u00083j\u0002\u00084j\u0002\u00085j\u0002\u00086j\u0002\u00087j\u0002\u00088j\u0002\u00089j\u0002\u0008:j\u0002\u0008;j\u0002\u0008<j\u0002\u0008=j\u0002\u0008>j\u0002\u0008?j\u0002\u0008@j\u0002\u0008Aj\u0002\u0008Bj\u0002\u0008Cj\u0002\u0008Dj\u0002\u0008Ej\u0002\u0008Fj\u0002\u0008G\u00a8\u0006I"
    }
    d2 = {
        "Lcom/stripe/proto/model/sdk/ReaderErrorCode;",
        "",
        "Lcom/squareup/wire/WireEnum;",
        "value",
        "",
        "(Ljava/lang/String;II)V",
        "getValue",
        "()I",
        "READER_ERROR_CODE_UNSPECIFIED",
        "CANCEL_FAILED",
        "NOT_CONNECTED_TO_READER",
        "ALREADY_CONNECTED_TO_READER",
        "CONFIRM_INVALID_PAYMENT_INTENT",
        "CONFIRM_INVALID_SETUP_INTENT",
        "INVALID_CLIENT_SECRET",
        "UNSUPPORTED_OPERATION",
        "UNEXPECTED_OPERATION",
        "UNSUPPORTED_SDK",
        "MISSING_REQUIRED_PARAMETER",
        "INVALID_REQUIRED_PARAMETER",
        "INVALID_TIP_PARAMETER",
        "CANCELED",
        "LOCATION_SERVICES_DISABLED",
        "CARD_INSERT_NOT_READ",
        "CARD_SWIPE_NOT_READ",
        "CARD_READ_TIMED_OUT",
        "CARD_REMOVED",
        "CUSTOMER_CONSENT_REQUIRED",
        "CARD_LEFT_IN_READER",
        "FEATURE_NOT_ENABLED_ON_ACCOUNT",
        "READER_BUSY",
        "READER_COMMUNICATION_ERROR",
        "UNSUPPORTED_READER_VERSION",
        "UNEXPECTED_SDK_ERROR",
        "DECLINED_BY_STRIPE_API",
        "DECLINED_BY_READER",
        "REQUEST_TIMED_OUT",
        "STRIPE_API_CONNECTION_ERROR",
        "STRIPE_API_ERROR",
        "STRIPE_API_RESPONSE_DECODING_ERROR",
        "CONNECTION_TOKEN_PROVIDER_ERROR",
        "SESSION_EXPIRED",
        "AMOUNT_EXCEEDS_MAX_OFFLINE_AMOUNT",
        "OFFLINE_PAYMENTS_DATABASE_TOO_LARGE",
        "READER_CONNECTION_NOT_AVAILABLE_OFFLINE",
        "LOCATION_CONNECTION_NOT_AVAILABLE_OFFLINE",
        "NO_LAST_SEEN_ACCOUNT",
        "INVALID_OFFLINE_CURRENCY",
        "CARD_SWIPE_NOT_AVAILABLE",
        "INTERAC_NOT_SUPPORTED_OFFLINE",
        "ONLINE_PIN_NOT_SUPPORTED_OFFLINE",
        "MOBILE_WALLET_NOT_SUPPORTED_ON_SETUP_INTENTS",
        "OFFLINE_AND_CARD_EXPIRED",
        "OFFLINE_TRANSACTION_DECLINED",
        "OFFLINE_COLLECT_AND_CONFIRM_MISMATCH",
        "OFFLINE_TESTMODE_PAYMENT_IN_LIVEMODE",
        "OFFLINE_LIVEMODE_PAYMENT_IN_TESTMODE",
        "OFFLINE_PAYMENT_INTENT_NOT_FOUND",
        "MISSING_EMV_DATA",
        "CONNECTION_TOKEN_PROVIDER_ERROR_WHILE_FORWARDING",
        "ACCOUNT_ID_MISMATCH_WHILE_FORWARDING",
        "FORCE_OFFLINE_WITH_FEATURE_DISABLED",
        "NOT_CONNECTED_TO_INTERNET_AND_REQUIRE_ONLINE_SET",
        "TEST_CARD_IN_LIVEMODE",
        "COLLECT_INPUTS_APPLICATION_ERROR",
        "COLLECT_INPUTS_TIMED_OUT",
        "COLLECT_INPUTS_INVALID_PARAMETER",
        "COLLECT_INPUTS_UNSUPPORTED",
        "READER_SETTINGS_ERROR",
        "READER_MISSING_ENCRYPTION_KEYS",
        "READER_COMMUNICATION_SSL_ERROR",
        "INVALID_SURCHARGE_PARAMETER",
        "Companion",
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


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/stripe/proto/model/sdk/ReaderErrorCode;

.field public static final enum ACCOUNT_ID_MISMATCH_WHILE_FORWARDING:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

.field public static final ADAPTER:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Lcom/stripe/proto/model/sdk/ReaderErrorCode;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum ALREADY_CONNECTED_TO_READER:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

.field public static final enum AMOUNT_EXCEEDS_MAX_OFFLINE_AMOUNT:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

.field public static final enum CANCELED:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

.field public static final enum CANCEL_FAILED:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

.field public static final enum CARD_INSERT_NOT_READ:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

.field public static final enum CARD_LEFT_IN_READER:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

.field public static final enum CARD_READ_TIMED_OUT:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

.field public static final enum CARD_REMOVED:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

.field public static final enum CARD_SWIPE_NOT_AVAILABLE:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

.field public static final enum CARD_SWIPE_NOT_READ:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

.field public static final enum COLLECT_INPUTS_APPLICATION_ERROR:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

.field public static final enum COLLECT_INPUTS_INVALID_PARAMETER:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

.field public static final enum COLLECT_INPUTS_TIMED_OUT:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

.field public static final enum COLLECT_INPUTS_UNSUPPORTED:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

.field public static final enum CONFIRM_INVALID_PAYMENT_INTENT:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

.field public static final enum CONFIRM_INVALID_SETUP_INTENT:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

.field public static final enum CONNECTION_TOKEN_PROVIDER_ERROR:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

.field public static final enum CONNECTION_TOKEN_PROVIDER_ERROR_WHILE_FORWARDING:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

.field public static final enum CUSTOMER_CONSENT_REQUIRED:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

.field public static final Companion:Lcom/stripe/proto/model/sdk/ReaderErrorCode$Companion;

.field public static final enum DECLINED_BY_READER:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

.field public static final enum DECLINED_BY_STRIPE_API:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

.field public static final enum FEATURE_NOT_ENABLED_ON_ACCOUNT:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

.field public static final enum FORCE_OFFLINE_WITH_FEATURE_DISABLED:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

.field public static final enum INTERAC_NOT_SUPPORTED_OFFLINE:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

.field public static final enum INVALID_CLIENT_SECRET:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

.field public static final enum INVALID_OFFLINE_CURRENCY:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

.field public static final enum INVALID_REQUIRED_PARAMETER:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

.field public static final enum INVALID_SURCHARGE_PARAMETER:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

.field public static final enum INVALID_TIP_PARAMETER:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

.field public static final enum LOCATION_CONNECTION_NOT_AVAILABLE_OFFLINE:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

.field public static final enum LOCATION_SERVICES_DISABLED:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

.field public static final enum MISSING_EMV_DATA:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

.field public static final enum MISSING_REQUIRED_PARAMETER:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

.field public static final enum MOBILE_WALLET_NOT_SUPPORTED_ON_SETUP_INTENTS:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

.field public static final enum NOT_CONNECTED_TO_INTERNET_AND_REQUIRE_ONLINE_SET:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

.field public static final enum NOT_CONNECTED_TO_READER:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

.field public static final enum NO_LAST_SEEN_ACCOUNT:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

.field public static final enum OFFLINE_AND_CARD_EXPIRED:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

.field public static final enum OFFLINE_COLLECT_AND_CONFIRM_MISMATCH:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

.field public static final enum OFFLINE_LIVEMODE_PAYMENT_IN_TESTMODE:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

.field public static final enum OFFLINE_PAYMENTS_DATABASE_TOO_LARGE:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

.field public static final enum OFFLINE_PAYMENT_INTENT_NOT_FOUND:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

.field public static final enum OFFLINE_TESTMODE_PAYMENT_IN_LIVEMODE:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

.field public static final enum OFFLINE_TRANSACTION_DECLINED:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

.field public static final enum ONLINE_PIN_NOT_SUPPORTED_OFFLINE:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

.field public static final enum READER_BUSY:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

.field public static final enum READER_COMMUNICATION_ERROR:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

.field public static final enum READER_COMMUNICATION_SSL_ERROR:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

.field public static final enum READER_CONNECTION_NOT_AVAILABLE_OFFLINE:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

.field public static final enum READER_ERROR_CODE_UNSPECIFIED:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

.field public static final enum READER_MISSING_ENCRYPTION_KEYS:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

.field public static final enum READER_SETTINGS_ERROR:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

.field public static final enum REQUEST_TIMED_OUT:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

.field public static final enum SESSION_EXPIRED:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

.field public static final enum STRIPE_API_CONNECTION_ERROR:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

.field public static final enum STRIPE_API_ERROR:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

.field public static final enum STRIPE_API_RESPONSE_DECODING_ERROR:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

.field public static final enum TEST_CARD_IN_LIVEMODE:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

.field public static final enum UNEXPECTED_OPERATION:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

.field public static final enum UNEXPECTED_SDK_ERROR:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

.field public static final enum UNSUPPORTED_OPERATION:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

.field public static final enum UNSUPPORTED_READER_VERSION:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

.field public static final enum UNSUPPORTED_SDK:Lcom/stripe/proto/model/sdk/ReaderErrorCode;


# instance fields
.field private final value:I


# direct methods
.method private static final synthetic $values()[Lcom/stripe/proto/model/sdk/ReaderErrorCode;
    .locals 65

    sget-object v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->READER_ERROR_CODE_UNSPECIFIED:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    sget-object v2, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->CANCEL_FAILED:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    sget-object v3, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->NOT_CONNECTED_TO_READER:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    sget-object v4, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->ALREADY_CONNECTED_TO_READER:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    sget-object v5, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->CONFIRM_INVALID_PAYMENT_INTENT:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    sget-object v6, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->CONFIRM_INVALID_SETUP_INTENT:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    sget-object v7, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->INVALID_CLIENT_SECRET:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    sget-object v8, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->UNSUPPORTED_OPERATION:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    sget-object v9, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->UNEXPECTED_OPERATION:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    sget-object v10, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->UNSUPPORTED_SDK:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    sget-object v11, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->MISSING_REQUIRED_PARAMETER:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    sget-object v12, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->INVALID_REQUIRED_PARAMETER:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    sget-object v13, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->INVALID_TIP_PARAMETER:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    sget-object v14, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->CANCELED:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    sget-object v15, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->LOCATION_SERVICES_DISABLED:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    sget-object v16, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->CARD_INSERT_NOT_READ:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    sget-object v17, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->CARD_SWIPE_NOT_READ:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    sget-object v18, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->CARD_READ_TIMED_OUT:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    sget-object v19, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->CARD_REMOVED:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    sget-object v20, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->CUSTOMER_CONSENT_REQUIRED:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    sget-object v21, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->CARD_LEFT_IN_READER:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    sget-object v22, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->FEATURE_NOT_ENABLED_ON_ACCOUNT:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    sget-object v23, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->READER_BUSY:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    sget-object v24, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->READER_COMMUNICATION_ERROR:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    sget-object v25, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->UNSUPPORTED_READER_VERSION:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    sget-object v26, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    sget-object v27, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->DECLINED_BY_STRIPE_API:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    sget-object v28, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->DECLINED_BY_READER:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    sget-object v29, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->REQUEST_TIMED_OUT:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    sget-object v30, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->STRIPE_API_CONNECTION_ERROR:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    sget-object v31, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->STRIPE_API_ERROR:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    sget-object v32, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->STRIPE_API_RESPONSE_DECODING_ERROR:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    sget-object v33, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->CONNECTION_TOKEN_PROVIDER_ERROR:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    sget-object v34, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->SESSION_EXPIRED:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    sget-object v35, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->AMOUNT_EXCEEDS_MAX_OFFLINE_AMOUNT:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    sget-object v36, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->OFFLINE_PAYMENTS_DATABASE_TOO_LARGE:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    sget-object v37, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->READER_CONNECTION_NOT_AVAILABLE_OFFLINE:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    sget-object v38, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->LOCATION_CONNECTION_NOT_AVAILABLE_OFFLINE:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    sget-object v39, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->NO_LAST_SEEN_ACCOUNT:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    sget-object v40, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->INVALID_OFFLINE_CURRENCY:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    sget-object v41, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->CARD_SWIPE_NOT_AVAILABLE:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    sget-object v42, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->INTERAC_NOT_SUPPORTED_OFFLINE:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    sget-object v43, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->ONLINE_PIN_NOT_SUPPORTED_OFFLINE:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    sget-object v44, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->MOBILE_WALLET_NOT_SUPPORTED_ON_SETUP_INTENTS:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    sget-object v45, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->OFFLINE_AND_CARD_EXPIRED:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    sget-object v46, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->OFFLINE_TRANSACTION_DECLINED:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    sget-object v47, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->OFFLINE_COLLECT_AND_CONFIRM_MISMATCH:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    sget-object v48, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->OFFLINE_TESTMODE_PAYMENT_IN_LIVEMODE:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    sget-object v49, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->OFFLINE_LIVEMODE_PAYMENT_IN_TESTMODE:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    sget-object v50, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->OFFLINE_PAYMENT_INTENT_NOT_FOUND:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    sget-object v51, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->MISSING_EMV_DATA:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    sget-object v52, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->CONNECTION_TOKEN_PROVIDER_ERROR_WHILE_FORWARDING:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    sget-object v53, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->ACCOUNT_ID_MISMATCH_WHILE_FORWARDING:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    sget-object v54, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->FORCE_OFFLINE_WITH_FEATURE_DISABLED:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    sget-object v55, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->NOT_CONNECTED_TO_INTERNET_AND_REQUIRE_ONLINE_SET:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    sget-object v56, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->TEST_CARD_IN_LIVEMODE:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    sget-object v57, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->COLLECT_INPUTS_APPLICATION_ERROR:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    sget-object v58, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->COLLECT_INPUTS_TIMED_OUT:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    sget-object v59, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->COLLECT_INPUTS_INVALID_PARAMETER:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    sget-object v60, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->COLLECT_INPUTS_UNSUPPORTED:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    sget-object v61, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->READER_SETTINGS_ERROR:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    sget-object v62, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->READER_MISSING_ENCRYPTION_KEYS:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    sget-object v63, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->READER_COMMUNICATION_SSL_ERROR:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    sget-object v64, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->INVALID_SURCHARGE_PARAMETER:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    filled-new-array/range {v1 .. v64}, [Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 19
    new-instance v0, Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    const-string v1, "READER_ERROR_CODE_UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/stripe/proto/model/sdk/ReaderErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->READER_ERROR_CODE_UNSPECIFIED:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    .line 20
    new-instance v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    const-string v2, "CANCEL_FAILED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/sdk/ReaderErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->CANCEL_FAILED:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    .line 21
    new-instance v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    const-string v2, "NOT_CONNECTED_TO_READER"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/sdk/ReaderErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->NOT_CONNECTED_TO_READER:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    .line 22
    new-instance v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    const-string v2, "ALREADY_CONNECTED_TO_READER"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/sdk/ReaderErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->ALREADY_CONNECTED_TO_READER:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    .line 23
    new-instance v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    const-string v2, "CONFIRM_INVALID_PAYMENT_INTENT"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/sdk/ReaderErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->CONFIRM_INVALID_PAYMENT_INTENT:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    .line 24
    new-instance v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    const-string v2, "CONFIRM_INVALID_SETUP_INTENT"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/sdk/ReaderErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->CONFIRM_INVALID_SETUP_INTENT:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    .line 25
    new-instance v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    const-string v2, "INVALID_CLIENT_SECRET"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/sdk/ReaderErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->INVALID_CLIENT_SECRET:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    .line 26
    new-instance v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    const-string v2, "UNSUPPORTED_OPERATION"

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/sdk/ReaderErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->UNSUPPORTED_OPERATION:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    .line 27
    new-instance v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    const-string v2, "UNEXPECTED_OPERATION"

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/sdk/ReaderErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->UNEXPECTED_OPERATION:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    .line 28
    new-instance v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    const-string v2, "UNSUPPORTED_SDK"

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/sdk/ReaderErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->UNSUPPORTED_SDK:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    .line 29
    new-instance v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    const-string v2, "MISSING_REQUIRED_PARAMETER"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/sdk/ReaderErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->MISSING_REQUIRED_PARAMETER:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    .line 30
    new-instance v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    const-string v2, "INVALID_REQUIRED_PARAMETER"

    const/16 v3, 0xb

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/sdk/ReaderErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->INVALID_REQUIRED_PARAMETER:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    .line 31
    new-instance v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    const-string v2, "INVALID_TIP_PARAMETER"

    const/16 v3, 0xc

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/sdk/ReaderErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->INVALID_TIP_PARAMETER:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    .line 32
    new-instance v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    const-string v2, "CANCELED"

    const/16 v3, 0xd

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/sdk/ReaderErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->CANCELED:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    .line 33
    new-instance v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    const-string v2, "LOCATION_SERVICES_DISABLED"

    const/16 v3, 0xe

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/sdk/ReaderErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->LOCATION_SERVICES_DISABLED:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    .line 34
    new-instance v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    const-string v2, "CARD_INSERT_NOT_READ"

    const/16 v3, 0xf

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/sdk/ReaderErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->CARD_INSERT_NOT_READ:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    .line 35
    new-instance v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    const-string v2, "CARD_SWIPE_NOT_READ"

    const/16 v3, 0x10

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/sdk/ReaderErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->CARD_SWIPE_NOT_READ:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    .line 36
    new-instance v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    const-string v2, "CARD_READ_TIMED_OUT"

    const/16 v3, 0x11

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/sdk/ReaderErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->CARD_READ_TIMED_OUT:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    .line 37
    new-instance v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    const-string v2, "CARD_REMOVED"

    const/16 v3, 0x12

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/sdk/ReaderErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->CARD_REMOVED:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    .line 38
    new-instance v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    const-string v2, "CUSTOMER_CONSENT_REQUIRED"

    const/16 v3, 0x13

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/sdk/ReaderErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->CUSTOMER_CONSENT_REQUIRED:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    .line 39
    new-instance v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    const-string v2, "CARD_LEFT_IN_READER"

    const/16 v3, 0x14

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/sdk/ReaderErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->CARD_LEFT_IN_READER:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    .line 40
    new-instance v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    const-string v2, "FEATURE_NOT_ENABLED_ON_ACCOUNT"

    const/16 v3, 0x15

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/sdk/ReaderErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->FEATURE_NOT_ENABLED_ON_ACCOUNT:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    .line 41
    new-instance v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    const/16 v2, 0x16

    const/16 v3, 0x16

    const-string v4, "READER_BUSY"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/sdk/ReaderErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->READER_BUSY:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    .line 42
    new-instance v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    const/16 v2, 0x17

    const/16 v3, 0x17

    const-string v4, "READER_COMMUNICATION_ERROR"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/sdk/ReaderErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->READER_COMMUNICATION_ERROR:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    .line 43
    new-instance v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    const/16 v2, 0x18

    const/16 v3, 0x18

    const-string v4, "UNSUPPORTED_READER_VERSION"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/sdk/ReaderErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->UNSUPPORTED_READER_VERSION:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    .line 44
    new-instance v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    const/16 v2, 0x19

    const/16 v3, 0x19

    const-string v4, "UNEXPECTED_SDK_ERROR"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/sdk/ReaderErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    .line 45
    new-instance v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    const/16 v2, 0x1a

    const/16 v3, 0x1a

    const-string v4, "DECLINED_BY_STRIPE_API"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/sdk/ReaderErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->DECLINED_BY_STRIPE_API:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    .line 46
    new-instance v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    const/16 v2, 0x1b

    const/16 v3, 0x1b

    const-string v4, "DECLINED_BY_READER"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/sdk/ReaderErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->DECLINED_BY_READER:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    .line 47
    new-instance v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    const/16 v2, 0x1c

    const/16 v3, 0x1c

    const-string v4, "REQUEST_TIMED_OUT"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/sdk/ReaderErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->REQUEST_TIMED_OUT:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    .line 48
    new-instance v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    const/16 v2, 0x1d

    const/16 v3, 0x1d

    const-string v4, "STRIPE_API_CONNECTION_ERROR"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/sdk/ReaderErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->STRIPE_API_CONNECTION_ERROR:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    .line 49
    new-instance v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    const/16 v2, 0x1e

    const/16 v3, 0x1e

    const-string v4, "STRIPE_API_ERROR"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/sdk/ReaderErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->STRIPE_API_ERROR:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    .line 50
    new-instance v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    const/16 v2, 0x1f

    const/16 v3, 0x1f

    const-string v4, "STRIPE_API_RESPONSE_DECODING_ERROR"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/sdk/ReaderErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->STRIPE_API_RESPONSE_DECODING_ERROR:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    .line 51
    new-instance v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    const/16 v2, 0x20

    const/16 v3, 0x20

    const-string v4, "CONNECTION_TOKEN_PROVIDER_ERROR"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/sdk/ReaderErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->CONNECTION_TOKEN_PROVIDER_ERROR:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    .line 52
    new-instance v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    const/16 v2, 0x21

    const/16 v3, 0x21

    const-string v4, "SESSION_EXPIRED"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/sdk/ReaderErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->SESSION_EXPIRED:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    .line 53
    new-instance v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    const/16 v2, 0x22

    const/16 v3, 0x22

    const-string v4, "AMOUNT_EXCEEDS_MAX_OFFLINE_AMOUNT"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/sdk/ReaderErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->AMOUNT_EXCEEDS_MAX_OFFLINE_AMOUNT:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    .line 54
    new-instance v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    const/16 v2, 0x23

    const/16 v3, 0x23

    const-string v4, "OFFLINE_PAYMENTS_DATABASE_TOO_LARGE"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/sdk/ReaderErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->OFFLINE_PAYMENTS_DATABASE_TOO_LARGE:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    .line 55
    new-instance v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    const/16 v2, 0x24

    const/16 v3, 0x24

    const-string v4, "READER_CONNECTION_NOT_AVAILABLE_OFFLINE"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/sdk/ReaderErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->READER_CONNECTION_NOT_AVAILABLE_OFFLINE:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    .line 56
    new-instance v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    const/16 v2, 0x25

    const/16 v3, 0x25

    const-string v4, "LOCATION_CONNECTION_NOT_AVAILABLE_OFFLINE"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/sdk/ReaderErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->LOCATION_CONNECTION_NOT_AVAILABLE_OFFLINE:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    .line 57
    new-instance v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    const/16 v2, 0x26

    const/16 v3, 0x26

    const-string v4, "NO_LAST_SEEN_ACCOUNT"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/sdk/ReaderErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->NO_LAST_SEEN_ACCOUNT:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    .line 58
    new-instance v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    const/16 v2, 0x27

    const/16 v3, 0x27

    const-string v4, "INVALID_OFFLINE_CURRENCY"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/sdk/ReaderErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->INVALID_OFFLINE_CURRENCY:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    .line 59
    new-instance v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    const/16 v2, 0x28

    const/16 v3, 0x28

    const-string v4, "CARD_SWIPE_NOT_AVAILABLE"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/sdk/ReaderErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->CARD_SWIPE_NOT_AVAILABLE:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    .line 60
    new-instance v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    const/16 v2, 0x29

    const/16 v3, 0x29

    const-string v4, "INTERAC_NOT_SUPPORTED_OFFLINE"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/sdk/ReaderErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->INTERAC_NOT_SUPPORTED_OFFLINE:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    .line 61
    new-instance v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    const/16 v2, 0x2a

    const/16 v3, 0x2a

    const-string v4, "ONLINE_PIN_NOT_SUPPORTED_OFFLINE"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/sdk/ReaderErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->ONLINE_PIN_NOT_SUPPORTED_OFFLINE:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    .line 62
    new-instance v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    const/16 v2, 0x2b

    const/16 v3, 0x2b

    const-string v4, "MOBILE_WALLET_NOT_SUPPORTED_ON_SETUP_INTENTS"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/sdk/ReaderErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->MOBILE_WALLET_NOT_SUPPORTED_ON_SETUP_INTENTS:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    .line 63
    new-instance v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    const/16 v2, 0x2c

    const/16 v3, 0x2c

    const-string v4, "OFFLINE_AND_CARD_EXPIRED"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/sdk/ReaderErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->OFFLINE_AND_CARD_EXPIRED:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    .line 64
    new-instance v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    const/16 v2, 0x2d

    const/16 v3, 0x2d

    const-string v4, "OFFLINE_TRANSACTION_DECLINED"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/sdk/ReaderErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->OFFLINE_TRANSACTION_DECLINED:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    .line 65
    new-instance v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    const/16 v2, 0x2e

    const/16 v3, 0x2e

    const-string v4, "OFFLINE_COLLECT_AND_CONFIRM_MISMATCH"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/sdk/ReaderErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->OFFLINE_COLLECT_AND_CONFIRM_MISMATCH:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    .line 66
    new-instance v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    const/16 v2, 0x2f

    const/16 v3, 0x2f

    const-string v4, "OFFLINE_TESTMODE_PAYMENT_IN_LIVEMODE"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/sdk/ReaderErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->OFFLINE_TESTMODE_PAYMENT_IN_LIVEMODE:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    .line 67
    new-instance v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    const/16 v2, 0x30

    const/16 v3, 0x30

    const-string v4, "OFFLINE_LIVEMODE_PAYMENT_IN_TESTMODE"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/sdk/ReaderErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->OFFLINE_LIVEMODE_PAYMENT_IN_TESTMODE:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    .line 68
    new-instance v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    const/16 v2, 0x31

    const/16 v3, 0x31

    const-string v4, "OFFLINE_PAYMENT_INTENT_NOT_FOUND"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/sdk/ReaderErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->OFFLINE_PAYMENT_INTENT_NOT_FOUND:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    .line 69
    new-instance v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    const/16 v2, 0x32

    const/16 v3, 0x32

    const-string v4, "MISSING_EMV_DATA"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/sdk/ReaderErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->MISSING_EMV_DATA:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    .line 70
    new-instance v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    const/16 v2, 0x33

    const/16 v3, 0x33

    const-string v4, "CONNECTION_TOKEN_PROVIDER_ERROR_WHILE_FORWARDING"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/sdk/ReaderErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->CONNECTION_TOKEN_PROVIDER_ERROR_WHILE_FORWARDING:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    .line 71
    new-instance v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    const/16 v2, 0x34

    const/16 v3, 0x34

    const-string v4, "ACCOUNT_ID_MISMATCH_WHILE_FORWARDING"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/sdk/ReaderErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->ACCOUNT_ID_MISMATCH_WHILE_FORWARDING:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    .line 72
    new-instance v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    const/16 v2, 0x35

    const/16 v3, 0x35

    const-string v4, "FORCE_OFFLINE_WITH_FEATURE_DISABLED"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/sdk/ReaderErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->FORCE_OFFLINE_WITH_FEATURE_DISABLED:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    .line 73
    new-instance v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    const/16 v2, 0x36

    const/16 v3, 0x36

    const-string v4, "NOT_CONNECTED_TO_INTERNET_AND_REQUIRE_ONLINE_SET"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/sdk/ReaderErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->NOT_CONNECTED_TO_INTERNET_AND_REQUIRE_ONLINE_SET:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    .line 74
    new-instance v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    const/16 v2, 0x37

    const/16 v3, 0x37

    const-string v4, "TEST_CARD_IN_LIVEMODE"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/sdk/ReaderErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->TEST_CARD_IN_LIVEMODE:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    .line 75
    new-instance v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    const/16 v2, 0x38

    const/16 v3, 0x38

    const-string v4, "COLLECT_INPUTS_APPLICATION_ERROR"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/sdk/ReaderErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->COLLECT_INPUTS_APPLICATION_ERROR:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    .line 76
    new-instance v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    const/16 v2, 0x39

    const/16 v3, 0x39

    const-string v4, "COLLECT_INPUTS_TIMED_OUT"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/sdk/ReaderErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->COLLECT_INPUTS_TIMED_OUT:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    .line 77
    new-instance v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    const/16 v2, 0x3a

    const/16 v3, 0x3a

    const-string v4, "COLLECT_INPUTS_INVALID_PARAMETER"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/sdk/ReaderErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->COLLECT_INPUTS_INVALID_PARAMETER:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    .line 78
    new-instance v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    const/16 v2, 0x3b

    const/16 v3, 0x3b

    const-string v4, "COLLECT_INPUTS_UNSUPPORTED"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/sdk/ReaderErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->COLLECT_INPUTS_UNSUPPORTED:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    .line 79
    new-instance v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    const/16 v2, 0x3c

    const/16 v3, 0x3c

    const-string v4, "READER_SETTINGS_ERROR"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/sdk/ReaderErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->READER_SETTINGS_ERROR:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    .line 80
    new-instance v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    const/16 v2, 0x3d

    const/16 v3, 0x3d

    const-string v4, "READER_MISSING_ENCRYPTION_KEYS"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/sdk/ReaderErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->READER_MISSING_ENCRYPTION_KEYS:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    .line 81
    new-instance v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    const/16 v2, 0x3e

    const/16 v3, 0x3e

    const-string v4, "READER_COMMUNICATION_SSL_ERROR"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/sdk/ReaderErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->READER_COMMUNICATION_SSL_ERROR:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    .line 82
    new-instance v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    const/16 v2, 0x3f

    const/16 v3, 0x3f

    const-string v4, "INVALID_SURCHARGE_PARAMETER"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/sdk/ReaderErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->INVALID_SURCHARGE_PARAMETER:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    invoke-static {}, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->$values()[Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    move-result-object v1

    sput-object v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->$VALUES:[Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    check-cast v1, [Ljava/lang/Enum;

    invoke-static {v1}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v1

    sput-object v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode$Companion;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/stripe/proto/model/sdk/ReaderErrorCode$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->Companion:Lcom/stripe/proto/model/sdk/ReaderErrorCode$Companion;

    .line 87
    const-class v1, Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 89
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 87
    new-instance v3, Lcom/stripe/proto/model/sdk/ReaderErrorCode$Companion$ADAPTER$1;

    invoke-direct {v3, v1, v2, v0}, Lcom/stripe/proto/model/sdk/ReaderErrorCode$Companion$ADAPTER$1;-><init>(Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;Lcom/stripe/proto/model/sdk/ReaderErrorCode;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    iput p3, p0, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->value:I

    return-void
.end method

.method public static final fromValue(I)Lcom/stripe/proto/model/sdk/ReaderErrorCode;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->Companion:Lcom/stripe/proto/model/sdk/ReaderErrorCode$Companion;

    invoke-virtual {v0, p0}, Lcom/stripe/proto/model/sdk/ReaderErrorCode$Companion;->fromValue(I)Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    move-result-object p0

    return-object p0
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/stripe/proto/model/sdk/ReaderErrorCode;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/proto/model/sdk/ReaderErrorCode;
    .locals 1

    const-class v0, Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    return-object p0
.end method

.method public static values()[Lcom/stripe/proto/model/sdk/ReaderErrorCode;
    .locals 1

    sget-object v0, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->$VALUES:[Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 17
    iget v0, p0, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->value:I

    return v0
.end method
