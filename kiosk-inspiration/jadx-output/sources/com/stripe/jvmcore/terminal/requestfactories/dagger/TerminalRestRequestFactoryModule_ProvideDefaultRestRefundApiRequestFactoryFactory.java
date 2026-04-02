package com.stripe.jvmcore.terminal.requestfactories.dagger;

import com.stripe.jvmcore.terminal.requestfactories.refund.DefaultRefundRestApiRequestFactory;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes3.dex */
public final class TerminalRestRequestFactoryModule_ProvideDefaultRestRefundApiRequestFactoryFactory implements Factory<DefaultRefundRestApiRequestFactory> {
    @Override // javax.inject.Provider
    public DefaultRefundRestApiRequestFactory get() {
        return provideDefaultRestRefundApiRequestFactory();
    }

    public static TerminalRestRequestFactoryModule_ProvideDefaultRestRefundApiRequestFactoryFactory create() {
        return InstanceHolder.INSTANCE;
    }

    public static DefaultRefundRestApiRequestFactory provideDefaultRestRefundApiRequestFactory() {
        return (DefaultRefundRestApiRequestFactory) Preconditions.checkNotNullFromProvides(TerminalRestRequestFactoryModule.INSTANCE.provideDefaultRestRefundApiRequestFactory());
    }

    private static final class InstanceHolder {
        private static final TerminalRestRequestFactoryModule_ProvideDefaultRestRefundApiRequestFactoryFactory INSTANCE = new TerminalRestRequestFactoryModule_ProvideDefaultRestRefundApiRequestFactoryFactory();

        private InstanceHolder() {
        }
    }
}
