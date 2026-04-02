package com.stripe.core.transactionlog.dagger;

import com.stripe.core.transactionlog.TransactionLogRepository;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes3.dex */
public final class TransactionLogModule_ProvideTransactionLogRepositoryFactory implements Factory<TransactionLogRepository> {
    private final TransactionLogModule module;

    public TransactionLogModule_ProvideTransactionLogRepositoryFactory(TransactionLogModule module) {
        this.module = module;
    }

    @Override // javax.inject.Provider
    public TransactionLogRepository get() {
        return provideTransactionLogRepository(this.module);
    }

    public static TransactionLogModule_ProvideTransactionLogRepositoryFactory create(TransactionLogModule module) {
        return new TransactionLogModule_ProvideTransactionLogRepositoryFactory(module);
    }

    public static TransactionLogRepository provideTransactionLogRepository(TransactionLogModule instance) {
        return (TransactionLogRepository) Preconditions.checkNotNullFromProvides(instance.provideTransactionLogRepository());
    }
}
