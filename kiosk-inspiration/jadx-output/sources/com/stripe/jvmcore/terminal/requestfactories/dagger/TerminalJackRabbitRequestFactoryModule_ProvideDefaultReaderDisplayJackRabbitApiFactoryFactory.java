package com.stripe.jvmcore.terminal.requestfactories.dagger;

import com.stripe.jvmcore.terminal.requestfactories.display.DefaultReaderDisplayJackRabbitApiFactory;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes3.dex */
public final class TerminalJackRabbitRequestFactoryModule_ProvideDefaultReaderDisplayJackRabbitApiFactoryFactory implements Factory<DefaultReaderDisplayJackRabbitApiFactory> {
    @Override // javax.inject.Provider
    public DefaultReaderDisplayJackRabbitApiFactory get() {
        return provideDefaultReaderDisplayJackRabbitApiFactory();
    }

    public static TerminalJackRabbitRequestFactoryModule_ProvideDefaultReaderDisplayJackRabbitApiFactoryFactory create() {
        return InstanceHolder.INSTANCE;
    }

    public static DefaultReaderDisplayJackRabbitApiFactory provideDefaultReaderDisplayJackRabbitApiFactory() {
        return (DefaultReaderDisplayJackRabbitApiFactory) Preconditions.checkNotNullFromProvides(TerminalJackRabbitRequestFactoryModule.INSTANCE.provideDefaultReaderDisplayJackRabbitApiFactory());
    }

    private static final class InstanceHolder {
        private static final TerminalJackRabbitRequestFactoryModule_ProvideDefaultReaderDisplayJackRabbitApiFactoryFactory INSTANCE = new TerminalJackRabbitRequestFactoryModule_ProvideDefaultReaderDisplayJackRabbitApiFactoryFactory();

        private InstanceHolder() {
        }
    }
}
