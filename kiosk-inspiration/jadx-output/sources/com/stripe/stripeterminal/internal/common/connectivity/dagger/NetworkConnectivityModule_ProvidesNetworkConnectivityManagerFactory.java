package com.stripe.stripeterminal.internal.common.connectivity.dagger;

import android.net.ConnectivityManager;
import com.stripe.stripeterminal.internal.common.connectivity.NetworkConnectivityManager;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes4.dex */
public final class NetworkConnectivityModule_ProvidesNetworkConnectivityManagerFactory implements Factory<NetworkConnectivityManager> {
    private final Provider<ConnectivityManager> connectivityManagerProvider;
    private final NetworkConnectivityModule module;

    public NetworkConnectivityModule_ProvidesNetworkConnectivityManagerFactory(NetworkConnectivityModule networkConnectivityModule, Provider<ConnectivityManager> provider) {
        this.module = networkConnectivityModule;
        this.connectivityManagerProvider = provider;
    }

    @Override // javax.inject.Provider
    public NetworkConnectivityManager get() {
        return providesNetworkConnectivityManager(this.module, this.connectivityManagerProvider.get());
    }

    public static NetworkConnectivityModule_ProvidesNetworkConnectivityManagerFactory create(NetworkConnectivityModule networkConnectivityModule, Provider<ConnectivityManager> provider) {
        return new NetworkConnectivityModule_ProvidesNetworkConnectivityManagerFactory(networkConnectivityModule, provider);
    }

    public static NetworkConnectivityManager providesNetworkConnectivityManager(NetworkConnectivityModule networkConnectivityModule, ConnectivityManager connectivityManager) {
        return (NetworkConnectivityManager) Preconditions.checkNotNullFromProvides(networkConnectivityModule.providesNetworkConnectivityManager(connectivityManager));
    }
}
