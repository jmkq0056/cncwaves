package com.stripe.paymentcollection.dagger;

import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import com.stripe.paymentcollection.log.PaymentCollectionLoggerFactory;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class PaymentCollectionModule_ProvidesPaymentCollectionLoggerFactoryFactory implements Factory<PaymentCollectionLoggerFactory> {
    private final Provider<LoggerFactory> terminalLoggerFactoryProvider;

    public PaymentCollectionModule_ProvidesPaymentCollectionLoggerFactoryFactory(Provider<LoggerFactory> provider) {
        this.terminalLoggerFactoryProvider = provider;
    }

    @Override // javax.inject.Provider
    public PaymentCollectionLoggerFactory get() {
        return providesPaymentCollectionLoggerFactory(this.terminalLoggerFactoryProvider.get());
    }

    public static PaymentCollectionModule_ProvidesPaymentCollectionLoggerFactoryFactory create(Provider<LoggerFactory> provider) {
        return new PaymentCollectionModule_ProvidesPaymentCollectionLoggerFactoryFactory(provider);
    }

    public static PaymentCollectionLoggerFactory providesPaymentCollectionLoggerFactory(LoggerFactory loggerFactory) {
        return (PaymentCollectionLoggerFactory) Preconditions.checkNotNullFromProvides(PaymentCollectionModule.INSTANCE.providesPaymentCollectionLoggerFactory(loggerFactory));
    }
}
