package com.stripe.transaction.payment;

import com.stripe.hardware.emv.Confirmation;
import com.stripe.proto.api.rest.RequestedPaymentMethod;
import com.stripe.proto.model.sdk.PaymentMethod;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Payment.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0002\b&\u0018\u00002\u00020\u0001B\u0007\b\u0000¢\u0006\u0002\u0010\u0002J\b\u0010\u0016\u001a\u0004\u0018\u00010\u0010J\b\u0010\u0017\u001a\u0004\u0018\u00010\nJ\b\u0010\u0018\u001a\u00020\u0019H\u0016J\b\u0010\u001a\u001a\u00020\u0019H\u0016R(\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004@DX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR$\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\n@DX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR(\u0010\u0011\u001a\u0004\u0018\u00010\u00102\b\u0010\u0003\u001a\u0004\u0018\u00010\u0010@DX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015¨\u0006\u001b"}, d2 = {"Lcom/stripe/transaction/payment/Payment;", "", "()V", "<set-?>", "Lcom/stripe/hardware/emv/Confirmation;", "confirmation", "getConfirmation", "()Lcom/stripe/hardware/emv/Confirmation;", "setConfirmation", "(Lcom/stripe/hardware/emv/Confirmation;)V", "Lcom/stripe/proto/api/rest/RequestedPaymentMethod;", "restSource", "getRestSource", "()Lcom/stripe/proto/api/rest/RequestedPaymentMethod;", "setRestSource", "(Lcom/stripe/proto/api/rest/RequestedPaymentMethod;)V", "Lcom/stripe/proto/model/sdk/PaymentMethod;", "sdkSource", "getSdkSource", "()Lcom/stripe/proto/model/sdk/PaymentMethod;", "setSdkSource", "(Lcom/stripe/proto/model/sdk/PaymentMethod;)V", "asProtobuf", "asRest", "isCollectible", "", "supportsSca", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public abstract class Payment {
    private Confirmation confirmation;
    private RequestedPaymentMethod restSource = new RequestedPaymentMethod(null, null, null, null, null, null, null, 127, null);
    private PaymentMethod sdkSource = new PaymentMethod(0 == true ? 1 : 0, 0 == true ? 1 : 0, 0 == true ? 1 : 0, 0 == true ? 1 : 0, 15, 0 == true ? 1 : 0);

    public boolean supportsSca() {
        return false;
    }

    public final RequestedPaymentMethod getRestSource() {
        return this.restSource;
    }

    protected final void setRestSource(RequestedPaymentMethod requestedPaymentMethod) {
        Intrinsics.checkNotNullParameter(requestedPaymentMethod, "<set-?>");
        this.restSource = requestedPaymentMethod;
    }

    public final PaymentMethod getSdkSource() {
        return this.sdkSource;
    }

    protected final void setSdkSource(PaymentMethod paymentMethod) {
        this.sdkSource = paymentMethod;
    }

    public final Confirmation getConfirmation() {
        return this.confirmation;
    }

    protected final void setConfirmation(Confirmation confirmation) {
        this.confirmation = confirmation;
    }

    public boolean isCollectible() {
        return this.confirmation == null;
    }

    public final PaymentMethod asProtobuf() {
        if (isCollectible()) {
            return this.sdkSource;
        }
        return null;
    }

    public final RequestedPaymentMethod asRest() {
        if (isCollectible()) {
            return this.restSource;
        }
        return null;
    }
}
