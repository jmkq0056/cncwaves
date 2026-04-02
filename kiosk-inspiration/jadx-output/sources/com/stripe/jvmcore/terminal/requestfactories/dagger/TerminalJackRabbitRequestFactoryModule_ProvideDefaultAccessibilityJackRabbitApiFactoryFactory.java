package com.stripe.jvmcore.terminal.requestfactories.dagger;

import com.stripe.jvmcore.terminal.requestfactories.accessibility.DefaultAccessibilityJackRabbitApiFactory;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes3.dex */
public final class TerminalJackRabbitRequestFactoryModule_ProvideDefaultAccessibilityJackRabbitApiFactoryFactory implements Factory<DefaultAccessibilityJackRabbitApiFactory> {
    @Override // javax.inject.Provider
    public DefaultAccessibilityJackRabbitApiFactory get() {
        return provideDefaultAccessibilityJackRabbitApiFactory();
    }

    public static TerminalJackRabbitRequestFactoryModule_ProvideDefaultAccessibilityJackRabbitApiFactoryFactory create() {
        return InstanceHolder.INSTANCE;
    }

    public static DefaultAccessibilityJackRabbitApiFactory provideDefaultAccessibilityJackRabbitApiFactory() {
        return (DefaultAccessibilityJackRabbitApiFactory) Preconditions.checkNotNullFromProvides(TerminalJackRabbitRequestFactoryModule.INSTANCE.provideDefaultAccessibilityJackRabbitApiFactory());
    }

    private static final class InstanceHolder {
        private static final TerminalJackRabbitRequestFactoryModule_ProvideDefaultAccessibilityJackRabbitApiFactoryFactory INSTANCE = new TerminalJackRabbitRequestFactoryModule_ProvideDefaultAccessibilityJackRabbitApiFactoryFactory();

        private InstanceHolder() {
        }
    }
}
