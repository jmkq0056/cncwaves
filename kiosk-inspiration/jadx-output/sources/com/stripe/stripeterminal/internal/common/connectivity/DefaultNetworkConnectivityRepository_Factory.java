package com.stripe.stripeterminal.internal.common.connectivity;

import dagger.internal.Factory;
import javax.inject.Provider;
import kotlinx.coroutines.CoroutineDispatcher;

/* JADX INFO: loaded from: classes4.dex */
public final class DefaultNetworkConnectivityRepository_Factory implements Factory<DefaultNetworkConnectivityRepository> {
    private final Provider<NetworkConnectivityManager> connectivityManagerProvider;
    private final Provider<CoroutineDispatcher> dispatcherProvider;

    public DefaultNetworkConnectivityRepository_Factory(Provider<NetworkConnectivityManager> provider, Provider<CoroutineDispatcher> provider2) {
        this.connectivityManagerProvider = provider;
        this.dispatcherProvider = provider2;
    }

    @Override // javax.inject.Provider
    public DefaultNetworkConnectivityRepository get() {
        return newInstance(this.connectivityManagerProvider.get(), this.dispatcherProvider.get());
    }

    public static DefaultNetworkConnectivityRepository_Factory create(Provider<NetworkConnectivityManager> provider, Provider<CoroutineDispatcher> provider2) {
        return new DefaultNetworkConnectivityRepository_Factory(provider, provider2);
    }

    public static DefaultNetworkConnectivityRepository newInstance(NetworkConnectivityManager networkConnectivityManager, CoroutineDispatcher coroutineDispatcher) {
        return new DefaultNetworkConnectivityRepository(networkConnectivityManager, coroutineDispatcher);
    }
}
