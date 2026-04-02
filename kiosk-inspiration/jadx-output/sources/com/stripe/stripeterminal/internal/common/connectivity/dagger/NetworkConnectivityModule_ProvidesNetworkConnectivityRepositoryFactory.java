package com.stripe.stripeterminal.internal.common.connectivity.dagger;

import com.stripe.stripeterminal.internal.common.connectivity.DefaultNetworkConnectivityRepository;
import com.stripe.stripeterminal.internal.common.connectivity.NetworkConnectivityRepository;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes4.dex */
public final class NetworkConnectivityModule_ProvidesNetworkConnectivityRepositoryFactory implements Factory<NetworkConnectivityRepository> {
    private final Provider<DefaultNetworkConnectivityRepository> defaultNetworkConnectivityRepositoryProvider;
    private final NetworkConnectivityModule module;

    public NetworkConnectivityModule_ProvidesNetworkConnectivityRepositoryFactory(NetworkConnectivityModule networkConnectivityModule, Provider<DefaultNetworkConnectivityRepository> provider) {
        this.module = networkConnectivityModule;
        this.defaultNetworkConnectivityRepositoryProvider = provider;
    }

    @Override // javax.inject.Provider
    public NetworkConnectivityRepository get() {
        return providesNetworkConnectivityRepository(this.module, this.defaultNetworkConnectivityRepositoryProvider.get());
    }

    public static NetworkConnectivityModule_ProvidesNetworkConnectivityRepositoryFactory create(NetworkConnectivityModule networkConnectivityModule, Provider<DefaultNetworkConnectivityRepository> provider) {
        return new NetworkConnectivityModule_ProvidesNetworkConnectivityRepositoryFactory(networkConnectivityModule, provider);
    }

    public static NetworkConnectivityRepository providesNetworkConnectivityRepository(NetworkConnectivityModule networkConnectivityModule, DefaultNetworkConnectivityRepository defaultNetworkConnectivityRepository) {
        return (NetworkConnectivityRepository) Preconditions.checkNotNullFromProvides(networkConnectivityModule.providesNetworkConnectivityRepository(defaultNetworkConnectivityRepository));
    }
}
