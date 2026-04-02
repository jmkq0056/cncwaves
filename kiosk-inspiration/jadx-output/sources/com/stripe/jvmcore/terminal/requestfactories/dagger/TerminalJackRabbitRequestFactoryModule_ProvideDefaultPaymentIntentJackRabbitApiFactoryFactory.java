package com.stripe.jvmcore.terminal.requestfactories.dagger;

import com.stripe.jvmcore.terminal.requestfactories.payment.DefaultPaymentJackRabbitApiFactory;
import com.stripe.jvmcore.terminal.requestfactories.payment.PaymentIntentRestApiFactory;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class TerminalJackRabbitRequestFactoryModule_ProvideDefaultPaymentIntentJackRabbitApiFactoryFactory implements Factory<DefaultPaymentJackRabbitApiFactory> {
    private final Provider<PaymentIntentRestApiFactory> paymentIntentRestApiFactoryProvider;

    public TerminalJackRabbitRequestFactoryModule_ProvideDefaultPaymentIntentJackRabbitApiFactoryFactory(Provider<PaymentIntentRestApiFactory> provider) {
        this.paymentIntentRestApiFactoryProvider = provider;
    }

    @Override // javax.inject.Provider
    public DefaultPaymentJackRabbitApiFactory get() {
        return provideDefaultPaymentIntentJackRabbitApiFactory(this.paymentIntentRestApiFactoryProvider.get());
    }

    public static TerminalJackRabbitRequestFactoryModule_ProvideDefaultPaymentIntentJackRabbitApiFactoryFactory create(Provider<PaymentIntentRestApiFactory> provider) {
        return new TerminalJackRabbitRequestFactoryModule_ProvideDefaultPaymentIntentJackRabbitApiFactoryFactory(provider);
    }

    public static DefaultPaymentJackRabbitApiFactory provideDefaultPaymentIntentJackRabbitApiFactory(PaymentIntentRestApiFactory paymentIntentRestApiFactory) {
        return (DefaultPaymentJackRabbitApiFactory) Preconditions.checkNotNullFromProvides(TerminalJackRabbitRequestFactoryModule.INSTANCE.provideDefaultPaymentIntentJackRabbitApiFactory(paymentIntentRestApiFactory));
    }
}
