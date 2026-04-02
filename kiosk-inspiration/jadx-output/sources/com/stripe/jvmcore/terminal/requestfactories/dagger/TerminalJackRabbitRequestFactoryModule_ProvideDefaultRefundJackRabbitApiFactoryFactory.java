package com.stripe.jvmcore.terminal.requestfactories.dagger;

import com.stripe.jvmcore.terminal.requestfactories.refund.DefaultRefundJackRabbitApiFactory;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes3.dex */
public final class TerminalJackRabbitRequestFactoryModule_ProvideDefaultRefundJackRabbitApiFactoryFactory implements Factory<DefaultRefundJackRabbitApiFactory> {
    @Override // javax.inject.Provider
    public DefaultRefundJackRabbitApiFactory get() {
        return provideDefaultRefundJackRabbitApiFactory();
    }

    public static TerminalJackRabbitRequestFactoryModule_ProvideDefaultRefundJackRabbitApiFactoryFactory create() {
        return InstanceHolder.INSTANCE;
    }

    public static DefaultRefundJackRabbitApiFactory provideDefaultRefundJackRabbitApiFactory() {
        return (DefaultRefundJackRabbitApiFactory) Preconditions.checkNotNullFromProvides(TerminalJackRabbitRequestFactoryModule.INSTANCE.provideDefaultRefundJackRabbitApiFactory());
    }

    private static final class InstanceHolder {
        private static final TerminalJackRabbitRequestFactoryModule_ProvideDefaultRefundJackRabbitApiFactoryFactory INSTANCE = new TerminalJackRabbitRequestFactoryModule_ProvideDefaultRefundJackRabbitApiFactoryFactory();

        private InstanceHolder() {
        }
    }
}
