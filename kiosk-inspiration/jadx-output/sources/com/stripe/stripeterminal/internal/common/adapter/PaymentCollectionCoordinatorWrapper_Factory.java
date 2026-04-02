package com.stripe.stripeterminal.internal.common.adapter;

import com.stripe.core.transaction.SettingsRepository;
import com.stripe.core.transaction.TransactionRepository;
import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import com.stripe.paymentcollection.PaymentCollectionCoordinator;
import dagger.internal.Factory;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes4.dex */
public final class PaymentCollectionCoordinatorWrapper_Factory implements Factory<PaymentCollectionCoordinatorWrapper> {
    private final Provider<LoggerFactory> loggerFactoryProvider;
    private final Provider<PaymentCollectionCoordinator> paymentCollectionCoordinatorProvider;
    private final Provider<SettingsRepository> settingsRepositoryProvider;
    private final Provider<TransactionRepository> transactionRepositoryProvider;

    public PaymentCollectionCoordinatorWrapper_Factory(Provider<PaymentCollectionCoordinator> provider, Provider<TransactionRepository> provider2, Provider<SettingsRepository> provider3, Provider<LoggerFactory> provider4) {
        this.paymentCollectionCoordinatorProvider = provider;
        this.transactionRepositoryProvider = provider2;
        this.settingsRepositoryProvider = provider3;
        this.loggerFactoryProvider = provider4;
    }

    @Override // javax.inject.Provider
    public PaymentCollectionCoordinatorWrapper get() {
        return newInstance(this.paymentCollectionCoordinatorProvider.get(), this.transactionRepositoryProvider.get(), this.settingsRepositoryProvider.get(), this.loggerFactoryProvider.get());
    }

    public static PaymentCollectionCoordinatorWrapper_Factory create(Provider<PaymentCollectionCoordinator> provider, Provider<TransactionRepository> provider2, Provider<SettingsRepository> provider3, Provider<LoggerFactory> provider4) {
        return new PaymentCollectionCoordinatorWrapper_Factory(provider, provider2, provider3, provider4);
    }

    public static PaymentCollectionCoordinatorWrapper newInstance(PaymentCollectionCoordinator paymentCollectionCoordinator, TransactionRepository transactionRepository, SettingsRepository settingsRepository, LoggerFactory loggerFactory) {
        return new PaymentCollectionCoordinatorWrapper(paymentCollectionCoordinator, transactionRepository, settingsRepository, loggerFactory);
    }
}
