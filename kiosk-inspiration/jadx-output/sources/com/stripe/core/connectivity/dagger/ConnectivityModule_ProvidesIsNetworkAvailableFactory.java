package com.stripe.core.connectivity.dagger;

import com.stripe.core.connectivity.ConnectivityRepository;
import dagger.internal.Factory;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class ConnectivityModule_ProvidesIsNetworkAvailableFactory implements Factory<Boolean> {
    private final Provider<ConnectivityRepository> connectivityRepositoryProvider;

    public ConnectivityModule_ProvidesIsNetworkAvailableFactory(Provider<ConnectivityRepository> provider) {
        this.connectivityRepositoryProvider = provider;
    }

    @Override // javax.inject.Provider
    public Boolean get() {
        return Boolean.valueOf(providesIsNetworkAvailable(this.connectivityRepositoryProvider.get()));
    }

    public static ConnectivityModule_ProvidesIsNetworkAvailableFactory create(Provider<ConnectivityRepository> provider) {
        return new ConnectivityModule_ProvidesIsNetworkAvailableFactory(provider);
    }

    public static boolean providesIsNetworkAvailable(ConnectivityRepository connectivityRepository) {
        return ConnectivityModule.INSTANCE.providesIsNetworkAvailable(connectivityRepository);
    }
}
