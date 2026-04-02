package com.stripe.jvmcore.terminal.requestfactories.payment;

import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import com.stripe.proto.api.rest.CancelPaymentIntentRequest;
import com.stripe.proto.api.rest.CreatePaymentIntentRequest;
import com.stripe.stripeterminal.external.models.PaymentIntentParameters;
import kotlin.Metadata;

/* JADX INFO: compiled from: PaymentIntentRestApiFactory.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\nÀ\u0006\u0001"}, d2 = {"Lcom/stripe/jvmcore/terminal/requestfactories/payment/PaymentIntentRestApiFactory;", "", "cancelPaymentIntent", "Lcom/stripe/proto/api/rest/CancelPaymentIntentRequest;", OfflineStorageConstantsKt.ID, "", "createPaymentIntent", "Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;", "params", "Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;", "terminal-requestfactories"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface PaymentIntentRestApiFactory {
    CancelPaymentIntentRequest cancelPaymentIntent(String id);

    CreatePaymentIntentRequest createPaymentIntent(PaymentIntentParameters params);
}
