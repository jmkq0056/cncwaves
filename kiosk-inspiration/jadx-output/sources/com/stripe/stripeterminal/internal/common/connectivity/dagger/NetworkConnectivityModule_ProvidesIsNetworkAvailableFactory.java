package com.stripe.stripeterminal.internal.common.connectivity.dagger;

import com.stripe.stripeterminal.internal.common.connectivity.NetworkConnectivityRepository;
import dagger.internal.Factory;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes4.dex */
public final class NetworkConnectivityModule_ProvidesIsNetworkAvailableFactory implements Factory<Boolean> {
    private final NetworkConnectivityModule module;
    private final Provider<NetworkConnectivityRepository> networkConnectivityRepositoryProvider;

    public NetworkConnectivityModule_ProvidesIsNetworkAvailableFactory(NetworkConnectivityModule networkConnectivityModule, Provider<NetworkConnectivityRepository> provider) {
        this.module = networkConnectivityModule;
        this.networkConnectivityRepositoryProvider = provider;
    }

    @Override // javax.inject.Provider
    public Boolean get() {
        return Boolean.valueOf(providesIsNetworkAvailable(this.module, this.networkConnectivityRepositoryProvider.get()));
    }

    public static NetworkConnectivityModule_ProvidesIsNetworkAvailableFactory create(NetworkConnectivityModule networkConnectivityModule, Provider<NetworkConnectivityRepository> provider) {
        return new NetworkConnectivityModule_ProvidesIsNetworkAvailableFactory(networkConnectivityModule, provider);
    }

    public static boolean providesIsNetworkAvailable(NetworkConnectivityModule networkConnectivityModule, NetworkConnectivityRepository networkConnectivityRepository) {
        return networkConnectivityModule.providesIsNetworkAvailable(networkConnectivityRepository);
    }
}
