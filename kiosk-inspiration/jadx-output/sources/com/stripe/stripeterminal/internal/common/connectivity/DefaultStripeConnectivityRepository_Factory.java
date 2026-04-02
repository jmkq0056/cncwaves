package com.stripe.stripeterminal.internal.common.connectivity;

import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import com.stripe.offlinemode.storage.OfflineRepository;
import com.stripe.stripeterminal.internal.common.callable.ProxyOfflineListener;
import com.stripe.stripeterminal.internal.common.repositories.SdkStatusRepository;
import dagger.internal.Factory;
import javax.inject.Provider;
import kotlinx.coroutines.CoroutineDispatcher;

/* JADX INFO: loaded from: classes4.dex */
public final class DefaultStripeConnectivityRepository_Factory implements Factory<DefaultStripeConnectivityRepository> {
    private final Provider<CoroutineDispatcher> dispatcherProvider;
    private final Provider<LoggerFactory> loggerFactoryProvider;
    private final Provider<NetworkConnectivityRepository> networkConnectivityRepositoryProvider;
    private final Provider<OfflineRepository> offlineRepositoryProvider;
    private final Provider<ProxyOfflineListener> proxyOfflineListenerProvider;
    private final Provider<SdkStatusRepository> sdkStatusRepositoryProvider;
    private final Provider<StripeNetworkHealthChecker> stripeNetworkHealthCheckerProvider;

    public DefaultStripeConnectivityRepository_Factory(Provider<CoroutineDispatcher> provider, Provider<NetworkConnectivityRepository> provider2, Provider<StripeNetworkHealthChecker> provider3, Provider<OfflineRepository> provider4, Provider<ProxyOfflineListener> provider5, Provider<SdkStatusRepository> provider6, Provider<LoggerFactory> provider7) {
        this.dispatcherProvider = provider;
        this.networkConnectivityRepositoryProvider = provider2;
        this.stripeNetworkHealthCheckerProvider = provider3;
        this.offlineRepositoryProvider = provider4;
        this.proxyOfflineListenerProvider = provider5;
        this.sdkStatusRepositoryProvider = provider6;
        this.loggerFactoryProvider = provider7;
    }

    @Override // javax.inject.Provider
    public DefaultStripeConnectivityRepository get() {
        return newInstance(this.dispatcherProvider.get(), this.networkConnectivityRepositoryProvider.get(), this.stripeNetworkHealthCheckerProvider.get(), this.offlineRepositoryProvider.get(), this.proxyOfflineListenerProvider.get(), this.sdkStatusRepositoryProvider.get(), this.loggerFactoryProvider.get());
    }

    public static DefaultStripeConnectivityRepository_Factory create(Provider<CoroutineDispatcher> provider, Provider<NetworkConnectivityRepository> provider2, Provider<StripeNetworkHealthChecker> provider3, Provider<OfflineRepository> provider4, Provider<ProxyOfflineListener> provider5, Provider<SdkStatusRepository> provider6, Provider<LoggerFactory> provider7) {
        return new DefaultStripeConnectivityRepository_Factory(provider, provider2, provider3, provider4, provider5, provider6, provider7);
    }

    public static DefaultStripeConnectivityRepository newInstance(CoroutineDispatcher coroutineDispatcher, NetworkConnectivityRepository networkConnectivityRepository, StripeNetworkHealthChecker stripeNetworkHealthChecker, OfflineRepository offlineRepository, ProxyOfflineListener proxyOfflineListener, SdkStatusRepository sdkStatusRepository, LoggerFactory loggerFactory) {
        return new DefaultStripeConnectivityRepository(coroutineDispatcher, networkConnectivityRepository, stripeNetworkHealthChecker, offlineRepository, proxyOfflineListener, sdkStatusRepository, loggerFactory);
    }
}
