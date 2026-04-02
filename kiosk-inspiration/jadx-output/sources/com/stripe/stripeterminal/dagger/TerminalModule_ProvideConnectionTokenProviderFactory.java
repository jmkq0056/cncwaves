package com.stripe.stripeterminal.dagger;

import com.stripe.stripeterminal.external.callable.ConnectionTokenProvider;
import com.stripe.stripeterminal.internal.common.terminalsession.HandoffConnectionTokenProviderSupplier;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes4.dex */
public final class TerminalModule_ProvideConnectionTokenProviderFactory implements Factory<ConnectionTokenProvider> {
    private final Provider<HandoffConnectionTokenProviderSupplier> handoffConnectionTokenProviderSupplierProvider;
    private final TerminalModule module;

    public TerminalModule_ProvideConnectionTokenProviderFactory(TerminalModule terminalModule, Provider<HandoffConnectionTokenProviderSupplier> provider) {
        this.module = terminalModule;
        this.handoffConnectionTokenProviderSupplierProvider = provider;
    }

    @Override // javax.inject.Provider
    public ConnectionTokenProvider get() {
        return provideConnectionTokenProvider(this.module, this.handoffConnectionTokenProviderSupplierProvider.get());
    }

    public static TerminalModule_ProvideConnectionTokenProviderFactory create(TerminalModule terminalModule, Provider<HandoffConnectionTokenProviderSupplier> provider) {
        return new TerminalModule_ProvideConnectionTokenProviderFactory(terminalModule, provider);
    }

    public static ConnectionTokenProvider provideConnectionTokenProvider(TerminalModule terminalModule, HandoffConnectionTokenProviderSupplier handoffConnectionTokenProviderSupplier) {
        return (ConnectionTokenProvider) Preconditions.checkNotNullFromProvides(terminalModule.provideConnectionTokenProvider(handoffConnectionTokenProviderSupplier));
    }
}
