package com.stripe.paymentcollection;

import com.stripe.currency.Amount;
import com.stripe.restclient.IntegrationType;
import com.stripe.stripeterminal.external.models.PaymentMethodType;
import com.stripe.transaction.PaymentCollectionDeviceCapability;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: compiled from: TransactionRepository.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\bf\u0018\u00002\u00020\u0001R\u0014\u0010\u0002\u001a\u0004\u0018\u00010\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005R\u0012\u0010\u0006\u001a\u00020\u0007X¦\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\tR\u0018\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000bX¦\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\u000eR\u0014\u0010\u000f\u001a\u0004\u0018\u00010\u0010X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u0012R\u001a\u0010\u0013\u001a\u0004\u0018\u00010\u0014X¦\u000e¢\u0006\f\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u0014\u0010\u0019\u001a\u0004\u0018\u00010\fX¦\u0004¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u001bø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u001cÀ\u0006\u0001"}, d2 = {"Lcom/stripe/paymentcollection/TransactionRepository;", "", "amountTip", "Lcom/stripe/currency/Amount;", "getAmountTip", "()Lcom/stripe/currency/Amount;", "devicePaymentCapability", "Lcom/stripe/transaction/PaymentCollectionDeviceCapability;", "getDevicePaymentCapability", "()Lcom/stripe/transaction/PaymentCollectionDeviceCapability;", "domesticDebitAids", "", "", "getDomesticDebitAids", "()Ljava/util/List;", "integrationType", "Lcom/stripe/restclient/IntegrationType;", "getIntegrationType", "()Lcom/stripe/restclient/IntegrationType;", "nonCardPaymentMethodType", "Lcom/stripe/stripeterminal/external/models/PaymentMethodType;", "getNonCardPaymentMethodType", "()Lcom/stripe/stripeterminal/external/models/PaymentMethodType;", "setNonCardPaymentMethodType", "(Lcom/stripe/stripeterminal/external/models/PaymentMethodType;)V", "paymentIntentId", "getPaymentIntentId", "()Ljava/lang/String;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface TransactionRepository {
    Amount getAmountTip();

    PaymentCollectionDeviceCapability getDevicePaymentCapability();

    List<String> getDomesticDebitAids();

    IntegrationType getIntegrationType();

    PaymentMethodType getNonCardPaymentMethodType();

    String getPaymentIntentId();

    void setNonCardPaymentMethodType(PaymentMethodType paymentMethodType);
}
