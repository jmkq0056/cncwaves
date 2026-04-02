package com.stripe.jvmcore.terminal.requestfactories.dagger;

import com.stripe.jvmcore.terminal.requestfactories.setup.DefaultSetupIntentRestApiFactory;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes3.dex */
public final class TerminalRestRequestFactoryModule_ProvideDefaultRestSetupIntentRequestFactoryFactory implements Factory<DefaultSetupIntentRestApiFactory> {
    @Override // javax.inject.Provider
    public DefaultSetupIntentRestApiFactory get() {
        return provideDefaultRestSetupIntentRequestFactory();
    }

    public static TerminalRestRequestFactoryModule_ProvideDefaultRestSetupIntentRequestFactoryFactory create() {
        return InstanceHolder.INSTANCE;
    }

    public static DefaultSetupIntentRestApiFactory provideDefaultRestSetupIntentRequestFactory() {
        return (DefaultSetupIntentRestApiFactory) Preconditions.checkNotNullFromProvides(TerminalRestRequestFactoryModule.INSTANCE.provideDefaultRestSetupIntentRequestFactory());
    }

    private static final class InstanceHolder {
        private static final TerminalRestRequestFactoryModule_ProvideDefaultRestSetupIntentRequestFactoryFactory INSTANCE = new TerminalRestRequestFactoryModule_ProvideDefaultRestSetupIntentRequestFactoryFactory();

        private InstanceHolder() {
        }
    }
}
