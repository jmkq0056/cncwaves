package com.stripe.stripeterminal.dagger;

import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import com.stripe.stripeterminal.internal.common.callable.ProxyTerminalListener;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes4.dex */
public final class TerminalModule_ProvideProxyTerminalListenerProxyFactory implements Factory<ProxyTerminalListener> {
    private final Provider<LoggerFactory> loggerFactoryProvider;
    private final TerminalModule module;

    public TerminalModule_ProvideProxyTerminalListenerProxyFactory(TerminalModule terminalModule, Provider<LoggerFactory> provider) {
        this.module = terminalModule;
        this.loggerFactoryProvider = provider;
    }

    @Override // javax.inject.Provider
    public ProxyTerminalListener get() {
        return provideProxyTerminalListenerProxy(this.module, this.loggerFactoryProvider.get());
    }

    public static TerminalModule_ProvideProxyTerminalListenerProxyFactory create(TerminalModule terminalModule, Provider<LoggerFactory> provider) {
        return new TerminalModule_ProvideProxyTerminalListenerProxyFactory(terminalModule, provider);
    }

    public static ProxyTerminalListener provideProxyTerminalListenerProxy(TerminalModule terminalModule, LoggerFactory loggerFactory) {
        return (ProxyTerminalListener) Preconditions.checkNotNullFromProvides(terminalModule.provideProxyTerminalListenerProxy(loggerFactory));
    }
}
