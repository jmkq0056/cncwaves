package com.stripe.paymentcollection.manualentry.dagger;

import com.stripe.paymentcollection.PaymentCollectionEventDelegate;
import com.stripe.paymentcollection.log.PaymentCollectionLoggerFactory;
import com.stripe.paymentcollection.manualentry.CvvEntryHandler;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class ManualEntryStateMachineModule_ProvidesCvvEntryHandlerFactory implements Factory<CvvEntryHandler> {
    private final Provider<PaymentCollectionLoggerFactory> loggerFactoryProvider;
    private final Provider<PaymentCollectionEventDelegate> paymentCollectionEventDelegateProvider;

    public ManualEntryStateMachineModule_ProvidesCvvEntryHandlerFactory(Provider<PaymentCollectionEventDelegate> provider, Provider<PaymentCollectionLoggerFactory> provider2) {
        this.paymentCollectionEventDelegateProvider = provider;
        this.loggerFactoryProvider = provider2;
    }

    @Override // javax.inject.Provider
    public CvvEntryHandler get() {
        return providesCvvEntryHandler(this.paymentCollectionEventDelegateProvider.get(), this.loggerFactoryProvider.get());
    }

    public static ManualEntryStateMachineModule_ProvidesCvvEntryHandlerFactory create(Provider<PaymentCollectionEventDelegate> provider, Provider<PaymentCollectionLoggerFactory> provider2) {
        return new ManualEntryStateMachineModule_ProvidesCvvEntryHandlerFactory(provider, provider2);
    }

    public static CvvEntryHandler providesCvvEntryHandler(PaymentCollectionEventDelegate paymentCollectionEventDelegate, PaymentCollectionLoggerFactory paymentCollectionLoggerFactory) {
        return (CvvEntryHandler) Preconditions.checkNotNullFromProvides(ManualEntryStateMachineModule.INSTANCE.providesCvvEntryHandler(paymentCollectionEventDelegate, paymentCollectionLoggerFactory));
    }
}
