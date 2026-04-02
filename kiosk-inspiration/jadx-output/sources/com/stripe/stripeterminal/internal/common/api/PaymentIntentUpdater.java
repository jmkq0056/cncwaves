package com.stripe.stripeterminal.internal.common.api;

import com.stripe.stripeterminal.external.models.PaymentIntent;
import com.stripe.transaction.CollectiblePayment;
import kotlin.Metadata;

/* JADX INFO: compiled from: PaymentIntentUpdater.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\bæ\u0080\u0001\u0018\u00002\u00020\u0001J#\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\bH¦\u0002ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\tÀ\u0006\u0001"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/api/PaymentIntentUpdater;", "", "invoke", "Lcom/stripe/stripeterminal/external/models/PaymentIntent;", "paymentIntent", "collectiblePayment", "Lcom/stripe/transaction/CollectiblePayment;", "requestDynamicCurrencyConversion", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface PaymentIntentUpdater {
    PaymentIntent invoke(PaymentIntent paymentIntent, CollectiblePayment collectiblePayment, boolean requestDynamicCurrencyConversion);
}
