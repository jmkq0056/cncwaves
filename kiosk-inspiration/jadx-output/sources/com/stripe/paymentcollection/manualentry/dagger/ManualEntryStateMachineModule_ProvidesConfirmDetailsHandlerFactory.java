package com.stripe.paymentcollection.manualentry.dagger;

import com.stripe.paymentcollection.PaymentCollectionEventDelegate;
import com.stripe.paymentcollection.log.PaymentCollectionLoggerFactory;
import com.stripe.paymentcollection.manualentry.ConfirmDetailsHandler;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class ManualEntryStateMachineModule_ProvidesConfirmDetailsHandlerFactory implements Factory<ConfirmDetailsHandler> {
    private final Provider<PaymentCollectionLoggerFactory> loggerFactoryProvider;
    private final Provider<PaymentCollectionEventDelegate> paymentCollectionEventDelegateProvider;

    public ManualEntryStateMachineModule_ProvidesConfirmDetailsHandlerFactory(Provider<PaymentCollectionEventDelegate> provider, Provider<PaymentCollectionLoggerFactory> provider2) {
        this.paymentCollectionEventDelegateProvider = provider;
        this.loggerFactoryProvider = provider2;
    }

    @Override // javax.inject.Provider
    public ConfirmDetailsHandler get() {
        return providesConfirmDetailsHandler(this.paymentCollectionEventDelegateProvider.get(), this.loggerFactoryProvider.get());
    }

    public static ManualEntryStateMachineModule_ProvidesConfirmDetailsHandlerFactory create(Provider<PaymentCollectionEventDelegate> provider, Provider<PaymentCollectionLoggerFactory> provider2) {
        return new ManualEntryStateMachineModule_ProvidesConfirmDetailsHandlerFactory(provider, provider2);
    }

    public static ConfirmDetailsHandler providesConfirmDetailsHandler(PaymentCollectionEventDelegate paymentCollectionEventDelegate, PaymentCollectionLoggerFactory paymentCollectionLoggerFactory) {
        return (ConfirmDetailsHandler) Preconditions.checkNotNullFromProvides(ManualEntryStateMachineModule.INSTANCE.providesConfirmDetailsHandler(paymentCollectionEventDelegate, paymentCollectionLoggerFactory));
    }
}
