package com.stripe.paymentcollection.metrics.dagger;

import com.stripe.jvmcore.logging.HealthLoggerBuilder;
import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import com.stripe.paymentcollection.metrics.DiscreteEventLogger;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class PaymentCollectionLoggerModule_ProvidesDiscreteEventLoggerFactory implements Factory<DiscreteEventLogger> {
    private final Provider<HealthLoggerBuilder> healthLoggerBuilderProvider;
    private final Provider<LoggerFactory> loggerFactoryProvider;

    public PaymentCollectionLoggerModule_ProvidesDiscreteEventLoggerFactory(Provider<HealthLoggerBuilder> provider, Provider<LoggerFactory> provider2) {
        this.healthLoggerBuilderProvider = provider;
        this.loggerFactoryProvider = provider2;
    }

    @Override // javax.inject.Provider
    public DiscreteEventLogger get() {
        return providesDiscreteEventLogger(this.healthLoggerBuilderProvider.get(), this.loggerFactoryProvider.get());
    }

    public static PaymentCollectionLoggerModule_ProvidesDiscreteEventLoggerFactory create(Provider<HealthLoggerBuilder> provider, Provider<LoggerFactory> provider2) {
        return new PaymentCollectionLoggerModule_ProvidesDiscreteEventLoggerFactory(provider, provider2);
    }

    public static DiscreteEventLogger providesDiscreteEventLogger(HealthLoggerBuilder healthLoggerBuilder, LoggerFactory loggerFactory) {
        return (DiscreteEventLogger) Preconditions.checkNotNullFromProvides(PaymentCollectionLoggerModule.INSTANCE.providesDiscreteEventLogger(healthLoggerBuilder, loggerFactory));
    }
}
