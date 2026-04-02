package com.stripe.kmpcore.jackrabbitclient;

import com.squareup.wire.Message;
import com.stripe.proto.api.sdk.QueryCollectDataResponse;
import com.stripe.proto.api.sdk.QueryPaymentIntentNextActionsResponse;
import com.stripe.proto.api.sdk.QueryPaymentMethodResponse;
import com.stripe.proto.net.rpc.base.ApplicationEC;
import com.stripe.proto.net.rpc.base.RpcEC;
import java.util.Set;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.SetsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CrpcResponse.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u0000 \u000e*\u0012\b\u0000\u0010\u0001*\f\u0012\u0004\u0012\u0002H\u0001\u0012\u0002\b\u00030\u00022\u00020\u0003:\u0004\r\u000e\u000f\u0010B\u0011\b\u0004\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\n\u001a\u00020\u000bH&J\b\u0010\f\u001a\u00020\u000bH\u0016R\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\n\n\u0002\u0010\t\u001a\u0004\b\u0007\u0010\b\u0082\u0001\u0003\u0011\u0012\u0013¨\u0006\u0014"}, d2 = {"Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponse;", "M", "Lcom/squareup/wire/Message;", "", "durationMillis", "", "(Ljava/lang/Long;)V", "getDurationMillis", "()Ljava/lang/Long;", "Ljava/lang/Long;", "toLogString", "", "toString", "ApplicationError", "Companion", "RpcError", "Success", "Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponse$ApplicationError;", "Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponse$RpcError;", "Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponse$Success;", "jackrabbitclient_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public abstract class CrpcResponse<M extends Message<M, ?>> {
    public static final String ERR_MSG_USER_CANCELLED = "Transaction is cancelled by the user.";
    private final Long durationMillis;

    public /* synthetic */ CrpcResponse(Long l, DefaultConstructorMarker defaultConstructorMarker) {
        this(l);
    }

    public abstract String toLogString();

    private CrpcResponse(Long l) {
        this.durationMillis = l;
    }

    public final Long getDurationMillis() {
        return this.durationMillis;
    }

    public String toString() {
        return toLogString();
    }

    /* JADX INFO: compiled from: CrpcResponse.kt */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0000\u0018\u0000*\u0012\b\u0001\u0010\u0001*\f\u0012\u0004\u0012\u0002H\u0001\u0012\u0002\b\u00030\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003B\u0019\u0012\u0006\u0010\u0004\u001a\u00028\u0001\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u0007J\b\u0010\u000b\u001a\u00020\fH\u0016R\u0013\u0010\u0004\u001a\u00028\u0001¢\u0006\n\n\u0002\u0010\n\u001a\u0004\b\b\u0010\t¨\u0006\r"}, d2 = {"Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponse$Success;", "M", "Lcom/squareup/wire/Message;", "Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponse;", "response", "durationMillis", "", "(Lcom/squareup/wire/Message;Ljava/lang/Long;)V", "getResponse", "()Lcom/squareup/wire/Message;", "Lcom/squareup/wire/Message;", "toLogString", "", "jackrabbitclient_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Success<M extends Message<M, ?>> extends CrpcResponse<M> {
        private final M response;

        public /* synthetic */ Success(Message message, Long l, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(message, (i & 2) != 0 ? null : l);
        }

        public final M getResponse() {
            return this.response;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Success(M response, Long l) {
            super(l, null);
            Intrinsics.checkNotNullParameter(response, "response");
            this.response = response;
        }

        @Override // com.stripe.kmpcore.jackrabbitclient.CrpcResponse
        public String toLogString() {
            return "response=" + this.response;
        }
    }

    /* JADX INFO: compiled from: CrpcResponse.kt */
    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\"\n\u0002\b\u0002\u0018\u0000*\u0012\b\u0001\u0010\u0001*\f\u0012\u0004\u0012\u0002H\u0001\u0012\u0002\b\u00030\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003B#\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010\nJ\b\u0010\u0015\u001a\u00020\u0007H\u0016R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\r\u001a\u00020\u000e8F¢\u0006\u0006\u001a\u0004\b\r\u0010\u000fR\u0011\u0010\u0010\u001a\u00020\u000e8F¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u000fR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0014\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00070\u0014X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponse$ApplicationError;", "M", "Lcom/squareup/wire/Message;", "Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponse;", "code", "Lcom/stripe/proto/net/rpc/base/ApplicationEC;", "message", "", "durationMillis", "", "(Lcom/stripe/proto/net/rpc/base/ApplicationEC;Ljava/lang/String;Ljava/lang/Long;)V", "getCode", "()Lcom/stripe/proto/net/rpc/base/ApplicationEC;", "isAuthError", "", "()Z", "isCancellation", "getMessage", "()Ljava/lang/String;", "setOfExpectedCanceledStrings", "", "toLogString", "jackrabbitclient_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class ApplicationError<M extends Message<M, ?>> extends CrpcResponse<M> {
        private final ApplicationEC code;
        private final String message;
        private final Set<String> setOfExpectedCanceledStrings;

        /* JADX INFO: compiled from: CrpcResponse.kt */
        @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
        public /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[ApplicationEC.values().length];
                try {
                    iArr[ApplicationEC.UNAUTHORIZED.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[ApplicationEC.INVALID_SESSION_TOKEN.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[ApplicationEC.AUTHENTICATION_FAILURE.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        public final ApplicationEC getCode() {
            return this.code;
        }

        public /* synthetic */ ApplicationError(ApplicationEC applicationEC, String str, Long l, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(applicationEC, (i & 2) != 0 ? "" : str, (i & 4) != 0 ? null : l);
        }

        public final String getMessage() {
            return this.message;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ApplicationError(ApplicationEC code, String message, Long l) {
            super(l, null);
            Intrinsics.checkNotNullParameter(code, "code");
            Intrinsics.checkNotNullParameter(message, "message");
            this.code = code;
            this.message = message;
            this.setOfExpectedCanceledStrings = SetsKt.setOf((Object[]) new String[]{QueryPaymentMethodResponse.PaymentRequestStatus.PAYMENT_CANCELED.toString(), QueryPaymentIntentNextActionsResponse.ActionStatus.ACTION_CANCELED.toString(), QueryCollectDataResponse.QueryCollectDataStatus.CANCELED.toString(), "Transaction is cancelled by the user."});
        }

        @Override // com.stripe.kmpcore.jackrabbitclient.CrpcResponse
        public String toLogString() {
            return "code=" + this.code + " message=" + this.message;
        }

        public final boolean isAuthError() {
            int i = WhenMappings.$EnumSwitchMapping$0[this.code.ordinal()];
            return i == 1 || i == 2 || i == 3;
        }

        public final boolean isCancellation() {
            return this.code == ApplicationEC.ILLEGAL_STATE && this.setOfExpectedCanceledStrings.contains(this.message);
        }
    }

    /* JADX INFO: compiled from: CrpcResponse.kt */
    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0006\u0018\u0000*\u0012\b\u0001\u0010\u0001*\f\u0012\u0004\u0012\u0002H\u0001\u0012\u0002\b\u00030\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003B/\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\u0002\u0010\fJ\b\u0010\u0017\u001a\u00020\u0007H\u0016R\u0013\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0011\u001a\u00020\u00128F¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u0013R\u0011\u0010\u0014\u001a\u00020\u00128F¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0013R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016¨\u0006\u0018"}, d2 = {"Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponse$RpcError;", "M", "Lcom/squareup/wire/Message;", "Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponse;", "code", "Lcom/stripe/proto/net/rpc/base/RpcEC;", "message", "", "durationMillis", "", "cause", "", "(Lcom/stripe/proto/net/rpc/base/RpcEC;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Throwable;)V", "getCause", "()Ljava/lang/Throwable;", "getCode", "()Lcom/stripe/proto/net/rpc/base/RpcEC;", "isNetworkError", "", "()Z", "isRetryable", "getMessage", "()Ljava/lang/String;", "toLogString", "jackrabbitclient_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class RpcError<M extends Message<M, ?>> extends CrpcResponse<M> {
        private final Throwable cause;
        private final RpcEC code;
        private final String message;

        /* JADX INFO: compiled from: CrpcResponse.kt */
        @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
        public /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[RpcEC.values().length];
                try {
                    iArr[RpcEC.BAD_REQUEST.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[RpcEC.RPC_ERROR.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[RpcEC.RPC_EC_INVALID.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                try {
                    iArr[RpcEC.RPC_OK.ordinal()] = 4;
                } catch (NoSuchFieldError unused4) {
                }
                try {
                    iArr[RpcEC.NETWORK_UNAVAILABLE.ordinal()] = 5;
                } catch (NoSuchFieldError unused5) {
                }
                try {
                    iArr[RpcEC.SERVER_UNRESOLVABLE.ordinal()] = 6;
                } catch (NoSuchFieldError unused6) {
                }
                try {
                    iArr[RpcEC.SERVER_UNREACHABLE.ordinal()] = 7;
                } catch (NoSuchFieldError unused7) {
                }
                try {
                    iArr[RpcEC.BAD_RESPONSE.ordinal()] = 8;
                } catch (NoSuchFieldError unused8) {
                }
                try {
                    iArr[RpcEC.TIMEOUT.ordinal()] = 9;
                } catch (NoSuchFieldError unused9) {
                }
                try {
                    iArr[RpcEC.RETRY.ordinal()] = 10;
                } catch (NoSuchFieldError unused10) {
                }
                try {
                    iArr[RpcEC.SERVER_BUSY.ordinal()] = 11;
                } catch (NoSuchFieldError unused11) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        public final RpcEC getCode() {
            return this.code;
        }

        public /* synthetic */ RpcError(RpcEC rpcEC, String str, Long l, Throwable th, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(rpcEC, (i & 2) != 0 ? "" : str, (i & 4) != 0 ? null : l, (i & 8) != 0 ? null : th);
        }

        public final String getMessage() {
            return this.message;
        }

        public final Throwable getCause() {
            return this.cause;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public RpcError(RpcEC code, String message, Long l, Throwable th) {
            super(l, null);
            Intrinsics.checkNotNullParameter(code, "code");
            Intrinsics.checkNotNullParameter(message, "message");
            this.code = code;
            this.message = message;
            this.cause = th;
        }

        @Override // com.stripe.kmpcore.jackrabbitclient.CrpcResponse
        public String toLogString() {
            return "code=" + this.code + " message=" + this.message;
        }

        public final boolean isRetryable() {
            switch (WhenMappings.$EnumSwitchMapping$0[this.code.ordinal()]) {
                case 1:
                case 2:
                case 3:
                    return false;
                case 4:
                case 5:
                case 6:
                case 7:
                case 8:
                case 9:
                case 10:
                case 11:
                    return true;
                default:
                    throw new NoWhenBranchMatchedException();
            }
        }

        public final boolean isNetworkError() {
            int i = WhenMappings.$EnumSwitchMapping$0[this.code.ordinal()];
            return i == 5 || i == 7 || i == 9;
        }
    }
}
