package com.stripe.paymentcollection.metrics.dagger;

import com.stripe.jvmcore.logging.HealthLoggerBuilder;
import com.stripe.paymentcollection.metrics.EndToEndEventLogger;
import com.stripe.paymentcollection.metrics.ManualEntryLogger;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class PaymentCollectionLoggerModule_ProvidesManualEntryLoggerFactory implements Factory<ManualEntryLogger> {
    private final Provider<EndToEndEventLogger> endToEndEventLoggerProvider;
    private final Provider<HealthLoggerBuilder> healthLoggerBuilderProvider;

    public PaymentCollectionLoggerModule_ProvidesManualEntryLoggerFactory(Provider<HealthLoggerBuilder> provider, Provider<EndToEndEventLogger> provider2) {
        this.healthLoggerBuilderProvider = provider;
        this.endToEndEventLoggerProvider = provider2;
    }

    @Override // javax.inject.Provider
    public ManualEntryLogger get() {
        return providesManualEntryLogger(this.healthLoggerBuilderProvider.get(), this.endToEndEventLoggerProvider.get());
    }

    public static PaymentCollectionLoggerModule_ProvidesManualEntryLoggerFactory create(Provider<HealthLoggerBuilder> provider, Provider<EndToEndEventLogger> provider2) {
        return new PaymentCollectionLoggerModule_ProvidesManualEntryLoggerFactory(provider, provider2);
    }

    public static ManualEntryLogger providesManualEntryLogger(HealthLoggerBuilder healthLoggerBuilder, EndToEndEventLogger endToEndEventLogger) {
        return (ManualEntryLogger) Preconditions.checkNotNullFromProvides(PaymentCollectionLoggerModule.INSTANCE.providesManualEntryLogger(healthLoggerBuilder, endToEndEventLogger));
    }
}
