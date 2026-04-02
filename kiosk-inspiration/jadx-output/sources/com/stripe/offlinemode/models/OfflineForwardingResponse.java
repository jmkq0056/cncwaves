package com.stripe.offlinemode.models;

import com.stripe.proto.model.rest.PaymentIntent;
import com.stripe.proto.model.rest.SetupIntent;
import com.stripe.stripeterminal.external.models.TerminalException;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: OfflineForwardingResponse.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0005\u0007\b\t\n\u000bB\u000f\b\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006\u0082\u0001\u0003\f\r\u000e¨\u0006\u000f"}, d2 = {"Lcom/stripe/offlinemode/models/OfflineForwardingResponse;", "", "request", "Lcom/stripe/offlinemode/models/OfflineForwardingRequest;", "(Lcom/stripe/offlinemode/models/OfflineForwardingRequest;)V", "getRequest", "()Lcom/stripe/offlinemode/models/OfflineForwardingRequest;", "Cancel", "Failure", "PaymentIntentSuccess", "SetupIntentSuccess", "Success", "Lcom/stripe/offlinemode/models/OfflineForwardingResponse$Cancel;", "Lcom/stripe/offlinemode/models/OfflineForwardingResponse$Failure;", "Lcom/stripe/offlinemode/models/OfflineForwardingResponse$Success;", "offlinemode_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public abstract class OfflineForwardingResponse {
    private final OfflineForwardingRequest request;

    public /* synthetic */ OfflineForwardingResponse(OfflineForwardingRequest offlineForwardingRequest, DefaultConstructorMarker defaultConstructorMarker) {
        this(offlineForwardingRequest);
    }

    private OfflineForwardingResponse(OfflineForwardingRequest offlineForwardingRequest) {
        this.request = offlineForwardingRequest;
    }

    public OfflineForwardingRequest getRequest() {
        return this.request;
    }

    /* JADX INFO: compiled from: OfflineForwardingResponse.kt */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001B\u000f\b\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006\u0082\u0001\u0002\u0007\b¨\u0006\t"}, d2 = {"Lcom/stripe/offlinemode/models/OfflineForwardingResponse$Success;", "Lcom/stripe/offlinemode/models/OfflineForwardingResponse;", "request", "Lcom/stripe/offlinemode/models/OfflineForwardingRequest;", "(Lcom/stripe/offlinemode/models/OfflineForwardingRequest;)V", "getRequest", "()Lcom/stripe/offlinemode/models/OfflineForwardingRequest;", "Lcom/stripe/offlinemode/models/OfflineForwardingResponse$PaymentIntentSuccess;", "Lcom/stripe/offlinemode/models/OfflineForwardingResponse$SetupIntentSuccess;", "offlinemode_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static abstract class Success extends OfflineForwardingResponse {
        private final OfflineForwardingRequest request;

        public /* synthetic */ Success(OfflineForwardingRequest offlineForwardingRequest, DefaultConstructorMarker defaultConstructorMarker) {
            this(offlineForwardingRequest);
        }

        @Override // com.stripe.offlinemode.models.OfflineForwardingResponse
        public OfflineForwardingRequest getRequest() {
            return this.request;
        }

        private Success(OfflineForwardingRequest offlineForwardingRequest) {
            super(offlineForwardingRequest, null);
            this.request = offlineForwardingRequest;
        }
    }

    /* JADX INFO: compiled from: OfflineForwardingResponse.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0016"}, d2 = {"Lcom/stripe/offlinemode/models/OfflineForwardingResponse$PaymentIntentSuccess;", "Lcom/stripe/offlinemode/models/OfflineForwardingResponse$Success;", "paymentIntent", "Lcom/stripe/proto/model/rest/PaymentIntent;", "request", "Lcom/stripe/offlinemode/models/OfflineForwardingRequest;", "(Lcom/stripe/proto/model/rest/PaymentIntent;Lcom/stripe/offlinemode/models/OfflineForwardingRequest;)V", "getPaymentIntent", "()Lcom/stripe/proto/model/rest/PaymentIntent;", "getRequest", "()Lcom/stripe/offlinemode/models/OfflineForwardingRequest;", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "offlinemode_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class PaymentIntentSuccess extends Success {
        private final PaymentIntent paymentIntent;
        private final OfflineForwardingRequest request;

        public static /* synthetic */ PaymentIntentSuccess copy$default(PaymentIntentSuccess paymentIntentSuccess, PaymentIntent paymentIntent, OfflineForwardingRequest offlineForwardingRequest, int i, Object obj) {
            if ((i & 1) != 0) {
                paymentIntent = paymentIntentSuccess.paymentIntent;
            }
            if ((i & 2) != 0) {
                offlineForwardingRequest = paymentIntentSuccess.request;
            }
            return paymentIntentSuccess.copy(paymentIntent, offlineForwardingRequest);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final PaymentIntent getPaymentIntent() {
            return this.paymentIntent;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final OfflineForwardingRequest getRequest() {
            return this.request;
        }

        public final PaymentIntentSuccess copy(PaymentIntent paymentIntent, OfflineForwardingRequest request) {
            Intrinsics.checkNotNullParameter(paymentIntent, "paymentIntent");
            Intrinsics.checkNotNullParameter(request, "request");
            return new PaymentIntentSuccess(paymentIntent, request);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof PaymentIntentSuccess)) {
                return false;
            }
            PaymentIntentSuccess paymentIntentSuccess = (PaymentIntentSuccess) other;
            return Intrinsics.areEqual(this.paymentIntent, paymentIntentSuccess.paymentIntent) && Intrinsics.areEqual(this.request, paymentIntentSuccess.request);
        }

        public int hashCode() {
            return (this.paymentIntent.hashCode() * 31) + this.request.hashCode();
        }

        public String toString() {
            return "PaymentIntentSuccess(paymentIntent=" + this.paymentIntent + ", request=" + this.request + ')';
        }

        public final PaymentIntent getPaymentIntent() {
            return this.paymentIntent;
        }

        @Override // com.stripe.offlinemode.models.OfflineForwardingResponse.Success, com.stripe.offlinemode.models.OfflineForwardingResponse
        public OfflineForwardingRequest getRequest() {
            return this.request;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public PaymentIntentSuccess(PaymentIntent paymentIntent, OfflineForwardingRequest request) {
            super(request, null);
            Intrinsics.checkNotNullParameter(paymentIntent, "paymentIntent");
            Intrinsics.checkNotNullParameter(request, "request");
            this.paymentIntent = paymentIntent;
            this.request = request;
        }
    }

    /* JADX INFO: compiled from: OfflineForwardingResponse.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001R\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0016"}, d2 = {"Lcom/stripe/offlinemode/models/OfflineForwardingResponse$SetupIntentSuccess;", "Lcom/stripe/offlinemode/models/OfflineForwardingResponse$Success;", "setupIntent", "Lcom/stripe/proto/model/rest/SetupIntent;", "request", "Lcom/stripe/offlinemode/models/OfflineForwardingRequest;", "(Lcom/stripe/proto/model/rest/SetupIntent;Lcom/stripe/offlinemode/models/OfflineForwardingRequest;)V", "getRequest", "()Lcom/stripe/offlinemode/models/OfflineForwardingRequest;", "getSetupIntent", "()Lcom/stripe/proto/model/rest/SetupIntent;", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "offlinemode_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class SetupIntentSuccess extends Success {
        private final OfflineForwardingRequest request;
        private final SetupIntent setupIntent;

        public static /* synthetic */ SetupIntentSuccess copy$default(SetupIntentSuccess setupIntentSuccess, SetupIntent setupIntent, OfflineForwardingRequest offlineForwardingRequest, int i, Object obj) {
            if ((i & 1) != 0) {
                setupIntent = setupIntentSuccess.setupIntent;
            }
            if ((i & 2) != 0) {
                offlineForwardingRequest = setupIntentSuccess.request;
            }
            return setupIntentSuccess.copy(setupIntent, offlineForwardingRequest);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final SetupIntent getSetupIntent() {
            return this.setupIntent;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final OfflineForwardingRequest getRequest() {
            return this.request;
        }

        public final SetupIntentSuccess copy(SetupIntent setupIntent, OfflineForwardingRequest request) {
            Intrinsics.checkNotNullParameter(setupIntent, "setupIntent");
            Intrinsics.checkNotNullParameter(request, "request");
            return new SetupIntentSuccess(setupIntent, request);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof SetupIntentSuccess)) {
                return false;
            }
            SetupIntentSuccess setupIntentSuccess = (SetupIntentSuccess) other;
            return Intrinsics.areEqual(this.setupIntent, setupIntentSuccess.setupIntent) && Intrinsics.areEqual(this.request, setupIntentSuccess.request);
        }

        public int hashCode() {
            return (this.setupIntent.hashCode() * 31) + this.request.hashCode();
        }

        public String toString() {
            return "SetupIntentSuccess(setupIntent=" + this.setupIntent + ", request=" + this.request + ')';
        }

        public final SetupIntent getSetupIntent() {
            return this.setupIntent;
        }

        @Override // com.stripe.offlinemode.models.OfflineForwardingResponse.Success, com.stripe.offlinemode.models.OfflineForwardingResponse
        public OfflineForwardingRequest getRequest() {
            return this.request;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SetupIntentSuccess(SetupIntent setupIntent, OfflineForwardingRequest request) {
            super(request, null);
            Intrinsics.checkNotNullParameter(setupIntent, "setupIntent");
            Intrinsics.checkNotNullParameter(request, "request");
            this.setupIntent = setupIntent;
            this.request = request;
        }
    }

    /* JADX INFO: compiled from: OfflineForwardingResponse.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0016"}, d2 = {"Lcom/stripe/offlinemode/models/OfflineForwardingResponse$Failure;", "Lcom/stripe/offlinemode/models/OfflineForwardingResponse;", "error", "Lcom/stripe/stripeterminal/external/models/TerminalException;", "request", "Lcom/stripe/offlinemode/models/OfflineForwardingRequest;", "(Lcom/stripe/stripeterminal/external/models/TerminalException;Lcom/stripe/offlinemode/models/OfflineForwardingRequest;)V", "getError", "()Lcom/stripe/stripeterminal/external/models/TerminalException;", "getRequest", "()Lcom/stripe/offlinemode/models/OfflineForwardingRequest;", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "offlinemode_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class Failure extends OfflineForwardingResponse {
        private final TerminalException error;
        private final OfflineForwardingRequest request;

        public static /* synthetic */ Failure copy$default(Failure failure, TerminalException terminalException, OfflineForwardingRequest offlineForwardingRequest, int i, Object obj) {
            if ((i & 1) != 0) {
                terminalException = failure.error;
            }
            if ((i & 2) != 0) {
                offlineForwardingRequest = failure.request;
            }
            return failure.copy(terminalException, offlineForwardingRequest);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final TerminalException getError() {
            return this.error;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final OfflineForwardingRequest getRequest() {
            return this.request;
        }

        public final Failure copy(TerminalException error, OfflineForwardingRequest request) {
            Intrinsics.checkNotNullParameter(error, "error");
            Intrinsics.checkNotNullParameter(request, "request");
            return new Failure(error, request);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Failure)) {
                return false;
            }
            Failure failure = (Failure) other;
            return Intrinsics.areEqual(this.error, failure.error) && Intrinsics.areEqual(this.request, failure.request);
        }

        public int hashCode() {
            return (this.error.hashCode() * 31) + this.request.hashCode();
        }

        public String toString() {
            return "Failure(error=" + this.error + ", request=" + this.request + ')';
        }

        public final TerminalException getError() {
            return this.error;
        }

        @Override // com.stripe.offlinemode.models.OfflineForwardingResponse
        public OfflineForwardingRequest getRequest() {
            return this.request;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Failure(TerminalException error, OfflineForwardingRequest request) {
            super(request, null);
            Intrinsics.checkNotNullParameter(error, "error");
            Intrinsics.checkNotNullParameter(request, "request");
            this.error = error;
            this.request = request;
        }
    }

    /* JADX INFO: compiled from: OfflineForwardingResponse.kt */
    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\n\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\r\u0010\f\u001a\u00060\u0003j\u0002`\u0004HÆ\u0003J\t\u0010\r\u001a\u00020\u0006HÆ\u0003J!\u0010\u000e\u001a\u00020\u00002\f\b\u0002\u0010\u0002\u001a\u00060\u0003j\u0002`\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0006HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001R\u0015\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0014\u0010\u0005\u001a\u00020\u0006X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0017"}, d2 = {"Lcom/stripe/offlinemode/models/OfflineForwardingResponse$Cancel;", "Lcom/stripe/offlinemode/models/OfflineForwardingResponse;", "exception", "Ljava/util/concurrent/CancellationException;", "Lkotlin/coroutines/cancellation/CancellationException;", "request", "Lcom/stripe/offlinemode/models/OfflineForwardingRequest;", "(Ljava/util/concurrent/CancellationException;Lcom/stripe/offlinemode/models/OfflineForwardingRequest;)V", "getException", "()Ljava/util/concurrent/CancellationException;", "getRequest", "()Lcom/stripe/offlinemode/models/OfflineForwardingRequest;", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "offlinemode_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class Cancel extends OfflineForwardingResponse {
        private final CancellationException exception;
        private final OfflineForwardingRequest request;

        public static /* synthetic */ Cancel copy$default(Cancel cancel, CancellationException cancellationException, OfflineForwardingRequest offlineForwardingRequest, int i, Object obj) {
            if ((i & 1) != 0) {
                cancellationException = cancel.exception;
            }
            if ((i & 2) != 0) {
                offlineForwardingRequest = cancel.request;
            }
            return cancel.copy(cancellationException, offlineForwardingRequest);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final CancellationException getException() {
            return this.exception;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final OfflineForwardingRequest getRequest() {
            return this.request;
        }

        public final Cancel copy(CancellationException exception, OfflineForwardingRequest request) {
            Intrinsics.checkNotNullParameter(exception, "exception");
            Intrinsics.checkNotNullParameter(request, "request");
            return new Cancel(exception, request);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Cancel)) {
                return false;
            }
            Cancel cancel = (Cancel) other;
            return Intrinsics.areEqual(this.exception, cancel.exception) && Intrinsics.areEqual(this.request, cancel.request);
        }

        public int hashCode() {
            return (this.exception.hashCode() * 31) + this.request.hashCode();
        }

        public String toString() {
            return "Cancel(exception=" + this.exception + ", request=" + this.request + ')';
        }

        public final CancellationException getException() {
            return this.exception;
        }

        @Override // com.stripe.offlinemode.models.OfflineForwardingResponse
        public OfflineForwardingRequest getRequest() {
            return this.request;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cancel(CancellationException exception, OfflineForwardingRequest request) {
            super(request, null);
            Intrinsics.checkNotNullParameter(exception, "exception");
            Intrinsics.checkNotNullParameter(request, "request");
            this.exception = exception;
            this.request = request;
        }
    }
}
