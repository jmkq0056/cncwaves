package com.stripe.paymentcollection.manualentry.dagger;

import com.stripe.paymentcollection.PaymentCollectionEventDelegate;
import com.stripe.paymentcollection.log.PaymentCollectionLoggerFactory;
import com.stripe.paymentcollection.manualentry.ConfigureReaderHandler;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class ManualEntryStateMachineModule_ProvidesConfigureReaderHandlerFactory implements Factory<ConfigureReaderHandler> {
    private final Provider<PaymentCollectionLoggerFactory> loggerFactoryProvider;
    private final Provider<PaymentCollectionEventDelegate> paymentCollectionEventDelegateProvider;

    public ManualEntryStateMachineModule_ProvidesConfigureReaderHandlerFactory(Provider<PaymentCollectionEventDelegate> provider, Provider<PaymentCollectionLoggerFactory> provider2) {
        this.paymentCollectionEventDelegateProvider = provider;
        this.loggerFactoryProvider = provider2;
    }

    @Override // javax.inject.Provider
    public ConfigureReaderHandler get() {
        return providesConfigureReaderHandler(this.paymentCollectionEventDelegateProvider.get(), this.loggerFactoryProvider.get());
    }

    public static ManualEntryStateMachineModule_ProvidesConfigureReaderHandlerFactory create(Provider<PaymentCollectionEventDelegate> provider, Provider<PaymentCollectionLoggerFactory> provider2) {
        return new ManualEntryStateMachineModule_ProvidesConfigureReaderHandlerFactory(provider, provider2);
    }

    public static ConfigureReaderHandler providesConfigureReaderHandler(PaymentCollectionEventDelegate paymentCollectionEventDelegate, PaymentCollectionLoggerFactory paymentCollectionLoggerFactory) {
        return (ConfigureReaderHandler) Preconditions.checkNotNullFromProvides(ManualEntryStateMachineModule.INSTANCE.providesConfigureReaderHandler(paymentCollectionEventDelegate, paymentCollectionLoggerFactory));
    }
}
