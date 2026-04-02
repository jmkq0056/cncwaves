package com.stripe.core.transaction;

import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import dagger.internal.Factory;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class TransactionRepository_Factory implements Factory<TransactionRepository> {
    private final Provider<LoggerFactory> loggerFactoryProvider;
    private final Provider<SettingsRepository> settingsRepositoryProvider;

    public TransactionRepository_Factory(Provider<SettingsRepository> provider, Provider<LoggerFactory> provider2) {
        this.settingsRepositoryProvider = provider;
        this.loggerFactoryProvider = provider2;
    }

    @Override // javax.inject.Provider
    public TransactionRepository get() {
        return newInstance(this.settingsRepositoryProvider.get(), this.loggerFactoryProvider.get());
    }

    public static TransactionRepository_Factory create(Provider<SettingsRepository> provider, Provider<LoggerFactory> provider2) {
        return new TransactionRepository_Factory(provider, provider2);
    }

    public static TransactionRepository newInstance(SettingsRepository settingsRepository, LoggerFactory loggerFactory) {
        return new TransactionRepository(settingsRepository, loggerFactory);
    }
}
