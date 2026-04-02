package com.stripe.stripeterminal.internal.common.resourcerepository;

import com.stripe.core.transaction.TransactionRepository;
import com.stripe.jvmcore.logging.HealthLogger;
import com.stripe.jvmcore.restclient.AuthenticatedRestClient;
import com.stripe.jvmcore.restclient.CustomHeadersProvider;
import com.stripe.offlinemode.OfflineEventHandler;
import com.stripe.offlinemode.helpers.OfflineConfigHelper;
import com.stripe.offlinemode.helpers.OfflinePaymentMethodValidator;
import com.stripe.offlinemode.helpers.OfflineRequestHelper;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.offline.DiscreteScope;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.offline.OfflineDomain;
import com.stripe.stripeterminal.internal.common.TerminalStatusManager;
import com.stripe.stripeterminal.internal.common.api.ApiRequestFactory;
import com.stripe.transaction.ChargeAttemptManager;
import dagger.internal.Factory;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes4.dex */
public final class OfflineDirectResourceRepository_Factory implements Factory<OfflineDirectResourceRepository> {
    private final Provider<ApiRequestFactory> apiRequestFactoryProvider;
    private final Provider<AuthenticatedRestClient> authenticatedRestClientProvider;
    private final Provider<ChargeAttemptManager> chargeAttemptManagerProvider;
    private final Provider<CustomHeadersProvider> customHeadersProvider;
    private final Provider<OfflineConfigHelper> offlineConfigHelperProvider;
    private final Provider<HealthLogger<OfflineDomain, OfflineDomain.Builder, DiscreteScope, DiscreteScope.Builder>> offlineDiscreteLoggerProvider;
    private final Provider<OfflineEventHandler> offlineEventHandlerProvider;
    private final Provider<OfflinePaymentMethodValidator> offlinePaymentMethodValidatorProvider;
    private final Provider<OfflineRequestHelper> offlineRequestHelperProvider;
    private final Provider<TerminalStatusManager> statusManagerProvider;
    private final Provider<TransactionRepository> transactionRepositoryProvider;

    public OfflineDirectResourceRepository_Factory(Provider<ApiRequestFactory> provider, Provider<TransactionRepository> provider2, Provider<OfflineEventHandler> provider3, Provider<TerminalStatusManager> provider4, Provider<OfflineRequestHelper> provider5, Provider<CustomHeadersProvider> provider6, Provider<ChargeAttemptManager> provider7, Provider<AuthenticatedRestClient> provider8, Provider<OfflineConfigHelper> provider9, Provider<HealthLogger<OfflineDomain, OfflineDomain.Builder, DiscreteScope, DiscreteScope.Builder>> provider10, Provider<OfflinePaymentMethodValidator> provider11) {
        this.apiRequestFactoryProvider = provider;
        this.transactionRepositoryProvider = provider2;
        this.offlineEventHandlerProvider = provider3;
        this.statusManagerProvider = provider4;
        this.offlineRequestHelperProvider = provider5;
        this.customHeadersProvider = provider6;
        this.chargeAttemptManagerProvider = provider7;
        this.authenticatedRestClientProvider = provider8;
        this.offlineConfigHelperProvider = provider9;
        this.offlineDiscreteLoggerProvider = provider10;
        this.offlinePaymentMethodValidatorProvider = provider11;
    }

    @Override // javax.inject.Provider
    public OfflineDirectResourceRepository get() {
        return newInstance(this.apiRequestFactoryProvider.get(), this.transactionRepositoryProvider.get(), this.offlineEventHandlerProvider.get(), this.statusManagerProvider.get(), this.offlineRequestHelperProvider.get(), this.customHeadersProvider.get(), this.chargeAttemptManagerProvider.get(), this.authenticatedRestClientProvider.get(), this.offlineConfigHelperProvider.get(), this.offlineDiscreteLoggerProvider.get(), this.offlinePaymentMethodValidatorProvider.get());
    }

    public static OfflineDirectResourceRepository_Factory create(Provider<ApiRequestFactory> provider, Provider<TransactionRepository> provider2, Provider<OfflineEventHandler> provider3, Provider<TerminalStatusManager> provider4, Provider<OfflineRequestHelper> provider5, Provider<CustomHeadersProvider> provider6, Provider<ChargeAttemptManager> provider7, Provider<AuthenticatedRestClient> provider8, Provider<OfflineConfigHelper> provider9, Provider<HealthLogger<OfflineDomain, OfflineDomain.Builder, DiscreteScope, DiscreteScope.Builder>> provider10, Provider<OfflinePaymentMethodValidator> provider11) {
        return new OfflineDirectResourceRepository_Factory(provider, provider2, provider3, provider4, provider5, provider6, provider7, provider8, provider9, provider10, provider11);
    }

    public static OfflineDirectResourceRepository newInstance(ApiRequestFactory apiRequestFactory, TransactionRepository transactionRepository, OfflineEventHandler offlineEventHandler, TerminalStatusManager terminalStatusManager, OfflineRequestHelper offlineRequestHelper, CustomHeadersProvider customHeadersProvider, ChargeAttemptManager chargeAttemptManager, AuthenticatedRestClient authenticatedRestClient, OfflineConfigHelper offlineConfigHelper, HealthLogger<OfflineDomain, OfflineDomain.Builder, DiscreteScope, DiscreteScope.Builder> healthLogger, OfflinePaymentMethodValidator offlinePaymentMethodValidator) {
        return new OfflineDirectResourceRepository(apiRequestFactory, transactionRepository, offlineEventHandler, terminalStatusManager, offlineRequestHelper, customHeadersProvider, chargeAttemptManager, authenticatedRestClient, offlineConfigHelper, healthLogger, offlinePaymentMethodValidator);
    }
}
