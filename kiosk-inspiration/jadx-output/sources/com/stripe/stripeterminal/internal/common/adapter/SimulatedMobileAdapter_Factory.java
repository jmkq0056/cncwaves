package com.stripe.stripeterminal.internal.common.adapter;

import com.stripe.core.bbpos.hardware.BbposReaderInfoFactory;
import com.stripe.core.readerupdate.UpdateClient;
import com.stripe.core.transaction.TransactionRepository;
import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import com.stripe.stripeterminal.internal.common.TerminalStatusManager;
import com.stripe.terminal.appinfo.ApplicationInformationProvider;
import com.stripe.time.Clock;
import dagger.internal.Factory;
import javax.inject.Provider;
import kotlinx.coroutines.CoroutineDispatcher;

/* JADX INFO: loaded from: classes4.dex */
public final class SimulatedMobileAdapter_Factory implements Factory<SimulatedMobileAdapter> {
    private final Provider<ApplicationInformationProvider> applicationInformationProvider;
    private final Provider<BbposReaderInfoFactory> bbposReaderInfoFactoryProvider;
    private final Provider<Clock> clockProvider;
    private final Provider<LoggerFactory> loggerFactoryProvider;
    private final Provider<CoroutineDispatcher> mainDispatcherProvider;
    private final Provider<UpdateClient.OfflineConfigUpdateListener> offlineConfigUpdateListenerProvider;
    private final Provider<SimulatorConfigurationRepository> simulatorConfigurationRepositoryProvider;
    private final Provider<TerminalStatusManager> statusManagerProvider;
    private final Provider<TransactionRepository> transactionRepositoryProvider;
    private final Provider<UpdateClient> updateClientProvider;

    public SimulatedMobileAdapter_Factory(Provider<Clock> provider, Provider<TransactionRepository> provider2, Provider<CoroutineDispatcher> provider3, Provider<SimulatorConfigurationRepository> provider4, Provider<TerminalStatusManager> provider5, Provider<ApplicationInformationProvider> provider6, Provider<BbposReaderInfoFactory> provider7, Provider<UpdateClient> provider8, Provider<UpdateClient.OfflineConfigUpdateListener> provider9, Provider<LoggerFactory> provider10) {
        this.clockProvider = provider;
        this.transactionRepositoryProvider = provider2;
        this.mainDispatcherProvider = provider3;
        this.simulatorConfigurationRepositoryProvider = provider4;
        this.statusManagerProvider = provider5;
        this.applicationInformationProvider = provider6;
        this.bbposReaderInfoFactoryProvider = provider7;
        this.updateClientProvider = provider8;
        this.offlineConfigUpdateListenerProvider = provider9;
        this.loggerFactoryProvider = provider10;
    }

    @Override // javax.inject.Provider
    public SimulatedMobileAdapter get() {
        return newInstance(this.clockProvider.get(), this.transactionRepositoryProvider.get(), this.mainDispatcherProvider.get(), this.simulatorConfigurationRepositoryProvider.get(), this.statusManagerProvider.get(), this.applicationInformationProvider.get(), this.bbposReaderInfoFactoryProvider.get(), this.updateClientProvider.get(), this.offlineConfigUpdateListenerProvider.get(), this.loggerFactoryProvider.get());
    }

    public static SimulatedMobileAdapter_Factory create(Provider<Clock> provider, Provider<TransactionRepository> provider2, Provider<CoroutineDispatcher> provider3, Provider<SimulatorConfigurationRepository> provider4, Provider<TerminalStatusManager> provider5, Provider<ApplicationInformationProvider> provider6, Provider<BbposReaderInfoFactory> provider7, Provider<UpdateClient> provider8, Provider<UpdateClient.OfflineConfigUpdateListener> provider9, Provider<LoggerFactory> provider10) {
        return new SimulatedMobileAdapter_Factory(provider, provider2, provider3, provider4, provider5, provider6, provider7, provider8, provider9, provider10);
    }

    public static SimulatedMobileAdapter newInstance(Clock clock, TransactionRepository transactionRepository, CoroutineDispatcher coroutineDispatcher, SimulatorConfigurationRepository simulatorConfigurationRepository, TerminalStatusManager terminalStatusManager, ApplicationInformationProvider applicationInformationProvider, BbposReaderInfoFactory bbposReaderInfoFactory, UpdateClient updateClient, UpdateClient.OfflineConfigUpdateListener offlineConfigUpdateListener, LoggerFactory loggerFactory) {
        return new SimulatedMobileAdapter(clock, transactionRepository, coroutineDispatcher, simulatorConfigurationRepository, terminalStatusManager, applicationInformationProvider, bbposReaderInfoFactory, updateClient, offlineConfigUpdateListener, loggerFactory);
    }
}
