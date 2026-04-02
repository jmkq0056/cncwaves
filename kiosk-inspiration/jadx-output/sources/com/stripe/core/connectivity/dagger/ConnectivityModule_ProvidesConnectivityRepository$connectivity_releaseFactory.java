package com.stripe.core.connectivity.dagger;

import android.net.ConnectivityManager;
import android.net.wifi.WifiManager;
import com.stripe.core.connectivity.ConnectivityRepository;
import com.stripe.core.connectivity.cellular.CellularNetworkCallback;
import com.stripe.core.connectivity.ethernet.EthernetNetworkCallback;
import com.stripe.core.connectivity.wifi.WifiNetworkCallback;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes3.dex */
public final class ConnectivityModule_ProvidesConnectivityRepository$connectivity_releaseFactory implements Factory<ConnectivityRepository> {
    private final Provider<CoroutineScope> appScopeProvider;
    private final Provider<CellularNetworkCallback> cellularNetworkCallbackProvider;
    private final Provider<ConnectivityManager> connectivityManagerProvider;
    private final Provider<CoroutineDispatcher> coroutineDispatcherProvider;
    private final Provider<EthernetNetworkCallback> ethernetNetworkCallbackProvider;
    private final Provider<WifiManager> wifiManagerProvider;
    private final Provider<WifiNetworkCallback> wifiNetworkCallbackProvider;

    public ConnectivityModule_ProvidesConnectivityRepository$connectivity_releaseFactory(Provider<CoroutineScope> provider, Provider<ConnectivityManager> provider2, Provider<WifiManager> provider3, Provider<CoroutineDispatcher> provider4, Provider<WifiNetworkCallback> provider5, Provider<EthernetNetworkCallback> provider6, Provider<CellularNetworkCallback> provider7) {
        this.appScopeProvider = provider;
        this.connectivityManagerProvider = provider2;
        this.wifiManagerProvider = provider3;
        this.coroutineDispatcherProvider = provider4;
        this.wifiNetworkCallbackProvider = provider5;
        this.ethernetNetworkCallbackProvider = provider6;
        this.cellularNetworkCallbackProvider = provider7;
    }

    @Override // javax.inject.Provider
    public ConnectivityRepository get() {
        return providesConnectivityRepository$connectivity_release(this.appScopeProvider.get(), this.connectivityManagerProvider.get(), this.wifiManagerProvider.get(), this.coroutineDispatcherProvider.get(), this.wifiNetworkCallbackProvider.get(), this.ethernetNetworkCallbackProvider.get(), this.cellularNetworkCallbackProvider.get());
    }

    public static ConnectivityModule_ProvidesConnectivityRepository$connectivity_releaseFactory create(Provider<CoroutineScope> provider, Provider<ConnectivityManager> provider2, Provider<WifiManager> provider3, Provider<CoroutineDispatcher> provider4, Provider<WifiNetworkCallback> provider5, Provider<EthernetNetworkCallback> provider6, Provider<CellularNetworkCallback> provider7) {
        return new ConnectivityModule_ProvidesConnectivityRepository$connectivity_releaseFactory(provider, provider2, provider3, provider4, provider5, provider6, provider7);
    }

    public static ConnectivityRepository providesConnectivityRepository$connectivity_release(CoroutineScope coroutineScope, ConnectivityManager connectivityManager, WifiManager wifiManager, CoroutineDispatcher coroutineDispatcher, WifiNetworkCallback wifiNetworkCallback, EthernetNetworkCallback ethernetNetworkCallback, CellularNetworkCallback cellularNetworkCallback) {
        return (ConnectivityRepository) Preconditions.checkNotNullFromProvides(ConnectivityModule.INSTANCE.providesConnectivityRepository$connectivity_release(coroutineScope, connectivityManager, wifiManager, coroutineDispatcher, wifiNetworkCallback, ethernetNetworkCallback, cellularNetworkCallback));
    }
}
