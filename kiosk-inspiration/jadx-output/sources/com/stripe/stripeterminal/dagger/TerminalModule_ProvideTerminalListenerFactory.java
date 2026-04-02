package com.stripe.stripeterminal.dagger;

import com.stripe.stripeterminal.external.callable.TerminalListener;
import com.stripe.stripeterminal.internal.common.callable.ProxyTerminalListener;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes4.dex */
public final class TerminalModule_ProvideTerminalListenerFactory implements Factory<TerminalListener> {
    private final TerminalModule module;
    private final Provider<ProxyTerminalListener> proxyTerminalListenerProvider;

    public TerminalModule_ProvideTerminalListenerFactory(TerminalModule terminalModule, Provider<ProxyTerminalListener> provider) {
        this.module = terminalModule;
        this.proxyTerminalListenerProvider = provider;
    }

    @Override // javax.inject.Provider
    public TerminalListener get() {
        return provideTerminalListener(this.module, this.proxyTerminalListenerProvider.get());
    }

    public static TerminalModule_ProvideTerminalListenerFactory create(TerminalModule terminalModule, Provider<ProxyTerminalListener> provider) {
        return new TerminalModule_ProvideTerminalListenerFactory(terminalModule, provider);
    }

    public static TerminalListener provideTerminalListener(TerminalModule terminalModule, ProxyTerminalListener proxyTerminalListener) {
        return (TerminalListener) Preconditions.checkNotNullFromProvides(terminalModule.provideTerminalListener(proxyTerminalListener));
    }
}
