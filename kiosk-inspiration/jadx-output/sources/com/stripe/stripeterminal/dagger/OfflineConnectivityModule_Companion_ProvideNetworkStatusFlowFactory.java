package com.stripe.stripeterminal.dagger;

import com.stripe.stripeterminal.external.models.NetworkStatus;
import com.stripe.stripeterminal.internal.common.connectivity.StripeConnectivityRepository;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
import kotlinx.coroutines.flow.Flow;

/* JADX INFO: loaded from: classes4.dex */
public final class OfflineConnectivityModule_Companion_ProvideNetworkStatusFlowFactory implements Factory<Flow<NetworkStatus>> {
    private final Provider<StripeConnectivityRepository> stripeConnectivityRepositoryProvider;

    public OfflineConnectivityModule_Companion_ProvideNetworkStatusFlowFactory(Provider<StripeConnectivityRepository> provider) {
        this.stripeConnectivityRepositoryProvider = provider;
    }

    @Override // javax.inject.Provider
    public Flow<NetworkStatus> get() {
        return provideNetworkStatusFlow(this.stripeConnectivityRepositoryProvider.get());
    }

    public static OfflineConnectivityModule_Companion_ProvideNetworkStatusFlowFactory create(Provider<StripeConnectivityRepository> provider) {
        return new OfflineConnectivityModule_Companion_ProvideNetworkStatusFlowFactory(provider);
    }

    public static Flow<NetworkStatus> provideNetworkStatusFlow(StripeConnectivityRepository stripeConnectivityRepository) {
        return (Flow) Preconditions.checkNotNullFromProvides(OfflineConnectivityModule.INSTANCE.provideNetworkStatusFlow(stripeConnectivityRepository));
    }
}
