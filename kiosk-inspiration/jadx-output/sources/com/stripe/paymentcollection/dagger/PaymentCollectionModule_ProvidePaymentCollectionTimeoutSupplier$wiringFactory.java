package com.stripe.paymentcollection.dagger;

import com.stripe.paymentcollection.PaymentCollectionTimeoutSupplier;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes3.dex */
public final class PaymentCollectionModule_ProvidePaymentCollectionTimeoutSupplier$wiringFactory implements Factory<PaymentCollectionTimeoutSupplier> {
    @Override // javax.inject.Provider
    public PaymentCollectionTimeoutSupplier get() {
        return providePaymentCollectionTimeoutSupplier$wiring();
    }

    public static PaymentCollectionModule_ProvidePaymentCollectionTimeoutSupplier$wiringFactory create() {
        return InstanceHolder.INSTANCE;
    }

    public static PaymentCollectionTimeoutSupplier providePaymentCollectionTimeoutSupplier$wiring() {
        return (PaymentCollectionTimeoutSupplier) Preconditions.checkNotNullFromProvides(PaymentCollectionModule.INSTANCE.providePaymentCollectionTimeoutSupplier$wiring());
    }

    /* JADX INFO: compiled from: PaymentCollectionModule_ProvidePaymentCollectionTimeoutSupplier$wiringFactory.java */
    private static final class InstanceHolder {
        private static final PaymentCollectionModule_ProvidePaymentCollectionTimeoutSupplier$wiringFactory INSTANCE = new PaymentCollectionModule_ProvidePaymentCollectionTimeoutSupplier$wiringFactory();

        private InstanceHolder() {
        }
    }
}
