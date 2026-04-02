package com.stripe.stripeterminal.dagger;

import com.stripe.cots.common.NfcAntennaLogger;
import com.stripe.cots.common.SimulatedCotsClient;
import com.stripe.jvmcore.featureflag.FeatureFlagsRepository;
import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import com.stripe.stripeterminal.internal.common.TerminalStatusManager;
import com.stripe.stripeterminal.internal.common.adapter.CotsAdapter;
import com.stripe.terminal.appinfo.ApplicationInformationProvider;
import dagger.internal.Factory;
import javax.inject.Provider;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
public final class CotsModule_ProvideSimulatedCotsProxyAdapterFactory implements Factory<CotsAdapter> {
    private final Provider<CoroutineScope> appScopeProvider;
    private final Provider<ApplicationInformationProvider> applicationInformationProvider;
    private final Provider<FeatureFlagsRepository> featureFlagsRepositoryProvider;
    private final Provider<LoggerFactory> loggerFactoryProvider;
    private final CotsModule module;
    private final Provider<NfcAntennaLogger> nfcAntennaLoggerProvider;
    private final Provider<SimulatedCotsClient> simulatedCotsClientProvider;
    private final Provider<TerminalStatusManager> terminalStatusManagerProvider;

    public CotsModule_ProvideSimulatedCotsProxyAdapterFactory(CotsModule cotsModule, Provider<ApplicationInformationProvider> provider, Provider<SimulatedCotsClient> provider2, Provider<TerminalStatusManager> provider3, Provider<FeatureFlagsRepository> provider4, Provider<CoroutineScope> provider5, Provider<NfcAntennaLogger> provider6, Provider<LoggerFactory> provider7) {
        this.module = cotsModule;
        this.applicationInformationProvider = provider;
        this.simulatedCotsClientProvider = provider2;
        this.terminalStatusManagerProvider = provider3;
        this.featureFlagsRepositoryProvider = provider4;
        this.appScopeProvider = provider5;
        this.nfcAntennaLoggerProvider = provider6;
        this.loggerFactoryProvider = provider7;
    }

    @Override // javax.inject.Provider
    public CotsAdapter get() {
        return provideSimulatedCotsProxyAdapter(this.module, this.applicationInformationProvider.get(), this.simulatedCotsClientProvider.get(), this.terminalStatusManagerProvider.get(), this.featureFlagsRepositoryProvider.get(), this.appScopeProvider.get(), this.nfcAntennaLoggerProvider.get(), this.loggerFactoryProvider.get());
    }

    public static CotsModule_ProvideSimulatedCotsProxyAdapterFactory create(CotsModule cotsModule, Provider<ApplicationInformationProvider> provider, Provider<SimulatedCotsClient> provider2, Provider<TerminalStatusManager> provider3, Provider<FeatureFlagsRepository> provider4, Provider<CoroutineScope> provider5, Provider<NfcAntennaLogger> provider6, Provider<LoggerFactory> provider7) {
        return new CotsModule_ProvideSimulatedCotsProxyAdapterFactory(cotsModule, provider, provider2, provider3, provider4, provider5, provider6, provider7);
    }

    public static CotsAdapter provideSimulatedCotsProxyAdapter(CotsModule cotsModule, ApplicationInformationProvider applicationInformationProvider, SimulatedCotsClient simulatedCotsClient, TerminalStatusManager terminalStatusManager, FeatureFlagsRepository featureFlagsRepository, CoroutineScope coroutineScope, NfcAntennaLogger nfcAntennaLogger, LoggerFactory loggerFactory) {
        return cotsModule.provideSimulatedCotsProxyAdapter(applicationInformationProvider, simulatedCotsClient, terminalStatusManager, featureFlagsRepository, coroutineScope, nfcAntennaLogger, loggerFactory);
    }
}
