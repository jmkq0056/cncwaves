package com.stripe.jvmcore.terminal.requestfactories.dagger;

import com.stripe.jvmcore.terminal.requestfactories.discover.DefaultDiscoveryJackRabbitApiFactory;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes3.dex */
public final class TerminalJackRabbitRequestFactoryModule_ProvideDefaultDiscoveryJackRabbitApiFactoryFactory implements Factory<DefaultDiscoveryJackRabbitApiFactory> {
    @Override // javax.inject.Provider
    public DefaultDiscoveryJackRabbitApiFactory get() {
        return provideDefaultDiscoveryJackRabbitApiFactory();
    }

    public static TerminalJackRabbitRequestFactoryModule_ProvideDefaultDiscoveryJackRabbitApiFactoryFactory create() {
        return InstanceHolder.INSTANCE;
    }

    public static DefaultDiscoveryJackRabbitApiFactory provideDefaultDiscoveryJackRabbitApiFactory() {
        return (DefaultDiscoveryJackRabbitApiFactory) Preconditions.checkNotNullFromProvides(TerminalJackRabbitRequestFactoryModule.INSTANCE.provideDefaultDiscoveryJackRabbitApiFactory());
    }

    private static final class InstanceHolder {
        private static final TerminalJackRabbitRequestFactoryModule_ProvideDefaultDiscoveryJackRabbitApiFactoryFactory INSTANCE = new TerminalJackRabbitRequestFactoryModule_ProvideDefaultDiscoveryJackRabbitApiFactoryFactory();

        private InstanceHolder() {
        }
    }
}
