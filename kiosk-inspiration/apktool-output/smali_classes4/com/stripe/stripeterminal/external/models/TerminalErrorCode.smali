.class public final enum Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;
.super Ljava/lang/Enum;
.source "TerminalErrorCode.android.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/external/models/TerminalErrorCode$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008`\u0008\u0086\u0081\u0002\u0018\u0000 g2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001gB\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\u0007\u001a\u00020\u0008J\u0008\u0010\t\u001a\u00020\u0008H\u0016R\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017j\u0002\u0008\u0018j\u0002\u0008\u0019j\u0002\u0008\u001aj\u0002\u0008\u001bj\u0002\u0008\u001cj\u0002\u0008\u001dj\u0002\u0008\u001ej\u0002\u0008\u001fj\u0002\u0008 j\u0002\u0008!j\u0002\u0008\"j\u0002\u0008#j\u0002\u0008$j\u0002\u0008%j\u0002\u0008&j\u0002\u0008\'j\u0002\u0008(j\u0002\u0008)j\u0002\u0008*j\u0002\u0008+j\u0002\u0008,j\u0002\u0008-j\u0002\u0008.j\u0002\u0008/j\u0002\u00080j\u0002\u00081j\u0002\u00082j\u0002\u00083j\u0002\u00084j\u0002\u00085j\u0002\u00086j\u0002\u00087j\u0002\u00088j\u0002\u00089j\u0002\u0008:j\u0002\u0008;j\u0002\u0008<j\u0002\u0008=j\u0002\u0008>j\u0002\u0008?j\u0002\u0008@j\u0002\u0008Aj\u0002\u0008Bj\u0002\u0008Cj\u0002\u0008Dj\u0002\u0008Ej\u0002\u0008Fj\u0002\u0008Gj\u0002\u0008Hj\u0002\u0008Ij\u0002\u0008Jj\u0002\u0008Kj\u0002\u0008Lj\u0002\u0008Mj\u0002\u0008Nj\u0002\u0008Oj\u0002\u0008Pj\u0002\u0008Qj\u0002\u0008Rj\u0002\u0008Sj\u0002\u0008Tj\u0002\u0008Uj\u0002\u0008Vj\u0002\u0008Wj\u0002\u0008Xj\u0002\u0008Yj\u0002\u0008Zj\u0002\u0008[j\u0002\u0008\\j\u0002\u0008]j\u0002\u0008^j\u0002\u0008_j\u0002\u0008`j\u0002\u0008aj\u0002\u0008bj\u0002\u0008cj\u0002\u0008dj\u0002\u0008ej\u0002\u0008f\u00a8\u0006h"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;",
        "",
        "type",
        "Lcom/stripe/stripeterminal/external/models/TerminalErrorType;",
        "(Ljava/lang/String;ILcom/stripe/stripeterminal/external/models/TerminalErrorType;)V",
        "getType$public_release",
        "()Lcom/stripe/stripeterminal/external/models/TerminalErrorType;",
        "toLogString",
        "",
        "toString",
        "CANCEL_FAILED",
        "NOT_CONNECTED_TO_READER",
        "ALREADY_CONNECTED_TO_READER",
        "BLUETOOTH_PERMISSION_DENIED",
        "CONFIRM_INVALID_PAYMENT_INTENT",
        "CONFIRM_INVALID_SETUP_INTENT",
        "INVALID_CLIENT_SECRET",
        "UNSUPPORTED_OPERATION",
        "UNEXPECTED_OPERATION",
        "UNSUPPORTED_SDK",
        "USB_PERMISSION_DENIED",
        "MISSING_PREREQUISITE",
        "MISSING_REQUIRED_PARAMETER",
        "INVALID_REQUIRED_PARAMETER",
        "INVALID_TIP_PARAMETER",
        "TAP_TO_PAY_LIBRARY_NOT_INCLUDED",
        "TAP_TO_PAY_UNSUPPORTED_DEVICE",
        "TAP_TO_PAY_UNSUPPORTED_ANDROID_VERSION",
        "TAP_TO_PAY_DEVICE_TAMPERED",
        "TAP_TO_PAY_INSECURE_ENVIRONMENT",
        "TAP_TO_PAY_DEBUG_NOT_SUPPORTED",
        "OFFLINE_MODE_UNSUPPORTED_ANDROID_VERSION",
        "CANCELED",
        "LOCATION_SERVICES_DISABLED",
        "BLUETOOTH_SCAN_TIMED_OUT",
        "BLUETOOTH_LOW_ENERGY_UNSUPPORTED",
        "READER_SOFTWARE_UPDATE_FAILED_BATTERY_LOW",
        "READER_SOFTWARE_UPDATE_FAILED_INTERRUPTED",
        "CARD_INSERT_NOT_READ",
        "CARD_SWIPE_NOT_READ",
        "CARD_READ_TIMED_OUT",
        "CARD_REMOVED",
        "CUSTOMER_CONSENT_REQUIRED",
        "CARD_LEFT_IN_READER",
        "USB_DISCOVERY_TIMED_OUT",
        "FEATURE_NOT_ENABLED_ON_ACCOUNT",
        "READER_BUSY",
        "READER_COMMUNICATION_ERROR",
        "BLUETOOTH_ERROR",
        "BLUETOOTH_DISCONNECTED",
        "BLUETOOTH_RECONNECT_STARTED",
        "USB_DISCONNECTED",
        "USB_RECONNECT_STARTED",
        "READER_CONNECTED_TO_ANOTHER_DEVICE",
        "READER_BATTERY_CRITICALLY_LOW",
        "READER_SOFTWARE_UPDATE_FAILED",
        "READER_SOFTWARE_UPDATE_FAILED_READER_ERROR",
        "READER_SOFTWARE_UPDATE_FAILED_SERVER_ERROR",
        "TAP_TO_PAY_NFC_DISABLED",
        "UNSUPPORTED_READER_VERSION",
        "GENERIC_READER_ERROR",
        "UNEXPECTED_SDK_ERROR",
        "DECLINED_BY_STRIPE_API",
        "DECLINED_BY_READER",
        "REQUEST_TIMED_OUT",
        "STRIPE_API_CONNECTION_ERROR",
        "STRIPE_API_ERROR",
        "STRIPE_API_RESPONSE_DECODING_ERROR",
        "CONNECTION_TOKEN_PROVIDER_ERROR",
        "SESSION_EXPIRED",
        "ANDROID_API_LEVEL_ERROR",
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
        "INVALID_SURCHARGE_PARAMETER",
        "READER_COMMUNICATION_SSL_ERROR",
        "ALLOW_REDISPLAY_INVALID",
        "CANCELED_DUE_TO_INTEGRATION_ERROR",
        "Companion",
        "public_release"
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

.field private static final synthetic $VALUES:[Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

.field public static final enum ACCOUNT_ID_MISMATCH_WHILE_FORWARDING:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

.field public static final enum ALLOW_REDISPLAY_INVALID:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

.field public static final enum ALREADY_CONNECTED_TO_READER:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

.field public static final enum AMOUNT_EXCEEDS_MAX_OFFLINE_AMOUNT:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

.field public static final enum ANDROID_API_LEVEL_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

.field public static final enum BLUETOOTH_DISCONNECTED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

.field public static final enum BLUETOOTH_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

.field public static final enum BLUETOOTH_LOW_ENERGY_UNSUPPORTED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

.field public static final enum BLUETOOTH_PERMISSION_DENIED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

.field public static final enum BLUETOOTH_RECONNECT_STARTED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

.field public static final enum BLUETOOTH_SCAN_TIMED_OUT:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

.field public static final enum CANCELED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

.field public static final enum CANCELED_DUE_TO_INTEGRATION_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

.field public static final enum CANCEL_FAILED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

.field public static final enum CARD_INSERT_NOT_READ:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

.field public static final enum CARD_LEFT_IN_READER:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

.field public static final enum CARD_READ_TIMED_OUT:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

.field public static final enum CARD_REMOVED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

.field public static final enum CARD_SWIPE_NOT_AVAILABLE:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

.field public static final enum CARD_SWIPE_NOT_READ:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

.field public static final enum COLLECT_INPUTS_APPLICATION_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

.field public static final enum COLLECT_INPUTS_INVALID_PARAMETER:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

.field public static final enum COLLECT_INPUTS_TIMED_OUT:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

.field public static final enum COLLECT_INPUTS_UNSUPPORTED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

.field public static final enum CONFIRM_INVALID_PAYMENT_INTENT:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

.field public static final enum CONFIRM_INVALID_SETUP_INTENT:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

.field public static final enum CONNECTION_TOKEN_PROVIDER_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

.field public static final enum CONNECTION_TOKEN_PROVIDER_ERROR_WHILE_FORWARDING:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

.field public static final enum CUSTOMER_CONSENT_REQUIRED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

.field public static final Companion:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode$Companion;

.field public static final enum DECLINED_BY_READER:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

.field public static final enum DECLINED_BY_STRIPE_API:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

.field public static final enum FEATURE_NOT_ENABLED_ON_ACCOUNT:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

.field public static final enum FORCE_OFFLINE_WITH_FEATURE_DISABLED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

.field public static final enum GENERIC_READER_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

.field public static final enum INTERAC_NOT_SUPPORTED_OFFLINE:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

.field public static final enum INVALID_CLIENT_SECRET:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

.field public static final enum INVALID_OFFLINE_CURRENCY:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

.field public static final enum INVALID_REQUIRED_PARAMETER:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

.field public static final enum INVALID_SURCHARGE_PARAMETER:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

.field public static final enum INVALID_TIP_PARAMETER:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

.field public static final enum LOCATION_CONNECTION_NOT_AVAILABLE_OFFLINE:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

.field public static final enum LOCATION_SERVICES_DISABLED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

.field public static final enum MISSING_EMV_DATA:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

.field public static final enum MISSING_PREREQUISITE:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

.field public static final enum MISSING_REQUIRED_PARAMETER:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

.field public static final enum MOBILE_WALLET_NOT_SUPPORTED_ON_SETUP_INTENTS:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

.field public static final enum NOT_CONNECTED_TO_INTERNET_AND_REQUIRE_ONLINE_SET:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

.field public static final enum NOT_CONNECTED_TO_READER:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

.field public static final enum NO_LAST_SEEN_ACCOUNT:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

.field public static final enum OFFLINE_AND_CARD_EXPIRED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

.field public static final enum OFFLINE_COLLECT_AND_CONFIRM_MISMATCH:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

.field public static final enum OFFLINE_LIVEMODE_PAYMENT_IN_TESTMODE:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

.field public static final enum OFFLINE_MODE_UNSUPPORTED_ANDROID_VERSION:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

.field public static final enum OFFLINE_PAYMENTS_DATABASE_TOO_LARGE:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

.field public static final enum OFFLINE_PAYMENT_INTENT_NOT_FOUND:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

.field public static final enum OFFLINE_TESTMODE_PAYMENT_IN_LIVEMODE:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

.field public static final enum OFFLINE_TRANSACTION_DECLINED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

.field public static final enum ONLINE_PIN_NOT_SUPPORTED_OFFLINE:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

.field public static final enum READER_BATTERY_CRITICALLY_LOW:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

.field public static final enum READER_BUSY:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

.field public static final enum READER_COMMUNICATION_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

.field public static final enum READER_COMMUNICATION_SSL_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

.field public static final enum READER_CONNECTED_TO_ANOTHER_DEVICE:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

.field public static final enum READER_CONNECTION_NOT_AVAILABLE_OFFLINE:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

.field public static final enum READER_MISSING_ENCRYPTION_KEYS:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

.field public static final enum READER_SETTINGS_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

.field public static final enum READER_SOFTWARE_UPDATE_FAILED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

.field public static final enum READER_SOFTWARE_UPDATE_FAILED_BATTERY_LOW:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

.field public static final enum READER_SOFTWARE_UPDATE_FAILED_INTERRUPTED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

.field public static final enum READER_SOFTWARE_UPDATE_FAILED_READER_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

.field public static final enum READER_SOFTWARE_UPDATE_FAILED_SERVER_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

.field public static final enum REQUEST_TIMED_OUT:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

.field public static final enum SESSION_EXPIRED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

.field public static final enum STRIPE_API_CONNECTION_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

.field public static final enum STRIPE_API_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

.field public static final enum STRIPE_API_RESPONSE_DECODING_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

.field public static final enum TAP_TO_PAY_DEBUG_NOT_SUPPORTED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

.field public static final enum TAP_TO_PAY_DEVICE_TAMPERED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

.field public static final enum TAP_TO_PAY_INSECURE_ENVIRONMENT:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

.field public static final enum TAP_TO_PAY_LIBRARY_NOT_INCLUDED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

.field public static final enum TAP_TO_PAY_NFC_DISABLED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

.field public static final enum TAP_TO_PAY_UNSUPPORTED_ANDROID_VERSION:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

.field public static final enum TAP_TO_PAY_UNSUPPORTED_DEVICE:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

.field public static final enum TEST_CARD_IN_LIVEMODE:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

.field public static final enum UNEXPECTED_OPERATION:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

.field public static final enum UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

.field public static final enum UNSUPPORTED_OPERATION:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

.field public static final enum UNSUPPORTED_READER_VERSION:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

.field public static final enum UNSUPPORTED_SDK:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

.field public static final enum USB_DISCONNECTED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

.field public static final enum USB_DISCOVERY_TIMED_OUT:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

.field public static final enum USB_PERMISSION_DENIED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

.field public static final enum USB_RECONNECT_STARTED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;


# instance fields
.field private final type:Lcom/stripe/stripeterminal/external/models/TerminalErrorType;


# direct methods
.method private static final synthetic $values()[Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;
    .locals 94

    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->CANCEL_FAILED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->NOT_CONNECTED_TO_READER:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    sget-object v3, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->ALREADY_CONNECTED_TO_READER:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    sget-object v4, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->BLUETOOTH_PERMISSION_DENIED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    sget-object v5, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->CONFIRM_INVALID_PAYMENT_INTENT:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    sget-object v6, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->CONFIRM_INVALID_SETUP_INTENT:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    sget-object v7, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->INVALID_CLIENT_SECRET:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    sget-object v8, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNSUPPORTED_OPERATION:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    sget-object v9, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_OPERATION:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    sget-object v10, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNSUPPORTED_SDK:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    sget-object v11, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->USB_PERMISSION_DENIED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    sget-object v12, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->MISSING_PREREQUISITE:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    sget-object v13, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->MISSING_REQUIRED_PARAMETER:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    sget-object v14, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->INVALID_REQUIRED_PARAMETER:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    sget-object v15, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->INVALID_TIP_PARAMETER:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    sget-object v16, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->TAP_TO_PAY_LIBRARY_NOT_INCLUDED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    sget-object v17, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->TAP_TO_PAY_UNSUPPORTED_DEVICE:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    sget-object v18, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->TAP_TO_PAY_UNSUPPORTED_ANDROID_VERSION:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    sget-object v19, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->TAP_TO_PAY_DEVICE_TAMPERED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    sget-object v20, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->TAP_TO_PAY_INSECURE_ENVIRONMENT:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    sget-object v21, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->TAP_TO_PAY_DEBUG_NOT_SUPPORTED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    sget-object v22, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->OFFLINE_MODE_UNSUPPORTED_ANDROID_VERSION:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    sget-object v23, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->CANCELED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    sget-object v24, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->LOCATION_SERVICES_DISABLED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    sget-object v25, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->BLUETOOTH_SCAN_TIMED_OUT:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    sget-object v26, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->BLUETOOTH_LOW_ENERGY_UNSUPPORTED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    sget-object v27, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->READER_SOFTWARE_UPDATE_FAILED_BATTERY_LOW:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    sget-object v28, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->READER_SOFTWARE_UPDATE_FAILED_INTERRUPTED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    sget-object v29, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->CARD_INSERT_NOT_READ:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    sget-object v30, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->CARD_SWIPE_NOT_READ:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    sget-object v31, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->CARD_READ_TIMED_OUT:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    sget-object v32, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->CARD_REMOVED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    sget-object v33, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->CUSTOMER_CONSENT_REQUIRED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    sget-object v34, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->CARD_LEFT_IN_READER:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    sget-object v35, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->USB_DISCOVERY_TIMED_OUT:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    sget-object v36, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->FEATURE_NOT_ENABLED_ON_ACCOUNT:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    sget-object v37, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->READER_BUSY:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    sget-object v38, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->READER_COMMUNICATION_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    sget-object v39, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->BLUETOOTH_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    sget-object v40, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->BLUETOOTH_DISCONNECTED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    sget-object v41, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->BLUETOOTH_RECONNECT_STARTED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    sget-object v42, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->USB_DISCONNECTED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    sget-object v43, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->USB_RECONNECT_STARTED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    sget-object v44, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->READER_CONNECTED_TO_ANOTHER_DEVICE:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    sget-object v45, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->READER_BATTERY_CRITICALLY_LOW:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    sget-object v46, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->READER_SOFTWARE_UPDATE_FAILED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    sget-object v47, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->READER_SOFTWARE_UPDATE_FAILED_READER_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    sget-object v48, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->READER_SOFTWARE_UPDATE_FAILED_SERVER_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    sget-object v49, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->TAP_TO_PAY_NFC_DISABLED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    sget-object v50, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNSUPPORTED_READER_VERSION:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    sget-object v51, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->GENERIC_READER_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    sget-object v52, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    sget-object v53, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->DECLINED_BY_STRIPE_API:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    sget-object v54, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->DECLINED_BY_READER:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    sget-object v55, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->REQUEST_TIMED_OUT:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    sget-object v56, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->STRIPE_API_CONNECTION_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    sget-object v57, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->STRIPE_API_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    sget-object v58, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->STRIPE_API_RESPONSE_DECODING_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    sget-object v59, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->CONNECTION_TOKEN_PROVIDER_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    sget-object v60, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->SESSION_EXPIRED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    sget-object v61, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->ANDROID_API_LEVEL_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    sget-object v62, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->AMOUNT_EXCEEDS_MAX_OFFLINE_AMOUNT:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    sget-object v63, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->OFFLINE_PAYMENTS_DATABASE_TOO_LARGE:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    sget-object v64, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->READER_CONNECTION_NOT_AVAILABLE_OFFLINE:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    sget-object v65, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->LOCATION_CONNECTION_NOT_AVAILABLE_OFFLINE:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    sget-object v66, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->NO_LAST_SEEN_ACCOUNT:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    sget-object v67, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->INVALID_OFFLINE_CURRENCY:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    sget-object v68, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->CARD_SWIPE_NOT_AVAILABLE:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    sget-object v69, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->INTERAC_NOT_SUPPORTED_OFFLINE:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    sget-object v70, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->ONLINE_PIN_NOT_SUPPORTED_OFFLINE:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    sget-object v71, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->MOBILE_WALLET_NOT_SUPPORTED_ON_SETUP_INTENTS:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    sget-object v72, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->OFFLINE_AND_CARD_EXPIRED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    sget-object v73, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->OFFLINE_TRANSACTION_DECLINED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    sget-object v74, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->OFFLINE_COLLECT_AND_CONFIRM_MISMATCH:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    sget-object v75, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->OFFLINE_TESTMODE_PAYMENT_IN_LIVEMODE:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    sget-object v76, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->OFFLINE_LIVEMODE_PAYMENT_IN_TESTMODE:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    sget-object v77, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->OFFLINE_PAYMENT_INTENT_NOT_FOUND:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    sget-object v78, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->MISSING_EMV_DATA:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    sget-object v79, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->CONNECTION_TOKEN_PROVIDER_ERROR_WHILE_FORWARDING:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    sget-object v80, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->ACCOUNT_ID_MISMATCH_WHILE_FORWARDING:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    sget-object v81, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->FORCE_OFFLINE_WITH_FEATURE_DISABLED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    sget-object v82, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->NOT_CONNECTED_TO_INTERNET_AND_REQUIRE_ONLINE_SET:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    sget-object v83, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->TEST_CARD_IN_LIVEMODE:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    sget-object v84, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->COLLECT_INPUTS_APPLICATION_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    sget-object v85, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->COLLECT_INPUTS_TIMED_OUT:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    sget-object v86, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->COLLECT_INPUTS_INVALID_PARAMETER:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    sget-object v87, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->COLLECT_INPUTS_UNSUPPORTED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    sget-object v88, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->READER_SETTINGS_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    sget-object v89, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->READER_MISSING_ENCRYPTION_KEYS:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    sget-object v90, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->INVALID_SURCHARGE_PARAMETER:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    sget-object v91, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->READER_COMMUNICATION_SSL_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    sget-object v92, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->ALLOW_REDISPLAY_INVALID:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    sget-object v93, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->CANCELED_DUE_TO_INTEGRATION_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    filled-new-array/range {v1 .. v93}, [Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 14
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/4 v1, 0x0

    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorType;->INTEGRATION_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorType;

    const-string v3, "CANCEL_FAILED"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;-><init>(Ljava/lang/String;ILcom/stripe/stripeterminal/external/models/TerminalErrorType;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->CANCEL_FAILED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 19
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/4 v1, 0x1

    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorType;->INTEGRATION_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorType;

    const-string v3, "NOT_CONNECTED_TO_READER"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;-><init>(Ljava/lang/String;ILcom/stripe/stripeterminal/external/models/TerminalErrorType;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->NOT_CONNECTED_TO_READER:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 24
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/4 v1, 0x2

    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorType;->INTEGRATION_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorType;

    const-string v3, "ALREADY_CONNECTED_TO_READER"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;-><init>(Ljava/lang/String;ILcom/stripe/stripeterminal/external/models/TerminalErrorType;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->ALREADY_CONNECTED_TO_READER:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 30
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/4 v1, 0x3

    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorType;->INTEGRATION_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorType;

    const-string v3, "BLUETOOTH_PERMISSION_DENIED"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;-><init>(Ljava/lang/String;ILcom/stripe/stripeterminal/external/models/TerminalErrorType;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->BLUETOOTH_PERMISSION_DENIED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 37
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/4 v1, 0x4

    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorType;->INTEGRATION_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorType;

    const-string v3, "CONFIRM_INVALID_PAYMENT_INTENT"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;-><init>(Ljava/lang/String;ILcom/stripe/stripeterminal/external/models/TerminalErrorType;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->CONFIRM_INVALID_PAYMENT_INTENT:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 44
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/4 v1, 0x5

    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorType;->INTEGRATION_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorType;

    const-string v3, "CONFIRM_INVALID_SETUP_INTENT"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;-><init>(Ljava/lang/String;ILcom/stripe/stripeterminal/external/models/TerminalErrorType;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->CONFIRM_INVALID_SETUP_INTENT:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 49
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/4 v1, 0x6

    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorType;->INTEGRATION_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorType;

    const-string v3, "INVALID_CLIENT_SECRET"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;-><init>(Ljava/lang/String;ILcom/stripe/stripeterminal/external/models/TerminalErrorType;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->INVALID_CLIENT_SECRET:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 54
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/4 v1, 0x7

    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorType;->INTEGRATION_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorType;

    const-string v3, "UNSUPPORTED_OPERATION"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;-><init>(Ljava/lang/String;ILcom/stripe/stripeterminal/external/models/TerminalErrorType;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNSUPPORTED_OPERATION:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 59
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v1, 0x8

    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorType;->INTEGRATION_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorType;

    const-string v3, "UNEXPECTED_OPERATION"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;-><init>(Ljava/lang/String;ILcom/stripe/stripeterminal/external/models/TerminalErrorType;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_OPERATION:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 69
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v1, 0x9

    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorType;->INTEGRATION_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorType;

    const-string v3, "UNSUPPORTED_SDK"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;-><init>(Ljava/lang/String;ILcom/stripe/stripeterminal/external/models/TerminalErrorType;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNSUPPORTED_SDK:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 74
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v1, 0xa

    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorType;->USER_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorType;

    const-string v3, "USB_PERMISSION_DENIED"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;-><init>(Ljava/lang/String;ILcom/stripe/stripeterminal/external/models/TerminalErrorType;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->USB_PERMISSION_DENIED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 80
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v1, 0xb

    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorType;->INTEGRATION_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorType;

    const-string v3, "MISSING_PREREQUISITE"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;-><init>(Ljava/lang/String;ILcom/stripe/stripeterminal/external/models/TerminalErrorType;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->MISSING_PREREQUISITE:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 85
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v1, 0xc

    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorType;->INTEGRATION_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorType;

    const-string v3, "MISSING_REQUIRED_PARAMETER"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;-><init>(Ljava/lang/String;ILcom/stripe/stripeterminal/external/models/TerminalErrorType;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->MISSING_REQUIRED_PARAMETER:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 90
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v1, 0xd

    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorType;->INTEGRATION_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorType;

    const-string v3, "INVALID_REQUIRED_PARAMETER"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;-><init>(Ljava/lang/String;ILcom/stripe/stripeterminal/external/models/TerminalErrorType;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->INVALID_REQUIRED_PARAMETER:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 95
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v1, 0xe

    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorType;->INTEGRATION_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorType;

    const-string v3, "INVALID_TIP_PARAMETER"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;-><init>(Ljava/lang/String;ILcom/stripe/stripeterminal/external/models/TerminalErrorType;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->INVALID_TIP_PARAMETER:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 100
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v1, 0xf

    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorType;->INTEGRATION_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorType;

    const-string v3, "TAP_TO_PAY_LIBRARY_NOT_INCLUDED"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;-><init>(Ljava/lang/String;ILcom/stripe/stripeterminal/external/models/TerminalErrorType;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->TAP_TO_PAY_LIBRARY_NOT_INCLUDED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 108
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v1, 0x10

    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorType;->INTEGRATION_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorType;

    const-string v3, "TAP_TO_PAY_UNSUPPORTED_DEVICE"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;-><init>(Ljava/lang/String;ILcom/stripe/stripeterminal/external/models/TerminalErrorType;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->TAP_TO_PAY_UNSUPPORTED_DEVICE:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 113
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v1, 0x11

    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorType;->INTEGRATION_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorType;

    const-string v3, "TAP_TO_PAY_UNSUPPORTED_ANDROID_VERSION"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;-><init>(Ljava/lang/String;ILcom/stripe/stripeterminal/external/models/TerminalErrorType;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->TAP_TO_PAY_UNSUPPORTED_ANDROID_VERSION:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 121
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v1, 0x12

    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorType;->INTEGRATION_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorType;

    const-string v3, "TAP_TO_PAY_DEVICE_TAMPERED"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;-><init>(Ljava/lang/String;ILcom/stripe/stripeterminal/external/models/TerminalErrorType;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->TAP_TO_PAY_DEVICE_TAMPERED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 129
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v1, 0x13

    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorType;->INTEGRATION_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorType;

    const-string v3, "TAP_TO_PAY_INSECURE_ENVIRONMENT"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;-><init>(Ljava/lang/String;ILcom/stripe/stripeterminal/external/models/TerminalErrorType;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->TAP_TO_PAY_INSECURE_ENVIRONMENT:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 137
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v1, 0x14

    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorType;->INTEGRATION_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorType;

    const-string v3, "TAP_TO_PAY_DEBUG_NOT_SUPPORTED"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;-><init>(Ljava/lang/String;ILcom/stripe/stripeterminal/external/models/TerminalErrorType;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->TAP_TO_PAY_DEBUG_NOT_SUPPORTED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 142
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v1, 0x15

    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorType;->INTEGRATION_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorType;

    const-string v3, "OFFLINE_MODE_UNSUPPORTED_ANDROID_VERSION"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;-><init>(Ljava/lang/String;ILcom/stripe/stripeterminal/external/models/TerminalErrorType;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->OFFLINE_MODE_UNSUPPORTED_ANDROID_VERSION:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 149
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v1, 0x16

    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorType;->USER_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorType;

    const-string v3, "CANCELED"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;-><init>(Ljava/lang/String;ILcom/stripe/stripeterminal/external/models/TerminalErrorType;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->CANCELED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 157
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v1, 0x17

    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorType;->USER_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorType;

    const-string v3, "LOCATION_SERVICES_DISABLED"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;-><init>(Ljava/lang/String;ILcom/stripe/stripeterminal/external/models/TerminalErrorType;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->LOCATION_SERVICES_DISABLED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 162
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v1, 0x18

    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorType;->USER_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorType;

    const-string v3, "BLUETOOTH_SCAN_TIMED_OUT"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;-><init>(Ljava/lang/String;ILcom/stripe/stripeterminal/external/models/TerminalErrorType;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->BLUETOOTH_SCAN_TIMED_OUT:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 165
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v1, 0x19

    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorType;->USER_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorType;

    const-string v3, "BLUETOOTH_LOW_ENERGY_UNSUPPORTED"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;-><init>(Ljava/lang/String;ILcom/stripe/stripeterminal/external/models/TerminalErrorType;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->BLUETOOTH_LOW_ENERGY_UNSUPPORTED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 171
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v1, 0x1a

    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorType;->USER_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorType;

    const-string v3, "READER_SOFTWARE_UPDATE_FAILED_BATTERY_LOW"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;-><init>(Ljava/lang/String;ILcom/stripe/stripeterminal/external/models/TerminalErrorType;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->READER_SOFTWARE_UPDATE_FAILED_BATTERY_LOW:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 176
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v1, 0x1b

    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorType;->USER_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorType;

    const-string v3, "READER_SOFTWARE_UPDATE_FAILED_INTERRUPTED"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;-><init>(Ljava/lang/String;ILcom/stripe/stripeterminal/external/models/TerminalErrorType;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->READER_SOFTWARE_UPDATE_FAILED_INTERRUPTED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 181
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v1, 0x1c

    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorType;->USER_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorType;

    const-string v3, "CARD_INSERT_NOT_READ"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;-><init>(Ljava/lang/String;ILcom/stripe/stripeterminal/external/models/TerminalErrorType;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->CARD_INSERT_NOT_READ:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 186
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v1, 0x1d

    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorType;->USER_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorType;

    const-string v3, "CARD_SWIPE_NOT_READ"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;-><init>(Ljava/lang/String;ILcom/stripe/stripeterminal/external/models/TerminalErrorType;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->CARD_SWIPE_NOT_READ:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 191
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v1, 0x1e

    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorType;->USER_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorType;

    const-string v3, "CARD_READ_TIMED_OUT"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;-><init>(Ljava/lang/String;ILcom/stripe/stripeterminal/external/models/TerminalErrorType;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->CARD_READ_TIMED_OUT:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 196
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v1, 0x1f

    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorType;->USER_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorType;

    const-string v3, "CARD_REMOVED"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;-><init>(Ljava/lang/String;ILcom/stripe/stripeterminal/external/models/TerminalErrorType;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->CARD_REMOVED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 201
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v1, 0x20

    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorType;->USER_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorType;

    const-string v3, "CUSTOMER_CONSENT_REQUIRED"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;-><init>(Ljava/lang/String;ILcom/stripe/stripeterminal/external/models/TerminalErrorType;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->CUSTOMER_CONSENT_REQUIRED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 214
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v1, 0x21

    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorType;->USER_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorType;

    const-string v3, "CARD_LEFT_IN_READER"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;-><init>(Ljava/lang/String;ILcom/stripe/stripeterminal/external/models/TerminalErrorType;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->CARD_LEFT_IN_READER:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 219
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v1, 0x22

    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorType;->USER_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorType;

    const-string v3, "USB_DISCOVERY_TIMED_OUT"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;-><init>(Ljava/lang/String;ILcom/stripe/stripeterminal/external/models/TerminalErrorType;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->USB_DISCOVERY_TIMED_OUT:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 225
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v1, 0x23

    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorType;->USER_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorType;

    const-string v3, "FEATURE_NOT_ENABLED_ON_ACCOUNT"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;-><init>(Ljava/lang/String;ILcom/stripe/stripeterminal/external/models/TerminalErrorType;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->FEATURE_NOT_ENABLED_ON_ACCOUNT:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 232
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v1, 0x24

    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorType;->READER_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorType;

    const-string v3, "READER_BUSY"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;-><init>(Ljava/lang/String;ILcom/stripe/stripeterminal/external/models/TerminalErrorType;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->READER_BUSY:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 237
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v1, 0x25

    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorType;->READER_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorType;

    const-string v3, "READER_COMMUNICATION_ERROR"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;-><init>(Ljava/lang/String;ILcom/stripe/stripeterminal/external/models/TerminalErrorType;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->READER_COMMUNICATION_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 242
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v1, 0x26

    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorType;->READER_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorType;

    const-string v3, "BLUETOOTH_ERROR"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;-><init>(Ljava/lang/String;ILcom/stripe/stripeterminal/external/models/TerminalErrorType;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->BLUETOOTH_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 247
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v1, 0x27

    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorType;->READER_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorType;

    const-string v3, "BLUETOOTH_DISCONNECTED"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;-><init>(Ljava/lang/String;ILcom/stripe/stripeterminal/external/models/TerminalErrorType;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->BLUETOOTH_DISCONNECTED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 252
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v1, 0x28

    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorType;->READER_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorType;

    const-string v3, "BLUETOOTH_RECONNECT_STARTED"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;-><init>(Ljava/lang/String;ILcom/stripe/stripeterminal/external/models/TerminalErrorType;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->BLUETOOTH_RECONNECT_STARTED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 257
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v1, 0x29

    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorType;->READER_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorType;

    const-string v3, "USB_DISCONNECTED"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;-><init>(Ljava/lang/String;ILcom/stripe/stripeterminal/external/models/TerminalErrorType;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->USB_DISCONNECTED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 262
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v1, 0x2a

    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorType;->READER_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorType;

    const-string v3, "USB_RECONNECT_STARTED"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;-><init>(Ljava/lang/String;ILcom/stripe/stripeterminal/external/models/TerminalErrorType;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->USB_RECONNECT_STARTED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 267
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v1, 0x2b

    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorType;->READER_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorType;

    const-string v3, "READER_CONNECTED_TO_ANOTHER_DEVICE"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;-><init>(Ljava/lang/String;ILcom/stripe/stripeterminal/external/models/TerminalErrorType;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->READER_CONNECTED_TO_ANOTHER_DEVICE:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 272
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v1, 0x2c

    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorType;->READER_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorType;

    const-string v3, "READER_BATTERY_CRITICALLY_LOW"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;-><init>(Ljava/lang/String;ILcom/stripe/stripeterminal/external/models/TerminalErrorType;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->READER_BATTERY_CRITICALLY_LOW:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 277
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v1, 0x2d

    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorType;->READER_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorType;

    const-string v3, "READER_SOFTWARE_UPDATE_FAILED"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;-><init>(Ljava/lang/String;ILcom/stripe/stripeterminal/external/models/TerminalErrorType;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->READER_SOFTWARE_UPDATE_FAILED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 283
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v1, 0x2e

    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorType;->READER_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorType;

    const-string v3, "READER_SOFTWARE_UPDATE_FAILED_READER_ERROR"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;-><init>(Ljava/lang/String;ILcom/stripe/stripeterminal/external/models/TerminalErrorType;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->READER_SOFTWARE_UPDATE_FAILED_READER_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 289
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v1, 0x2f

    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorType;->READER_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorType;

    const-string v3, "READER_SOFTWARE_UPDATE_FAILED_SERVER_ERROR"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;-><init>(Ljava/lang/String;ILcom/stripe/stripeterminal/external/models/TerminalErrorType;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->READER_SOFTWARE_UPDATE_FAILED_SERVER_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 294
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v1, 0x30

    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorType;->READER_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorType;

    const-string v3, "TAP_TO_PAY_NFC_DISABLED"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;-><init>(Ljava/lang/String;ILcom/stripe/stripeterminal/external/models/TerminalErrorType;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->TAP_TO_PAY_NFC_DISABLED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 305
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v1, 0x31

    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorType;->READER_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorType;

    const-string v3, "UNSUPPORTED_READER_VERSION"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;-><init>(Ljava/lang/String;ILcom/stripe/stripeterminal/external/models/TerminalErrorType;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNSUPPORTED_READER_VERSION:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 314
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v1, 0x32

    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorType;->READER_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorType;

    const-string v3, "GENERIC_READER_ERROR"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;-><init>(Ljava/lang/String;ILcom/stripe/stripeterminal/external/models/TerminalErrorType;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->GENERIC_READER_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 321
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v1, 0x33

    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorType;->UNEXPECTED_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorType;

    const-string v3, "UNEXPECTED_SDK_ERROR"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;-><init>(Ljava/lang/String;ILcom/stripe/stripeterminal/external/models/TerminalErrorType;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 329
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v1, 0x34

    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorType;->PAYMENT_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorType;

    const-string v3, "DECLINED_BY_STRIPE_API"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;-><init>(Ljava/lang/String;ILcom/stripe/stripeterminal/external/models/TerminalErrorType;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->DECLINED_BY_STRIPE_API:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 334
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v1, 0x35

    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorType;->PAYMENT_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorType;

    const-string v3, "DECLINED_BY_READER"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;-><init>(Ljava/lang/String;ILcom/stripe/stripeterminal/external/models/TerminalErrorType;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->DECLINED_BY_READER:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 341
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v1, 0x36

    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorType;->NETWORK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorType;

    const-string v3, "REQUEST_TIMED_OUT"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;-><init>(Ljava/lang/String;ILcom/stripe/stripeterminal/external/models/TerminalErrorType;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->REQUEST_TIMED_OUT:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 346
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v1, 0x37

    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorType;->NETWORK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorType;

    const-string v3, "STRIPE_API_CONNECTION_ERROR"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;-><init>(Ljava/lang/String;ILcom/stripe/stripeterminal/external/models/TerminalErrorType;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->STRIPE_API_CONNECTION_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 351
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v1, 0x38

    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorType;->NETWORK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorType;

    const-string v3, "STRIPE_API_ERROR"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;-><init>(Ljava/lang/String;ILcom/stripe/stripeterminal/external/models/TerminalErrorType;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->STRIPE_API_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 356
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v1, 0x39

    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorType;->NETWORK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorType;

    const-string v3, "STRIPE_API_RESPONSE_DECODING_ERROR"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;-><init>(Ljava/lang/String;ILcom/stripe/stripeterminal/external/models/TerminalErrorType;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->STRIPE_API_RESPONSE_DECODING_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 361
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v1, 0x3a

    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorType;->NETWORK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorType;

    const-string v3, "CONNECTION_TOKEN_PROVIDER_ERROR"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;-><init>(Ljava/lang/String;ILcom/stripe/stripeterminal/external/models/TerminalErrorType;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->CONNECTION_TOKEN_PROVIDER_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 377
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v1, 0x3b

    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorType;->NETWORK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorType;

    const-string v3, "SESSION_EXPIRED"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;-><init>(Ljava/lang/String;ILcom/stripe/stripeterminal/external/models/TerminalErrorType;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->SESSION_EXPIRED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 383
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v1, 0x3c

    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorType;->INTEGRATION_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorType;

    const-string v3, "ANDROID_API_LEVEL_ERROR"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;-><init>(Ljava/lang/String;ILcom/stripe/stripeterminal/external/models/TerminalErrorType;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->ANDROID_API_LEVEL_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 389
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v1, 0x3d

    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorType;->USER_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorType;

    const-string v3, "AMOUNT_EXCEEDS_MAX_OFFLINE_AMOUNT"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;-><init>(Ljava/lang/String;ILcom/stripe/stripeterminal/external/models/TerminalErrorType;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->AMOUNT_EXCEEDS_MAX_OFFLINE_AMOUNT:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 395
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v1, 0x3e

    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorType;->USER_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorType;

    const-string v3, "OFFLINE_PAYMENTS_DATABASE_TOO_LARGE"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;-><init>(Ljava/lang/String;ILcom/stripe/stripeterminal/external/models/TerminalErrorType;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->OFFLINE_PAYMENTS_DATABASE_TOO_LARGE:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 403
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v1, 0x3f

    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorType;->USER_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorType;

    const-string v3, "READER_CONNECTION_NOT_AVAILABLE_OFFLINE"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;-><init>(Ljava/lang/String;ILcom/stripe/stripeterminal/external/models/TerminalErrorType;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->READER_CONNECTION_NOT_AVAILABLE_OFFLINE:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 411
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v1, 0x40

    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorType;->USER_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorType;

    const-string v3, "LOCATION_CONNECTION_NOT_AVAILABLE_OFFLINE"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;-><init>(Ljava/lang/String;ILcom/stripe/stripeterminal/external/models/TerminalErrorType;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->LOCATION_CONNECTION_NOT_AVAILABLE_OFFLINE:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 417
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v1, 0x41

    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorType;->USER_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorType;

    const-string v3, "NO_LAST_SEEN_ACCOUNT"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;-><init>(Ljava/lang/String;ILcom/stripe/stripeterminal/external/models/TerminalErrorType;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->NO_LAST_SEEN_ACCOUNT:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 423
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v1, 0x42

    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorType;->USER_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorType;

    const-string v3, "INVALID_OFFLINE_CURRENCY"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;-><init>(Ljava/lang/String;ILcom/stripe/stripeterminal/external/models/TerminalErrorType;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->INVALID_OFFLINE_CURRENCY:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 431
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v1, 0x43

    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorType;->PAYMENT_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorType;

    const-string v3, "CARD_SWIPE_NOT_AVAILABLE"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;-><init>(Ljava/lang/String;ILcom/stripe/stripeterminal/external/models/TerminalErrorType;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->CARD_SWIPE_NOT_AVAILABLE:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 438
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v1, 0x44

    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorType;->PAYMENT_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorType;

    const-string v3, "INTERAC_NOT_SUPPORTED_OFFLINE"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;-><init>(Ljava/lang/String;ILcom/stripe/stripeterminal/external/models/TerminalErrorType;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->INTERAC_NOT_SUPPORTED_OFFLINE:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 445
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v1, 0x45

    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorType;->PAYMENT_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorType;

    const-string v3, "ONLINE_PIN_NOT_SUPPORTED_OFFLINE"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;-><init>(Ljava/lang/String;ILcom/stripe/stripeterminal/external/models/TerminalErrorType;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->ONLINE_PIN_NOT_SUPPORTED_OFFLINE:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 450
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v1, 0x46

    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorType;->PAYMENT_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorType;

    const-string v3, "MOBILE_WALLET_NOT_SUPPORTED_ON_SETUP_INTENTS"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;-><init>(Ljava/lang/String;ILcom/stripe/stripeterminal/external/models/TerminalErrorType;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->MOBILE_WALLET_NOT_SUPPORTED_ON_SETUP_INTENTS:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 455
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v1, 0x47

    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorType;->PAYMENT_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorType;

    const-string v3, "OFFLINE_AND_CARD_EXPIRED"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;-><init>(Ljava/lang/String;ILcom/stripe/stripeterminal/external/models/TerminalErrorType;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->OFFLINE_AND_CARD_EXPIRED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 460
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v1, 0x48

    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorType;->PAYMENT_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorType;

    const-string v3, "OFFLINE_TRANSACTION_DECLINED"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;-><init>(Ljava/lang/String;ILcom/stripe/stripeterminal/external/models/TerminalErrorType;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->OFFLINE_TRANSACTION_DECLINED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 467
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v1, 0x49

    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorType;->PAYMENT_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorType;

    const-string v3, "OFFLINE_COLLECT_AND_CONFIRM_MISMATCH"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;-><init>(Ljava/lang/String;ILcom/stripe/stripeterminal/external/models/TerminalErrorType;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->OFFLINE_COLLECT_AND_CONFIRM_MISMATCH:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 473
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v1, 0x4a

    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorType;->PAYMENT_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorType;

    const-string v3, "OFFLINE_TESTMODE_PAYMENT_IN_LIVEMODE"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;-><init>(Ljava/lang/String;ILcom/stripe/stripeterminal/external/models/TerminalErrorType;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->OFFLINE_TESTMODE_PAYMENT_IN_LIVEMODE:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 479
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v1, 0x4b

    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorType;->PAYMENT_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorType;

    const-string v3, "OFFLINE_LIVEMODE_PAYMENT_IN_TESTMODE"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;-><init>(Ljava/lang/String;ILcom/stripe/stripeterminal/external/models/TerminalErrorType;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->OFFLINE_LIVEMODE_PAYMENT_IN_TESTMODE:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 489
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v1, 0x4c

    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorType;->PAYMENT_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorType;

    const-string v3, "OFFLINE_PAYMENT_INTENT_NOT_FOUND"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;-><init>(Ljava/lang/String;ILcom/stripe/stripeterminal/external/models/TerminalErrorType;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->OFFLINE_PAYMENT_INTENT_NOT_FOUND:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 495
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v1, 0x4d

    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorType;->PAYMENT_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorType;

    const-string v3, "MISSING_EMV_DATA"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;-><init>(Ljava/lang/String;ILcom/stripe/stripeterminal/external/models/TerminalErrorType;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->MISSING_EMV_DATA:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 501
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v1, 0x4e

    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorType;->NETWORK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorType;

    const-string v3, "CONNECTION_TOKEN_PROVIDER_ERROR_WHILE_FORWARDING"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;-><init>(Ljava/lang/String;ILcom/stripe/stripeterminal/external/models/TerminalErrorType;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->CONNECTION_TOKEN_PROVIDER_ERROR_WHILE_FORWARDING:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 507
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v1, 0x4f

    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorType;->INTEGRATION_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorType;

    const-string v3, "ACCOUNT_ID_MISMATCH_WHILE_FORWARDING"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;-><init>(Ljava/lang/String;ILcom/stripe/stripeterminal/external/models/TerminalErrorType;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->ACCOUNT_ID_MISMATCH_WHILE_FORWARDING:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 514
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v1, 0x50

    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorType;->USER_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorType;

    const-string v3, "FORCE_OFFLINE_WITH_FEATURE_DISABLED"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;-><init>(Ljava/lang/String;ILcom/stripe/stripeterminal/external/models/TerminalErrorType;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->FORCE_OFFLINE_WITH_FEATURE_DISABLED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 519
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v1, 0x51

    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorType;->USER_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorType;

    const-string v3, "NOT_CONNECTED_TO_INTERNET_AND_REQUIRE_ONLINE_SET"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;-><init>(Ljava/lang/String;ILcom/stripe/stripeterminal/external/models/TerminalErrorType;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->NOT_CONNECTED_TO_INTERNET_AND_REQUIRE_ONLINE_SET:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 524
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v1, 0x52

    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorType;->PAYMENT_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorType;

    const-string v3, "TEST_CARD_IN_LIVEMODE"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;-><init>(Ljava/lang/String;ILcom/stripe/stripeterminal/external/models/TerminalErrorType;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->TEST_CARD_IN_LIVEMODE:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 529
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v1, 0x53

    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorType;->UNEXPECTED_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorType;

    const-string v3, "COLLECT_INPUTS_APPLICATION_ERROR"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;-><init>(Ljava/lang/String;ILcom/stripe/stripeterminal/external/models/TerminalErrorType;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->COLLECT_INPUTS_APPLICATION_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 534
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v1, 0x54

    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorType;->USER_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorType;

    const-string v3, "COLLECT_INPUTS_TIMED_OUT"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;-><init>(Ljava/lang/String;ILcom/stripe/stripeterminal/external/models/TerminalErrorType;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->COLLECT_INPUTS_TIMED_OUT:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 539
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v1, 0x55

    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorType;->INTEGRATION_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorType;

    const-string v3, "COLLECT_INPUTS_INVALID_PARAMETER"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;-><init>(Ljava/lang/String;ILcom/stripe/stripeterminal/external/models/TerminalErrorType;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->COLLECT_INPUTS_INVALID_PARAMETER:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 545
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v1, 0x56

    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorType;->INTEGRATION_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorType;

    const-string v3, "COLLECT_INPUTS_UNSUPPORTED"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;-><init>(Ljava/lang/String;ILcom/stripe/stripeterminal/external/models/TerminalErrorType;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->COLLECT_INPUTS_UNSUPPORTED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 550
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v1, 0x57

    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorType;->READER_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorType;

    const-string v3, "READER_SETTINGS_ERROR"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;-><init>(Ljava/lang/String;ILcom/stripe/stripeterminal/external/models/TerminalErrorType;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->READER_SETTINGS_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 556
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v1, 0x58

    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorType;->READER_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorType;

    const-string v3, "READER_MISSING_ENCRYPTION_KEYS"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;-><init>(Ljava/lang/String;ILcom/stripe/stripeterminal/external/models/TerminalErrorType;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->READER_MISSING_ENCRYPTION_KEYS:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 561
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v1, 0x59

    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorType;->INTEGRATION_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorType;

    const-string v3, "INVALID_SURCHARGE_PARAMETER"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;-><init>(Ljava/lang/String;ILcom/stripe/stripeterminal/external/models/TerminalErrorType;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->INVALID_SURCHARGE_PARAMETER:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 568
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v1, 0x5a

    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorType;->READER_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorType;

    const-string v3, "READER_COMMUNICATION_SSL_ERROR"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;-><init>(Ljava/lang/String;ILcom/stripe/stripeterminal/external/models/TerminalErrorType;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->READER_COMMUNICATION_SSL_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 573
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v1, 0x5b

    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorType;->USER_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorType;

    const-string v3, "ALLOW_REDISPLAY_INVALID"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;-><init>(Ljava/lang/String;ILcom/stripe/stripeterminal/external/models/TerminalErrorType;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->ALLOW_REDISPLAY_INVALID:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 578
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v1, 0x5c

    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorType;->INTEGRATION_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorType;

    const-string v3, "CANCELED_DUE_TO_INTEGRATION_ERROR"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;-><init>(Ljava/lang/String;ILcom/stripe/stripeterminal/external/models/TerminalErrorType;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->CANCELED_DUE_TO_INTEGRATION_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    invoke-static {}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->$values()[Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    move-result-object v0

    sput-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->$VALUES:[Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->Companion:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/stripe/stripeterminal/external/models/TerminalErrorType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/external/models/TerminalErrorType;",
            ")V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->type:Lcom/stripe/stripeterminal/external/models/TerminalErrorType;

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;
    .locals 1

    const-class v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    return-object p0
.end method

.method public static values()[Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;
    .locals 1

    sget-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->$VALUES:[Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    return-object v0
.end method


# virtual methods
.method public final getType$public_release()Lcom/stripe/stripeterminal/external/models/TerminalErrorType;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->type:Lcom/stripe/stripeterminal/external/models/TerminalErrorType;

    return-object v0
.end method

.method public final toLogString()Ljava/lang/String;
    .locals 5

    .line 585
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "error_code_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->type:Lcom/stripe/stripeterminal/external/models/TerminalErrorType;

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/TerminalErrorType;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "US"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "toLowerCase(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 581
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->type:Lcom/stripe/stripeterminal/external/models/TerminalErrorType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
