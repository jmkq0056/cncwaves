package com.stripe.paymentcollection.metrics;

import com.stripe.hardware.ReaderConfiguration;
import com.stripe.paymentcollection.PaymentCollectionData;
import java.util.Set;
import kotlin.Metadata;

/* JADX INFO: compiled from: DiscreteEventLogger.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0018\u0010\b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\nH&J\u0010\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\f\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0016\u0010\r\u001a\u00020\u00032\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00100\u000fH&J\u0010\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0012À\u0006\u0001"}, d2 = {"Lcom/stripe/paymentcollection/metrics/DiscreteEventLogger;", "", "logAllowingMagStripe", "", "data", "Lcom/stripe/paymentcollection/PaymentCollectionData;", "logNonCardPaymentMethodConfirmResult", "logOnlineConfirmResult", "logPartialAuthApproved", "authorizedAmount", "", "logPassthroughSwiped", "logPrematureCardRemoval", "logReaderInterfaceChanged", "readerTypes", "", "Lcom/stripe/hardware/ReaderConfiguration$ReaderType;", "logSurcharge", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface DiscreteEventLogger {
    void logAllowingMagStripe(PaymentCollectionData data);

    void logNonCardPaymentMethodConfirmResult(PaymentCollectionData data);

    void logOnlineConfirmResult(PaymentCollectionData data);

    void logPartialAuthApproved(PaymentCollectionData data, long authorizedAmount);

    void logPassthroughSwiped(PaymentCollectionData data);

    void logPrematureCardRemoval(PaymentCollectionData data);

    void logReaderInterfaceChanged(Set<? extends ReaderConfiguration.ReaderType> readerTypes);

    void logSurcharge(PaymentCollectionData data);
}
