package com.stripe.stripeterminal.external.models;

import java.util.Locale;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: TerminalErrorCode.android.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b`\b\u0086\u0081\u0002\u0018\u0000 g2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001gB\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0006\u0010\u0007\u001a\u00020\bJ\b\u0010\t\u001a\u00020\bH\u0016R\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019j\u0002\b\u001aj\u0002\b\u001bj\u0002\b\u001cj\u0002\b\u001dj\u0002\b\u001ej\u0002\b\u001fj\u0002\b j\u0002\b!j\u0002\b\"j\u0002\b#j\u0002\b$j\u0002\b%j\u0002\b&j\u0002\b'j\u0002\b(j\u0002\b)j\u0002\b*j\u0002\b+j\u0002\b,j\u0002\b-j\u0002\b.j\u0002\b/j\u0002\b0j\u0002\b1j\u0002\b2j\u0002\b3j\u0002\b4j\u0002\b5j\u0002\b6j\u0002\b7j\u0002\b8j\u0002\b9j\u0002\b:j\u0002\b;j\u0002\b<j\u0002\b=j\u0002\b>j\u0002\b?j\u0002\b@j\u0002\bAj\u0002\bBj\u0002\bCj\u0002\bDj\u0002\bEj\u0002\bFj\u0002\bGj\u0002\bHj\u0002\bIj\u0002\bJj\u0002\bKj\u0002\bLj\u0002\bMj\u0002\bNj\u0002\bOj\u0002\bPj\u0002\bQj\u0002\bRj\u0002\bSj\u0002\bTj\u0002\bUj\u0002\bVj\u0002\bWj\u0002\bXj\u0002\bYj\u0002\bZj\u0002\b[j\u0002\b\\j\u0002\b]j\u0002\b^j\u0002\b_j\u0002\b`j\u0002\baj\u0002\bbj\u0002\bcj\u0002\bdj\u0002\bej\u0002\bf¨\u0006h"}, d2 = {"Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;", "", "type", "Lcom/stripe/stripeterminal/external/models/TerminalErrorType;", "(Ljava/lang/String;ILcom/stripe/stripeterminal/external/models/TerminalErrorType;)V", "getType$public_release", "()Lcom/stripe/stripeterminal/external/models/TerminalErrorType;", "toLogString", "", "toString", "CANCEL_FAILED", "NOT_CONNECTED_TO_READER", "ALREADY_CONNECTED_TO_READER", "BLUETOOTH_PERMISSION_DENIED", "CONFIRM_INVALID_PAYMENT_INTENT", "CONFIRM_INVALID_SETUP_INTENT", "INVALID_CLIENT_SECRET", "UNSUPPORTED_OPERATION", "UNEXPECTED_OPERATION", "UNSUPPORTED_SDK", "USB_PERMISSION_DENIED", "MISSING_PREREQUISITE", "MISSING_REQUIRED_PARAMETER", "INVALID_REQUIRED_PARAMETER", "INVALID_TIP_PARAMETER", "TAP_TO_PAY_LIBRARY_NOT_INCLUDED", "TAP_TO_PAY_UNSUPPORTED_DEVICE", "TAP_TO_PAY_UNSUPPORTED_ANDROID_VERSION", "TAP_TO_PAY_DEVICE_TAMPERED", "TAP_TO_PAY_INSECURE_ENVIRONMENT", "TAP_TO_PAY_DEBUG_NOT_SUPPORTED", "OFFLINE_MODE_UNSUPPORTED_ANDROID_VERSION", "CANCELED", "LOCATION_SERVICES_DISABLED", "BLUETOOTH_SCAN_TIMED_OUT", "BLUETOOTH_LOW_ENERGY_UNSUPPORTED", "READER_SOFTWARE_UPDATE_FAILED_BATTERY_LOW", "READER_SOFTWARE_UPDATE_FAILED_INTERRUPTED", "CARD_INSERT_NOT_READ", "CARD_SWIPE_NOT_READ", "CARD_READ_TIMED_OUT", "CARD_REMOVED", "CUSTOMER_CONSENT_REQUIRED", "CARD_LEFT_IN_READER", "USB_DISCOVERY_TIMED_OUT", "FEATURE_NOT_ENABLED_ON_ACCOUNT", "READER_BUSY", "READER_COMMUNICATION_ERROR", "BLUETOOTH_ERROR", "BLUETOOTH_DISCONNECTED", "BLUETOOTH_RECONNECT_STARTED", "USB_DISCONNECTED", "USB_RECONNECT_STARTED", "READER_CONNECTED_TO_ANOTHER_DEVICE", "READER_BATTERY_CRITICALLY_LOW", "READER_SOFTWARE_UPDATE_FAILED", "READER_SOFTWARE_UPDATE_FAILED_READER_ERROR", "READER_SOFTWARE_UPDATE_FAILED_SERVER_ERROR", "TAP_TO_PAY_NFC_DISABLED", "UNSUPPORTED_READER_VERSION", "GENERIC_READER_ERROR", "UNEXPECTED_SDK_ERROR", "DECLINED_BY_STRIPE_API", "DECLINED_BY_READER", "REQUEST_TIMED_OUT", "STRIPE_API_CONNECTION_ERROR", "STRIPE_API_ERROR", "STRIPE_API_RESPONSE_DECODING_ERROR", "CONNECTION_TOKEN_PROVIDER_ERROR", "SESSION_EXPIRED", "ANDROID_API_LEVEL_ERROR", "AMOUNT_EXCEEDS_MAX_OFFLINE_AMOUNT", "OFFLINE_PAYMENTS_DATABASE_TOO_LARGE", "READER_CONNECTION_NOT_AVAILABLE_OFFLINE", "LOCATION_CONNECTION_NOT_AVAILABLE_OFFLINE", "NO_LAST_SEEN_ACCOUNT", "INVALID_OFFLINE_CURRENCY", "CARD_SWIPE_NOT_AVAILABLE", "INTERAC_NOT_SUPPORTED_OFFLINE", "ONLINE_PIN_NOT_SUPPORTED_OFFLINE", "MOBILE_WALLET_NOT_SUPPORTED_ON_SETUP_INTENTS", "OFFLINE_AND_CARD_EXPIRED", "OFFLINE_TRANSACTION_DECLINED", "OFFLINE_COLLECT_AND_CONFIRM_MISMATCH", "OFFLINE_TESTMODE_PAYMENT_IN_LIVEMODE", "OFFLINE_LIVEMODE_PAYMENT_IN_TESTMODE", "OFFLINE_PAYMENT_INTENT_NOT_FOUND", "MISSING_EMV_DATA", "CONNECTION_TOKEN_PROVIDER_ERROR_WHILE_FORWARDING", "ACCOUNT_ID_MISMATCH_WHILE_FORWARDING", "FORCE_OFFLINE_WITH_FEATURE_DISABLED", "NOT_CONNECTED_TO_INTERNET_AND_REQUIRE_ONLINE_SET", "TEST_CARD_IN_LIVEMODE", "COLLECT_INPUTS_APPLICATION_ERROR", "COLLECT_INPUTS_TIMED_OUT", "COLLECT_INPUTS_INVALID_PARAMETER", "COLLECT_INPUTS_UNSUPPORTED", "READER_SETTINGS_ERROR", "READER_MISSING_ENCRYPTION_KEYS", "INVALID_SURCHARGE_PARAMETER", "READER_COMMUNICATION_SSL_ERROR", "ALLOW_REDISPLAY_INVALID", "CANCELED_DUE_TO_INTEGRATION_ERROR", "Companion", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class TerminalErrorCode {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ TerminalErrorCode[] $VALUES;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;
    private final TerminalErrorType type;
    public static final TerminalErrorCode CANCEL_FAILED = new TerminalErrorCode("CANCEL_FAILED", 0, TerminalErrorType.INTEGRATION_ERROR);
    public static final TerminalErrorCode NOT_CONNECTED_TO_READER = new TerminalErrorCode("NOT_CONNECTED_TO_READER", 1, TerminalErrorType.INTEGRATION_ERROR);
    public static final TerminalErrorCode ALREADY_CONNECTED_TO_READER = new TerminalErrorCode("ALREADY_CONNECTED_TO_READER", 2, TerminalErrorType.INTEGRATION_ERROR);
    public static final TerminalErrorCode BLUETOOTH_PERMISSION_DENIED = new TerminalErrorCode("BLUETOOTH_PERMISSION_DENIED", 3, TerminalErrorType.INTEGRATION_ERROR);
    public static final TerminalErrorCode CONFIRM_INVALID_PAYMENT_INTENT = new TerminalErrorCode("CONFIRM_INVALID_PAYMENT_INTENT", 4, TerminalErrorType.INTEGRATION_ERROR);
    public static final TerminalErrorCode CONFIRM_INVALID_SETUP_INTENT = new TerminalErrorCode("CONFIRM_INVALID_SETUP_INTENT", 5, TerminalErrorType.INTEGRATION_ERROR);
    public static final TerminalErrorCode INVALID_CLIENT_SECRET = new TerminalErrorCode("INVALID_CLIENT_SECRET", 6, TerminalErrorType.INTEGRATION_ERROR);
    public static final TerminalErrorCode UNSUPPORTED_OPERATION = new TerminalErrorCode("UNSUPPORTED_OPERATION", 7, TerminalErrorType.INTEGRATION_ERROR);
    public static final TerminalErrorCode UNEXPECTED_OPERATION = new TerminalErrorCode("UNEXPECTED_OPERATION", 8, TerminalErrorType.INTEGRATION_ERROR);
    public static final TerminalErrorCode UNSUPPORTED_SDK = new TerminalErrorCode("UNSUPPORTED_SDK", 9, TerminalErrorType.INTEGRATION_ERROR);
    public static final TerminalErrorCode USB_PERMISSION_DENIED = new TerminalErrorCode("USB_PERMISSION_DENIED", 10, TerminalErrorType.USER_ERROR);
    public static final TerminalErrorCode MISSING_PREREQUISITE = new TerminalErrorCode("MISSING_PREREQUISITE", 11, TerminalErrorType.INTEGRATION_ERROR);
    public static final TerminalErrorCode MISSING_REQUIRED_PARAMETER = new TerminalErrorCode("MISSING_REQUIRED_PARAMETER", 12, TerminalErrorType.INTEGRATION_ERROR);
    public static final TerminalErrorCode INVALID_REQUIRED_PARAMETER = new TerminalErrorCode("INVALID_REQUIRED_PARAMETER", 13, TerminalErrorType.INTEGRATION_ERROR);
    public static final TerminalErrorCode INVALID_TIP_PARAMETER = new TerminalErrorCode("INVALID_TIP_PARAMETER", 14, TerminalErrorType.INTEGRATION_ERROR);
    public static final TerminalErrorCode TAP_TO_PAY_LIBRARY_NOT_INCLUDED = new TerminalErrorCode("TAP_TO_PAY_LIBRARY_NOT_INCLUDED", 15, TerminalErrorType.INTEGRATION_ERROR);
    public static final TerminalErrorCode TAP_TO_PAY_UNSUPPORTED_DEVICE = new TerminalErrorCode("TAP_TO_PAY_UNSUPPORTED_DEVICE", 16, TerminalErrorType.INTEGRATION_ERROR);
    public static final TerminalErrorCode TAP_TO_PAY_UNSUPPORTED_ANDROID_VERSION = new TerminalErrorCode("TAP_TO_PAY_UNSUPPORTED_ANDROID_VERSION", 17, TerminalErrorType.INTEGRATION_ERROR);
    public static final TerminalErrorCode TAP_TO_PAY_DEVICE_TAMPERED = new TerminalErrorCode("TAP_TO_PAY_DEVICE_TAMPERED", 18, TerminalErrorType.INTEGRATION_ERROR);
    public static final TerminalErrorCode TAP_TO_PAY_INSECURE_ENVIRONMENT = new TerminalErrorCode("TAP_TO_PAY_INSECURE_ENVIRONMENT", 19, TerminalErrorType.INTEGRATION_ERROR);
    public static final TerminalErrorCode TAP_TO_PAY_DEBUG_NOT_SUPPORTED = new TerminalErrorCode("TAP_TO_PAY_DEBUG_NOT_SUPPORTED", 20, TerminalErrorType.INTEGRATION_ERROR);
    public static final TerminalErrorCode OFFLINE_MODE_UNSUPPORTED_ANDROID_VERSION = new TerminalErrorCode("OFFLINE_MODE_UNSUPPORTED_ANDROID_VERSION", 21, TerminalErrorType.INTEGRATION_ERROR);
    public static final TerminalErrorCode CANCELED = new TerminalErrorCode("CANCELED", 22, TerminalErrorType.USER_ERROR);
    public static final TerminalErrorCode LOCATION_SERVICES_DISABLED = new TerminalErrorCode("LOCATION_SERVICES_DISABLED", 23, TerminalErrorType.USER_ERROR);
    public static final TerminalErrorCode BLUETOOTH_SCAN_TIMED_OUT = new TerminalErrorCode("BLUETOOTH_SCAN_TIMED_OUT", 24, TerminalErrorType.USER_ERROR);
    public static final TerminalErrorCode BLUETOOTH_LOW_ENERGY_UNSUPPORTED = new TerminalErrorCode("BLUETOOTH_LOW_ENERGY_UNSUPPORTED", 25, TerminalErrorType.USER_ERROR);
    public static final TerminalErrorCode READER_SOFTWARE_UPDATE_FAILED_BATTERY_LOW = new TerminalErrorCode("READER_SOFTWARE_UPDATE_FAILED_BATTERY_LOW", 26, TerminalErrorType.USER_ERROR);
    public static final TerminalErrorCode READER_SOFTWARE_UPDATE_FAILED_INTERRUPTED = new TerminalErrorCode("READER_SOFTWARE_UPDATE_FAILED_INTERRUPTED", 27, TerminalErrorType.USER_ERROR);
    public static final TerminalErrorCode CARD_INSERT_NOT_READ = new TerminalErrorCode("CARD_INSERT_NOT_READ", 28, TerminalErrorType.USER_ERROR);
    public static final TerminalErrorCode CARD_SWIPE_NOT_READ = new TerminalErrorCode("CARD_SWIPE_NOT_READ", 29, TerminalErrorType.USER_ERROR);
    public static final TerminalErrorCode CARD_READ_TIMED_OUT = new TerminalErrorCode("CARD_READ_TIMED_OUT", 30, TerminalErrorType.USER_ERROR);
    public static final TerminalErrorCode CARD_REMOVED = new TerminalErrorCode("CARD_REMOVED", 31, TerminalErrorType.USER_ERROR);
    public static final TerminalErrorCode CUSTOMER_CONSENT_REQUIRED = new TerminalErrorCode("CUSTOMER_CONSENT_REQUIRED", 32, TerminalErrorType.USER_ERROR);
    public static final TerminalErrorCode CARD_LEFT_IN_READER = new TerminalErrorCode("CARD_LEFT_IN_READER", 33, TerminalErrorType.USER_ERROR);
    public static final TerminalErrorCode USB_DISCOVERY_TIMED_OUT = new TerminalErrorCode("USB_DISCOVERY_TIMED_OUT", 34, TerminalErrorType.USER_ERROR);
    public static final TerminalErrorCode FEATURE_NOT_ENABLED_ON_ACCOUNT = new TerminalErrorCode("FEATURE_NOT_ENABLED_ON_ACCOUNT", 35, TerminalErrorType.USER_ERROR);
    public static final TerminalErrorCode READER_BUSY = new TerminalErrorCode("READER_BUSY", 36, TerminalErrorType.READER_ERROR);
    public static final TerminalErrorCode READER_COMMUNICATION_ERROR = new TerminalErrorCode("READER_COMMUNICATION_ERROR", 37, TerminalErrorType.READER_ERROR);
    public static final TerminalErrorCode BLUETOOTH_ERROR = new TerminalErrorCode("BLUETOOTH_ERROR", 38, TerminalErrorType.READER_ERROR);
    public static final TerminalErrorCode BLUETOOTH_DISCONNECTED = new TerminalErrorCode("BLUETOOTH_DISCONNECTED", 39, TerminalErrorType.READER_ERROR);
    public static final TerminalErrorCode BLUETOOTH_RECONNECT_STARTED = new TerminalErrorCode("BLUETOOTH_RECONNECT_STARTED", 40, TerminalErrorType.READER_ERROR);
    public static final TerminalErrorCode USB_DISCONNECTED = new TerminalErrorCode("USB_DISCONNECTED", 41, TerminalErrorType.READER_ERROR);
    public static final TerminalErrorCode USB_RECONNECT_STARTED = new TerminalErrorCode("USB_RECONNECT_STARTED", 42, TerminalErrorType.READER_ERROR);
    public static final TerminalErrorCode READER_CONNECTED_TO_ANOTHER_DEVICE = new TerminalErrorCode("READER_CONNECTED_TO_ANOTHER_DEVICE", 43, TerminalErrorType.READER_ERROR);
    public static final TerminalErrorCode READER_BATTERY_CRITICALLY_LOW = new TerminalErrorCode("READER_BATTERY_CRITICALLY_LOW", 44, TerminalErrorType.READER_ERROR);
    public static final TerminalErrorCode READER_SOFTWARE_UPDATE_FAILED = new TerminalErrorCode("READER_SOFTWARE_UPDATE_FAILED", 45, TerminalErrorType.READER_ERROR);
    public static final TerminalErrorCode READER_SOFTWARE_UPDATE_FAILED_READER_ERROR = new TerminalErrorCode("READER_SOFTWARE_UPDATE_FAILED_READER_ERROR", 46, TerminalErrorType.READER_ERROR);
    public static final TerminalErrorCode READER_SOFTWARE_UPDATE_FAILED_SERVER_ERROR = new TerminalErrorCode("READER_SOFTWARE_UPDATE_FAILED_SERVER_ERROR", 47, TerminalErrorType.READER_ERROR);
    public static final TerminalErrorCode TAP_TO_PAY_NFC_DISABLED = new TerminalErrorCode("TAP_TO_PAY_NFC_DISABLED", 48, TerminalErrorType.READER_ERROR);
    public static final TerminalErrorCode UNSUPPORTED_READER_VERSION = new TerminalErrorCode("UNSUPPORTED_READER_VERSION", 49, TerminalErrorType.READER_ERROR);
    public static final TerminalErrorCode GENERIC_READER_ERROR = new TerminalErrorCode("GENERIC_READER_ERROR", 50, TerminalErrorType.READER_ERROR);
    public static final TerminalErrorCode UNEXPECTED_SDK_ERROR = new TerminalErrorCode("UNEXPECTED_SDK_ERROR", 51, TerminalErrorType.UNEXPECTED_ERROR);
    public static final TerminalErrorCode DECLINED_BY_STRIPE_API = new TerminalErrorCode("DECLINED_BY_STRIPE_API", 52, TerminalErrorType.PAYMENT_ERROR);
    public static final TerminalErrorCode DECLINED_BY_READER = new TerminalErrorCode("DECLINED_BY_READER", 53, TerminalErrorType.PAYMENT_ERROR);
    public static final TerminalErrorCode REQUEST_TIMED_OUT = new TerminalErrorCode("REQUEST_TIMED_OUT", 54, TerminalErrorType.NETWORK_ERROR);
    public static final TerminalErrorCode STRIPE_API_CONNECTION_ERROR = new TerminalErrorCode("STRIPE_API_CONNECTION_ERROR", 55, TerminalErrorType.NETWORK_ERROR);
    public static final TerminalErrorCode STRIPE_API_ERROR = new TerminalErrorCode("STRIPE_API_ERROR", 56, TerminalErrorType.NETWORK_ERROR);
    public static final TerminalErrorCode STRIPE_API_RESPONSE_DECODING_ERROR = new TerminalErrorCode("STRIPE_API_RESPONSE_DECODING_ERROR", 57, TerminalErrorType.NETWORK_ERROR);
    public static final TerminalErrorCode CONNECTION_TOKEN_PROVIDER_ERROR = new TerminalErrorCode("CONNECTION_TOKEN_PROVIDER_ERROR", 58, TerminalErrorType.NETWORK_ERROR);
    public static final TerminalErrorCode SESSION_EXPIRED = new TerminalErrorCode("SESSION_EXPIRED", 59, TerminalErrorType.NETWORK_ERROR);
    public static final TerminalErrorCode ANDROID_API_LEVEL_ERROR = new TerminalErrorCode("ANDROID_API_LEVEL_ERROR", 60, TerminalErrorType.INTEGRATION_ERROR);
    public static final TerminalErrorCode AMOUNT_EXCEEDS_MAX_OFFLINE_AMOUNT = new TerminalErrorCode("AMOUNT_EXCEEDS_MAX_OFFLINE_AMOUNT", 61, TerminalErrorType.USER_ERROR);
    public static final TerminalErrorCode OFFLINE_PAYMENTS_DATABASE_TOO_LARGE = new TerminalErrorCode("OFFLINE_PAYMENTS_DATABASE_TOO_LARGE", 62, TerminalErrorType.USER_ERROR);
    public static final TerminalErrorCode READER_CONNECTION_NOT_AVAILABLE_OFFLINE = new TerminalErrorCode("READER_CONNECTION_NOT_AVAILABLE_OFFLINE", 63, TerminalErrorType.USER_ERROR);
    public static final TerminalErrorCode LOCATION_CONNECTION_NOT_AVAILABLE_OFFLINE = new TerminalErrorCode("LOCATION_CONNECTION_NOT_AVAILABLE_OFFLINE", 64, TerminalErrorType.USER_ERROR);
    public static final TerminalErrorCode NO_LAST_SEEN_ACCOUNT = new TerminalErrorCode("NO_LAST_SEEN_ACCOUNT", 65, TerminalErrorType.USER_ERROR);
    public static final TerminalErrorCode INVALID_OFFLINE_CURRENCY = new TerminalErrorCode("INVALID_OFFLINE_CURRENCY", 66, TerminalErrorType.USER_ERROR);
    public static final TerminalErrorCode CARD_SWIPE_NOT_AVAILABLE = new TerminalErrorCode("CARD_SWIPE_NOT_AVAILABLE", 67, TerminalErrorType.PAYMENT_ERROR);
    public static final TerminalErrorCode INTERAC_NOT_SUPPORTED_OFFLINE = new TerminalErrorCode("INTERAC_NOT_SUPPORTED_OFFLINE", 68, TerminalErrorType.PAYMENT_ERROR);
    public static final TerminalErrorCode ONLINE_PIN_NOT_SUPPORTED_OFFLINE = new TerminalErrorCode("ONLINE_PIN_NOT_SUPPORTED_OFFLINE", 69, TerminalErrorType.PAYMENT_ERROR);
    public static final TerminalErrorCode MOBILE_WALLET_NOT_SUPPORTED_ON_SETUP_INTENTS = new TerminalErrorCode("MOBILE_WALLET_NOT_SUPPORTED_ON_SETUP_INTENTS", 70, TerminalErrorType.PAYMENT_ERROR);
    public static final TerminalErrorCode OFFLINE_AND_CARD_EXPIRED = new TerminalErrorCode("OFFLINE_AND_CARD_EXPIRED", 71, TerminalErrorType.PAYMENT_ERROR);
    public static final TerminalErrorCode OFFLINE_TRANSACTION_DECLINED = new TerminalErrorCode("OFFLINE_TRANSACTION_DECLINED", 72, TerminalErrorType.PAYMENT_ERROR);
    public static final TerminalErrorCode OFFLINE_COLLECT_AND_CONFIRM_MISMATCH = new TerminalErrorCode("OFFLINE_COLLECT_AND_CONFIRM_MISMATCH", 73, TerminalErrorType.PAYMENT_ERROR);
    public static final TerminalErrorCode OFFLINE_TESTMODE_PAYMENT_IN_LIVEMODE = new TerminalErrorCode("OFFLINE_TESTMODE_PAYMENT_IN_LIVEMODE", 74, TerminalErrorType.PAYMENT_ERROR);
    public static final TerminalErrorCode OFFLINE_LIVEMODE_PAYMENT_IN_TESTMODE = new TerminalErrorCode("OFFLINE_LIVEMODE_PAYMENT_IN_TESTMODE", 75, TerminalErrorType.PAYMENT_ERROR);
    public static final TerminalErrorCode OFFLINE_PAYMENT_INTENT_NOT_FOUND = new TerminalErrorCode("OFFLINE_PAYMENT_INTENT_NOT_FOUND", 76, TerminalErrorType.PAYMENT_ERROR);
    public static final TerminalErrorCode MISSING_EMV_DATA = new TerminalErrorCode("MISSING_EMV_DATA", 77, TerminalErrorType.PAYMENT_ERROR);
    public static final TerminalErrorCode CONNECTION_TOKEN_PROVIDER_ERROR_WHILE_FORWARDING = new TerminalErrorCode("CONNECTION_TOKEN_PROVIDER_ERROR_WHILE_FORWARDING", 78, TerminalErrorType.NETWORK_ERROR);
    public static final TerminalErrorCode ACCOUNT_ID_MISMATCH_WHILE_FORWARDING = new TerminalErrorCode("ACCOUNT_ID_MISMATCH_WHILE_FORWARDING", 79, TerminalErrorType.INTEGRATION_ERROR);
    public static final TerminalErrorCode FORCE_OFFLINE_WITH_FEATURE_DISABLED = new TerminalErrorCode("FORCE_OFFLINE_WITH_FEATURE_DISABLED", 80, TerminalErrorType.USER_ERROR);
    public static final TerminalErrorCode NOT_CONNECTED_TO_INTERNET_AND_REQUIRE_ONLINE_SET = new TerminalErrorCode("NOT_CONNECTED_TO_INTERNET_AND_REQUIRE_ONLINE_SET", 81, TerminalErrorType.USER_ERROR);
    public static final TerminalErrorCode TEST_CARD_IN_LIVEMODE = new TerminalErrorCode("TEST_CARD_IN_LIVEMODE", 82, TerminalErrorType.PAYMENT_ERROR);
    public static final TerminalErrorCode COLLECT_INPUTS_APPLICATION_ERROR = new TerminalErrorCode("COLLECT_INPUTS_APPLICATION_ERROR", 83, TerminalErrorType.UNEXPECTED_ERROR);
    public static final TerminalErrorCode COLLECT_INPUTS_TIMED_OUT = new TerminalErrorCode("COLLECT_INPUTS_TIMED_OUT", 84, TerminalErrorType.USER_ERROR);
    public static final TerminalErrorCode COLLECT_INPUTS_INVALID_PARAMETER = new TerminalErrorCode("COLLECT_INPUTS_INVALID_PARAMETER", 85, TerminalErrorType.INTEGRATION_ERROR);
    public static final TerminalErrorCode COLLECT_INPUTS_UNSUPPORTED = new TerminalErrorCode("COLLECT_INPUTS_UNSUPPORTED", 86, TerminalErrorType.INTEGRATION_ERROR);
    public static final TerminalErrorCode READER_SETTINGS_ERROR = new TerminalErrorCode("READER_SETTINGS_ERROR", 87, TerminalErrorType.READER_ERROR);
    public static final TerminalErrorCode READER_MISSING_ENCRYPTION_KEYS = new TerminalErrorCode("READER_MISSING_ENCRYPTION_KEYS", 88, TerminalErrorType.READER_ERROR);
    public static final TerminalErrorCode INVALID_SURCHARGE_PARAMETER = new TerminalErrorCode("INVALID_SURCHARGE_PARAMETER", 89, TerminalErrorType.INTEGRATION_ERROR);
    public static final TerminalErrorCode READER_COMMUNICATION_SSL_ERROR = new TerminalErrorCode("READER_COMMUNICATION_SSL_ERROR", 90, TerminalErrorType.READER_ERROR);
    public static final TerminalErrorCode ALLOW_REDISPLAY_INVALID = new TerminalErrorCode("ALLOW_REDISPLAY_INVALID", 91, TerminalErrorType.USER_ERROR);
    public static final TerminalErrorCode CANCELED_DUE_TO_INTEGRATION_ERROR = new TerminalErrorCode("CANCELED_DUE_TO_INTEGRATION_ERROR", 92, TerminalErrorType.INTEGRATION_ERROR);

    private static final /* synthetic */ TerminalErrorCode[] $values() {
        return new TerminalErrorCode[]{CANCEL_FAILED, NOT_CONNECTED_TO_READER, ALREADY_CONNECTED_TO_READER, BLUETOOTH_PERMISSION_DENIED, CONFIRM_INVALID_PAYMENT_INTENT, CONFIRM_INVALID_SETUP_INTENT, INVALID_CLIENT_SECRET, UNSUPPORTED_OPERATION, UNEXPECTED_OPERATION, UNSUPPORTED_SDK, USB_PERMISSION_DENIED, MISSING_PREREQUISITE, MISSING_REQUIRED_PARAMETER, INVALID_REQUIRED_PARAMETER, INVALID_TIP_PARAMETER, TAP_TO_PAY_LIBRARY_NOT_INCLUDED, TAP_TO_PAY_UNSUPPORTED_DEVICE, TAP_TO_PAY_UNSUPPORTED_ANDROID_VERSION, TAP_TO_PAY_DEVICE_TAMPERED, TAP_TO_PAY_INSECURE_ENVIRONMENT, TAP_TO_PAY_DEBUG_NOT_SUPPORTED, OFFLINE_MODE_UNSUPPORTED_ANDROID_VERSION, CANCELED, LOCATION_SERVICES_DISABLED, BLUETOOTH_SCAN_TIMED_OUT, BLUETOOTH_LOW_ENERGY_UNSUPPORTED, READER_SOFTWARE_UPDATE_FAILED_BATTERY_LOW, READER_SOFTWARE_UPDATE_FAILED_INTERRUPTED, CARD_INSERT_NOT_READ, CARD_SWIPE_NOT_READ, CARD_READ_TIMED_OUT, CARD_REMOVED, CUSTOMER_CONSENT_REQUIRED, CARD_LEFT_IN_READER, USB_DISCOVERY_TIMED_OUT, FEATURE_NOT_ENABLED_ON_ACCOUNT, READER_BUSY, READER_COMMUNICATION_ERROR, BLUETOOTH_ERROR, BLUETOOTH_DISCONNECTED, BLUETOOTH_RECONNECT_STARTED, USB_DISCONNECTED, USB_RECONNECT_STARTED, READER_CONNECTED_TO_ANOTHER_DEVICE, READER_BATTERY_CRITICALLY_LOW, READER_SOFTWARE_UPDATE_FAILED, READER_SOFTWARE_UPDATE_FAILED_READER_ERROR, READER_SOFTWARE_UPDATE_FAILED_SERVER_ERROR, TAP_TO_PAY_NFC_DISABLED, UNSUPPORTED_READER_VERSION, GENERIC_READER_ERROR, UNEXPECTED_SDK_ERROR, DECLINED_BY_STRIPE_API, DECLINED_BY_READER, REQUEST_TIMED_OUT, STRIPE_API_CONNECTION_ERROR, STRIPE_API_ERROR, STRIPE_API_RESPONSE_DECODING_ERROR, CONNECTION_TOKEN_PROVIDER_ERROR, SESSION_EXPIRED, ANDROID_API_LEVEL_ERROR, AMOUNT_EXCEEDS_MAX_OFFLINE_AMOUNT, OFFLINE_PAYMENTS_DATABASE_TOO_LARGE, READER_CONNECTION_NOT_AVAILABLE_OFFLINE, LOCATION_CONNECTION_NOT_AVAILABLE_OFFLINE, NO_LAST_SEEN_ACCOUNT, INVALID_OFFLINE_CURRENCY, CARD_SWIPE_NOT_AVAILABLE, INTERAC_NOT_SUPPORTED_OFFLINE, ONLINE_PIN_NOT_SUPPORTED_OFFLINE, MOBILE_WALLET_NOT_SUPPORTED_ON_SETUP_INTENTS, OFFLINE_AND_CARD_EXPIRED, OFFLINE_TRANSACTION_DECLINED, OFFLINE_COLLECT_AND_CONFIRM_MISMATCH, OFFLINE_TESTMODE_PAYMENT_IN_LIVEMODE, OFFLINE_LIVEMODE_PAYMENT_IN_TESTMODE, OFFLINE_PAYMENT_INTENT_NOT_FOUND, MISSING_EMV_DATA, CONNECTION_TOKEN_PROVIDER_ERROR_WHILE_FORWARDING, ACCOUNT_ID_MISMATCH_WHILE_FORWARDING, FORCE_OFFLINE_WITH_FEATURE_DISABLED, NOT_CONNECTED_TO_INTERNET_AND_REQUIRE_ONLINE_SET, TEST_CARD_IN_LIVEMODE, COLLECT_INPUTS_APPLICATION_ERROR, COLLECT_INPUTS_TIMED_OUT, COLLECT_INPUTS_INVALID_PARAMETER, COLLECT_INPUTS_UNSUPPORTED, READER_SETTINGS_ERROR, READER_MISSING_ENCRYPTION_KEYS, INVALID_SURCHARGE_PARAMETER, READER_COMMUNICATION_SSL_ERROR, ALLOW_REDISPLAY_INVALID, CANCELED_DUE_TO_INTEGRATION_ERROR};
    }

    public static EnumEntries<TerminalErrorCode> getEntries() {
        return $ENTRIES;
    }

    public static TerminalErrorCode valueOf(String str) {
        return (TerminalErrorCode) Enum.valueOf(TerminalErrorCode.class, str);
    }

    public static TerminalErrorCode[] values() {
        return (TerminalErrorCode[]) $VALUES.clone();
    }

    private TerminalErrorCode(String str, int i, TerminalErrorType terminalErrorType) {
        this.type = terminalErrorType;
    }

    /* JADX INFO: renamed from: getType$public_release, reason: from getter */
    public final TerminalErrorType getType() {
        return this.type;
    }

    static {
        TerminalErrorCode[] terminalErrorCodeArr$values = $values();
        $VALUES = terminalErrorCodeArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(terminalErrorCodeArr$values);
        INSTANCE = new Companion(null);
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.type + '.' + name();
    }

    public final String toLogString() {
        StringBuilder sb = new StringBuilder("error_code_");
        String strName = this.type.name();
        Locale US = Locale.US;
        Intrinsics.checkNotNullExpressionValue(US, "US");
        String lowerCase = strName.toLowerCase(US);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        StringBuilder sbAppend = sb.append(lowerCase).append('_');
        String strName2 = name();
        Locale US2 = Locale.US;
        Intrinsics.checkNotNullExpressionValue(US2, "US");
        String lowerCase2 = strName2.toLowerCase(US2);
        Intrinsics.checkNotNullExpressionValue(lowerCase2, "toLowerCase(...)");
        return sbAppend.append(lowerCase2).toString();
    }

    /* JADX INFO: compiled from: TerminalErrorCode.android.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, d2 = {"Lcom/stripe/stripeterminal/external/models/TerminalErrorCode$Companion;", "", "()V", "fromString", "Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;", "value", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final TerminalErrorCode fromString(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            return TerminalErrorCode.valueOf(StringsKt.substringAfterLast$default(value, ".", (String) null, 2, (Object) null));
        }
    }
}
