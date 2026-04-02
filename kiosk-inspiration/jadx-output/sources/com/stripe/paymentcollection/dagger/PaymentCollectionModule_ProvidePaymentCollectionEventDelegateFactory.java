package com.stripe.paymentcollection.dagger;

import com.stripe.paymentcollection.PaymentCollectionCoordinator;
import com.stripe.paymentcollection.PaymentCollectionEventDelegate;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class PaymentCollectionModule_ProvidePaymentCollectionEventDelegateFactory implements Factory<PaymentCollectionEventDelegate> {
    private final Provider<PaymentCollectionCoordinator> coordinatorProvider;

    public PaymentCollectionModule_ProvidePaymentCollectionEventDelegateFactory(Provider<PaymentCollectionCoordinator> provider) {
        this.coordinatorProvider = provider;
    }

    @Override // javax.inject.Provider
    public PaymentCollectionEventDelegate get() {
        return providePaymentCollectionEventDelegate(this.coordinatorProvider.get());
    }

    public static PaymentCollectionModule_ProvidePaymentCollectionEventDelegateFactory create(Provider<PaymentCollectionCoordinator> provider) {
        return new PaymentCollectionModule_ProvidePaymentCollectionEventDelegateFactory(provider);
    }

    public static PaymentCollectionEventDelegate providePaymentCollectionEventDelegate(PaymentCollectionCoordinator paymentCollectionCoordinator) {
        return (PaymentCollectionEventDelegate) Preconditions.checkNotNullFromProvides(PaymentCollectionModule.INSTANCE.providePaymentCollectionEventDelegate(paymentCollectionCoordinator));
    }
}
