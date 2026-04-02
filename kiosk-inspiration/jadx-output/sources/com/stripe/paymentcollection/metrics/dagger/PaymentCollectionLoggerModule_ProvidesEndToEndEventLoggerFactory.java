package com.stripe.paymentcollection.metrics.dagger;

import com.stripe.jvmcore.logging.HealthLoggerBuilder;
import com.stripe.paymentcollection.metrics.EndToEndEventLogger;
import com.stripe.time.Clock;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class PaymentCollectionLoggerModule_ProvidesEndToEndEventLoggerFactory implements Factory<EndToEndEventLogger> {
    private final Provider<Clock> clockProvider;
    private final Provider<HealthLoggerBuilder> healthLoggerBuilderProvider;

    public PaymentCollectionLoggerModule_ProvidesEndToEndEventLoggerFactory(Provider<HealthLoggerBuilder> provider, Provider<Clock> provider2) {
        this.healthLoggerBuilderProvider = provider;
        this.clockProvider = provider2;
    }

    @Override // javax.inject.Provider
    public EndToEndEventLogger get() {
        return providesEndToEndEventLogger(this.healthLoggerBuilderProvider.get(), this.clockProvider.get());
    }

    public static PaymentCollectionLoggerModule_ProvidesEndToEndEventLoggerFactory create(Provider<HealthLoggerBuilder> provider, Provider<Clock> provider2) {
        return new PaymentCollectionLoggerModule_ProvidesEndToEndEventLoggerFactory(provider, provider2);
    }

    public static EndToEndEventLogger providesEndToEndEventLogger(HealthLoggerBuilder healthLoggerBuilder, Clock clock) {
        return (EndToEndEventLogger) Preconditions.checkNotNullFromProvides(PaymentCollectionLoggerModule.INSTANCE.providesEndToEndEventLogger(healthLoggerBuilder, clock));
    }
}
