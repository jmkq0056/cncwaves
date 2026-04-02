package com.stripe.stripeterminal.internal.common.extensions;

import com.stripe.proto.api.sdk.CreatePaymentIntentOptions;
import com.stripe.proto.api.sdk.CreatePaymentIntentResponse;
import com.stripe.proto.api.sdk.OfflinePaymentDetails;
import com.stripe.stripeterminal.external.models.OfflineBehavior;
import com.stripe.stripeterminal.external.models.PaymentIntent;
import com.stripe.stripeterminal.external.models.TerminalException;
import com.stripe.stripeterminal.internal.common.proto.ProtoConverter;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CreatePaymentIntentResponseExtensions.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\u0006B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\n\u0010\u0003\u001a\u00020\u0004*\u00020\u0005¨\u0006\u0007"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/extensions/CreatePaymentIntentResponseExtensions;", "", "()V", "toResult", "Lcom/stripe/stripeterminal/internal/common/extensions/CreatePaymentIntentResponseExtensions$CreatePaymentIntentResponseResult;", "Lcom/stripe/proto/api/sdk/CreatePaymentIntentResponse;", "CreatePaymentIntentResponseResult", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CreatePaymentIntentResponseExtensions {
    public static final CreatePaymentIntentResponseExtensions INSTANCE = new CreatePaymentIntentResponseExtensions();

    private CreatePaymentIntentResponseExtensions() {
    }

    public final CreatePaymentIntentResponseResult toResult(CreatePaymentIntentResponse createPaymentIntentResponse) {
        PaymentIntent sdkPaymentIntent;
        OfflineBehavior offlineBehavior;
        CreatePaymentIntentOptions.OfflineBehavior offlineBehavior2;
        Intrinsics.checkNotNullParameter(createPaymentIntentResponse, "<this>");
        com.stripe.proto.model.rest.PaymentIntent paymentIntent = createPaymentIntentResponse.payment_intent;
        if (paymentIntent != null && (sdkPaymentIntent = ProtoConverter.INSTANCE.toSdkPaymentIntent(paymentIntent)) != null) {
            String id = sdkPaymentIntent.getId();
            String str = id;
            PaymentIntent paymentIntentCopy$default = PaymentIntent.copy$default(sdkPaymentIntent, (str == null || str.length() == 0) ? null : id, 0L, 0L, 0L, null, 0L, 0L, null, null, null, null, null, 0L, null, null, null, null, null, false, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, -2, 15, null);
            CreatePaymentIntentOptions createPaymentIntentOptions = createPaymentIntentResponse.options;
            if (createPaymentIntentOptions == null || (offlineBehavior2 = createPaymentIntentOptions.offline_behavior) == null || (offlineBehavior = OfflineBehaviorExtensionsKt.toOfflineBehavior(offlineBehavior2)) == null) {
                offlineBehavior = OfflineBehavior.REQUIRE_ONLINE;
            }
            paymentIntentCopy$default.setOfflineBehavior(offlineBehavior);
            OfflinePaymentDetails offlinePaymentDetails = createPaymentIntentResponse.offline_details;
            paymentIntentCopy$default.setOfflineDetails(offlinePaymentDetails != null ? ProtoConverter.INSTANCE.toSdkOfflineDetails(offlinePaymentDetails) : null);
            return new CreatePaymentIntentResponseResult.Success(paymentIntentCopy$default);
        }
        return new CreatePaymentIntentResponseResult.Error(TerminalExceptionExtensionsKt.convertJackRabbitErrorToTerminalException(createPaymentIntentResponse.decline_response, createPaymentIntentResponse.error));
    }

    /* JADX INFO: compiled from: CreatePaymentIntentResponseExtensions.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0002\u0003\u0004B\u0007\b\u0004¢\u0006\u0002\u0010\u0002\u0082\u0001\u0002\u0005\u0006¨\u0006\u0007"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/extensions/CreatePaymentIntentResponseExtensions$CreatePaymentIntentResponseResult;", "", "()V", "Error", "Success", "Lcom/stripe/stripeterminal/internal/common/extensions/CreatePaymentIntentResponseExtensions$CreatePaymentIntentResponseResult$Error;", "Lcom/stripe/stripeterminal/internal/common/extensions/CreatePaymentIntentResponseExtensions$CreatePaymentIntentResponseResult$Success;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static abstract class CreatePaymentIntentResponseResult {
        public /* synthetic */ CreatePaymentIntentResponseResult(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: compiled from: CreatePaymentIntentResponseExtensions.kt */
        @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0011"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/extensions/CreatePaymentIntentResponseExtensions$CreatePaymentIntentResponseResult$Success;", "Lcom/stripe/stripeterminal/internal/common/extensions/CreatePaymentIntentResponseExtensions$CreatePaymentIntentResponseResult;", "paymentIntent", "Lcom/stripe/stripeterminal/external/models/PaymentIntent;", "(Lcom/stripe/stripeterminal/external/models/PaymentIntent;)V", "getPaymentIntent", "()Lcom/stripe/stripeterminal/external/models/PaymentIntent;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class Success extends CreatePaymentIntentResponseResult {
            private final PaymentIntent paymentIntent;

            public static /* synthetic */ Success copy$default(Success success, PaymentIntent paymentIntent, int i, Object obj) {
                if ((i & 1) != 0) {
                    paymentIntent = success.paymentIntent;
                }
                return success.copy(paymentIntent);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final PaymentIntent getPaymentIntent() {
                return this.paymentIntent;
            }

            public final Success copy(PaymentIntent paymentIntent) {
                Intrinsics.checkNotNullParameter(paymentIntent, "paymentIntent");
                return new Success(paymentIntent);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                return (other instanceof Success) && Intrinsics.areEqual(this.paymentIntent, ((Success) other).paymentIntent);
            }

            public int hashCode() {
                return this.paymentIntent.hashCode();
            }

            public String toString() {
                return "Success(paymentIntent=" + this.paymentIntent + ')';
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Success(PaymentIntent paymentIntent) {
                super(null);
                Intrinsics.checkNotNullParameter(paymentIntent, "paymentIntent");
                this.paymentIntent = paymentIntent;
            }

            public final PaymentIntent getPaymentIntent() {
                return this.paymentIntent;
            }
        }

        private CreatePaymentIntentResponseResult() {
        }

        /* JADX INFO: compiled from: CreatePaymentIntentResponseExtensions.kt */
        @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0011"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/extensions/CreatePaymentIntentResponseExtensions$CreatePaymentIntentResponseResult$Error;", "Lcom/stripe/stripeterminal/internal/common/extensions/CreatePaymentIntentResponseExtensions$CreatePaymentIntentResponseResult;", "exception", "Lcom/stripe/stripeterminal/external/models/TerminalException;", "(Lcom/stripe/stripeterminal/external/models/TerminalException;)V", "getException", "()Lcom/stripe/stripeterminal/external/models/TerminalException;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class Error extends CreatePaymentIntentResponseResult {
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
