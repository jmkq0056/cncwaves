package com.stripe.stripeterminal.internal.common.resourcerepository;

import com.stripe.core.transaction.TransactionRepository;
import com.stripe.jvmcore.featureflag.FeatureFlagsRepository;
import com.stripe.jvmcore.logging.HealthLogger;
import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import com.stripe.logwriter.LogWriter;
import com.stripe.offlinemode.helpers.OfflineConfigHelper;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.offline.DiscreteScope;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.offline.OfflineDomain;
import com.stripe.stripeterminal.internal.common.TerminalStatusManager;
import com.stripe.stripeterminal.internal.common.api.ApiClient;
import com.stripe.stripeterminal.internal.common.api.ApiRequestFactory;
import com.stripe.stripeterminal.internal.common.api.PaymentIntentUpdater;
import com.stripe.stripeterminal.internal.common.tokenrepositories.ConnectionTokenRepository;
import com.stripe.transaction.ChargeAttemptManager;
import dagger.internal.Factory;
import javax.inject.Provider;
import kotlinx.coroutines.CoroutineDispatcher;

/* JADX INFO: loaded from: classes4.dex */
public final class OnlineDirectResourceRepository_Factory implements Factory<OnlineDirectResourceRepository> {
    private final Provider<ApiClient> apiClientProvider;
    private final Provider<ApiRequestFactory> apiRequestFactoryProvider;
    private final Provider<ChargeAttemptManager> chargeAttemptManagerProvider;
    private final Provider<ConnectionTokenRepository> connectionTokenRepositoryProvider;
    private final Provider<CoroutineDispatcher> dispatcherProvider;
    private final Provider<FeatureFlagsRepository> featureFlagsRepositoryProvider;
    private final Provider<LogWriter> logWriterProvider;
    private final Provider<LoggerFactory> loggerFactoryProvider;
    private final Provider<OfflineConfigHelper> offlineConfigHelperProvider;
    private final Provider<HealthLogger<OfflineDomain, OfflineDomain.Builder, DiscreteScope, DiscreteScope.Builder>> offlineDiscreteLoggerProvider;
    private final Provider<PaymentIntentUpdater> paymentIntentUpdaterProvider;
    private final Provider<TerminalStatusManager> statusManagerProvider;
    private final Provider<TransactionRepository> transactionRepositoryProvider;

    public OnlineDirectResourceRepository_Factory(Provider<ApiClient> provider, Provider<ChargeAttemptManager> provider2, Provider<TerminalStatusManager> provider3, Provider<TransactionRepository> provider4, Provider<ConnectionTokenRepository> provider5, Provider<ApiRequestFactory> provider6, Provider<OfflineConfigHelper> provider7, Provider<HealthLogger<OfflineDomain, OfflineDomain.Builder, DiscreteScope, DiscreteScope.Builder>> provider8, Provider<LogWriter> provider9, Provider<CoroutineDispatcher> provider10, Provider<FeatureFlagsRepository> provider11, Provider<PaymentIntentUpdater> provider12, Provider<LoggerFactory> provider13) {
        this.apiClientProvider = provider;
        this.chargeAttemptManagerProvider = provider2;
        this.statusManagerProvider = provider3;
        this.transactionRepositoryProvider = provider4;
        this.connectionTokenRepositoryProvider = provider5;
        this.apiRequestFactoryProvider = provider6;
        this.offlineConfigHelperProvider = provider7;
        this.offlineDiscreteLoggerProvider = provider8;
        this.logWriterProvider = provider9;
        this.dispatcherProvider = provider10;
        this.featureFlagsRepositoryProvider = provider11;
        this.paymentIntentUpdaterProvider = provider12;
        this.loggerFactoryProvider = provider13;
    }

    @Override // javax.inject.Provider
    public OnlineDirectResourceRepository get() {
        return newInstance(this.apiClientProvider.get(), this.chargeAttemptManagerProvider.get(), this.statusManagerProvider.get(), this.transactionRepositoryProvider.get(), this.connectionTokenRepositoryProvider.get(), this.apiRequestFactoryProvider.get(), this.offlineConfigHelperProvider.get(), this.offlineDiscreteLoggerProvider.get(), this.logWriterProvider.get(), this.dispatcherProvider.get(), this.featureFlagsRepositoryProvider.get(), this.paymentIntentUpdaterProvider.get(), this.loggerFactoryProvider.get());
    }

    public static OnlineDirectResourceRepository_Factory create(Provider<ApiClient> provider, Provider<ChargeAttemptManager> provider2, Provider<TerminalStatusManager> provider3, Provider<TransactionRepository> provider4, Provider<ConnectionTokenRepository> provider5, Provider<ApiRequestFactory> provider6, Provider<OfflineConfigHelper> provider7, Provider<HealthLogger<OfflineDomain, OfflineDomain.Builder, DiscreteScope, DiscreteScope.Builder>> provider8, Provider<LogWriter> provider9, Provider<CoroutineDispatcher> provider10, Provider<FeatureFlagsRepository> provider11, Provider<PaymentIntentUpdater> provider12, Provider<LoggerFactory> provider13) {
        return new OnlineDirectResourceRepository_Factory(provider, provider2, provider3, provider4, provider5, provider6, provider7, provider8, provider9, provider10, provider11, provider12, provider13);
    }

    public static OnlineDirectResourceRepository newInstance(ApiClient apiClient, ChargeAttemptManager chargeAttemptManager, TerminalStatusManager terminalStatusManager, TransactionRepository transactionRepository, ConnectionTokenRepository connectionTokenRepository, ApiRequestFactory apiRequestFactory, OfflineConfigHelper offlineConfigHelper, HealthLogger<OfflineDomain, OfflineDomain.Builder, DiscreteScope, DiscreteScope.Builder> healthLogger, LogWriter logWriter, CoroutineDispatcher coroutineDispatcher, FeatureFlagsRepository featureFlagsRepository, PaymentIntentUpdater paymentIntentUpdater, LoggerFactory loggerFactory) {
        return new OnlineDirectResourceRepository(apiClient, chargeAttemptManager, terminalStatusManager, transactionRepository, connectionTokenRepository, apiRequestFactory, offlineConfigHelper, healthLogger, logWriter, coroutineDispatcher, featureFlagsRepository, paymentIntentUpdater, loggerFactory);
    }
}
