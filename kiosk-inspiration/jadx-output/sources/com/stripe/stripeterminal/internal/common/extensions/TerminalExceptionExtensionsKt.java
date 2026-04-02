package com.stripe.stripeterminal.internal.common.extensions;

import com.stripe.proto.model.rest.ErrorResponse;
import com.stripe.proto.model.rest.ErrorWrapper;
import com.stripe.proto.model.sdk.Error;
import com.stripe.proto.model.sdk.ReaderErrorCode;
import com.stripe.stripeterminal.external.models.TerminalErrorCode;
import com.stripe.stripeterminal.external.models.TerminalException;
import com.stripe.stripeterminal.internal.common.proto.ProtoConverter;
import com.stripe.transaction.ExceptionsKt;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TerminalExceptionExtensions.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\u001a\u001a\u0010\u0000\u001a\u00020\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u001a\u001a\u0010\u0006\u001a\u00020\u00012\b\u0010\u0007\u001a\u0004\u0018\u00010\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u001a\u001a\u0010\b\u001a\u00020\u0001*\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r\u001a\u001c\u0010\u000e\u001a\u00020\u000b*\u00020\u000f2\u0006\u0010\n\u001a\u00020\r2\b\b\u0002\u0010\u0010\u001a\u00020\u000b\u001a\u0014\u0010\u0011\u001a\u00020\r*\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u000bH\u0002\u001a\f\u0010\u0013\u001a\u00020\u000b*\u00020\u0005H\u0002\u001a\u0016\u0010\u0014\u001a\u00020\u0001*\u0004\u0018\u00010\u00052\b\b\u0002\u0010\u0015\u001a\u00020\u0016\u001a\f\u0010\u0017\u001a\u0004\u0018\u00010\u0001*\u00020\t¨\u0006\u0018"}, d2 = {"convertJackRabbitConfirmErrorToTerminalException", "Lcom/stripe/stripeterminal/external/models/TerminalException;", "declineResponse", "Lcom/stripe/proto/model/rest/ErrorWrapper;", "sdkError", "Lcom/stripe/proto/model/sdk/Error;", "convertJackRabbitErrorToTerminalException", "errorWrapper", "findTerminalExceptionOrWrap", "", "errorCode", "Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;", "errorMessage", "", "fromStringOrDefault", "Lcom/stripe/stripeterminal/external/models/TerminalErrorCode$Companion;", "default", "makeErrorMessage", "mappedErrorCode", "mapReaderErrorCode", "toTerminalException", "retry", "", "underlyingTerminalException", "public_release"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class TerminalExceptionExtensionsKt {

    /* JADX INFO: compiled from: TerminalExceptionExtensions.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ReaderErrorCode.values().length];
            try {
                iArr[ReaderErrorCode.READER_ERROR_CODE_UNSPECIFIED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ReaderErrorCode.CANCEL_FAILED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ReaderErrorCode.NOT_CONNECTED_TO_READER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[ReaderErrorCode.ALREADY_CONNECTED_TO_READER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[ReaderErrorCode.CONFIRM_INVALID_PAYMENT_INTENT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[ReaderErrorCode.CONFIRM_INVALID_SETUP_INTENT.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[ReaderErrorCode.INVALID_CLIENT_SECRET.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[ReaderErrorCode.UNSUPPORTED_OPERATION.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[ReaderErrorCode.UNEXPECTED_OPERATION.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr[ReaderErrorCode.UNSUPPORTED_SDK.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr[ReaderErrorCode.MISSING_REQUIRED_PARAMETER.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr[ReaderErrorCode.INVALID_REQUIRED_PARAMETER.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                iArr[ReaderErrorCode.INVALID_TIP_PARAMETER.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                iArr[ReaderErrorCode.CANCELED.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                iArr[ReaderErrorCode.LOCATION_SERVICES_DISABLED.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                iArr[ReaderErrorCode.CARD_INSERT_NOT_READ.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                iArr[ReaderErrorCode.CARD_SWIPE_NOT_READ.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                iArr[ReaderErrorCode.CARD_READ_TIMED_OUT.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                iArr[ReaderErrorCode.CARD_REMOVED.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                iArr[ReaderErrorCode.CUSTOMER_CONSENT_REQUIRED.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                iArr[ReaderErrorCode.CARD_LEFT_IN_READER.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                iArr[ReaderErrorCode.FEATURE_NOT_ENABLED_ON_ACCOUNT.ordinal()] = 22;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                iArr[ReaderErrorCode.READER_BUSY.ordinal()] = 23;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                iArr[ReaderErrorCode.READER_COMMUNICATION_ERROR.ordinal()] = 24;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                iArr[ReaderErrorCode.UNSUPPORTED_READER_VERSION.ordinal()] = 25;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                iArr[ReaderErrorCode.UNEXPECTED_SDK_ERROR.ordinal()] = 26;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                iArr[ReaderErrorCode.DECLINED_BY_STRIPE_API.ordinal()] = 27;
            } catch (NoSuchFieldError unused27) {
            }
            try {
                iArr[ReaderErrorCode.DECLINED_BY_READER.ordinal()] = 28;
            } catch (NoSuchFieldError unused28) {
            }
            try {
                iArr[ReaderErrorCode.REQUEST_TIMED_OUT.ordinal()] = 29;
            } catch (NoSuchFieldError unused29) {
            }
            try {
                iArr[ReaderErrorCode.STRIPE_API_CONNECTION_ERROR.ordinal()] = 30;
            } catch (NoSuchFieldError unused30) {
            }
            try {
                iArr[ReaderErrorCode.STRIPE_API_ERROR.ordinal()] = 31;
            } catch (NoSuchFieldError unused31) {
            }
            try {
                iArr[ReaderErrorCode.STRIPE_API_RESPONSE_DECODING_ERROR.ordinal()] = 32;
            } catch (NoSuchFieldError unused32) {
            }
            try {
                iArr[ReaderErrorCode.CONNECTION_TOKEN_PROVIDER_ERROR.ordinal()] = 33;
            } catch (NoSuchFieldError unused33) {
            }
            try {
                iArr[ReaderErrorCode.SESSION_EXPIRED.ordinal()] = 34;
            } catch (NoSuchFieldError unused34) {
            }
            try {
                iArr[ReaderErrorCode.AMOUNT_EXCEEDS_MAX_OFFLINE_AMOUNT.ordinal()] = 35;
            } catch (NoSuchFieldError unused35) {
            }
            try {
                iArr[ReaderErrorCode.OFFLINE_PAYMENTS_DATABASE_TOO_LARGE.ordinal()] = 36;
            } catch (NoSuchFieldError unused36) {
            }
            try {
                iArr[ReaderErrorCode.READER_CONNECTION_NOT_AVAILABLE_OFFLINE.ordinal()] = 37;
            } catch (NoSuchFieldError unused37) {
            }
            try {
                iArr[ReaderErrorCode.LOCATION_CONNECTION_NOT_AVAILABLE_OFFLINE.ordinal()] = 38;
            } catch (NoSuchFieldError unused38) {
            }
            try {
                iArr[ReaderErrorCode.NO_LAST_SEEN_ACCOUNT.ordinal()] = 39;
            } catch (NoSuchFieldError unused39) {
            }
            try {
                iArr[ReaderErrorCode.INVALID_OFFLINE_CURRENCY.ordinal()] = 40;
            } catch (NoSuchFieldError unused40) {
            }
            try {
                iArr[ReaderErrorCode.CARD_SWIPE_NOT_AVAILABLE.ordinal()] = 41;
            } catch (NoSuchFieldError unused41) {
            }
            try {
                iArr[ReaderErrorCode.INTERAC_NOT_SUPPORTED_OFFLINE.ordinal()] = 42;
            } catch (NoSuchFieldError unused42) {
            }
            try {
                iArr[ReaderErrorCode.ONLINE_PIN_NOT_SUPPORTED_OFFLINE.ordinal()] = 43;
            } catch (NoSuchFieldError unused43) {
            }
            try {
                iArr[ReaderErrorCode.MOBILE_WALLET_NOT_SUPPORTED_ON_SETUP_INTENTS.ordinal()] = 44;
            } catch (NoSuchFieldError unused44) {
            }
            try {
                iArr[ReaderErrorCode.OFFLINE_AND_CARD_EXPIRED.ordinal()] = 45;
            } catch (NoSuchFieldError unused45) {
            }
            try {
                iArr[ReaderErrorCode.OFFLINE_TRANSACTION_DECLINED.ordinal()] = 46;
            } catch (NoSuchFieldError unused46) {
            }
            try {
                iArr[ReaderErrorCode.OFFLINE_COLLECT_AND_CONFIRM_MISMATCH.ordinal()] = 47;
            } catch (NoSuchFieldError unused47) {
            }
            try {
                iArr[ReaderErrorCode.OFFLINE_TESTMODE_PAYMENT_IN_LIVEMODE.ordinal()] = 48;
            } catch (NoSuchFieldError unused48) {
            }
            try {
                iArr[ReaderErrorCode.OFFLINE_LIVEMODE_PAYMENT_IN_TESTMODE.ordinal()] = 49;
            } catch (NoSuchFieldError unused49) {
            }
            try {
                iArr[ReaderErrorCode.OFFLINE_PAYMENT_INTENT_NOT_FOUND.ordinal()] = 50;
            } catch (NoSuchFieldError unused50) {
            }
            try {
                iArr[ReaderErrorCode.MISSING_EMV_DATA.ordinal()] = 51;
            } catch (NoSuchFieldError unused51) {
            }
            try {
                iArr[ReaderErrorCode.CONNECTION_TOKEN_PROVIDER_ERROR_WHILE_FORWARDING.ordinal()] = 52;
            } catch (NoSuchFieldError unused52) {
            }
            try {
                iArr[ReaderErrorCode.ACCOUNT_ID_MISMATCH_WHILE_FORWARDING.ordinal()] = 53;
            } catch (NoSuchFieldError unused53) {
            }
            try {
                iArr[ReaderErrorCode.FORCE_OFFLINE_WITH_FEATURE_DISABLED.ordinal()] = 54;
            } catch (NoSuchFieldError unused54) {
            }
            try {
                iArr[ReaderErrorCode.NOT_CONNECTED_TO_INTERNET_AND_REQUIRE_ONLINE_SET.ordinal()] = 55;
            } catch (NoSuchFieldError unused55) {
            }
            try {
                iArr[ReaderErrorCode.TEST_CARD_IN_LIVEMODE.ordinal()] = 56;
            } catch (NoSuchFieldError unused56) {
            }
            try {
                iArr[ReaderErrorCode.COLLECT_INPUTS_APPLICATION_ERROR.ordinal()] = 57;
            } catch (NoSuchFieldError unused57) {
            }
            try {
                iArr[ReaderErrorCode.COLLECT_INPUTS_TIMED_OUT.ordinal()] = 58;
            } catch (NoSuchFieldError unused58) {
            }
            try {
                iArr[ReaderErrorCode.COLLECT_INPUTS_INVALID_PARAMETER.ordinal()] = 59;
            } catch (NoSuchFieldError unused59) {
            }
            try {
                iArr[ReaderErrorCode.COLLECT_INPUTS_UNSUPPORTED.ordinal()] = 60;
            } catch (NoSuchFieldError unused60) {
            }
            try {
                iArr[ReaderErrorCode.READER_SETTINGS_ERROR.ordinal()] = 61;
            } catch (NoSuchFieldError unused61) {
            }
            try {
                iArr[ReaderErrorCode.READER_MISSING_ENCRYPTION_KEYS.ordinal()] = 62;
            } catch (NoSuchFieldError unused62) {
            }
            try {
                iArr[ReaderErrorCode.READER_COMMUNICATION_SSL_ERROR.ordinal()] = 63;
            } catch (NoSuchFieldError unused63) {
            }
            try {
                iArr[ReaderErrorCode.INVALID_SURCHARGE_PARAMETER.ordinal()] = 64;
            } catch (NoSuchFieldError unused64) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static /* synthetic */ TerminalErrorCode fromStringOrDefault$default(TerminalErrorCode.Companion companion, String str, TerminalErrorCode terminalErrorCode, int i, Object obj) {
        if ((i & 2) != 0) {
            terminalErrorCode = TerminalErrorCode.UNEXPECTED_SDK_ERROR;
        }
        return fromStringOrDefault(companion, str, terminalErrorCode);
    }

    public static final TerminalErrorCode fromStringOrDefault(TerminalErrorCode.Companion companion, String errorCode, TerminalErrorCode terminalErrorCode) {
        Object objM817constructorimpl;
        Intrinsics.checkNotNullParameter(companion, "<this>");
        Intrinsics.checkNotNullParameter(errorCode, "errorCode");
        Intrinsics.checkNotNullParameter(terminalErrorCode, "default");
        try {
            Result.Companion companion2 = Result.INSTANCE;
            objM817constructorimpl = Result.m817constructorimpl(TerminalErrorCode.INSTANCE.fromString(errorCode));
        } catch (Throwable th) {
            Result.Companion companion3 = Result.INSTANCE;
            objM817constructorimpl = Result.m817constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m820exceptionOrNullimpl(objM817constructorimpl) != null) {
            int iHashCode = errorCode.hashCode();
            if (iHashCode != -348570244) {
                if (iHashCode != 0) {
                    if (iHashCode == 1198953831 && errorCode.equals(ExceptionsKt.STRIPE_API_CONNECTION_ERROR_CODE)) {
                        terminalErrorCode = TerminalErrorCode.STRIPE_API_CONNECTION_ERROR;
                    }
                } else if (errorCode.equals("")) {
                    terminalErrorCode = TerminalErrorCode.UNEXPECTED_SDK_ERROR;
                }
            } else if (errorCode.equals(ExceptionsKt.PARSE_ERROR_CODE)) {
                terminalErrorCode = TerminalErrorCode.STRIPE_API_RESPONSE_DECODING_ERROR;
            }
            objM817constructorimpl = terminalErrorCode;
        }
        return (TerminalErrorCode) objM817constructorimpl;
    }

    public static final TerminalException convertJackRabbitConfirmErrorToTerminalException(ErrorWrapper errorWrapper, Error error) {
        if (errorWrapper != null) {
            TerminalErrorCode terminalErrorCode = TerminalErrorCode.DECLINED_BY_STRIPE_API;
            ErrorResponse errorResponse = errorWrapper.error;
            String str = errorResponse != null ? errorResponse.message : null;
            if (str == null) {
                str = "";
            }
            ErrorResponse errorResponse2 = errorWrapper.error;
            return new TerminalException(terminalErrorCode, str, null, errorResponse2 != null ? ProtoConverter.INSTANCE.toSdkApiError(errorResponse2) : null, 4, null);
        }
        return toTerminalException(error, true);
    }

    public static final TerminalException convertJackRabbitErrorToTerminalException(ErrorWrapper errorWrapper, Error error) {
        ErrorResponse errorResponse;
        TerminalException terminalException$default;
        return (errorWrapper == null || (errorResponse = errorWrapper.error) == null || (terminalException$default = ProtoConverter.toTerminalException$default(ProtoConverter.INSTANCE, errorResponse, null, 1, null)) == null) ? toTerminalException$default(error, false, 1, null) : terminalException$default;
    }

    public static /* synthetic */ TerminalException toTerminalException$default(Error error, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        return toTerminalException(error, z);
    }

    public static final TerminalException toTerminalException(Error error, boolean z) {
        if (error == null) {
            return new TerminalException(TerminalErrorCode.UNEXPECTED_SDK_ERROR, "Unexpected error".concat(z ? ", retry" : ""), null, null, 12, null);
        }
        TerminalErrorCode terminalErrorCodeMapReaderErrorCode = mapReaderErrorCode(error);
        return new TerminalException(terminalErrorCodeMapReaderErrorCode, makeErrorMessage(error, terminalErrorCodeMapReaderErrorCode), null, null, 12, null);
    }

    private static final String makeErrorMessage(Error error, TerminalErrorCode terminalErrorCode) {
        if (error.code.length() == 0) {
            return "Error code: unknown. " + error.message;
        }
        if (terminalErrorCode == TerminalErrorCode.GENERIC_READER_ERROR) {
            return "Error code: " + error.code + ". " + error.message;
        }
        return error.message;
    }

    private static final TerminalErrorCode mapReaderErrorCode(Error error) {
        switch (WhenMappings.$EnumSwitchMapping$0[error.code_enum.ordinal()]) {
            case 1:
                return fromStringOrDefault(TerminalErrorCode.INSTANCE, error.code, TerminalErrorCode.GENERIC_READER_ERROR);
            case 2:
                return TerminalErrorCode.CANCEL_FAILED;
            case 3:
                return TerminalErrorCode.NOT_CONNECTED_TO_READER;
            case 4:
                return TerminalErrorCode.ALREADY_CONNECTED_TO_READER;
            case 5:
                return TerminalErrorCode.CONFIRM_INVALID_PAYMENT_INTENT;
            case 6:
                return TerminalErrorCode.CONFIRM_INVALID_SETUP_INTENT;
            case 7:
                return TerminalErrorCode.INVALID_CLIENT_SECRET;
            case 8:
                return TerminalErrorCode.UNSUPPORTED_OPERATION;
            case 9:
                return TerminalErrorCode.UNEXPECTED_OPERATION;
            case 10:
                return TerminalErrorCode.UNSUPPORTED_SDK;
            case 11:
                return TerminalErrorCode.MISSING_REQUIRED_PARAMETER;
            case 12:
                return TerminalErrorCode.INVALID_REQUIRED_PARAMETER;
            case 13:
                return TerminalErrorCode.INVALID_TIP_PARAMETER;
            case 14:
                return TerminalErrorCode.CANCELED;
            case 15:
                return TerminalErrorCode.LOCATION_SERVICES_DISABLED;
            case 16:
                return TerminalErrorCode.CARD_INSERT_NOT_READ;
            case 17:
                return TerminalErrorCode.CARD_SWIPE_NOT_READ;
            case 18:
                return TerminalErrorCode.CARD_READ_TIMED_OUT;
            case 19:
                return TerminalErrorCode.CARD_REMOVED;
            case 20:
                return TerminalErrorCode.CUSTOMER_CONSENT_REQUIRED;
            case 21:
                return TerminalErrorCode.CARD_LEFT_IN_READER;
            case 22:
                return TerminalErrorCode.FEATURE_NOT_ENABLED_ON_ACCOUNT;
            case 23:
                return TerminalErrorCode.READER_BUSY;
            case 24:
                return TerminalErrorCode.READER_COMMUNICATION_ERROR;
            case 25:
                return TerminalErrorCode.UNSUPPORTED_READER_VERSION;
            case 26:
                return TerminalErrorCode.UNEXPECTED_SDK_ERROR;
            case 27:
                return TerminalErrorCode.DECLINED_BY_STRIPE_API;
            case 28:
                return TerminalErrorCode.DECLINED_BY_READER;
            case 29:
                return TerminalErrorCode.REQUEST_TIMED_OUT;
            case 30:
                return TerminalErrorCode.STRIPE_API_CONNECTION_ERROR;
            case 31:
                return TerminalErrorCode.STRIPE_API_ERROR;
            case 32:
                return TerminalErrorCode.STRIPE_API_RESPONSE_DECODING_ERROR;
            case 33:
                return TerminalErrorCode.CONNECTION_TOKEN_PROVIDER_ERROR;
            case 34:
                return TerminalErrorCode.SESSION_EXPIRED;
            case 35:
                return TerminalErrorCode.AMOUNT_EXCEEDS_MAX_OFFLINE_AMOUNT;
            case 36:
                return TerminalErrorCode.OFFLINE_PAYMENTS_DATABASE_TOO_LARGE;
            case 37:
                return TerminalErrorCode.READER_CONNECTION_NOT_AVAILABLE_OFFLINE;
            case 38:
                return TerminalErrorCode.LOCATION_CONNECTION_NOT_AVAILABLE_OFFLINE;
            case 39:
                return TerminalErrorCode.NO_LAST_SEEN_ACCOUNT;
            case 40:
                return TerminalErrorCode.INVALID_OFFLINE_CURRENCY;
            case 41:
                return TerminalErrorCode.CARD_SWIPE_NOT_AVAILABLE;
            case 42:
                return TerminalErrorCode.INTERAC_NOT_SUPPORTED_OFFLINE;
            case 43:
                return TerminalErrorCode.ONLINE_PIN_NOT_SUPPORTED_OFFLINE;
            case 44:
                return TerminalErrorCode.MOBILE_WALLET_NOT_SUPPORTED_ON_SETUP_INTENTS;
            case 45:
                return TerminalErrorCode.OFFLINE_AND_CARD_EXPIRED;
            case 46:
                return TerminalErrorCode.OFFLINE_TRANSACTION_DECLINED;
            case 47:
                return TerminalErrorCode.OFFLINE_COLLECT_AND_CONFIRM_MISMATCH;
            case 48:
                return TerminalErrorCode.OFFLINE_TESTMODE_PAYMENT_IN_LIVEMODE;
            case 49:
                return TerminalErrorCode.OFFLINE_LIVEMODE_PAYMENT_IN_TESTMODE;
            case 50:
                return TerminalErrorCode.OFFLINE_PAYMENT_INTENT_NOT_FOUND;
            case 51:
                return TerminalErrorCode.MISSING_EMV_DATA;
            case 52:
                return TerminalErrorCode.CONNECTION_TOKEN_PROVIDER_ERROR_WHILE_FORWARDING;
            case 53:
                return TerminalErrorCode.ACCOUNT_ID_MISMATCH_WHILE_FORWARDING;
            case 54:
                return TerminalErrorCode.FORCE_OFFLINE_WITH_FEATURE_DISABLED;
            case 55:
                return TerminalErrorCode.NOT_CONNECTED_TO_INTERNET_AND_REQUIRE_ONLINE_SET;
            case 56:
                return TerminalErrorCode.TEST_CARD_IN_LIVEMODE;
            case 57:
                return TerminalErrorCode.COLLECT_INPUTS_APPLICATION_ERROR;
            case 58:
                return TerminalErrorCode.COLLECT_INPUTS_TIMED_OUT;
            case 59:
                return TerminalErrorCode.COLLECT_INPUTS_INVALID_PARAMETER;
            case 60:
                return TerminalErrorCode.COLLECT_INPUTS_UNSUPPORTED;
            case 61:
                return TerminalErrorCode.READER_SETTINGS_ERROR;
            case 62:
                return TerminalErrorCode.READER_MISSING_ENCRYPTION_KEYS;
            case 63:
                return TerminalErrorCode.READER_COMMUNICATION_SSL_ERROR;
            case 64:
                return TerminalErrorCode.INVALID_SURCHARGE_PARAMETER;
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    public static final TerminalException underlyingTerminalException(Throwable th) {
        TerminalException terminalExceptionUnderlyingTerminalException;
        Intrinsics.checkNotNullParameter(th, "<this>");
        if (th instanceof TerminalException) {
            Throwable cause = th.getCause();
            return (cause == null || (terminalExceptionUnderlyingTerminalException = underlyingTerminalException(cause)) == null) ? (TerminalException) th : terminalExceptionUnderlyingTerminalException;
        }
        Throwable cause2 = th.getCause();
        if (cause2 != null) {
            return underlyingTerminalException(cause2);
        }
        return null;
    }

    public static final TerminalException findTerminalExceptionOrWrap(Throwable th, TerminalErrorCode errorCode, String errorMessage) {
        Intrinsics.checkNotNullParameter(th, "<this>");
        Intrinsics.checkNotNullParameter(errorCode, "errorCode");
        Intrinsics.checkNotNullParameter(errorMessage, "errorMessage");
        TerminalException terminalExceptionUnderlyingTerminalException = underlyingTerminalException(th);
        return terminalExceptionUnderlyingTerminalException == null ? new TerminalException(errorCode, errorMessage, th, null, 8, null) : terminalExceptionUnderlyingTerminalException;
    }
}
