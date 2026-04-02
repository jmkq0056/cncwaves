package com.stripe.paymentcollection.metrics.dagger;

import com.stripe.jvmcore.logging.HealthLoggerBuilder;
import com.stripe.paymentcollection.metrics.EndToEndEventLogger;
import com.stripe.paymentcollection.metrics.StageEventLogger;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class PaymentCollectionLoggerModule_ProvidesStageEventLoggerFactory implements Factory<StageEventLogger> {
    private final Provider<EndToEndEventLogger> endToEndEventLoggerProvider;
    private final Provider<HealthLoggerBuilder> healthLoggerBuilderProvider;

    public PaymentCollectionLoggerModule_ProvidesStageEventLoggerFactory(Provider<HealthLoggerBuilder> provider, Provider<EndToEndEventLogger> provider2) {
        this.healthLoggerBuilderProvider = provider;
        this.endToEndEventLoggerProvider = provider2;
    }

    @Override // javax.inject.Provider
    public StageEventLogger get() {
        return providesStageEventLogger(this.healthLoggerBuilderProvider.get(), this.endToEndEventLoggerProvider.get());
    }

    public static PaymentCollectionLoggerModule_ProvidesStageEventLoggerFactory create(Provider<HealthLoggerBuilder> provider, Provider<EndToEndEventLogger> provider2) {
        return new PaymentCollectionLoggerModule_ProvidesStageEventLoggerFactory(provider, provider2);
    }

    public static StageEventLogger providesStageEventLogger(HealthLoggerBuilder healthLoggerBuilder, EndToEndEventLogger endToEndEventLogger) {
        return (StageEventLogger) Preconditions.checkNotNullFromProvides(PaymentCollectionLoggerModule.INSTANCE.providesStageEventLogger(healthLoggerBuilder, endToEndEventLogger));
    }
}
