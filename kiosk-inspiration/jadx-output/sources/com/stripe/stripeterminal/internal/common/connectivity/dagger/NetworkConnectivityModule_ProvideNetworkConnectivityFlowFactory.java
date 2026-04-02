package com.stripe.stripeterminal.internal.common.connectivity.dagger;

import com.stripe.stripeterminal.internal.common.connectivity.NetworkConnectivityRepository;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
import kotlinx.coroutines.flow.Flow;

/* JADX INFO: loaded from: classes4.dex */
public final class NetworkConnectivityModule_ProvideNetworkConnectivityFlowFactory implements Factory<Flow<Boolean>> {
    private final NetworkConnectivityModule module;
    private final Provider<NetworkConnectivityRepository> networkConnectivityRepositoryProvider;

    public NetworkConnectivityModule_ProvideNetworkConnectivityFlowFactory(NetworkConnectivityModule networkConnectivityModule, Provider<NetworkConnectivityRepository> provider) {
        this.module = networkConnectivityModule;
        this.networkConnectivityRepositoryProvider = provider;
    }

    @Override // javax.inject.Provider
    public Flow<Boolean> get() {
        return provideNetworkConnectivityFlow(this.module, this.networkConnectivityRepositoryProvider.get());
    }

    public static NetworkConnectivityModule_ProvideNetworkConnectivityFlowFactory create(NetworkConnectivityModule networkConnectivityModule, Provider<NetworkConnectivityRepository> provider) {
        return new NetworkConnectivityModule_ProvideNetworkConnectivityFlowFactory(networkConnectivityModule, provider);
    }

    public static Flow<Boolean> provideNetworkConnectivityFlow(NetworkConnectivityModule networkConnectivityModule, NetworkConnectivityRepository networkConnectivityRepository) {
        return (Flow) Preconditions.checkNotNullFromProvides(networkConnectivityModule.provideNetworkConnectivityFlow(networkConnectivityRepository));
    }
}
