package com.stripe.stripeterminal.internal.common.resourcerepository;

import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import com.stripe.stripeterminal.internal.common.connectivity.StripeConnectivityRepository;
import com.stripe.stripeterminal.internal.common.remotereadercontrollers.ProxyRemoteReaderController;
import com.stripe.stripeterminal.internal.common.tokenrepositories.ConnectionTokenRepository;
import dagger.internal.Factory;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes4.dex */
public final class RemoteReaderResourceRepository_Factory implements Factory<RemoteReaderResourceRepository> {
    private final Provider<ConnectionTokenRepository> connectionTokenRepositoryProvider;
    private final Provider<LoggerFactory> loggerFactoryProvider;
    private final Provider<ProxyRemoteReaderController> proxyReaderControllerProvider;
    private final Provider<StripeConnectivityRepository> stripeConnectivityRepositoryProvider;

    public RemoteReaderResourceRepository_Factory(Provider<ProxyRemoteReaderController> provider, Provider<ConnectionTokenRepository> provider2, Provider<StripeConnectivityRepository> provider3, Provider<LoggerFactory> provider4) {
        this.proxyReaderControllerProvider = provider;
        this.connectionTokenRepositoryProvider = provider2;
        this.stripeConnectivityRepositoryProvider = provider3;
        this.loggerFactoryProvider = provider4;
    }

    @Override // javax.inject.Provider
    public RemoteReaderResourceRepository get() {
        return newInstance(this.proxyReaderControllerProvider.get(), this.connectionTokenRepositoryProvider.get(), this.stripeConnectivityRepositoryProvider.get(), this.loggerFactoryProvider.get());
    }

    public static RemoteReaderResourceRepository_Factory create(Provider<ProxyRemoteReaderController> provider, Provider<ConnectionTokenRepository> provider2, Provider<StripeConnectivityRepository> provider3, Provider<LoggerFactory> provider4) {
        return new RemoteReaderResourceRepository_Factory(provider, provider2, provider3, provider4);
    }

    public static RemoteReaderResourceRepository newInstance(ProxyRemoteReaderController proxyRemoteReaderController, ConnectionTokenRepository connectionTokenRepository, StripeConnectivityRepository stripeConnectivityRepository, LoggerFactory loggerFactory) {
        return new RemoteReaderResourceRepository(proxyRemoteReaderController, connectionTokenRepository, stripeConnectivityRepository, loggerFactory);
    }
}
