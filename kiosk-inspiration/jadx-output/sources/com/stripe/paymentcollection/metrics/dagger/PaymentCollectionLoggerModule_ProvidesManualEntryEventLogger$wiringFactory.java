package com.stripe.paymentcollection.metrics.dagger;

import com.stripe.paymentcollection.manualentry.ManualEntryLoggerInterface;
import com.stripe.paymentcollection.metrics.ManualEntryLogger;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class PaymentCollectionLoggerModule_ProvidesManualEntryEventLogger$wiringFactory implements Factory<ManualEntryLoggerInterface> {
    private final Provider<ManualEntryLogger> manualEntryLoggerProvider;

    public PaymentCollectionLoggerModule_ProvidesManualEntryEventLogger$wiringFactory(Provider<ManualEntryLogger> provider) {
        this.manualEntryLoggerProvider = provider;
    }

    @Override // javax.inject.Provider
    public ManualEntryLoggerInterface get() {
        return providesManualEntryEventLogger$wiring(this.manualEntryLoggerProvider.get());
    }

    public static PaymentCollectionLoggerModule_ProvidesManualEntryEventLogger$wiringFactory create(Provider<ManualEntryLogger> provider) {
        return new PaymentCollectionLoggerModule_ProvidesManualEntryEventLogger$wiringFactory(provider);
    }

    public static ManualEntryLoggerInterface providesManualEntryEventLogger$wiring(ManualEntryLogger manualEntryLogger) {
        return (ManualEntryLoggerInterface) Preconditions.checkNotNullFromProvides(PaymentCollectionLoggerModule.INSTANCE.providesManualEntryEventLogger$wiring(manualEntryLogger));
    }
}
