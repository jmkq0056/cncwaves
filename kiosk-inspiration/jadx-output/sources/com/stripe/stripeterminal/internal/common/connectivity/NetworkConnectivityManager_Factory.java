package com.stripe.stripeterminal.internal.common.connectivity;

import android.net.ConnectivityManager;
import dagger.internal.Factory;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes4.dex */
public final class NetworkConnectivityManager_Factory implements Factory<NetworkConnectivityManager> {
    private final Provider<ConnectivityManager> connectivityManagerProvider;

    public NetworkConnectivityManager_Factory(Provider<ConnectivityManager> provider) {
        this.connectivityManagerProvider = provider;
    }

    @Override // javax.inject.Provider
    public NetworkConnectivityManager get() {
        return newInstance(this.connectivityManagerProvider.get());
    }

    public static NetworkConnectivityManager_Factory create(Provider<ConnectivityManager> provider) {
        return new NetworkConnectivityManager_Factory(provider);
    }

    public static NetworkConnectivityManager newInstance(ConnectivityManager connectivityManager) {
        return new NetworkConnectivityManager(connectivityManager);
    }
}
