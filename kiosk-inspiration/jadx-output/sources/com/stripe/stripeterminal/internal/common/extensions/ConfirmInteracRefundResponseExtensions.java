package com.stripe.stripeterminal.internal.common.extensions;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.stripe.proto.api.sdk.ConfirmInteracRefundResponse;
import com.stripe.proto.model.rest.Refund;
import com.stripe.stripeterminal.external.models.TerminalException;
import com.stripe.stripeterminal.internal.common.proto.ProtoConverter;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ConfirmInteracRefundResponseExtensions.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\u0006B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\n\u0010\u0003\u001a\u00020\u0004*\u00020\u0005¨\u0006\u0007"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmInteracRefundResponseExtensions;", "", "()V", "toResult", "Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmInteracRefundResponseExtensions$ConfirmInteracRefundResponseResult;", "Lcom/stripe/proto/api/sdk/ConfirmInteracRefundResponse;", "ConfirmInteracRefundResponseResult", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ConfirmInteracRefundResponseExtensions {
    public static final ConfirmInteracRefundResponseExtensions INSTANCE = new ConfirmInteracRefundResponseExtensions();

    private ConfirmInteracRefundResponseExtensions() {
    }

    public final ConfirmInteracRefundResponseResult toResult(ConfirmInteracRefundResponse confirmInteracRefundResponse) {
        Intrinsics.checkNotNullParameter(confirmInteracRefundResponse, "<this>");
        Refund refund = confirmInteracRefundResponse.interac_refund;
        if (refund != null) {
            return new ConfirmInteracRefundResponseResult.Success(ProtoConverter.INSTANCE.toSdkRefund(refund));
        }
        return new ConfirmInteracRefundResponseResult.Error(TerminalExceptionExtensionsKt.convertJackRabbitConfirmErrorToTerminalException(confirmInteracRefundResponse.decline_response, confirmInteracRefundResponse.confirm_error));
    }

    /* JADX INFO: compiled from: ConfirmInteracRefundResponseExtensions.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0002\u0003\u0004B\u0007\b\u0004¢\u0006\u0002\u0010\u0002\u0082\u0001\u0002\u0005\u0006¨\u0006\u0007"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmInteracRefundResponseExtensions$ConfirmInteracRefundResponseResult;", "", "()V", "Error", "Success", "Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmInteracRefundResponseExtensions$ConfirmInteracRefundResponseResult$Error;", "Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmInteracRefundResponseExtensions$ConfirmInteracRefundResponseResult$Success;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static abstract class ConfirmInteracRefundResponseResult {
        public /* synthetic */ ConfirmInteracRefundResponseResult(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: compiled from: ConfirmInteracRefundResponseExtensions.kt */
        @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0011"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmInteracRefundResponseExtensions$ConfirmInteracRefundResponseResult$Success;", "Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmInteracRefundResponseExtensions$ConfirmInteracRefundResponseResult;", FirebaseAnalytics.Event.REFUND, "Lcom/stripe/stripeterminal/external/models/Refund;", "(Lcom/stripe/stripeterminal/external/models/Refund;)V", "getRefund", "()Lcom/stripe/stripeterminal/external/models/Refund;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class Success extends ConfirmInteracRefundResponseResult {
            private final com.stripe.stripeterminal.external.models.Refund refund;

            public static /* synthetic */ Success copy$default(Success success, com.stripe.stripeterminal.external.models.Refund refund, int i, Object obj) {
                if ((i & 1) != 0) {
                    refund = success.refund;
                }
                return success.copy(refund);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final com.stripe.stripeterminal.external.models.Refund getRefund() {
                return this.refund;
            }

            public final Success copy(com.stripe.stripeterminal.external.models.Refund refund) {
                Intrinsics.checkNotNullParameter(refund, "refund");
                return new Success(refund);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                return (other instanceof Success) && Intrinsics.areEqual(this.refund, ((Success) other).refund);
            }

            public int hashCode() {
                return this.refund.hashCode();
            }

            public String toString() {
                return "Success(refund=" + this.refund + ')';
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Success(com.stripe.stripeterminal.external.models.Refund refund) {
                super(null);
                Intrinsics.checkNotNullParameter(refund, "refund");
                this.refund = refund;
            }

            public final com.stripe.stripeterminal.external.models.Refund getRefund() {
                return this.refund;
            }
        }

        private ConfirmInteracRefundResponseResult() {
        }

        /* JADX INFO: compiled from: ConfirmInteracRefundResponseExtensions.kt */
        @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0011"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmInteracRefundResponseExtensions$ConfirmInteracRefundResponseResult$Error;", "Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmInteracRefundResponseExtensions$ConfirmInteracRefundResponseResult;", "exception", "Lcom/stripe/stripeterminal/external/models/TerminalException;", "(Lcom/stripe/stripeterminal/external/models/TerminalException;)V", "getException", "()Lcom/stripe/stripeterminal/external/models/TerminalException;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class Error extends ConfirmInteracRefundResponseResult {
            private final TerminalException exception;

            public static /* synthetic */ Error copy$default(Error error, TerminalException terminalException, int i, Object obj) {
                if ((i & 1) != 0) {
                    terminalException = error.exception;
                }
                return error.copy(terminalException);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final TerminalException getException() {
                return this.exception;
            }

            public final Error copy(TerminalException exception) {
                Intrinsics.checkNotNullParameter(exception, "exception");
                return new Error(exception);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                return (other instanceof Error) && Intrinsics.areEqual(this.exception, ((Error) other).exception);
            }

            public int hashCode() {
                return this.exception.hashCode();
            }

            public String toString() {
                return "Error(exception=" + this.exception + ')';
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Error(TerminalException exception) {
                super(null);
                Intrinsics.checkNotNullParameter(exception, "exception");
                this.exception = exception;
            }

            public final TerminalException getException() {
                return this.exception;
            }
        }
    }
}
