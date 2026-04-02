package com.stripe.paymentcollection.dagger;

import com.stripe.paymentcollection.PaymentCollectionStateTimer;
import com.stripe.paymentcollection.PaymentCollectionTimeoutSupplier;
import com.stripe.paymentcollection.log.PaymentCollectionLoggerFactory;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes3.dex */
public final class PaymentCollectionModule_ProvidePaymentCollectionStateTimer$wiringFactory implements Factory<PaymentCollectionStateTimer> {
    private final Provider<PaymentCollectionLoggerFactory> loggerFactoryProvider;
    private final Provider<CoroutineScope> scopeProvider;
    private final Provider<PaymentCollectionTimeoutSupplier> timeoutSupplierProvider;

    public PaymentCollectionModule_ProvidePaymentCollectionStateTimer$wiringFactory(Provider<CoroutineScope> provider, Provider<PaymentCollectionTimeoutSupplier> provider2, Provider<PaymentCollectionLoggerFactory> provider3) {
        this.scopeProvider = provider;
        this.timeoutSupplierProvider = provider2;
        this.loggerFactoryProvider = provider3;
    }

    @Override // javax.inject.Provider
    public PaymentCollectionStateTimer get() {
        return providePaymentCollectionStateTimer$wiring(this.scopeProvider.get(), this.timeoutSupplierProvider.get(), this.loggerFactoryProvider.get());
    }

    public static PaymentCollectionModule_ProvidePaymentCollectionStateTimer$wiringFactory create(Provider<CoroutineScope> provider, Provider<PaymentCollectionTimeoutSupplier> provider2, Provider<PaymentCollectionLoggerFactory> provider3) {
        return new PaymentCollectionModule_ProvidePaymentCollectionStateTimer$wiringFactory(provider, provider2, provider3);
    }

    public static PaymentCollectionStateTimer providePaymentCollectionStateTimer$wiring(CoroutineScope coroutineScope, PaymentCollectionTimeoutSupplier paymentCollectionTimeoutSupplier, PaymentCollectionLoggerFactory paymentCollectionLoggerFactory) {
        return (PaymentCollectionStateTimer) Preconditions.checkNotNullFromProvides(PaymentCollectionModule.INSTANCE.providePaymentCollectionStateTimer$wiring(coroutineScope, paymentCollectionTimeoutSupplier, paymentCollectionLoggerFactory));
    }
}
