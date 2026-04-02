package com.stripe.paymentcollection.metrics.dagger;

import com.stripe.jvmcore.logging.HealthLoggerBuilder;
import com.stripe.paymentcollection.metrics.EndToEndEventLogger;
import com.stripe.paymentcollection.metrics.TippingLogger;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class PaymentCollectionLoggerModule_ProvidesTippingLoggerFactory implements Factory<TippingLogger> {
    private final Provider<EndToEndEventLogger> endToEndEventLoggerProvider;
    private final Provider<HealthLoggerBuilder> healthLoggerBuilderProvider;

    public PaymentCollectionLoggerModule_ProvidesTippingLoggerFactory(Provider<HealthLoggerBuilder> provider, Provider<EndToEndEventLogger> provider2) {
        this.healthLoggerBuilderProvider = provider;
        this.endToEndEventLoggerProvider = provider2;
    }

    @Override // javax.inject.Provider
    public TippingLogger get() {
        return providesTippingLogger(this.healthLoggerBuilderProvider.get(), this.endToEndEventLoggerProvider.get());
    }

    public static PaymentCollectionLoggerModule_ProvidesTippingLoggerFactory create(Provider<HealthLoggerBuilder> provider, Provider<EndToEndEventLogger> provider2) {
        return new PaymentCollectionLoggerModule_ProvidesTippingLoggerFactory(provider, provider2);
    }

    public static TippingLogger providesTippingLogger(HealthLoggerBuilder healthLoggerBuilder, EndToEndEventLogger endToEndEventLogger) {
        return (TippingLogger) Preconditions.checkNotNullFromProvides(PaymentCollectionLoggerModule.INSTANCE.providesTippingLogger(healthLoggerBuilder, endToEndEventLogger));
    }
}
