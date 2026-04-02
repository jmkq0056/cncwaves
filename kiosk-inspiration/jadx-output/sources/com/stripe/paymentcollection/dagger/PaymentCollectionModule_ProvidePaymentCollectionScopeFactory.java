package com.stripe.paymentcollection.dagger;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes3.dex */
public final class PaymentCollectionModule_ProvidePaymentCollectionScopeFactory implements Factory<CoroutineScope> {
    @Override // javax.inject.Provider
    public CoroutineScope get() {
        return providePaymentCollectionScope();
    }

    public static PaymentCollectionModule_ProvidePaymentCollectionScopeFactory create() {
        return InstanceHolder.INSTANCE;
    }

    public static CoroutineScope providePaymentCollectionScope() {
        return (CoroutineScope) Preconditions.checkNotNullFromProvides(PaymentCollectionModule.INSTANCE.providePaymentCollectionScope());
    }

    private static final class InstanceHolder {
        private static final PaymentCollectionModule_ProvidePaymentCollectionScopeFactory INSTANCE = new PaymentCollectionModule_ProvidePaymentCollectionScopeFactory();

        private InstanceHolder() {
        }
    }
}
