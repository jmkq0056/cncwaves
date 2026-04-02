package com.stripe.stripeterminal.internal.common.extensions;

import com.stripe.proto.api.sdk.ConfirmPaymentResponse;
import com.stripe.proto.api.sdk.CreatePaymentIntentOptions;
import com.stripe.proto.api.sdk.OfflinePaymentDetails;
import com.stripe.proto.api.sdk.OfflineStats;
import com.stripe.proto.model.rest.PaymentIntent;
import com.stripe.stripeterminal.external.models.OfflineBehavior;
import com.stripe.stripeterminal.external.models.OfflineDetails;
import com.stripe.stripeterminal.external.models.TerminalException;
import com.stripe.stripeterminal.internal.common.proto.ProtoConverter;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ConfirmPaymentResponseExtensions.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\u0006B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\n\u0010\u0003\u001a\u00020\u0004*\u00020\u0005¨\u0006\u0007"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmPaymentResponseExtensions;", "", "()V", "toResult", "Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmPaymentResponseExtensions$ConfirmPaymentResponseResult;", "Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;", "ConfirmPaymentResponseResult", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ConfirmPaymentResponseExtensions {
    public static final ConfirmPaymentResponseExtensions INSTANCE = new ConfirmPaymentResponseExtensions();

    private ConfirmPaymentResponseExtensions() {
    }

    public final ConfirmPaymentResponseResult toResult(ConfirmPaymentResponse confirmPaymentResponse) {
        OfflineBehavior offlineBehavior;
        Intrinsics.checkNotNullParameter(confirmPaymentResponse, "<this>");
        PaymentIntent paymentIntent = confirmPaymentResponse.confirmed_payment_intent;
        if (paymentIntent != null) {
            String str = paymentIntent.id;
            String str2 = str;
            String str3 = (str2 == null || str2.length() == 0) ? null : str;
            OfflinePaymentDetails offlinePaymentDetails = confirmPaymentResponse.offline_details;
            OfflineDetails sdkOfflineDetails = offlinePaymentDetails != null ? ProtoConverter.INSTANCE.toSdkOfflineDetails(offlinePaymentDetails) : null;
            com.stripe.stripeterminal.external.models.PaymentIntent paymentIntentCopy$default = com.stripe.stripeterminal.external.models.PaymentIntent.copy$default(ProtoConverter.INSTANCE.toSdkPaymentIntent(paymentIntent), str3, 0L, 0L, 0L, null, 0L, 0L, null, null, null, null, null, 0L, null, null, null, null, null, false, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, -2, 15, null);
            paymentIntentCopy$default.setOfflineDetails(sdkOfflineDetails);
            CreatePaymentIntentOptions.OfflineBehavior offlineBehavior2 = confirmPaymentResponse.offline_behavior;
            if (offlineBehavior2 == null || (offlineBehavior = OfflineBehaviorExtensionsKt.toOfflineBehavior(offlineBehavior2)) == null) {
                offlineBehavior = OfflineBehavior.PREFER_ONLINE;
            }
            paymentIntentCopy$default.setOfflineBehavior(offlineBehavior);
            return new ConfirmPaymentResponseResult.Success(paymentIntentCopy$default, confirmPaymentResponse.offline_stats);
        }
        return new ConfirmPaymentResponseResult.Error(TerminalExceptionExtensionsKt.convertJackRabbitConfirmErrorToTerminalException(confirmPaymentResponse.decline_response, confirmPaymentResponse.confirm_error), confirmPaymentResponse.offline_stats);
    }

    /* JADX INFO: compiled from: ConfirmPaymentResponseExtensions.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0002\u0007\bB\u0007\b\u0004¢\u0006\u0002\u0010\u0002R\u0014\u0010\u0003\u001a\u0004\u0018\u00010\u0004X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006\u0082\u0001\u0002\t\n¨\u0006\u000b"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmPaymentResponseExtensions$ConfirmPaymentResponseResult;", "", "()V", "offlineStats", "Lcom/stripe/proto/api/sdk/OfflineStats;", "getOfflineStats", "()Lcom/stripe/proto/api/sdk/OfflineStats;", "Error", "Success", "Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmPaymentResponseExtensions$ConfirmPaymentResponseResult$Error;", "Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmPaymentResponseExtensions$ConfirmPaymentResponseResult$Success;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static abstract class ConfirmPaymentResponseResult {
        public /* synthetic */ ConfirmPaymentResponseResult(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public abstract OfflineStats getOfflineStats();

        private ConfirmPaymentResponseResult() {
        }

        /* JADX INFO: compiled from: ConfirmPaymentResponseExtensions.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\f\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u001f\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001R\u0016\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0016"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmPaymentResponseExtensions$ConfirmPaymentResponseResult$Success;", "Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmPaymentResponseExtensions$ConfirmPaymentResponseResult;", "paymentIntent", "Lcom/stripe/stripeterminal/external/models/PaymentIntent;", "offlineStats", "Lcom/stripe/proto/api/sdk/OfflineStats;", "(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/proto/api/sdk/OfflineStats;)V", "getOfflineStats", "()Lcom/stripe/proto/api/sdk/OfflineStats;", "getPaymentIntent", "()Lcom/stripe/stripeterminal/external/models/PaymentIntent;", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class Success extends ConfirmPaymentResponseResult {
            private final OfflineStats offlineStats;
            private final com.stripe.stripeterminal.external.models.PaymentIntent paymentIntent;

            public static /* synthetic */ Success copy$default(Success success, com.stripe.stripeterminal.external.models.PaymentIntent paymentIntent, OfflineStats offlineStats, int i, Object obj) {
                if ((i & 1) != 0) {
                    paymentIntent = success.paymentIntent;
                }
                if ((i & 2) != 0) {
                    offlineStats = success.offlineStats;
                }
                return success.copy(paymentIntent, offlineStats);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final com.stripe.stripeterminal.external.models.PaymentIntent getPaymentIntent() {
                return this.paymentIntent;
            }

            /* JADX INFO: renamed from: component2, reason: from getter */
            public final OfflineStats getOfflineStats() {
                return this.offlineStats;
            }

            public final Success copy(com.stripe.stripeterminal.external.models.PaymentIntent paymentIntent, OfflineStats offlineStats) {
                Intrinsics.checkNotNullParameter(paymentIntent, "paymentIntent");
                return new Success(paymentIntent, offlineStats);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof Success)) {
                    return false;
                }
                Success success = (Success) other;
                return Intrinsics.areEqual(this.paymentIntent, success.paymentIntent) && Intrinsics.areEqual(this.offlineStats, success.offlineStats);
            }

            public int hashCode() {
                int iHashCode = this.paymentIntent.hashCode() * 31;
                OfflineStats offlineStats = this.offlineStats;
                return iHashCode + (offlineStats == null ? 0 : offlineStats.hashCode());
            }

            public String toString() {
                return "Success(paymentIntent=" + this.paymentIntent + ", offlineStats=" + this.offlineStats + ')';
            }

            public final com.stripe.stripeterminal.external.models.PaymentIntent getPaymentIntent() {
                return this.paymentIntent;
            }

            @Override // com.stripe.stripeterminal.internal.common.extensions.ConfirmPaymentResponseExtensions.ConfirmPaymentResponseResult
            public OfflineStats getOfflineStats() {
                return this.offlineStats;
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Success(com.stripe.stripeterminal.external.models.PaymentIntent paymentIntent, OfflineStats offlineStats) {
                super(null);
                Intrinsics.checkNotNullParameter(paymentIntent, "paymentIntent");
                this.paymentIntent = paymentIntent;
                this.offlineStats = offlineStats;
            }
        }

        /* JADX INFO: compiled from: ConfirmPaymentResponseExtensions.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\f\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u001f\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0016\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0016"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmPaymentResponseExtensions$ConfirmPaymentResponseResult$Error;", "Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmPaymentResponseExtensions$ConfirmPaymentResponseResult;", "exception", "Lcom/stripe/stripeterminal/external/models/TerminalException;", "offlineStats", "Lcom/stripe/proto/api/sdk/OfflineStats;", "(Lcom/stripe/stripeterminal/external/models/TerminalException;Lcom/stripe/proto/api/sdk/OfflineStats;)V", "getException", "()Lcom/stripe/stripeterminal/external/models/TerminalException;", "getOfflineStats", "()Lcom/stripe/proto/api/sdk/OfflineStats;", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class Error extends ConfirmPaymentResponseResult {
            private final TerminalException exception;
            private final OfflineStats offlineStats;

            public static /* synthetic */ Error copy$default(Error error, TerminalException terminalException, OfflineStats offlineStats, int i, Object obj) {
                if ((i & 1) != 0) {
                    terminalException = error.exception;
                }
                if ((i & 2) != 0) {
                    offlineStats = error.offlineStats;
                }
                return error.copy(terminalException, offlineStats);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final TerminalException getException() {
                return this.exception;
            }

            /* JADX INFO: renamed from: component2, reason: from getter */
            public final OfflineStats getOfflineStats() {
                return this.offlineStats;
            }

            public final Error copy(TerminalException exception, OfflineStats offlineStats) {
                Intrinsics.checkNotNullParameter(exception, "exception");
                return new Error(exception, offlineStats);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof Error)) {
                    return false;
                }
                Error error = (Error) other;
                return Intrinsics.areEqual(this.exception, error.exception) && Intrinsics.areEqual(this.offlineStats, error.offlineStats);
            }

            public int hashCode() {
                int iHashCode = this.exception.hashCode() * 31;
                OfflineStats offlineStats = this.offlineStats;
                return iHashCode + (offlineStats == null ? 0 : offlineStats.hashCode());
            }

            public String toString() {
                return "Error(exception=" + this.exception + ", offlineStats=" + this.offlineStats + ')';
            }

            public final TerminalException getException() {
                return this.exception;
            }

            @Override // com.stripe.stripeterminal.internal.common.extensions.ConfirmPaymentResponseExtensions.ConfirmPaymentResponseResult
            public OfflineStats getOfflineStats() {
                return this.offlineStats;
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Error(TerminalException exception, OfflineStats offlineStats) {
                super(null);
                Intrinsics.checkNotNullParameter(exception, "exception");
                this.exception = exception;
                this.offlineStats = offlineStats;
            }
        }
    }
}
