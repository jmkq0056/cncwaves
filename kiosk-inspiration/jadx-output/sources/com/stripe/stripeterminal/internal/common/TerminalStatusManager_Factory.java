package com.stripe.stripeterminal.internal.common;

import com.stripe.core.transaction.TransactionRepository;
import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import com.stripe.stripeterminal.external.callable.TerminalListener;
import dagger.internal.Factory;
import javax.inject.Provider;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
public final class TerminalStatusManager_Factory implements Factory<TerminalStatusManager> {
    private final Provider<TerminalListener> listenerProvider;
    private final Provider<LoggerFactory> loggerFactoryProvider;
    private final Provider<CoroutineScope> scopeProvider;
    private final Provider<TransactionRepository> transactionRepositoryProvider;

    public TerminalStatusManager_Factory(Provider<TerminalListener> provider, Provider<TransactionRepository> provider2, Provider<CoroutineScope> provider3, Provider<LoggerFactory> provider4) {
        this.listenerProvider = provider;
        this.transactionRepositoryProvider = provider2;
        this.scopeProvider = provider3;
        this.loggerFactoryProvider = provider4;
    }

    @Override // javax.inject.Provider
    public TerminalStatusManager get() {
        return newInstance(this.listenerProvider.get(), this.transactionRepositoryProvider.get(), this.scopeProvider.get(), this.loggerFactoryProvider.get());
    }

    public static TerminalStatusManager_Factory create(Provider<TerminalListener> provider, Provider<TransactionRepository> provider2, Provider<CoroutineScope> provider3, Provider<LoggerFactory> provider4) {
        return new TerminalStatusManager_Factory(provider, provider2, provider3, provider4);
    }

    public static TerminalStatusManager newInstance(TerminalListener terminalListener, TransactionRepository transactionRepository, CoroutineScope coroutineScope, LoggerFactory loggerFactory) {
        return new TerminalStatusManager(terminalListener, transactionRepository, coroutineScope, loggerFactory);
    }
}
