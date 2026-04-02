package com.stripe.stripeterminal.dagger;

import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import com.stripe.stripeterminal.internal.common.Adapter;
import com.stripe.stripeterminal.internal.common.adapter.AdapterRepository;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes4.dex */
public final class TerminalModule_ProvideProxyAdapterFactory implements Factory<Adapter> {
    private final Provider<LoggerFactory> loggerFactoryProvider;
    private final TerminalModule module;
    private final Provider<AdapterRepository> repositoryProvider;

    public TerminalModule_ProvideProxyAdapterFactory(TerminalModule terminalModule, Provider<AdapterRepository> provider, Provider<LoggerFactory> provider2) {
        this.module = terminalModule;
        this.repositoryProvider = provider;
        this.loggerFactoryProvider = provider2;
    }

    @Override // javax.inject.Provider
    public Adapter get() {
        return provideProxyAdapter(this.module, this.repositoryProvider.get(), this.loggerFactoryProvider.get());
    }

    public static TerminalModule_ProvideProxyAdapterFactory create(TerminalModule terminalModule, Provider<AdapterRepository> provider, Provider<LoggerFactory> provider2) {
        return new TerminalModule_ProvideProxyAdapterFactory(terminalModule, provider, provider2);
    }

    public static Adapter provideProxyAdapter(TerminalModule terminalModule, AdapterRepository adapterRepository, LoggerFactory loggerFactory) {
        return (Adapter) Preconditions.checkNotNullFromProvides(terminalModule.provideProxyAdapter(adapterRepository, loggerFactory));
    }
}
