package com.stripe.paymentcollection.dagger;

import com.stripe.paymentcollection.TransactionListener;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes3.dex */
public final class NoopTransactionListenerModule_ProvideNoopTransactionListenerFactory implements Factory<TransactionListener> {
    @Override // javax.inject.Provider
    public TransactionListener get() {
        return provideNoopTransactionListener();
    }

    public static NoopTransactionListenerModule_ProvideNoopTransactionListenerFactory create() {
        return InstanceHolder.INSTANCE;
    }

    public static TransactionListener provideNoopTransactionListener() {
        return (TransactionListener) Preconditions.checkNotNullFromProvides(NoopTransactionListenerModule.INSTANCE.provideNoopTransactionListener());
    }

    private static final class InstanceHolder {
        private static final NoopTransactionListenerModule_ProvideNoopTransactionListenerFactory INSTANCE = new NoopTransactionListenerModule_ProvideNoopTransactionListenerFactory();

        private InstanceHolder() {
        }
    }
}
