package com.stripe.stripeterminal.dagger;

import com.stripe.stripeterminal.internal.common.resourcerepository.DirectResourceRepositoryRouter;
import com.stripe.stripeterminal.internal.common.resourcerepository.ProxyResourceRepository;
import com.stripe.stripeterminal.internal.common.resourcerepository.RemoteReaderResourceRepository;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes4.dex */
public final class TerminalModule_ProvideProxyResourceRepositoryFactory implements Factory<ProxyResourceRepository> {
    private final Provider<DirectResourceRepositoryRouter> directResourceRepositoryProvider;
    private final TerminalModule module;
    private final Provider<RemoteReaderResourceRepository> remoteReaderResourceRepositoryProvider;

    public TerminalModule_ProvideProxyResourceRepositoryFactory(TerminalModule terminalModule, Provider<DirectResourceRepositoryRouter> provider, Provider<RemoteReaderResourceRepository> provider2) {
        this.module = terminalModule;
        this.directResourceRepositoryProvider = provider;
        this.remoteReaderResourceRepositoryProvider = provider2;
    }

    @Override // javax.inject.Provider
    public ProxyResourceRepository get() {
        return provideProxyResourceRepository(this.module, this.directResourceRepositoryProvider.get(), this.remoteReaderResourceRepositoryProvider.get());
    }

    public static TerminalModule_ProvideProxyResourceRepositoryFactory create(TerminalModule terminalModule, Provider<DirectResourceRepositoryRouter> provider, Provider<RemoteReaderResourceRepository> provider2) {
        return new TerminalModule_ProvideProxyResourceRepositoryFactory(terminalModule, provider, provider2);
    }

    public static ProxyResourceRepository provideProxyResourceRepository(TerminalModule terminalModule, DirectResourceRepositoryRouter directResourceRepositoryRouter, RemoteReaderResourceRepository remoteReaderResourceRepository) {
        return (ProxyResourceRepository) Preconditions.checkNotNullFromProvides(terminalModule.provideProxyResourceRepository(directResourceRepositoryRouter, remoteReaderResourceRepository));
    }
}
