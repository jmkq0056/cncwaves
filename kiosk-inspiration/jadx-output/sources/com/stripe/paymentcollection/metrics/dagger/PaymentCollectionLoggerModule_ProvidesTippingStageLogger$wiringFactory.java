package com.stripe.paymentcollection.metrics.dagger;

import com.stripe.jvmcore.logging.HealthLogger;
import com.stripe.jvmcore.logging.HealthLoggerBuilder;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.tipping.StageScope;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.tipping.TippingDomain;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class PaymentCollectionLoggerModule_ProvidesTippingStageLogger$wiringFactory implements Factory<HealthLogger<TippingDomain, TippingDomain.Builder, StageScope, StageScope.Builder>> {
    private final Provider<HealthLoggerBuilder> healthLoggerBuilderProvider;

    public PaymentCollectionLoggerModule_ProvidesTippingStageLogger$wiringFactory(Provider<HealthLoggerBuilder> provider) {
        this.healthLoggerBuilderProvider = provider;
    }

    @Override // javax.inject.Provider
    public HealthLogger<TippingDomain, TippingDomain.Builder, StageScope, StageScope.Builder> get() {
        return providesTippingStageLogger$wiring(this.healthLoggerBuilderProvider.get());
    }

    public static PaymentCollectionLoggerModule_ProvidesTippingStageLogger$wiringFactory create(Provider<HealthLoggerBuilder> provider) {
        return new PaymentCollectionLoggerModule_ProvidesTippingStageLogger$wiringFactory(provider);
    }

    public static HealthLogger<TippingDomain, TippingDomain.Builder, StageScope, StageScope.Builder> providesTippingStageLogger$wiring(HealthLoggerBuilder healthLoggerBuilder) {
        return (HealthLogger) Preconditions.checkNotNullFromProvides(PaymentCollectionLoggerModule.INSTANCE.providesTippingStageLogger$wiring(healthLoggerBuilder));
    }
}
