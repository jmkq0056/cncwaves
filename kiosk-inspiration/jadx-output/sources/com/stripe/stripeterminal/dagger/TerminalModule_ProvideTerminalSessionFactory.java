package com.stripe.stripeterminal.dagger;

import com.stripe.cancelintent.CancelIntentManager;
import com.stripe.core.transaction.SettingsRepository;
import com.stripe.core.transaction.TransactionRepository;
import com.stripe.discoverreaders.EnsureSingleDiscoverOperation;
import com.stripe.jvmcore.featureflag.FeatureFlagsRepository;
import com.stripe.jvmcore.forms.logger.FormsIntegrationLogger;
import com.stripe.jvmcore.forms.transform.CollectInputsExternalModelTransformer;
import com.stripe.jvmcore.forms.transform.CollectInputsParametersTransformer;
import com.stripe.jvmcore.logging.HealthLogger;
import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import com.stripe.jvmcore.logging.terminal.log.TraceManager;
import com.stripe.jvmcore.offlinemode.repositories.OfflineStatusRepository;
import com.stripe.jvmcore.terminal.tokenrepositories.SessionTokenRepository;
import com.stripe.offlinemode.OfflineReaderSetup;
import com.stripe.offlinemode.helpers.OfflineConfigHelper;
import com.stripe.offlinemode.helpers.OfflineDatabaseReaper;
import com.stripe.offlinemode.helpers.OfflineSessionManager;
import com.stripe.offlinemode.storage.OfflineRepository;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.passthrough.DiscreteScope;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.passthrough.PassthroughDomain;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.passthrough.StageScope;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.updates.EndToEndScope;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.updates.UpdatesDomain;
import com.stripe.spos.sentry.http.ErrorReporter;
import com.stripe.stripeterminal.external.models.NetworkStatus;
import com.stripe.stripeterminal.internal.common.Adapter;
import com.stripe.stripeterminal.internal.common.LocationHandler;
import com.stripe.stripeterminal.internal.common.TerminalStatusManager;
import com.stripe.stripeterminal.internal.common.adapter.SimulatorConfigurationRepository;
import com.stripe.stripeterminal.internal.common.adapter.connection.DisconnectReasonRepository;
import com.stripe.stripeterminal.internal.common.api.ApiClient;
import com.stripe.stripeterminal.internal.common.api.PaymentIntentUpdater;
import com.stripe.stripeterminal.internal.common.callable.ProxyOfflineListener;
import com.stripe.stripeterminal.internal.common.callable.ProxyTerminalListener;
import com.stripe.stripeterminal.internal.common.connectivity.StripeConnectivityRepository;
import com.stripe.stripeterminal.internal.common.introspection.LocationServicesValidator;
import com.stripe.stripeterminal.internal.common.polling.ReaderBatteryInfoPoller;
import com.stripe.stripeterminal.internal.common.resourcerepository.ProxyResourceRepository;
import com.stripe.stripeterminal.internal.common.storage.BluetoothDeviceNameRepository;
import com.stripe.stripeterminal.internal.common.terminalsession.BackgroundReaderActivator;
import com.stripe.stripeterminal.internal.common.terminalsession.SessionTokenInterceptor;
import com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession;
import com.stripe.stripeterminal.internal.common.terminalsession.UpdatePaymentIntentParamRepository;
import com.stripe.stripeterminal.internal.common.terminalsession.transform.TerminalExceptionTransformer;
import com.stripe.stripeterminal.internal.common.tokenrepositories.ConnectionTokenRepository;
import com.stripe.stripeterminal.internal.common.validators.CollectPaymentMethodOperationValidator;
import com.stripe.stripeterminal.internal.common.validators.PermissionsValidator;
import com.stripe.stripeterminal.internal.common.validators.TipEligibleValidator;
import com.stripe.time.Clock;
import com.stripe.transaction.ChargeAttemptManager;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes4.dex */
public final class TerminalModule_ProvideTerminalSessionFactory implements Factory<TerminalSession> {
    private final Provider<Adapter> adapterProvider;
    private final Provider<ApiClient> apiClientProvider;
    private final Provider<BackgroundReaderActivator> backgroundReaderActivatorProvider;
    private final Provider<BluetoothDeviceNameRepository> bluetoothDeviceNameRepositoryProvider;
    private final Provider<CancelIntentManager> cancelIntentManagerProvider;
    private final Provider<ChargeAttemptManager> chargeAttemptManagerProvider;
    private final Provider<Clock> clockProvider;
    private final Provider<CollectInputsExternalModelTransformer> collectInputsExternalModelTransformerProvider;
    private final Provider<CollectInputsParametersTransformer> collectInputsParametersTransformerProvider;
    private final Provider<CollectPaymentMethodOperationValidator> collectPaymentMethodOperationValidatorProvider;
    private final Provider<ConnectionTokenRepository> connectionTokenRepositoryProvider;
    private final Provider<DisconnectReasonRepository> disconnectReasonRepositoryProvider;
    private final Provider<EnsureSingleDiscoverOperation> ensureSingleDiscoverOperationProvider;
    private final Provider<ErrorReporter> errorReporterProvider;
    private final Provider<FeatureFlagsRepository> featureFlagsRepositoryProvider;
    private final Provider<FormsIntegrationLogger> formsIntegrationLoggerProvider;
    private final Provider<HealthLogger<UpdatesDomain, UpdatesDomain.Builder, EndToEndScope, EndToEndScope.Builder>> healthLoggerProvider;
    private final Provider<LocationHandler> locationHandlerProvider;
    private final Provider<LocationServicesValidator> locationValidatorProvider;
    private final Provider<LoggerFactory> loggerFactoryProvider;
    private final TerminalModule module;
    private final Provider<NetworkStatus> networkStatusProvider;
    private final Provider<OfflineConfigHelper> offlineConfigHelperProvider;
    private final Provider<OfflineDatabaseReaper> offlineDatabaseReaperProvider;
    private final Provider<OfflineReaderSetup> offlineReaderSetupProvider;
    private final Provider<OfflineRepository> offlineRepositoryProvider;
    private final Provider<OfflineSessionManager> offlineSessionManagerProvider;
    private final Provider<OfflineStatusRepository> offlineStatusRepositoryProvider;
    private final Provider<HealthLogger<PassthroughDomain, PassthroughDomain.Builder, DiscreteScope, DiscreteScope.Builder>> passthroughHealthDiscreteLoggerProvider;
    private final Provider<HealthLogger<PassthroughDomain, PassthroughDomain.Builder, StageScope, StageScope.Builder>> passthroughHealthStageLoggerProvider;
    private final Provider<PaymentIntentUpdater> paymentIntentUpdaterProvider;
    private final Provider<PermissionsValidator> permissionsValidatorProvider;
    private final Provider<ProxyOfflineListener> proxyOfflineListenerProvider;
    private final Provider<ProxyResourceRepository> proxyResourceRepositoryProvider;
    private final Provider<ProxyTerminalListener> proxyTerminalListenerProvider;
    private final Provider<ReaderBatteryInfoPoller> readerBatteryInfoPollerProvider;
    private final Provider<SessionTokenInterceptor> sessionTokenInterceptorProvider;
    private final Provider<SessionTokenRepository> sessionTokenRepositoryProvider;
    private final Provider<SettingsRepository> settingsRepositoryProvider;
    private final Provider<SimulatorConfigurationRepository> simulatorConfigurationRepositoryProvider;
    private final Provider<TerminalStatusManager> statusManagerProvider;
    private final Provider<StripeConnectivityRepository> stripeConnectivityRepositoryProvider;
    private final Provider<TerminalExceptionTransformer> terminalExceptionTransformerProvider;
    private final Provider<TipEligibleValidator> tipEligibleValidatorProvider;
    private final Provider<TraceManager> traceManagerProvider;
    private final Provider<TransactionRepository> transactionRepositoryProvider;
    private final Provider<UpdatePaymentIntentParamRepository> updatePaymentIntentParamRepositoryProvider;

    public TerminalModule_ProvideTerminalSessionFactory(TerminalModule terminalModule, Provider<Adapter> provider, Provider<ApiClient> provider2, Provider<LocationServicesValidator> provider3, Provider<LocationHandler> provider4, Provider<TerminalStatusManager> provider5, Provider<ConnectionTokenRepository> provider6, Provider<SessionTokenRepository> provider7, Provider<ProxyResourceRepository> provider8, Provider<ChargeAttemptManager> provider9, Provider<TransactionRepository> provider10, Provider<ReaderBatteryInfoPoller> provider11, Provider<TraceManager> provider12, Provider<OfflineReaderSetup> provider13, Provider<OfflineSessionManager> provider14, Provider<TipEligibleValidator> provider15, Provider<CollectPaymentMethodOperationValidator> provider16, Provider<FeatureFlagsRepository> provider17, Provider<NetworkStatus> provider18, Provider<BluetoothDeviceNameRepository> provider19, Provider<OfflineDatabaseReaper> provider20, Provider<StripeConnectivityRepository> provider21, Provider<HealthLogger<UpdatesDomain, UpdatesDomain.Builder, EndToEndScope, EndToEndScope.Builder>> provider22, Provider<OfflineConfigHelper> provider23, Provider<SimulatorConfigurationRepository> provider24, Provider<ProxyTerminalListener> provider25, Provider<ProxyOfflineListener> provider26, Provider<OfflineRepository> provider27, Provider<BackgroundReaderActivator> provider28, Provider<SessionTokenInterceptor> provider29, Provider<ErrorReporter> provider30, Provider<CollectInputsExternalModelTransformer> provider31, Provider<PermissionsValidator> provider32, Provider<OfflineStatusRepository> provider33, Provider<FormsIntegrationLogger> provider34, Provider<DisconnectReasonRepository> provider35, Provider<SettingsRepository> provider36, Provider<TerminalExceptionTransformer> provider37, Provider<CollectInputsParametersTransformer> provider38, Provider<Clock> provider39, Provider<UpdatePaymentIntentParamRepository> provider40, Provider<HealthLogger<PassthroughDomain, PassthroughDomain.Builder, StageScope, StageScope.Builder>> provider41, Provider<HealthLogger<PassthroughDomain, PassthroughDomain.Builder, DiscreteScope, DiscreteScope.Builder>> provider42, Provider<PaymentIntentUpdater> provider43, Provider<LoggerFactory> provider44, Provider<CancelIntentManager> provider45, Provider<EnsureSingleDiscoverOperation> provider46) {
        this.module = terminalModule;
        this.adapterProvider = provider;
        this.apiClientProvider = provider2;
        this.locationValidatorProvider = provider3;
        this.locationHandlerProvider = provider4;
        this.statusManagerProvider = provider5;
        this.connectionTokenRepositoryProvider = provider6;
        this.sessionTokenRepositoryProvider = provider7;
        this.proxyResourceRepositoryProvider = provider8;
        this.chargeAttemptManagerProvider = provider9;
        this.transactionRepositoryProvider = provider10;
        this.readerBatteryInfoPollerProvider = provider11;
        this.traceManagerProvider = provider12;
        this.offlineReaderSetupProvider = provider13;
        this.offlineSessionManagerProvider = provider14;
        this.tipEligibleValidatorProvider = provider15;
        this.collectPaymentMethodOperationValidatorProvider = provider16;
        this.featureFlagsRepositoryProvider = provider17;
        this.networkStatusProvider = provider18;
        this.bluetoothDeviceNameRepositoryProvider = provider19;
        this.offlineDatabaseReaperProvider = provider20;
        this.stripeConnectivityRepositoryProvider = provider21;
        this.healthLoggerProvider = provider22;
        this.offlineConfigHelperProvider = provider23;
        this.simulatorConfigurationRepositoryProvider = provider24;
        this.proxyTerminalListenerProvider = provider25;
        this.proxyOfflineListenerProvider = provider26;
        this.offlineRepositoryProvider = provider27;
        this.backgroundReaderActivatorProvider = provider28;
        this.sessionTokenInterceptorProvider = provider29;
        this.errorReporterProvider = provider30;
        this.collectInputsExternalModelTransformerProvider = provider31;
        this.permissionsValidatorProvider = provider32;
        this.offlineStatusRepositoryProvider = provider33;
        this.formsIntegrationLoggerProvider = provider34;
        this.disconnectReasonRepositoryProvider = provider35;
        this.settingsRepositoryProvider = provider36;
        this.terminalExceptionTransformerProvider = provider37;
        this.collectInputsParametersTransformerProvider = provider38;
        this.clockProvider = provider39;
        this.updatePaymentIntentParamRepositoryProvider = provider40;
        this.passthroughHealthStageLoggerProvider = provider41;
        this.passthroughHealthDiscreteLoggerProvider = provider42;
        this.paymentIntentUpdaterProvider = provider43;
        this.loggerFactoryProvider = provider44;
        this.cancelIntentManagerProvider = provider45;
        this.ensureSingleDiscoverOperationProvider = provider46;
    }

    @Override // javax.inject.Provider
    public TerminalSession get() {
        return provideTerminalSession(this.module, this.adapterProvider.get(), this.apiClientProvider.get(), this.locationValidatorProvider.get(), this.locationHandlerProvider.get(), this.statusManagerProvider.get(), this.connectionTokenRepositoryProvider.get(), this.sessionTokenRepositoryProvider.get(), this.proxyResourceRepositoryProvider.get(), this.chargeAttemptManagerProvider.get(), this.transactionRepositoryProvider.get(), this.readerBatteryInfoPollerProvider.get(), this.traceManagerProvider.get(), this.offlineReaderSetupProvider.get(), this.offlineSessionManagerProvider.get(), this.tipEligibleValidatorProvider.get(), this.collectPaymentMethodOperationValidatorProvider.get(), this.featureFlagsRepositoryProvider.get(), this.networkStatusProvider, this.bluetoothDeviceNameRepositoryProvider.get(), this.offlineDatabaseReaperProvider.get(), this.stripeConnectivityRepositoryProvider.get(), this.healthLoggerProvider.get(), this.offlineConfigHelperProvider.get(), this.simulatorConfigurationRepositoryProvider.get(), this.proxyTerminalListenerProvider.get(), this.proxyOfflineListenerProvider.get(), this.offlineRepositoryProvider.get(), this.backgroundReaderActivatorProvider.get(), this.sessionTokenInterceptorProvider.get(), this.errorReporterProvider.get(), this.collectInputsExternalModelTransformerProvider.get(), this.permissionsValidatorProvider.get(), this.offlineStatusRepositoryProvider.get(), this.formsIntegrationLoggerProvider.get(), this.disconnectReasonRepositoryProvider.get(), this.settingsRepositoryProvider.get(), this.terminalExceptionTransformerProvider.get(), this.collectInputsParametersTransformerProvider.get(), this.clockProvider.get(), this.updatePaymentIntentParamRepositoryProvider.get(), this.passthroughHealthStageLoggerProvider.get(), this.passthroughHealthDiscreteLoggerProvider.get(), this.paymentIntentUpdaterProvider.get(), this.loggerFactoryProvider.get(), this.cancelIntentManagerProvider.get(), this.ensureSingleDiscoverOperationProvider.get());
    }

    public static TerminalModule_ProvideTerminalSessionFactory create(TerminalModule terminalModule, Provider<Adapter> provider, Provider<ApiClient> provider2, Provider<LocationServicesValidator> provider3, Provider<LocationHandler> provider4, Provider<TerminalStatusManager> provider5, Provider<ConnectionTokenRepository> provider6, Provider<SessionTokenRepository> provider7, Provider<ProxyResourceRepository> provider8, Provider<ChargeAttemptManager> provider9, Provider<TransactionRepository> provider10, Provider<ReaderBatteryInfoPoller> provider11, Provider<TraceManager> provider12, Provider<OfflineReaderSetup> provider13, Provider<OfflineSessionManager> provider14, Provider<TipEligibleValidator> provider15, Provider<CollectPaymentMethodOperationValidator> provider16, Provider<FeatureFlagsRepository> provider17, Provider<NetworkStatus> provider18, Provider<BluetoothDeviceNameRepository> provider19, Provider<OfflineDatabaseReaper> provider20, Provider<StripeConnectivityRepository> provider21, Provider<HealthLogger<UpdatesDomain, UpdatesDomain.Builder, EndToEndScope, EndToEndScope.Builder>> provider22, Provider<OfflineConfigHelper> provider23, Provider<SimulatorConfigurationRepository> provider24, Provider<ProxyTerminalListener> provider25, Provider<ProxyOfflineListener> provider26, Provider<OfflineRepository> provider27, Provider<BackgroundReaderActivator> provider28, Provider<SessionTokenInterceptor> provider29, Provider<ErrorReporter> provider30, Provider<CollectInputsExternalModelTransformer> provider31, Provider<PermissionsValidator> provider32, Provider<OfflineStatusRepository> provider33, Provider<FormsIntegrationLogger> provider34, Provider<DisconnectReasonRepository> provider35, Provider<SettingsRepository> provider36, Provider<TerminalExceptionTransformer> provider37, Provider<CollectInputsParametersTransformer> provider38, Provider<Clock> provider39, Provider<UpdatePaymentIntentParamRepository> provider40, Provider<HealthLogger<PassthroughDomain, PassthroughDomain.Builder, StageScope, StageScope.Builder>> provider41, Provider<HealthLogger<PassthroughDomain, PassthroughDomain.Builder, DiscreteScope, DiscreteScope.Builder>> provider42, Provider<PaymentIntentUpdater> provider43, Provider<LoggerFactory> provider44, Provider<CancelIntentManager> provider45, Provider<EnsureSingleDiscoverOperation> provider46) {
        return new TerminalModule_ProvideTerminalSessionFactory(terminalModule, provider, provider2, provider3, provider4, provider5, provider6, provider7, provider8, provider9, provider10, provider11, provider12, provider13, provider14, provider15, provider16, provider17, provider18, provider19, provider20, provider21, provider22, provider23, provider24, provider25, provider26, provider27, provider28, provider29, provider30, provider31, provider32, provider33, provider34, provider35, provider36, provider37, provider38, provider39, provider40, provider41, provider42, provider43, provider44, provider45, provider46);
    }

    public static TerminalSession provideTerminalSession(TerminalModule terminalModule, Adapter adapter, ApiClient apiClient, LocationServicesValidator locationServicesValidator, LocationHandler locationHandler, TerminalStatusManager terminalStatusManager, ConnectionTokenRepository connectionTokenRepository, SessionTokenRepository sessionTokenRepository, ProxyResourceRepository proxyResourceRepository, ChargeAttemptManager chargeAttemptManager, TransactionRepository transactionRepository, ReaderBatteryInfoPoller readerBatteryInfoPoller, TraceManager traceManager, OfflineReaderSetup offlineReaderSetup, OfflineSessionManager offlineSessionManager, TipEligibleValidator tipEligibleValidator, CollectPaymentMethodOperationValidator collectPaymentMethodOperationValidator, FeatureFlagsRepository featureFlagsRepository, Provider<NetworkStatus> provider, BluetoothDeviceNameRepository bluetoothDeviceNameRepository, OfflineDatabaseReaper offlineDatabaseReaper, StripeConnectivityRepository stripeConnectivityRepository, HealthLogger<UpdatesDomain, UpdatesDomain.Builder, EndToEndScope, EndToEndScope.Builder> healthLogger, OfflineConfigHelper offlineConfigHelper, SimulatorConfigurationRepository simulatorConfigurationRepository, ProxyTerminalListener proxyTerminalListener, ProxyOfflineListener proxyOfflineListener, OfflineRepository offlineRepository, BackgroundReaderActivator backgroundReaderActivator, SessionTokenInterceptor sessionTokenInterceptor, ErrorReporter errorReporter, CollectInputsExternalModelTransformer collectInputsExternalModelTransformer, PermissionsValidator permissionsValidator, OfflineStatusRepository offlineStatusRepository, FormsIntegrationLogger formsIntegrationLogger, DisconnectReasonRepository disconnectReasonRepository, SettingsRepository settingsRepository, TerminalExceptionTransformer terminalExceptionTransformer, CollectInputsParametersTransformer collectInputsParametersTransformer, Clock clock, UpdatePaymentIntentParamRepository updatePaymentIntentParamRepository, HealthLogger<PassthroughDomain, PassthroughDomain.Builder, StageScope, StageScope.Builder> healthLogger2, HealthLogger<PassthroughDomain, PassthroughDomain.Builder, DiscreteScope, DiscreteScope.Builder> healthLogger3, PaymentIntentUpdater paymentIntentUpdater, LoggerFactory loggerFactory, CancelIntentManager cancelIntentManager, EnsureSingleDiscoverOperation ensureSingleDiscoverOperation) {
        return (TerminalSession) Preconditions.checkNotNullFromProvides(terminalModule.provideTerminalSession(adapter, apiClient, locationServicesValidator, locationHandler, terminalStatusManager, connectionTokenRepository, sessionTokenRepository, proxyResourceRepository, chargeAttemptManager, transactionRepository, readerBatteryInfoPoller, traceManager, offlineReaderSetup, offlineSessionManager, tipEligibleValidator, collectPaymentMethodOperationValidator, featureFlagsRepository, provider, bluetoothDeviceNameRepository, offlineDatabaseReaper, stripeConnectivityRepository, healthLogger, offlineConfigHelper, simulatorConfigurationRepository, proxyTerminalListener, proxyOfflineListener, offlineRepository, backgroundReaderActivator, sessionTokenInterceptor, errorReporter, collectInputsExternalModelTransformer, permissionsValidator, offlineStatusRepository, formsIntegrationLogger, disconnectReasonRepository, settingsRepository, terminalExceptionTransformer, collectInputsParametersTransformer, clock, updatePaymentIntentParamRepository, healthLogger2, healthLogger3, paymentIntentUpdater, loggerFactory, cancelIntentManager, ensureSingleDiscoverOperation));
    }
}
