package com.stripe.paymentcollection.manualentry.dagger;

import com.stripe.paymentcollection.PaymentCollectionEventDelegate;
import com.stripe.paymentcollection.log.PaymentCollectionLoggerFactory;
import com.stripe.paymentcollection.manualentry.ZipCodeHandler;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class ManualEntryStateMachineModule_ProvidesZipCodeHandlerFactory implements Factory<ZipCodeHandler> {
    private final Provider<PaymentCollectionLoggerFactory> loggerFactoryProvider;
    private final Provider<PaymentCollectionEventDelegate> paymentCollectionEventDelegateProvider;

    public ManualEntryStateMachineModule_ProvidesZipCodeHandlerFactory(Provider<PaymentCollectionEventDelegate> provider, Provider<PaymentCollectionLoggerFactory> provider2) {
        this.paymentCollectionEventDelegateProvider = provider;
        this.loggerFactoryProvider = provider2;
    }

    @Override // javax.inject.Provider
    public ZipCodeHandler get() {
        return providesZipCodeHandler(this.paymentCollectionEventDelegateProvider.get(), this.loggerFactoryProvider.get());
    }

    public static ManualEntryStateMachineModule_ProvidesZipCodeHandlerFactory create(Provider<PaymentCollectionEventDelegate> provider, Provider<PaymentCollectionLoggerFactory> provider2) {
        return new ManualEntryStateMachineModule_ProvidesZipCodeHandlerFactory(provider, provider2);
    }

    public static ZipCodeHandler providesZipCodeHandler(PaymentCollectionEventDelegate paymentCollectionEventDelegate, PaymentCollectionLoggerFactory paymentCollectionLoggerFactory) {
        return (ZipCodeHandler) Preconditions.checkNotNullFromProvides(ManualEntryStateMachineModule.INSTANCE.providesZipCodeHandler(paymentCollectionEventDelegate, paymentCollectionLoggerFactory));
    }
}
