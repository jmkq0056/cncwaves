package com.stripe.kmpcore.jackrabbitclient;

import com.squareup.wire.Message;
import com.stripe.kmpcore.jackrabbitclient.CrpcResponse;
import com.stripe.kmpcore.jackrabbitclient.models.KmpTerminalException;
import com.stripe.proto.net.rpc.base.ApplicationEC;
import com.stripe.stripeterminal.external.models.TerminalErrorCode;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: compiled from: CrpcResponseExtensions.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\bÀ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001c\u0010\u0003\u001a\u00020\u0004*\u00020\u00052\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0007H\u0002J;\u0010\b\u001a\u0002H\t\"\u0012\b\u0000\u0010\t*\f\u0012\u0004\u0012\u0002H\t\u0012\u0002\b\u00030\n*\n\u0012\u0004\u0012\u0002H\t\u0018\u00010\u000b2\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\fJ+\u0010\r\u001a\u0002H\t\"\u0012\b\u0000\u0010\t*\f\u0012\u0004\u0012\u0002H\t\u0012\u0002\b\u00030\n*\n\u0012\u0004\u0012\u0002H\t\u0018\u00010\u000b¢\u0006\u0002\u0010\u000e¨\u0006\u000f"}, d2 = {"Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponseExtensions;", "", "()V", "disconnectIfCommunicationError", "", "Lcom/stripe/kmpcore/jackrabbitclient/models/KmpTerminalException;", "onUnexpectedDisconnect", "Lkotlin/Function0;", "ensureConnectedJackrabbitResponse", "T", "Lcom/squareup/wire/Message;", "Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponse;", "(Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponse;Lkotlin/jvm/functions/Function0;)Lcom/squareup/wire/Message;", "withJackrabbitResponse", "(Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponse;)Lcom/squareup/wire/Message;", "jackrabbitclient_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
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

    public final <T extends Message<T, ?>> T ensureConnectedJackrabbitResponse(CrpcResponse<T> crpcResponse, Function0<Unit> function0) throws KmpTerminalException {
        try {
            return (T) withJackrabbitResponse(crpcResponse);
        } catch (KmpTerminalException e) {
            disconnectIfCommunicationError(e, function0);
            throw e;
        }
    }

    private final void disconnectIfCommunicationError(KmpTerminalException kmpTerminalException, Function0<Unit> function0) {
        if (kmpTerminalException.getErrorCode() != TerminalErrorCode.READER_COMMUNICATION_ERROR || function0 == null) {
            return;
        }
        function0.invoke();
    }

    public final <T extends Message<T, ?>> T withJackrabbitResponse(CrpcResponse<T> crpcResponse) throws KmpTerminalException {
        TerminalErrorCode terminalErrorCode;
        if (crpcResponse instanceof CrpcResponse.Success) {
            return (T) ((CrpcResponse.Success) crpcResponse).getResponse();
        }
        if (crpcResponse instanceof CrpcResponse.ApplicationError) {
            CrpcResponse.ApplicationError applicationError = (CrpcResponse.ApplicationError) crpcResponse;
            if (applicationError.isCancellation()) {
                throw new KmpTerminalException(TerminalErrorCode.CANCELED, "Transaction is cancelled by the user.", null, 4, null);
            }
            switch (WhenMappings.$EnumSwitchMapping$0[applicationError.getCode().ordinal()]) {
                case 1:
                    terminalErrorCode = TerminalErrorCode.SESSION_EXPIRED;
                    break;
                case 2:
                    terminalErrorCode = TerminalErrorCode.READER_BUSY;
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
                    terminalErrorCode = TerminalErrorCode.UNEXPECTED_SDK_ERROR;
                    break;
                default:
                    throw new NoWhenBranchMatchedException();
            }
            throw new KmpTerminalException(terminalErrorCode, applicationError.getMessage(), null, 4, null);
        }
        if (!(crpcResponse instanceof CrpcResponse.RpcError)) {
            if (crpcResponse == null) {
                throw new KmpTerminalException(TerminalErrorCode.NOT_CONNECTED_TO_READER, "No active reader", null, 4, null);
            }
            throw new NoWhenBranchMatchedException();
        }
        CrpcResponse.RpcError rpcError = (CrpcResponse.RpcError) crpcResponse;
        if (rpcError.isRetryable()) {
            throw new KmpTerminalException(TerminalErrorCode.READER_COMMUNICATION_ERROR, rpcError.getMessage(), rpcError.getCause());
        }
        throw new KmpTerminalException(TerminalErrorCode.UNEXPECTED_SDK_ERROR, rpcError.getMessage(), rpcError.getCause());
    }
}
