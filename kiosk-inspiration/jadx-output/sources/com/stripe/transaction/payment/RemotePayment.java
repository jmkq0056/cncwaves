package com.stripe.transaction.payment;

import com.stripe.proto.model.sdk.PaymentMethod;
import kotlin.Metadata;

/* JADX INFO: compiled from: RemotePayment.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/stripe/transaction/payment/RemotePayment;", "Lcom/stripe/transaction/payment/Payment;", "paymentMethod", "Lcom/stripe/proto/model/sdk/PaymentMethod;", "(Lcom/stripe/proto/model/sdk/PaymentMethod;)V", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class RemotePayment extends Payment {
    public RemotePayment(PaymentMethod paymentMethod) {
        setSdkSource(paymentMethod);
    }
}
