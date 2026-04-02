package com.stripe.jvmcore.terminal.requestfactories.dagger;

import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import com.stripe.jvmcore.terminal.requestfactories.activate.DefaultActivateApiFactory;
import com.stripe.terminal.appinfo.ApplicationInformationProvider;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class TerminalJackRabbitRequestFactoryModule_ProvideDefaultActivateJackRabbitApiFactoryFactory implements Factory<DefaultActivateApiFactory> {
    private final Provider<ApplicationInformationProvider> applicationInformationProvider;
    private final Provider<LoggerFactory> loggerFactoryProvider;

    public TerminalJackRabbitRequestFactoryModule_ProvideDefaultActivateJackRabbitApiFactoryFactory(Provider<ApplicationInformationProvider> provider, Provider<LoggerFactory> provider2) {
        this.applicationInformationProvider = provider;
        this.loggerFactoryProvider = provider2;
    }

    @Override // javax.inject.Provider
    public DefaultActivateApiFactory get() {
        return provideDefaultActivateJackRabbitApiFactory(this.applicationInformationProvider.get(), this.loggerFactoryProvider.get());
    }

    public static TerminalJackRabbitRequestFactoryModule_ProvideDefaultActivateJackRabbitApiFactoryFactory create(Provider<ApplicationInformationProvider> provider, Provider<LoggerFactory> provider2) {
        return new TerminalJackRabbitRequestFactoryModule_ProvideDefaultActivateJackRabbitApiFactoryFactory(provider, provider2);
    }

    public static DefaultActivateApiFactory provideDefaultActivateJackRabbitApiFactory(ApplicationInformationProvider applicationInformationProvider, LoggerFactory loggerFactory) {
        return (DefaultActivateApiFactory) Preconditions.checkNotNullFromProvides(TerminalJackRabbitRequestFactoryModule.INSTANCE.provideDefaultActivateJackRabbitApiFactory(applicationInformationProvider, loggerFactory));
    }
}
