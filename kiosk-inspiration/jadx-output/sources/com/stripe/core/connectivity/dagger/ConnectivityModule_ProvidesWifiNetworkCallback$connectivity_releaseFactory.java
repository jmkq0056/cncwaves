package com.stripe.core.connectivity.dagger;

import android.net.wifi.WifiManager;
import com.stripe.core.connectivity.wifi.WifiNetworkCallback;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes3.dex */
public final class ConnectivityModule_ProvidesWifiNetworkCallback$connectivity_releaseFactory implements Factory<WifiNetworkCallback> {
    private final Provider<CoroutineScope> appScopeProvider;
    private final Provider<WifiManager> wifiManagerProvider;

    public ConnectivityModule_ProvidesWifiNetworkCallback$connectivity_releaseFactory(Provider<WifiManager> provider, Provider<CoroutineScope> provider2) {
        this.wifiManagerProvider = provider;
        this.appScopeProvider = provider2;
    }

    @Override // javax.inject.Provider
    public WifiNetworkCallback get() {
        return providesWifiNetworkCallback$connectivity_release(this.wifiManagerProvider.get(), this.appScopeProvider.get());
    }

    public static ConnectivityModule_ProvidesWifiNetworkCallback$connectivity_releaseFactory create(Provider<WifiManager> provider, Provider<CoroutineScope> provider2) {
        return new ConnectivityModule_ProvidesWifiNetworkCallback$connectivity_releaseFactory(provider, provider2);
    }

    public static WifiNetworkCallback providesWifiNetworkCallback$connectivity_release(WifiManager wifiManager, CoroutineScope coroutineScope) {
        return (WifiNetworkCallback) Preconditions.checkNotNullFromProvides(ConnectivityModule.INSTANCE.providesWifiNetworkCallback$connectivity_release(wifiManager, coroutineScope));
    }
}
