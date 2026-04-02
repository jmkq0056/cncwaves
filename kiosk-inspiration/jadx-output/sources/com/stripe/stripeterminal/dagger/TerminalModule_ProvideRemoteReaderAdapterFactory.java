package com.stripe.stripeterminal.dagger;

import com.stripe.jvmcore.featureflag.FeatureFlagsRepository;
import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import com.stripe.offlinemode.storage.OfflineRepository;
import com.stripe.stripeterminal.internal.common.TerminalStatusManager;
import com.stripe.stripeterminal.internal.common.adapter.RemoteReaderAdapter;
import com.stripe.stripeterminal.internal.common.remotereadercontrollers.ProxyRemoteReaderController;
import com.stripe.stripeterminal.internal.common.tokenrepositories.ConnectionTokenRepository;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes4.dex */
public final class TerminalModule_ProvideRemoteReaderAdapterFactory implements Factory<RemoteReaderAdapter> {
    private final Provider<ConnectionTokenRepository> connectionTokenRepositoryProvider;
    private final Provider<FeatureFlagsRepository> featureFlagsRepositoryProvider;
    private final Provider<LoggerFactory> loggerFactoryProvider;
    private final TerminalModule module;
    private final Provider<OfflineRepository> offlineRepositoryProvider;
    private final Provider<ProxyRemoteReaderController> proxyRemoteReaderControllerProvider;
    private final Provider<TerminalStatusManager> statusManagerProvider;

    public TerminalModule_ProvideRemoteReaderAdapterFactory(TerminalModule terminalModule, Provider<TerminalStatusManager> provider, Provider<ProxyRemoteReaderController> provider2, Provider<ConnectionTokenRepository> provider3, Provider<OfflineRepository> provider4, Provider<FeatureFlagsRepository> provider5, Provider<LoggerFactory> provider6) {
        this.module = terminalModule;
        this.statusManagerProvider = provider;
        this.proxyRemoteReaderControllerProvider = provider2;
        this.connectionTokenRepositoryProvider = provider3;
        this.offlineRepositoryProvider = provider4;
        this.featureFlagsRepositoryProvider = provider5;
        this.loggerFactoryProvider = provider6;
    }

    @Override // javax.inject.Provider
    public RemoteReaderAdapter get() {
        return provideRemoteReaderAdapter(this.module, this.statusManagerProvider.get(), this.proxyRemoteReaderControllerProvider.get(), this.connectionTokenRepositoryProvider.get(), this.offlineRepositoryProvider.get(), this.featureFlagsRepositoryProvider.get(), this.loggerFactoryProvider.get());
    }

    public static TerminalModule_ProvideRemoteReaderAdapterFactory create(TerminalModule terminalModule, Provider<TerminalStatusManager> provider, Provider<ProxyRemoteReaderController> provider2, Provider<ConnectionTokenRepository> provider3, Provider<OfflineRepository> provider4, Provider<FeatureFlagsRepository> provider5, Provider<LoggerFactory> provider6) {
        return new TerminalModule_ProvideRemoteReaderAdapterFactory(terminalModule, provider, provider2, provider3, provider4, provider5, provider6);
    }

    public static RemoteReaderAdapter provideRemoteReaderAdapter(TerminalModule terminalModule, TerminalStatusManager terminalStatusManager, ProxyRemoteReaderController proxyRemoteReaderController, ConnectionTokenRepository connectionTokenRepository, OfflineRepository offlineRepository, FeatureFlagsRepository featureFlagsRepository, LoggerFactory loggerFactory) {
        return (RemoteReaderAdapter) Preconditions.checkNotNullFromProvides(terminalModule.provideRemoteReaderAdapter(terminalStatusManager, proxyRemoteReaderController, connectionTokenRepository, offlineRepository, featureFlagsRepository, loggerFactory));
    }
}
