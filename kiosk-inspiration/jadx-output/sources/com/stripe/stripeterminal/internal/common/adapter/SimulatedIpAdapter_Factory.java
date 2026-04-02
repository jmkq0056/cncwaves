package com.stripe.stripeterminal.internal.common.adapter;

import com.stripe.core.readerupdate.UpdateClient;
import com.stripe.core.transaction.TransactionRepository;
import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import com.stripe.stripeterminal.internal.common.TerminalStatusManager;
import com.stripe.time.Clock;
import dagger.internal.Factory;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes4.dex */
public final class SimulatedIpAdapter_Factory implements Factory<SimulatedIpAdapter> {
    private final Provider<Clock> clockProvider;
    private final Provider<LoggerFactory> loggerFactoryProvider;
    private final Provider<UpdateClient.OfflineConfigUpdateListener> offlineConfigUpdateListenerProvider;
    private final Provider<SimulatorConfigurationRepository> simulatorConfigurationRepositoryProvider;
    private final Provider<TerminalStatusManager> statusManagerProvider;
    private final Provider<TransactionRepository> transactionRepositoryProvider;
    private final Provider<UpdateClient> updateClientProvider;

    public SimulatedIpAdapter_Factory(Provider<Clock> provider, Provider<TransactionRepository> provider2, Provider<SimulatorConfigurationRepository> provider3, Provider<TerminalStatusManager> provider4, Provider<LoggerFactory> provider5, Provider<UpdateClient> provider6, Provider<UpdateClient.OfflineConfigUpdateListener> provider7) {
        this.clockProvider = provider;
        this.transactionRepositoryProvider = provider2;
        this.simulatorConfigurationRepositoryProvider = provider3;
        this.statusManagerProvider = provider4;
        this.loggerFactoryProvider = provider5;
        this.updateClientProvider = provider6;
        this.offlineConfigUpdateListenerProvider = provider7;
    }

    @Override // javax.inject.Provider
    public SimulatedIpAdapter get() {
        return newInstance(this.clockProvider.get(), this.transactionRepositoryProvider.get(), this.simulatorConfigurationRepositoryProvider.get(), this.statusManagerProvider.get(), this.loggerFactoryProvider.get(), this.updateClientProvider.get(), this.offlineConfigUpdateListenerProvider.get());
    }

    public static SimulatedIpAdapter_Factory create(Provider<Clock> provider, Provider<TransactionRepository> provider2, Provider<SimulatorConfigurationRepository> provider3, Provider<TerminalStatusManager> provider4, Provider<LoggerFactory> provider5, Provider<UpdateClient> provider6, Provider<UpdateClient.OfflineConfigUpdateListener> provider7) {
        return new SimulatedIpAdapter_Factory(provider, provider2, provider3, provider4, provider5, provider6, provider7);
    }

    public static SimulatedIpAdapter newInstance(Clock clock, TransactionRepository transactionRepository, SimulatorConfigurationRepository simulatorConfigurationRepository, TerminalStatusManager terminalStatusManager, LoggerFactory loggerFactory, UpdateClient updateClient, UpdateClient.OfflineConfigUpdateListener offlineConfigUpdateListener) {
        return new SimulatedIpAdapter(clock, transactionRepository, simulatorConfigurationRepository, terminalStatusManager, loggerFactory, updateClient, offlineConfigUpdateListener);
    }
}
