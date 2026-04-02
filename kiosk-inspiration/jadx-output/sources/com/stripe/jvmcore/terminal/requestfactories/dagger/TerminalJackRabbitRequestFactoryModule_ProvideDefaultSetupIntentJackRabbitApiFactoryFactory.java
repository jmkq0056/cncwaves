package com.stripe.jvmcore.terminal.requestfactories.dagger;

import com.stripe.jvmcore.terminal.requestfactories.setup.DefaultSetupIntentJackRabbitApiFactory;
import com.stripe.jvmcore.terminal.requestfactories.setup.SetupIntentRestApiFactory;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class TerminalJackRabbitRequestFactoryModule_ProvideDefaultSetupIntentJackRabbitApiFactoryFactory implements Factory<DefaultSetupIntentJackRabbitApiFactory> {
    private final Provider<SetupIntentRestApiFactory> setupIntentRestFactoryProvider;

    public TerminalJackRabbitRequestFactoryModule_ProvideDefaultSetupIntentJackRabbitApiFactoryFactory(Provider<SetupIntentRestApiFactory> provider) {
        this.setupIntentRestFactoryProvider = provider;
    }

    @Override // javax.inject.Provider
    public DefaultSetupIntentJackRabbitApiFactory get() {
        return provideDefaultSetupIntentJackRabbitApiFactory(this.setupIntentRestFactoryProvider.get());
    }

    public static TerminalJackRabbitRequestFactoryModule_ProvideDefaultSetupIntentJackRabbitApiFactoryFactory create(Provider<SetupIntentRestApiFactory> provider) {
        return new TerminalJackRabbitRequestFactoryModule_ProvideDefaultSetupIntentJackRabbitApiFactoryFactory(provider);
    }

    public static DefaultSetupIntentJackRabbitApiFactory provideDefaultSetupIntentJackRabbitApiFactory(SetupIntentRestApiFactory setupIntentRestApiFactory) {
        return (DefaultSetupIntentJackRabbitApiFactory) Preconditions.checkNotNullFromProvides(TerminalJackRabbitRequestFactoryModule.INSTANCE.provideDefaultSetupIntentJackRabbitApiFactory(setupIntentRestApiFactory));
    }
}
