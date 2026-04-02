package com.stripe.stripeterminal.internal.common.remotereadercontrollers;

import com.squareup.wire.Message;
import com.stripe.jvmcore.crpcclient.CrpcResponse;
import com.stripe.proto.net.rpc.base.ApplicationEC;
import com.stripe.stripeterminal.external.models.TerminalErrorCode;
import com.stripe.stripeterminal.external.models.TerminalException;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;

/* JADX INFO: compiled from: CrpcResponseExtensions.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÀ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J+\u0010\u0003\u001a\u0002H\u0004\"\u0012\b\u0000\u0010\u0004*\f\u0012\u0004\u0012\u0002H\u0004\u0012\u0002\b\u00030\u0005*\n\u0012\u0004\u0012\u0002H\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u0007J+\u0010\b\u001a\u0002H\u0004\"\u0012\b\u0000\u0010\u0004*\f\u0012\u0004\u0012\u0002H\u0004\u0012\u0002\b\u00030\u0005*\n\u0012\u0004\u0012\u0002H\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u0007¨\u0006\t"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/CrpcResponseExtensions;", "", "()V", "withJackrabbitResponse", "T", "Lcom/squareup/wire/Message;", "Lcom/stripe/jvmcore/crpcclient/CrpcResponse;", "(Lcom/stripe/jvmcore/crpcclient/CrpcResponse;)Lcom/squareup/wire/Message;", "withJackrabbitResponseForActivateReader", "common_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CrpcResponseExtensions {
    public static final CrpcResponseExtensions INSTANCE = new CrpcResponseExtensions();

    /* JADX INFO: compiled from: CrpcResponseExtensions.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ApplicationEC.values().length];
            try {
                iArr[ApplicationEC.INVALID_SESSION_TOKEN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ApplicationEC.READER_IN_USE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ApplicationEC.APPLICATION_EC_INVALID.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[ApplicationEC.OK.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[ApplicationEC.LOCK_RESOURCES_EXCEPTION.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[ApplicationEC.INVALID_LOAD_ID.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[ApplicationEC.ILLEGAL_STATE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[ApplicationEC.AUTHENTICATION_FAILURE.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[ApplicationEC.UNAUTHORIZED.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr[ApplicationEC.INVALID_REQUEST.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr[ApplicationEC.SERVER_ERROR.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr[ApplicationEC.TOO_MANY_REQUESTS.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                iArr[ApplicationEC.UNIMPLEMENTED.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                iArr[ApplicationEC.INVALID_CONFIG.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                iArr[ApplicationEC.ALREADY_EXISTS.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private CrpcResponseExtensions() {
    }

    public final <T extends Message<T, ?>> T withJackrabbitResponseForActivateReader(CrpcResponse<T> crpcResponse) throws TerminalException {
        try {
            return (T) withJackrabbitResponse(crpcResponse);
        } catch (TerminalException e) {
            if (crpcResponse instanceof CrpcResponse.ApplicationError) {
                throw ActivateReaderInvalidOfflineConnectionTokenException.INSTANCE.addInvalidOfflineConnectionTokenExceptionCauseIfNeeded(e, (CrpcResponse.ApplicationError) crpcResponse);
            }
            throw e;
        }
    }

    public final <T extends Message<T, ?>> T withJackrabbitResponse(CrpcResponse<T> crpcResponse) throws TerminalException {
        TerminalErrorCode terminalErrorCode;
        TerminalErrorCode terminalErrorCode2;
        if (crpcResponse instanceof CrpcResponse.Success) {
            return (T) ((CrpcResponse.Success) crpcResponse).getResponse();
        }
        if (crpcResponse instanceof CrpcResponse.ApplicationError) {
            CrpcResponse.ApplicationError applicationError = (CrpcResponse.ApplicationError) crpcResponse;
            if (applicationError.isCancellation()) {
                throw new TerminalException(TerminalErrorCode.CANCELED, "Transaction is cancelled by the user.", null, null, 12, null);
            }
            switch (WhenMappings.$EnumSwitchMapping$0[applicationError.getCode().ordinal()]) {
                case 1:
                    terminalErrorCode2 = TerminalErrorCode.SESSION_EXPIRED;
                    break;
                case 2:
                    terminalErrorCode2 = TerminalErrorCode.READER_BUSY;
                    break;
                case 3:
                case 4:
                case 5:
                case 6:
                case 7:
                case 8:
                case 9:
                case 10:
                case 11:
                case 12:
                case 13:
                case 14:
                case 15:
                    terminalErrorCode2 = TerminalErrorCode.UNEXPECTED_SDK_ERROR;
                    break;
                default:
                    throw new NoWhenBranchMatchedException();
            }
            throw new TerminalException(terminalErrorCode2, applicationError.getMessage(), null, null, 12, null);
        }
        if (!(crpcResponse instanceof CrpcResponse.RpcError)) {
            if (crpcResponse == null) {
                throw new TerminalException(TerminalErrorCode.NOT_CONNECTED_TO_READER, "No active reader", null, null, 12, null);
            }
            throw new NoWhenBranchMatchedException();
        }
        CrpcResponse.RpcError rpcError = (CrpcResponse.RpcError) crpcResponse;
        if (rpcError.isSSLError()) {
            terminalErrorCode = TerminalErrorCode.READER_COMMUNICATION_SSL_ERROR;
        } else {
            terminalErrorCode = rpcError.isRetryable() ? TerminalErrorCode.READER_COMMUNICATION_ERROR : TerminalErrorCode.UNEXPECTED_SDK_ERROR;
        }
        throw new TerminalException(terminalErrorCode, rpcError.getMessage(), rpcError.getCause(), null, 8, null);
    }
}
