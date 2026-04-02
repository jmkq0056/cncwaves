package com.stripe.paymentcollection.manualentry.dagger;

import com.stripe.paymentcollection.PaymentCollectionEventDelegate;
import com.stripe.paymentcollection.log.PaymentCollectionLoggerFactory;
import com.stripe.paymentcollection.manualentry.PanEntryHandler;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class ManualEntryStateMachineModule_ProvidesPanEntryHandlerFactory implements Factory<PanEntryHandler> {
    private final Provider<PaymentCollectionLoggerFactory> loggerFactoryProvider;
    private final Provider<PaymentCollectionEventDelegate> paymentCollectionEventDelegateProvider;

    public ManualEntryStateMachineModule_ProvidesPanEntryHandlerFactory(Provider<PaymentCollectionEventDelegate> provider, Provider<PaymentCollectionLoggerFactory> provider2) {
        this.paymentCollectionEventDelegateProvider = provider;
        this.loggerFactoryProvider = provider2;
    }

    @Override // javax.inject.Provider
    public PanEntryHandler get() {
        return providesPanEntryHandler(this.paymentCollectionEventDelegateProvider.get(), this.loggerFactoryProvider.get());
    }

    public static ManualEntryStateMachineModule_ProvidesPanEntryHandlerFactory create(Provider<PaymentCollectionEventDelegate> provider, Provider<PaymentCollectionLoggerFactory> provider2) {
        return new ManualEntryStateMachineModule_ProvidesPanEntryHandlerFactory(provider, provider2);
    }

    public static PanEntryHandler providesPanEntryHandler(PaymentCollectionEventDelegate paymentCollectionEventDelegate, PaymentCollectionLoggerFactory paymentCollectionLoggerFactory) {
        return (PanEntryHandler) Preconditions.checkNotNullFromProvides(ManualEntryStateMachineModule.INSTANCE.providesPanEntryHandler(paymentCollectionEventDelegate, paymentCollectionLoggerFactory));
    }
}
