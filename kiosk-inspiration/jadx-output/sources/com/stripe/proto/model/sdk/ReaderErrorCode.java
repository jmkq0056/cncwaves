package com.stripe.proto.model.sdk;

import com.squareup.wire.EnumAdapter;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireEnum;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: ReaderErrorCode.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\bE\b\u0086\u0081\u0002\u0018\u0000 H2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001HB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019j\u0002\b\u001aj\u0002\b\u001bj\u0002\b\u001cj\u0002\b\u001dj\u0002\b\u001ej\u0002\b\u001fj\u0002\b j\u0002\b!j\u0002\b\"j\u0002\b#j\u0002\b$j\u0002\b%j\u0002\b&j\u0002\b'j\u0002\b(j\u0002\b)j\u0002\b*j\u0002\b+j\u0002\b,j\u0002\b-j\u0002\b.j\u0002\b/j\u0002\b0j\u0002\b1j\u0002\b2j\u0002\b3j\u0002\b4j\u0002\b5j\u0002\b6j\u0002\b7j\u0002\b8j\u0002\b9j\u0002\b:j\u0002\b;j\u0002\b<j\u0002\b=j\u0002\b>j\u0002\b?j\u0002\b@j\u0002\bAj\u0002\bBj\u0002\bCj\u0002\bDj\u0002\bEj\u0002\bFj\u0002\bG¨\u0006I"}, d2 = {"Lcom/stripe/proto/model/sdk/ReaderErrorCode;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "READER_ERROR_CODE_UNSPECIFIED", "CANCEL_FAILED", "NOT_CONNECTED_TO_READER", "ALREADY_CONNECTED_TO_READER", "CONFIRM_INVALID_PAYMENT_INTENT", "CONFIRM_INVALID_SETUP_INTENT", "INVALID_CLIENT_SECRET", "UNSUPPORTED_OPERATION", "UNEXPECTED_OPERATION", "UNSUPPORTED_SDK", "MISSING_REQUIRED_PARAMETER", "INVALID_REQUIRED_PARAMETER", "INVALID_TIP_PARAMETER", "CANCELED", "LOCATION_SERVICES_DISABLED", "CARD_INSERT_NOT_READ", "CARD_SWIPE_NOT_READ", "CARD_READ_TIMED_OUT", "CARD_REMOVED", "CUSTOMER_CONSENT_REQUIRED", "CARD_LEFT_IN_READER", "FEATURE_NOT_ENABLED_ON_ACCOUNT", "READER_BUSY", "READER_COMMUNICATION_ERROR", "UNSUPPORTED_READER_VERSION", "UNEXPECTED_SDK_ERROR", "DECLINED_BY_STRIPE_API", "DECLINED_BY_READER", "REQUEST_TIMED_OUT", "STRIPE_API_CONNECTION_ERROR", "STRIPE_API_ERROR", "STRIPE_API_RESPONSE_DECODING_ERROR", "CONNECTION_TOKEN_PROVIDER_ERROR", "SESSION_EXPIRED", "AMOUNT_EXCEEDS_MAX_OFFLINE_AMOUNT", "OFFLINE_PAYMENTS_DATABASE_TOO_LARGE", "READER_CONNECTION_NOT_AVAILABLE_OFFLINE", "LOCATION_CONNECTION_NOT_AVAILABLE_OFFLINE", "NO_LAST_SEEN_ACCOUNT", "INVALID_OFFLINE_CURRENCY", "CARD_SWIPE_NOT_AVAILABLE", "INTERAC_NOT_SUPPORTED_OFFLINE", "ONLINE_PIN_NOT_SUPPORTED_OFFLINE", "MOBILE_WALLET_NOT_SUPPORTED_ON_SETUP_INTENTS", "OFFLINE_AND_CARD_EXPIRED", "OFFLINE_TRANSACTION_DECLINED", "OFFLINE_COLLECT_AND_CONFIRM_MISMATCH", "OFFLINE_TESTMODE_PAYMENT_IN_LIVEMODE", "OFFLINE_LIVEMODE_PAYMENT_IN_TESTMODE", "OFFLINE_PAYMENT_INTENT_NOT_FOUND", "MISSING_EMV_DATA", "CONNECTION_TOKEN_PROVIDER_ERROR_WHILE_FORWARDING", "ACCOUNT_ID_MISMATCH_WHILE_FORWARDING", "FORCE_OFFLINE_WITH_FEATURE_DISABLED", "NOT_CONNECTED_TO_INTERNET_AND_REQUIRE_ONLINE_SET", "TEST_CARD_IN_LIVEMODE", "COLLECT_INPUTS_APPLICATION_ERROR", "COLLECT_INPUTS_TIMED_OUT", "COLLECT_INPUTS_INVALID_PARAMETER", "COLLECT_INPUTS_UNSUPPORTED", "READER_SETTINGS_ERROR", "READER_MISSING_ENCRYPTION_KEYS", "READER_COMMUNICATION_SSL_ERROR", "INVALID_SURCHARGE_PARAMETER", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ReaderErrorCode implements WireEnum {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ReaderErrorCode[] $VALUES;
    public static final ReaderErrorCode ACCOUNT_ID_MISMATCH_WHILE_FORWARDING;
    public static final ProtoAdapter<ReaderErrorCode> ADAPTER;
    public static final ReaderErrorCode ALREADY_CONNECTED_TO_READER;
    public static final ReaderErrorCode AMOUNT_EXCEEDS_MAX_OFFLINE_AMOUNT;
    public static final ReaderErrorCode CANCELED;
    public static final ReaderErrorCode CANCEL_FAILED;
    public static final ReaderErrorCode CARD_INSERT_NOT_READ;
    public static final ReaderErrorCode CARD_LEFT_IN_READER;
    public static final ReaderErrorCode CARD_READ_TIMED_OUT;
    public static final ReaderErrorCode CARD_REMOVED;
    public static final ReaderErrorCode CARD_SWIPE_NOT_AVAILABLE;
    public static final ReaderErrorCode CARD_SWIPE_NOT_READ;
    public static final ReaderErrorCode COLLECT_INPUTS_APPLICATION_ERROR;
    public static final ReaderErrorCode COLLECT_INPUTS_INVALID_PARAMETER;
    public static final ReaderErrorCode COLLECT_INPUTS_TIMED_OUT;
    public static final ReaderErrorCode COLLECT_INPUTS_UNSUPPORTED;
    public static final ReaderErrorCode CONFIRM_INVALID_PAYMENT_INTENT;
    public static final ReaderErrorCode CONFIRM_INVALID_SETUP_INTENT;
    public static final ReaderErrorCode CONNECTION_TOKEN_PROVIDER_ERROR;
    public static final ReaderErrorCode CONNECTION_TOKEN_PROVIDER_ERROR_WHILE_FORWARDING;
    public static final ReaderErrorCode CUSTOMER_CONSENT_REQUIRED;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;
    public static final ReaderErrorCode DECLINED_BY_READER;
    public static final ReaderErrorCode DECLINED_BY_STRIPE_API;
    public static final ReaderErrorCode FEATURE_NOT_ENABLED_ON_ACCOUNT;
    public static final ReaderErrorCode FORCE_OFFLINE_WITH_FEATURE_DISABLED;
    public static final ReaderErrorCode INTERAC_NOT_SUPPORTED_OFFLINE;
    public static final ReaderErrorCode INVALID_CLIENT_SECRET;
    public static final ReaderErrorCode INVALID_OFFLINE_CURRENCY;
    public static final ReaderErrorCode INVALID_REQUIRED_PARAMETER;
    public static final ReaderErrorCode INVALID_SURCHARGE_PARAMETER;
    public static final ReaderErrorCode INVALID_TIP_PARAMETER;
    public static final ReaderErrorCode LOCATION_CONNECTION_NOT_AVAILABLE_OFFLINE;
    public static final ReaderErrorCode LOCATION_SERVICES_DISABLED;
    public static final ReaderErrorCode MISSING_EMV_DATA;
    public static final ReaderErrorCode MISSING_REQUIRED_PARAMETER;
    public static final ReaderErrorCode MOBILE_WALLET_NOT_SUPPORTED_ON_SETUP_INTENTS;
    public static final ReaderErrorCode NOT_CONNECTED_TO_INTERNET_AND_REQUIRE_ONLINE_SET;
    public static final ReaderErrorCode NOT_CONNECTED_TO_READER;
    public static final ReaderErrorCode NO_LAST_SEEN_ACCOUNT;
    public static final ReaderErrorCode OFFLINE_AND_CARD_EXPIRED;
    public static final ReaderErrorCode OFFLINE_COLLECT_AND_CONFIRM_MISMATCH;
    public static final ReaderErrorCode OFFLINE_LIVEMODE_PAYMENT_IN_TESTMODE;
    public static final ReaderErrorCode OFFLINE_PAYMENTS_DATABASE_TOO_LARGE;
    public static final ReaderErrorCode OFFLINE_PAYMENT_INTENT_NOT_FOUND;
    public static final ReaderErrorCode OFFLINE_TESTMODE_PAYMENT_IN_LIVEMODE;
    public static final ReaderErrorCode OFFLINE_TRANSACTION_DECLINED;
    public static final ReaderErrorCode ONLINE_PIN_NOT_SUPPORTED_OFFLINE;
    public static final ReaderErrorCode READER_BUSY;
    public static final ReaderErrorCode READER_COMMUNICATION_ERROR;
    public static final ReaderErrorCode READER_COMMUNICATION_SSL_ERROR;
    public static final ReaderErrorCode READER_CONNECTION_NOT_AVAILABLE_OFFLINE;
    public static final ReaderErrorCode READER_ERROR_CODE_UNSPECIFIED;
    public static final ReaderErrorCode READER_MISSING_ENCRYPTION_KEYS;
    public static final ReaderErrorCode READER_SETTINGS_ERROR;
    public static final ReaderErrorCode REQUEST_TIMED_OUT;
    public static final ReaderErrorCode SESSION_EXPIRED;
    public static final ReaderErrorCode STRIPE_API_CONNECTION_ERROR;
    public static final ReaderErrorCode STRIPE_API_ERROR;
    public static final ReaderErrorCode STRIPE_API_RESPONSE_DECODING_ERROR;
    public static final ReaderErrorCode TEST_CARD_IN_LIVEMODE;
    public static final ReaderErrorCode UNEXPECTED_OPERATION;
    public static final ReaderErrorCode UNEXPECTED_SDK_ERROR;
    public static final ReaderErrorCode UNSUPPORTED_OPERATION;
    public static final ReaderErrorCode UNSUPPORTED_READER_VERSION;
    public static final ReaderErrorCode UNSUPPORTED_SDK;
    private final int value;

    private static final /* synthetic */ ReaderErrorCode[] $values() {
        return new ReaderErrorCode[]{READER_ERROR_CODE_UNSPECIFIED, CANCEL_FAILED, NOT_CONNECTED_TO_READER, ALREADY_CONNECTED_TO_READER, CONFIRM_INVALID_PAYMENT_INTENT, CONFIRM_INVALID_SETUP_INTENT, INVALID_CLIENT_SECRET, UNSUPPORTED_OPERATION, UNEXPECTED_OPERATION, UNSUPPORTED_SDK, MISSING_REQUIRED_PARAMETER, INVALID_REQUIRED_PARAMETER, INVALID_TIP_PARAMETER, CANCELED, LOCATION_SERVICES_DISABLED, CARD_INSERT_NOT_READ, CARD_SWIPE_NOT_READ, CARD_READ_TIMED_OUT, CARD_REMOVED, CUSTOMER_CONSENT_REQUIRED, CARD_LEFT_IN_READER, FEATURE_NOT_ENABLED_ON_ACCOUNT, READER_BUSY, READER_COMMUNICATION_ERROR, UNSUPPORTED_READER_VERSION, UNEXPECTED_SDK_ERROR, DECLINED_BY_STRIPE_API, DECLINED_BY_READER, REQUEST_TIMED_OUT, STRIPE_API_CONNECTION_ERROR, STRIPE_API_ERROR, STRIPE_API_RESPONSE_DECODING_ERROR, CONNECTION_TOKEN_PROVIDER_ERROR, SESSION_EXPIRED, AMOUNT_EXCEEDS_MAX_OFFLINE_AMOUNT, OFFLINE_PAYMENTS_DATABASE_TOO_LARGE, READER_CONNECTION_NOT_AVAILABLE_OFFLINE, LOCATION_CONNECTION_NOT_AVAILABLE_OFFLINE, NO_LAST_SEEN_ACCOUNT, INVALID_OFFLINE_CURRENCY, CARD_SWIPE_NOT_AVAILABLE, INTERAC_NOT_SUPPORTED_OFFLINE, ONLINE_PIN_NOT_SUPPORTED_OFFLINE, MOBILE_WALLET_NOT_SUPPORTED_ON_SETUP_INTENTS, OFFLINE_AND_CARD_EXPIRED, OFFLINE_TRANSACTION_DECLINED, OFFLINE_COLLECT_AND_CONFIRM_MISMATCH, OFFLINE_TESTMODE_PAYMENT_IN_LIVEMODE, OFFLINE_LIVEMODE_PAYMENT_IN_TESTMODE, OFFLINE_PAYMENT_INTENT_NOT_FOUND, MISSING_EMV_DATA, CONNECTION_TOKEN_PROVIDER_ERROR_WHILE_FORWARDING, ACCOUNT_ID_MISMATCH_WHILE_FORWARDING, FORCE_OFFLINE_WITH_FEATURE_DISABLED, NOT_CONNECTED_TO_INTERNET_AND_REQUIRE_ONLINE_SET, TEST_CARD_IN_LIVEMODE, COLLECT_INPUTS_APPLICATION_ERROR, COLLECT_INPUTS_TIMED_OUT, COLLECT_INPUTS_INVALID_PARAMETER, COLLECT_INPUTS_UNSUPPORTED, READER_SETTINGS_ERROR, READER_MISSING_ENCRYPTION_KEYS, READER_COMMUNICATION_SSL_ERROR, INVALID_SURCHARGE_PARAMETER};
    }

    @JvmStatic
    public static final ReaderErrorCode fromValue(int i) {
        return INSTANCE.fromValue(i);
    }

    public static EnumEntries<ReaderErrorCode> getEntries() {
        return $ENTRIES;
    }

    public static ReaderErrorCode valueOf(String str) {
        return (ReaderErrorCode) Enum.valueOf(ReaderErrorCode.class, str);
    }

    public static ReaderErrorCode[] values() {
        return (ReaderErrorCode[]) $VALUES.clone();
    }

    private ReaderErrorCode(String str, int i, int i2) {
        this.value = i2;
    }

    @Override // com.squareup.wire.WireEnum
    public int getValue() {
        return this.value;
    }

    static {
        final ReaderErrorCode readerErrorCode = new ReaderErrorCode("READER_ERROR_CODE_UNSPECIFIED", 0, 0);
        READER_ERROR_CODE_UNSPECIFIED = readerErrorCode;
        CANCEL_FAILED = new ReaderErrorCode("CANCEL_FAILED", 1, 1);
        NOT_CONNECTED_TO_READER = new ReaderErrorCode("NOT_CONNECTED_TO_READER", 2, 2);
        ALREADY_CONNECTED_TO_READER = new ReaderErrorCode("ALREADY_CONNECTED_TO_READER", 3, 3);
        CONFIRM_INVALID_PAYMENT_INTENT = new ReaderErrorCode("CONFIRM_INVALID_PAYMENT_INTENT", 4, 4);
        CONFIRM_INVALID_SETUP_INTENT = new ReaderErrorCode("CONFIRM_INVALID_SETUP_INTENT", 5, 5);
        INVALID_CLIENT_SECRET = new ReaderErrorCode("INVALID_CLIENT_SECRET", 6, 6);
        UNSUPPORTED_OPERATION = new ReaderErrorCode("UNSUPPORTED_OPERATION", 7, 7);
        UNEXPECTED_OPERATION = new ReaderErrorCode("UNEXPECTED_OPERATION", 8, 8);
        UNSUPPORTED_SDK = new ReaderErrorCode("UNSUPPORTED_SDK", 9, 9);
        MISSING_REQUIRED_PARAMETER = new ReaderErrorCode("MISSING_REQUIRED_PARAMETER", 10, 10);
        INVALID_REQUIRED_PARAMETER = new ReaderErrorCode("INVALID_REQUIRED_PARAMETER", 11, 11);
        INVALID_TIP_PARAMETER = new ReaderErrorCode("INVALID_TIP_PARAMETER", 12, 12);
        CANCELED = new ReaderErrorCode("CANCELED", 13, 13);
        LOCATION_SERVICES_DISABLED = new ReaderErrorCode("LOCATION_SERVICES_DISABLED", 14, 14);
        CARD_INSERT_NOT_READ = new ReaderErrorCode("CARD_INSERT_NOT_READ", 15, 15);
        CARD_SWIPE_NOT_READ = new ReaderErrorCode("CARD_SWIPE_NOT_READ", 16, 16);
        CARD_READ_TIMED_OUT = new ReaderErrorCode("CARD_READ_TIMED_OUT", 17, 17);
        CARD_REMOVED = new ReaderErrorCode("CARD_REMOVED", 18, 18);
        CUSTOMER_CONSENT_REQUIRED = new ReaderErrorCode("CUSTOMER_CONSENT_REQUIRED", 19, 19);
        CARD_LEFT_IN_READER = new ReaderErrorCode("CARD_LEFT_IN_READER", 20, 20);
        FEATURE_NOT_ENABLED_ON_ACCOUNT = new ReaderErrorCode("FEATURE_NOT_ENABLED_ON_ACCOUNT", 21, 21);
        READER_BUSY = new ReaderErrorCode("READER_BUSY", 22, 22);
        READER_COMMUNICATION_ERROR = new ReaderErrorCode("READER_COMMUNICATION_ERROR", 23, 23);
        UNSUPPORTED_READER_VERSION = new ReaderErrorCode("UNSUPPORTED_READER_VERSION", 24, 24);
        UNEXPECTED_SDK_ERROR = new ReaderErrorCode("UNEXPECTED_SDK_ERROR", 25, 25);
        DECLINED_BY_STRIPE_API = new ReaderErrorCode("DECLINED_BY_STRIPE_API", 26, 26);
        DECLINED_BY_READER = new ReaderErrorCode("DECLINED_BY_READER", 27, 27);
        REQUEST_TIMED_OUT = new ReaderErrorCode("REQUEST_TIMED_OUT", 28, 28);
        STRIPE_API_CONNECTION_ERROR = new ReaderErrorCode("STRIPE_API_CONNECTION_ERROR", 29, 29);
        STRIPE_API_ERROR = new ReaderErrorCode("STRIPE_API_ERROR", 30, 30);
        STRIPE_API_RESPONSE_DECODING_ERROR = new ReaderErrorCode("STRIPE_API_RESPONSE_DECODING_ERROR", 31, 31);
        CONNECTION_TOKEN_PROVIDER_ERROR = new ReaderErrorCode("CONNECTION_TOKEN_PROVIDER_ERROR", 32, 32);
        SESSION_EXPIRED = new ReaderErrorCode("SESSION_EXPIRED", 33, 33);
        AMOUNT_EXCEEDS_MAX_OFFLINE_AMOUNT = new ReaderErrorCode("AMOUNT_EXCEEDS_MAX_OFFLINE_AMOUNT", 34, 34);
        OFFLINE_PAYMENTS_DATABASE_TOO_LARGE = new ReaderErrorCode("OFFLINE_PAYMENTS_DATABASE_TOO_LARGE", 35, 35);
        READER_CONNECTION_NOT_AVAILABLE_OFFLINE = new ReaderErrorCode("READER_CONNECTION_NOT_AVAILABLE_OFFLINE", 36, 36);
        LOCATION_CONNECTION_NOT_AVAILABLE_OFFLINE = new ReaderErrorCode("LOCATION_CONNECTION_NOT_AVAILABLE_OFFLINE", 37, 37);
        NO_LAST_SEEN_ACCOUNT = new ReaderErrorCode("NO_LAST_SEEN_ACCOUNT", 38, 38);
        INVALID_OFFLINE_CURRENCY = new ReaderErrorCode("INVALID_OFFLINE_CURRENCY", 39, 39);
        CARD_SWIPE_NOT_AVAILABLE = new ReaderErrorCode("CARD_SWIPE_NOT_AVAILABLE", 40, 40);
        INTERAC_NOT_SUPPORTED_OFFLINE = new ReaderErrorCode("INTERAC_NOT_SUPPORTED_OFFLINE", 41, 41);
        ONLINE_PIN_NOT_SUPPORTED_OFFLINE = new ReaderErrorCode("ONLINE_PIN_NOT_SUPPORTED_OFFLINE", 42, 42);
        MOBILE_WALLET_NOT_SUPPORTED_ON_SETUP_INTENTS = new ReaderErrorCode("MOBILE_WALLET_NOT_SUPPORTED_ON_SETUP_INTENTS", 43, 43);
        OFFLINE_AND_CARD_EXPIRED = new ReaderErrorCode("OFFLINE_AND_CARD_EXPIRED", 44, 44);
        OFFLINE_TRANSACTION_DECLINED = new ReaderErrorCode("OFFLINE_TRANSACTION_DECLINED", 45, 45);
        OFFLINE_COLLECT_AND_CONFIRM_MISMATCH = new ReaderErrorCode("OFFLINE_COLLECT_AND_CONFIRM_MISMATCH", 46, 46);
        OFFLINE_TESTMODE_PAYMENT_IN_LIVEMODE = new ReaderErrorCode("OFFLINE_TESTMODE_PAYMENT_IN_LIVEMODE", 47, 47);
        OFFLINE_LIVEMODE_PAYMENT_IN_TESTMODE = new ReaderErrorCode("OFFLINE_LIVEMODE_PAYMENT_IN_TESTMODE", 48, 48);
        OFFLINE_PAYMENT_INTENT_NOT_FOUND = new ReaderErrorCode("OFFLINE_PAYMENT_INTENT_NOT_FOUND", 49, 49);
        MISSING_EMV_DATA = new ReaderErrorCode("MISSING_EMV_DATA", 50, 50);
        CONNECTION_TOKEN_PROVIDER_ERROR_WHILE_FORWARDING = new ReaderErrorCode("CONNECTION_TOKEN_PROVIDER_ERROR_WHILE_FORWARDING", 51, 51);
        ACCOUNT_ID_MISMATCH_WHILE_FORWARDING = new ReaderErrorCode("ACCOUNT_ID_MISMATCH_WHILE_FORWARDING", 52, 52);
        FORCE_OFFLINE_WITH_FEATURE_DISABLED = new ReaderErrorCode("FORCE_OFFLINE_WITH_FEATURE_DISABLED", 53, 53);
        NOT_CONNECTED_TO_INTERNET_AND_REQUIRE_ONLINE_SET = new ReaderErrorCode("NOT_CONNECTED_TO_INTERNET_AND_REQUIRE_ONLINE_SET", 54, 54);
        TEST_CARD_IN_LIVEMODE = new ReaderErrorCode("TEST_CARD_IN_LIVEMODE", 55, 55);
        COLLECT_INPUTS_APPLICATION_ERROR = new ReaderErrorCode("COLLECT_INPUTS_APPLICATION_ERROR", 56, 56);
        COLLECT_INPUTS_TIMED_OUT = new ReaderErrorCode("COLLECT_INPUTS_TIMED_OUT", 57, 57);
        COLLECT_INPUTS_INVALID_PARAMETER = new ReaderErrorCode("COLLECT_INPUTS_INVALID_PARAMETER", 58, 58);
        COLLECT_INPUTS_UNSUPPORTED = new ReaderErrorCode("COLLECT_INPUTS_UNSUPPORTED", 59, 59);
        READER_SETTINGS_ERROR = new ReaderErrorCode("READER_SETTINGS_ERROR", 60, 60);
        READER_MISSING_ENCRYPTION_KEYS = new ReaderErrorCode("READER_MISSING_ENCRYPTION_KEYS", 61, 61);
        READER_COMMUNICATION_SSL_ERROR = new ReaderErrorCode("READER_COMMUNICATION_SSL_ERROR", 62, 62);
        INVALID_SURCHARGE_PARAMETER = new ReaderErrorCode("INVALID_SURCHARGE_PARAMETER", 63, 63);
        ReaderErrorCode[] readerErrorCodeArr$values = $values();
        $VALUES = readerErrorCodeArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(readerErrorCodeArr$values);
        INSTANCE = new Companion(null);
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ReaderErrorCode.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new EnumAdapter<ReaderErrorCode>(orCreateKotlinClass, syntax, readerErrorCode) { // from class: com.stripe.proto.model.sdk.ReaderErrorCode$Companion$ADAPTER$1
            {
                ReaderErrorCode readerErrorCode2 = readerErrorCode;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.squareup.wire.EnumAdapter
            public ReaderErrorCode fromValue(int value) {
                return ReaderErrorCode.INSTANCE.fromValue(value);
            }
        };
    }

    /* JADX INFO: compiled from: ReaderErrorCode.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/model/sdk/ReaderErrorCode$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/sdk/ReaderErrorCode;", "fromValue", "value", "", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final ReaderErrorCode fromValue(int value) {
            switch (value) {
                case 0:
                    return ReaderErrorCode.READER_ERROR_CODE_UNSPECIFIED;
                case 1:
                    return ReaderErrorCode.CANCEL_FAILED;
                case 2:
                    return ReaderErrorCode.NOT_CONNECTED_TO_READER;
                case 3:
                    return ReaderErrorCode.ALREADY_CONNECTED_TO_READER;
                case 4:
                    return ReaderErrorCode.CONFIRM_INVALID_PAYMENT_INTENT;
                case 5:
                    return ReaderErrorCode.CONFIRM_INVALID_SETUP_INTENT;
                case 6:
                    return ReaderErrorCode.INVALID_CLIENT_SECRET;
                case 7:
                    return ReaderErrorCode.UNSUPPORTED_OPERATION;
                case 8:
                    return ReaderErrorCode.UNEXPECTED_OPERATION;
                case 9:
                    return ReaderErrorCode.UNSUPPORTED_SDK;
                case 10:
                    return ReaderErrorCode.MISSING_REQUIRED_PARAMETER;
                case 11:
                    return ReaderErrorCode.INVALID_REQUIRED_PARAMETER;
                case 12:
                    return ReaderErrorCode.INVALID_TIP_PARAMETER;
                case 13:
                    return ReaderErrorCode.CANCELED;
                case 14:
                    return ReaderErrorCode.LOCATION_SERVICES_DISABLED;
                case 15:
                    return ReaderErrorCode.CARD_INSERT_NOT_READ;
                case 16:
                    return ReaderErrorCode.CARD_SWIPE_NOT_READ;
                case 17:
                    return ReaderErrorCode.CARD_READ_TIMED_OUT;
                case 18:
                    return ReaderErrorCode.CARD_REMOVED;
                case 19:
                    return ReaderErrorCode.CUSTOMER_CONSENT_REQUIRED;
                case 20:
                    return ReaderErrorCode.CARD_LEFT_IN_READER;
                case 21:
                    return ReaderErrorCode.FEATURE_NOT_ENABLED_ON_ACCOUNT;
                case 22:
                    return ReaderErrorCode.READER_BUSY;
                case 23:
                    return ReaderErrorCode.READER_COMMUNICATION_ERROR;
                case 24:
                    return ReaderErrorCode.UNSUPPORTED_READER_VERSION;
                case 25:
                    return ReaderErrorCode.UNEXPECTED_SDK_ERROR;
                case 26:
                    return ReaderErrorCode.DECLINED_BY_STRIPE_API;
                case 27:
                    return ReaderErrorCode.DECLINED_BY_READER;
                case 28:
                    return ReaderErrorCode.REQUEST_TIMED_OUT;
                case 29:
                    return ReaderErrorCode.STRIPE_API_CONNECTION_ERROR;
                case 30:
                    return ReaderErrorCode.STRIPE_API_ERROR;
                case 31:
                    return ReaderErrorCode.STRIPE_API_RESPONSE_DECODING_ERROR;
                case 32:
                    return ReaderErrorCode.CONNECTION_TOKEN_PROVIDER_ERROR;
                case 33:
                    return ReaderErrorCode.SESSION_EXPIRED;
                case 34:
                    return ReaderErrorCode.AMOUNT_EXCEEDS_MAX_OFFLINE_AMOUNT;
                case 35:
                    return ReaderErrorCode.OFFLINE_PAYMENTS_DATABASE_TOO_LARGE;
                case 36:
                    return ReaderErrorCode.READER_CONNECTION_NOT_AVAILABLE_OFFLINE;
                case 37:
                    return ReaderErrorCode.LOCATION_CONNECTION_NOT_AVAILABLE_OFFLINE;
                case 38:
                    return ReaderErrorCode.NO_LAST_SEEN_ACCOUNT;
                case 39:
                    return ReaderErrorCode.INVALID_OFFLINE_CURRENCY;
                case 40:
                    return ReaderErrorCode.CARD_SWIPE_NOT_AVAILABLE;
                case 41:
                    return ReaderErrorCode.INTERAC_NOT_SUPPORTED_OFFLINE;
                case 42:
                    return ReaderErrorCode.ONLINE_PIN_NOT_SUPPORTED_OFFLINE;
                case 43:
                    return ReaderErrorCode.MOBILE_WALLET_NOT_SUPPORTED_ON_SETUP_INTENTS;
                case 44:
                    return ReaderErrorCode.OFFLINE_AND_CARD_EXPIRED;
                case 45:
                    return ReaderErrorCode.OFFLINE_TRANSACTION_DECLINED;
                case 46:
                    return ReaderErrorCode.OFFLINE_COLLECT_AND_CONFIRM_MISMATCH;
                case 47:
                    return ReaderErrorCode.OFFLINE_TESTMODE_PAYMENT_IN_LIVEMODE;
                case 48:
                    return ReaderErrorCode.OFFLINE_LIVEMODE_PAYMENT_IN_TESTMODE;
                case 49:
                    return ReaderErrorCode.OFFLINE_PAYMENT_INTENT_NOT_FOUND;
                case 50:
                    return ReaderErrorCode.MISSING_EMV_DATA;
                case 51:
                    return ReaderErrorCode.CONNECTION_TOKEN_PROVIDER_ERROR_WHILE_FORWARDING;
                case 52:
                    return ReaderErrorCode.ACCOUNT_ID_MISMATCH_WHILE_FORWARDING;
                case 53:
                    return ReaderErrorCode.FORCE_OFFLINE_WITH_FEATURE_DISABLED;
                case 54:
                    return ReaderErrorCode.NOT_CONNECTED_TO_INTERNET_AND_REQUIRE_ONLINE_SET;
                case 55:
                    return ReaderErrorCode.TEST_CARD_IN_LIVEMODE;
                case 56:
                    return ReaderErrorCode.COLLECT_INPUTS_APPLICATION_ERROR;
                case 57:
                    return ReaderErrorCode.COLLECT_INPUTS_TIMED_OUT;
                case 58:
                    return ReaderErrorCode.COLLECT_INPUTS_INVALID_PARAMETER;
                case 59:
                    return ReaderErrorCode.COLLECT_INPUTS_UNSUPPORTED;
                case 60:
                    return ReaderErrorCode.READER_SETTINGS_ERROR;
                case 61:
                    return ReaderErrorCode.READER_MISSING_ENCRYPTION_KEYS;
                case 62:
                    return ReaderErrorCode.READER_COMMUNICATION_SSL_ERROR;
                case 63:
                    return ReaderErrorCode.INVALID_SURCHARGE_PARAMETER;
                default:
                    return null;
            }
        }
    }
}
