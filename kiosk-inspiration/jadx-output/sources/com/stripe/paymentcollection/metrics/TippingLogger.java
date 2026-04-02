package com.stripe.paymentcollection.metrics;

import com.stripe.core.bbpos.BbposDeviceControllerImpl;
import com.stripe.paymentcollection.PaymentCollectionData;
import com.stripe.restclient.IntegrationType;
import kotlin.Metadata;

/* JADX INFO: compiled from: TippingLogger.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\"\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\b2\b\u0010\n\u001a\u0004\u0018\u00010\u000bH&J\u0010\u0010\f\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0012\u0010\r\u001a\u00020\u00032\b\u0010\n\u001a\u0004\u0018\u00010\u000bH&J\u001a\u0010\u000e\u001a\u00020\u00032\b\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u000f\u001a\u00020\u0010H&J\b\u0010\u0011\u001a\u00020\u0003H&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0012À\u0006\u0001"}, d2 = {"Lcom/stripe/paymentcollection/metrics/TippingLogger;", "", "closeTippingSelectionLog", "", "data", "Lcom/stripe/paymentcollection/PaymentCollectionData;", "logCurrencyMismatch", "tippingCurrencies", "", BbposDeviceControllerImpl.CURRENCY_CODE_PARAM_NAME, "integrationType", "Lcom/stripe/restclient/IntegrationType;", "logReselectTipping", "logSkipTipping", "logTipEligible", "eligibleAmount", "", "openTippingSelectionLog", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface TippingLogger {
    void closeTippingSelectionLog(PaymentCollectionData data);

    void logCurrencyMismatch(String tippingCurrencies, String currencyCode, IntegrationType integrationType);

    void logReselectTipping(PaymentCollectionData data);

    void logSkipTipping(IntegrationType integrationType);

    void logTipEligible(IntegrationType integrationType, long eligibleAmount);

    void openTippingSelectionLog();
}
