package com.stripe.jvmcore.terminal.requestfactories.dagger;

import com.stripe.jvmcore.terminal.requestfactories.payment.DefaultPaymentIntentRestApiFactory;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes3.dex */
public final class TerminalRestRequestFactoryModule_ProvideDefaultRestPaymentApiRequestFactoryFactory implements Factory<DefaultPaymentIntentRestApiFactory> {
    @Override // javax.inject.Provider
    public DefaultPaymentIntentRestApiFactory get() {
        return provideDefaultRestPaymentApiRequestFactory();
    }

    public static TerminalRestRequestFactoryModule_ProvideDefaultRestPaymentApiRequestFactoryFactory create() {
        return InstanceHolder.INSTANCE;
    }

    public static DefaultPaymentIntentRestApiFactory provideDefaultRestPaymentApiRequestFactory() {
        return (DefaultPaymentIntentRestApiFactory) Preconditions.checkNotNullFromProvides(TerminalRestRequestFactoryModule.INSTANCE.provideDefaultRestPaymentApiRequestFactory());
    }

    private static final class InstanceHolder {
        private static final TerminalRestRequestFactoryModule_ProvideDefaultRestPaymentApiRequestFactoryFactory INSTANCE = new TerminalRestRequestFactoryModule_ProvideDefaultRestPaymentApiRequestFactoryFactory();

        private InstanceHolder() {
        }
    }
}
