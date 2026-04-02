package com.stripe.stripeterminal.dagger;

import com.stripe.stripeterminal.external.models.NetworkStatus;
import com.stripe.stripeterminal.internal.common.connectivity.StripeConnectivityRepository;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes4.dex */
public final class OfflineConnectivityModule_Companion_ProvideStripeNetworkStatusFactory implements Factory<NetworkStatus> {
    private final Provider<StripeConnectivityRepository> stripeConnectivityRepositoryProvider;

    public OfflineConnectivityModule_Companion_ProvideStripeNetworkStatusFactory(Provider<StripeConnectivityRepository> provider) {
        this.stripeConnectivityRepositoryProvider = provider;
    }

    @Override // javax.inject.Provider
    public NetworkStatus get() {
        return provideStripeNetworkStatus(this.stripeConnectivityRepositoryProvider.get());
    }

    public static OfflineConnectivityModule_Companion_ProvideStripeNetworkStatusFactory create(Provider<StripeConnectivityRepository> provider) {
        return new OfflineConnectivityModule_Companion_ProvideStripeNetworkStatusFactory(provider);
    }

    public static NetworkStatus provideStripeNetworkStatus(StripeConnectivityRepository stripeConnectivityRepository) {
        return (NetworkStatus) Preconditions.checkNotNullFromProvides(OfflineConnectivityModule.INSTANCE.provideStripeNetworkStatus(stripeConnectivityRepository));
    }
}
