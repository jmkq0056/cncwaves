package com.stripe.stripeterminal.internal.common.resourcerepository;

import com.stripe.jvmcore.logging.HealthLogger;
import com.stripe.jvmcore.terminal.tokenrepositories.SessionTokenRepository;
import com.stripe.offlinemode.helpers.OfflineConfigHelper;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.offline.DiscreteScope;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.offline.OfflineDomain;
import com.stripe.stripeterminal.internal.common.connectivity.StripeConnectivityRepository;
import dagger.internal.Factory;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes4.dex */
public final class DirectResourceRepositoryRouter_Factory implements Factory<DirectResourceRepositoryRouter> {
    private final Provider<OfflineConfigHelper> offlineConfigHelperProvider;
    private final Provider<HealthLogger<OfflineDomain, OfflineDomain.Builder, DiscreteScope, DiscreteScope.Builder>> offlineDiscreteLoggerProvider;
    private final Provider<OfflineDirectResourceRepository> offlineResourceRepositoryProvider;
    private final Provider<OnlineDirectResourceRepository> onlineResourceRepositoryProvider;
    private final Provider<SessionTokenRepository> sessionTokenRepositoryProvider;
    private final Provider<StripeConnectivityRepository> stripeConnectivityRepositoryProvider;

    public DirectResourceRepositoryRouter_Factory(Provider<OnlineDirectResourceRepository> provider, Provider<OfflineDirectResourceRepository> provider2, Provider<StripeConnectivityRepository> provider3, Provider<OfflineConfigHelper> provider4, Provider<HealthLogger<OfflineDomain, OfflineDomain.Builder, DiscreteScope, DiscreteScope.Builder>> provider5, Provider<SessionTokenRepository> provider6) {
        this.onlineResourceRepositoryProvider = provider;
        this.offlineResourceRepositoryProvider = provider2;
        this.stripeConnectivityRepositoryProvider = provider3;
        this.offlineConfigHelperProvider = provider4;
        this.offlineDiscreteLoggerProvider = provider5;
        this.sessionTokenRepositoryProvider = provider6;
    }

    @Override // javax.inject.Provider
    public DirectResourceRepositoryRouter get() {
        return newInstance(this.onlineResourceRepositoryProvider.get(), this.offlineResourceRepositoryProvider.get(), this.stripeConnectivityRepositoryProvider.get(), this.offlineConfigHelperProvider.get(), this.offlineDiscreteLoggerProvider.get(), this.sessionTokenRepositoryProvider.get());
    }

    public static DirectResourceRepositoryRouter_Factory create(Provider<OnlineDirectResourceRepository> provider, Provider<OfflineDirectResourceRepository> provider2, Provider<StripeConnectivityRepository> provider3, Provider<OfflineConfigHelper> provider4, Provider<HealthLogger<OfflineDomain, OfflineDomain.Builder, DiscreteScope, DiscreteScope.Builder>> provider5, Provider<SessionTokenRepository> provider6) {
        return new DirectResourceRepositoryRouter_Factory(provider, provider2, provider3, provider4, provider5, provider6);
    }

    public static DirectResourceRepositoryRouter newInstance(OnlineDirectResourceRepository onlineDirectResourceRepository, OfflineDirectResourceRepository offlineDirectResourceRepository, StripeConnectivityRepository stripeConnectivityRepository, OfflineConfigHelper offlineConfigHelper, HealthLogger<OfflineDomain, OfflineDomain.Builder, DiscreteScope, DiscreteScope.Builder> healthLogger, SessionTokenRepository sessionTokenRepository) {
        return new DirectResourceRepositoryRouter(onlineDirectResourceRepository, offlineDirectResourceRepository, stripeConnectivityRepository, offlineConfigHelper, healthLogger, sessionTokenRepository);
    }
}
