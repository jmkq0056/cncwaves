package com.stripe.stripeterminal.dagger;

import com.stripe.paymentcollection.TransactionRepository;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes4.dex */
public final class PaymentCollectionExternalModule_ProvidesPaymentCollectionTransactionRepositoryFactory implements Factory<TransactionRepository> {
    private final Provider<com.stripe.core.transaction.TransactionRepository> coreTransactionRepositoryProvider;
    private final PaymentCollectionExternalModule module;

    public PaymentCollectionExternalModule_ProvidesPaymentCollectionTransactionRepositoryFactory(PaymentCollectionExternalModule paymentCollectionExternalModule, Provider<com.stripe.core.transaction.TransactionRepository> provider) {
        this.module = paymentCollectionExternalModule;
        this.coreTransactionRepositoryProvider = provider;
    }

    @Override // javax.inject.Provider
    public TransactionRepository get() {
        return providesPaymentCollectionTransactionRepository(this.module, this.coreTransactionRepositoryProvider.get());
    }

    public static PaymentCollectionExternalModule_ProvidesPaymentCollectionTransactionRepositoryFactory create(PaymentCollectionExternalModule paymentCollectionExternalModule, Provider<com.stripe.core.transaction.TransactionRepository> provider) {
        return new PaymentCollectionExternalModule_ProvidesPaymentCollectionTransactionRepositoryFactory(paymentCollectionExternalModule, provider);
    }

    public static TransactionRepository providesPaymentCollectionTransactionRepository(PaymentCollectionExternalModule paymentCollectionExternalModule, com.stripe.core.transaction.TransactionRepository transactionRepository) {
        return (TransactionRepository) Preconditions.checkNotNullFromProvides(paymentCollectionExternalModule.providesPaymentCollectionTransactionRepository(transactionRepository));
    }
}
