package com.stripe.stripeterminal.dagger;

import com.stripe.cots.common.CotsClient;
import com.stripe.cots.common.NfcAntennaLogger;
import com.stripe.jvmcore.featureflag.FeatureFlagsRepository;
import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import com.stripe.stripeterminal.internal.common.TerminalStatusManager;
import com.stripe.stripeterminal.internal.common.adapter.CotsAdapter;
import com.stripe.terminal.appinfo.ApplicationInformationProvider;
import dagger.internal.Factory;
import javax.inject.Provider;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
public final class CotsModule_ProvideCotsProxyAdapterFactory implements Factory<CotsAdapter> {
    private final Provider<CoroutineScope> appScopeProvider;
    private final Provider<ApplicationInformationProvider> applicationInformationProvider;
    private final Provider<CotsClient> cotsClientProvider;
    private final Provider<FeatureFlagsRepository> featureFlagsRepositoryProvider;
    private final Provider<LoggerFactory> loggerFactoryProvider;
    private final CotsModule module;
    private final Provider<NfcAntennaLogger> nfcAntennaLoggerProvider;
    private final Provider<TerminalStatusManager> terminalStatusManagerProvider;

    public CotsModule_ProvideCotsProxyAdapterFactory(CotsModule cotsModule, Provider<ApplicationInformationProvider> provider, Provider<CotsClient> provider2, Provider<TerminalStatusManager> provider3, Provider<FeatureFlagsRepository> provider4, Provider<CoroutineScope> provider5, Provider<NfcAntennaLogger> provider6, Provider<LoggerFactory> provider7) {
        this.module = cotsModule;
        this.applicationInformationProvider = provider;
        this.cotsClientProvider = provider2;
        this.terminalStatusManagerProvider = provider3;
        this.featureFlagsRepositoryProvider = provider4;
        this.appScopeProvider = provider5;
        this.nfcAntennaLoggerProvider = provider6;
        this.loggerFactoryProvider = provider7;
    }

    @Override // javax.inject.Provider
    public CotsAdapter get() {
        return provideCotsProxyAdapter(this.module, this.applicationInformationProvider.get(), this.cotsClientProvider.get(), this.terminalStatusManagerProvider.get(), this.featureFlagsRepositoryProvider.get(), this.appScopeProvider.get(), this.nfcAntennaLoggerProvider.get(), this.loggerFactoryProvider.get());
    }

    public static CotsModule_ProvideCotsProxyAdapterFactory create(CotsModule cotsModule, Provider<ApplicationInformationProvider> provider, Provider<CotsClient> provider2, Provider<TerminalStatusManager> provider3, Provider<FeatureFlagsRepository> provider4, Provider<CoroutineScope> provider5, Provider<NfcAntennaLogger> provider6, Provider<LoggerFactory> provider7) {
        return new CotsModule_ProvideCotsProxyAdapterFactory(cotsModule, provider, provider2, provider3, provider4, provider5, provider6, provider7);
    }

    public static CotsAdapter provideCotsProxyAdapter(CotsModule cotsModule, ApplicationInformationProvider applicationInformationProvider, CotsClient cotsClient, TerminalStatusManager terminalStatusManager, FeatureFlagsRepository featureFlagsRepository, CoroutineScope coroutineScope, NfcAntennaLogger nfcAntennaLogger, LoggerFactory loggerFactory) {
        return cotsModule.provideCotsProxyAdapter(applicationInformationProvider, cotsClient, terminalStatusManager, featureFlagsRepository, coroutineScope, nfcAntennaLogger, loggerFactory);
    }
}
