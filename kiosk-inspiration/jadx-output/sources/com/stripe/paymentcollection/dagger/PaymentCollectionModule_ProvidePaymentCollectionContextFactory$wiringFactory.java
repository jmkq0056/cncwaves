package com.stripe.paymentcollection.dagger;

import com.stripe.paymentcollection.PaymentCollectionCoordinator;
import com.stripe.paymentcollection.PaymentCollectionStateMachine;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class PaymentCollectionModule_ProvidePaymentCollectionContextFactory$wiringFactory implements Factory<PaymentCollectionCoordinator.PaymentCollectionContext.Factory> {
    private final Provider<PaymentCollectionStateMachine> paymentCollectionStateMachineProvider;

    public PaymentCollectionModule_ProvidePaymentCollectionContextFactory$wiringFactory(Provider<PaymentCollectionStateMachine> provider) {
        this.paymentCollectionStateMachineProvider = provider;
    }

    @Override // javax.inject.Provider
    public PaymentCollectionCoordinator.PaymentCollectionContext.Factory get() {
        return providePaymentCollectionContextFactory$wiring(this.paymentCollectionStateMachineProvider);
    }

    public static PaymentCollectionModule_ProvidePaymentCollectionContextFactory$wiringFactory create(Provider<PaymentCollectionStateMachine> provider) {
        return new PaymentCollectionModule_ProvidePaymentCollectionContextFactory$wiringFactory(provider);
    }

    public static PaymentCollectionCoordinator.PaymentCollectionContext.Factory providePaymentCollectionContextFactory$wiring(Provider<PaymentCollectionStateMachine> provider) {
        return (PaymentCollectionCoordinator.PaymentCollectionContext.Factory) Preconditions.checkNotNullFromProvides(PaymentCollectionModule.INSTANCE.providePaymentCollectionContextFactory$wiring(provider));
    }
}
