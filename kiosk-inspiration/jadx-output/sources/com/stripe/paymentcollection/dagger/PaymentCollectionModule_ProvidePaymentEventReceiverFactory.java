package com.stripe.paymentcollection.dagger;

import com.stripe.hardware.paymentcollection.PaymentEventReceiver;
import com.stripe.paymentcollection.PaymentCollectionCoordinator;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class PaymentCollectionModule_ProvidePaymentEventReceiverFactory implements Factory<PaymentEventReceiver> {
    private final Provider<PaymentCollectionCoordinator> coordinatorProvider;

    public PaymentCollectionModule_ProvidePaymentEventReceiverFactory(Provider<PaymentCollectionCoordinator> provider) {
        this.coordinatorProvider = provider;
    }

    @Override // javax.inject.Provider
    public PaymentEventReceiver get() {
        return providePaymentEventReceiver(this.coordinatorProvider.get());
    }

    public static PaymentCollectionModule_ProvidePaymentEventReceiverFactory create(Provider<PaymentCollectionCoordinator> provider) {
        return new PaymentCollectionModule_ProvidePaymentEventReceiverFactory(provider);
    }

    public static PaymentEventReceiver providePaymentEventReceiver(PaymentCollectionCoordinator paymentCollectionCoordinator) {
        return (PaymentEventReceiver) Preconditions.checkNotNullFromProvides(PaymentCollectionModule.INSTANCE.providePaymentEventReceiver(paymentCollectionCoordinator));
    }
}
