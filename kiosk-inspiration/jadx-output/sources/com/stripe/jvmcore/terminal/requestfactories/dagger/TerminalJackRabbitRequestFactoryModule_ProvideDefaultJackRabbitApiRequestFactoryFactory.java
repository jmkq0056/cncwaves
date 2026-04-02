package com.stripe.jvmcore.terminal.requestfactories.dagger;

import com.stripe.jvmcore.terminal.requestfactories.DefaultJackRabbitApiRequestFactory;
import com.stripe.jvmcore.terminal.requestfactories.accessibility.AccessibilityJackRabbitApiFactory;
import com.stripe.jvmcore.terminal.requestfactories.activate.ActivateJackRabbitApiFactory;
import com.stripe.jvmcore.terminal.requestfactories.discover.DiscoverJackRabbitApiFactory;
import com.stripe.jvmcore.terminal.requestfactories.display.ReaderDisplayJackRabbitApiFactory;
import com.stripe.jvmcore.terminal.requestfactories.payment.PaymentIntentJackRabbitApiFactory;
import com.stripe.jvmcore.terminal.requestfactories.refund.RefundJackRabbitApiFactory;
import com.stripe.jvmcore.terminal.requestfactories.setup.SetupIntentJackRabbitApiFactory;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class TerminalJackRabbitRequestFactoryModule_ProvideDefaultJackRabbitApiRequestFactoryFactory implements Factory<DefaultJackRabbitApiRequestFactory> {
    private final Provider<AccessibilityJackRabbitApiFactory> accessibilityJackRabbitApiFactoryProvider;
    private final Provider<ActivateJackRabbitApiFactory> activateApiFactoryProvider;
    private final Provider<DiscoverJackRabbitApiFactory> discoveryApiFactoryProvider;
    private final Provider<PaymentIntentJackRabbitApiFactory> paymentIntentApiFactoryProvider;
    private final Provider<ReaderDisplayJackRabbitApiFactory> readerDisplayApiFactoryProvider;
    private final Provider<RefundJackRabbitApiFactory> refundApiFactoryProvider;
    private final Provider<SetupIntentJackRabbitApiFactory> setupIntentApiFactoryProvider;

    public TerminalJackRabbitRequestFactoryModule_ProvideDefaultJackRabbitApiRequestFactoryFactory(Provider<ActivateJackRabbitApiFactory> provider, Provider<DiscoverJackRabbitApiFactory> provider2, Provider<ReaderDisplayJackRabbitApiFactory> provider3, Provider<AccessibilityJackRabbitApiFactory> provider4, Provider<PaymentIntentJackRabbitApiFactory> provider5, Provider<SetupIntentJackRabbitApiFactory> provider6, Provider<RefundJackRabbitApiFactory> provider7) {
        this.activateApiFactoryProvider = provider;
        this.discoveryApiFactoryProvider = provider2;
        this.readerDisplayApiFactoryProvider = provider3;
        this.accessibilityJackRabbitApiFactoryProvider = provider4;
        this.paymentIntentApiFactoryProvider = provider5;
        this.setupIntentApiFactoryProvider = provider6;
        this.refundApiFactoryProvider = provider7;
    }

    @Override // javax.inject.Provider
    public DefaultJackRabbitApiRequestFactory get() {
        return provideDefaultJackRabbitApiRequestFactory(this.activateApiFactoryProvider.get(), this.discoveryApiFactoryProvider.get(), this.readerDisplayApiFactoryProvider.get(), this.accessibilityJackRabbitApiFactoryProvider.get(), this.paymentIntentApiFactoryProvider.get(), this.setupIntentApiFactoryProvider.get(), this.refundApiFactoryProvider.get());
    }

    public static TerminalJackRabbitRequestFactoryModule_ProvideDefaultJackRabbitApiRequestFactoryFactory create(Provider<ActivateJackRabbitApiFactory> provider, Provider<DiscoverJackRabbitApiFactory> provider2, Provider<ReaderDisplayJackRabbitApiFactory> provider3, Provider<AccessibilityJackRabbitApiFactory> provider4, Provider<PaymentIntentJackRabbitApiFactory> provider5, Provider<SetupIntentJackRabbitApiFactory> provider6, Provider<RefundJackRabbitApiFactory> provider7) {
        return new TerminalJackRabbitRequestFactoryModule_ProvideDefaultJackRabbitApiRequestFactoryFactory(provider, provider2, provider3, provider4, provider5, provider6, provider7);
    }

    public static DefaultJackRabbitApiRequestFactory provideDefaultJackRabbitApiRequestFactory(ActivateJackRabbitApiFactory activateJackRabbitApiFactory, DiscoverJackRabbitApiFactory discoverJackRabbitApiFactory, ReaderDisplayJackRabbitApiFactory readerDisplayJackRabbitApiFactory, AccessibilityJackRabbitApiFactory accessibilityJackRabbitApiFactory, PaymentIntentJackRabbitApiFactory paymentIntentJackRabbitApiFactory, SetupIntentJackRabbitApiFactory setupIntentJackRabbitApiFactory, RefundJackRabbitApiFactory refundJackRabbitApiFactory) {
        return (DefaultJackRabbitApiRequestFactory) Preconditions.checkNotNullFromProvides(TerminalJackRabbitRequestFactoryModule.INSTANCE.provideDefaultJackRabbitApiRequestFactory(activateJackRabbitApiFactory, discoverJackRabbitApiFactory, readerDisplayJackRabbitApiFactory, accessibilityJackRabbitApiFactory, paymentIntentJackRabbitApiFactory, setupIntentJackRabbitApiFactory, refundJackRabbitApiFactory));
    }
}
