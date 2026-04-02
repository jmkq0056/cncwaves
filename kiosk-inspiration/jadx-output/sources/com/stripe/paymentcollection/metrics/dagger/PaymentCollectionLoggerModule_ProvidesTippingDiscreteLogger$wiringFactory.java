package com.stripe.paymentcollection.metrics.dagger;

import com.stripe.jvmcore.logging.HealthLogger;
import com.stripe.jvmcore.logging.HealthLoggerBuilder;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.tipping.DiscreteScope;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.tipping.TippingDomain;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class PaymentCollectionLoggerModule_ProvidesTippingDiscreteLogger$wiringFactory implements Factory<HealthLogger<TippingDomain, TippingDomain.Builder, DiscreteScope, DiscreteScope.Builder>> {
    private final Provider<HealthLoggerBuilder> healthLoggerBuilderProvider;

    public PaymentCollectionLoggerModule_ProvidesTippingDiscreteLogger$wiringFactory(Provider<HealthLoggerBuilder> provider) {
        this.healthLoggerBuilderProvider = provider;
    }

    @Override // javax.inject.Provider
    public HealthLogger<TippingDomain, TippingDomain.Builder, DiscreteScope, DiscreteScope.Builder> get() {
        return providesTippingDiscreteLogger$wiring(this.healthLoggerBuilderProvider.get());
    }

    public static PaymentCollectionLoggerModule_ProvidesTippingDiscreteLogger$wiringFactory create(Provider<HealthLoggerBuilder> provider) {
        return new PaymentCollectionLoggerModule_ProvidesTippingDiscreteLogger$wiringFactory(provider);
    }

    public static HealthLogger<TippingDomain, TippingDomain.Builder, DiscreteScope, DiscreteScope.Builder> providesTippingDiscreteLogger$wiring(HealthLoggerBuilder healthLoggerBuilder) {
        return (HealthLogger) Preconditions.checkNotNullFromProvides(PaymentCollectionLoggerModule.INSTANCE.providesTippingDiscreteLogger$wiring(healthLoggerBuilder));
    }
}
