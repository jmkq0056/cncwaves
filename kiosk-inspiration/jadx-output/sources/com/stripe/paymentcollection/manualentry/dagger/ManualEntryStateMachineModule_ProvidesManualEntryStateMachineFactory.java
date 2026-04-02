package com.stripe.paymentcollection.manualentry.dagger;

import com.stripe.paymentcollection.log.PaymentCollectionLoggerFactory;
import com.stripe.paymentcollection.manualentry.ConfigureReaderHandler;
import com.stripe.paymentcollection.manualentry.ConfirmDetailsHandler;
import com.stripe.paymentcollection.manualentry.CvvEntryHandler;
import com.stripe.paymentcollection.manualentry.EmptyHandler;
import com.stripe.paymentcollection.manualentry.ExpiryDateEntryHandler;
import com.stripe.paymentcollection.manualentry.FinishedHandler;
import com.stripe.paymentcollection.manualentry.ManualEntryLoggerInterface;
import com.stripe.paymentcollection.manualentry.ManualEntryStateMachine;
import com.stripe.paymentcollection.manualentry.PanEntryHandler;
import com.stripe.paymentcollection.manualentry.ZipCodeHandler;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class ManualEntryStateMachineModule_ProvidesManualEntryStateMachineFactory implements Factory<ManualEntryStateMachine> {
    private final Provider<ConfigureReaderHandler> configureReaderHandlerProvider;
    private final Provider<ConfirmDetailsHandler> confirmDetailsHandlerProvider;
    private final Provider<CvvEntryHandler> cvvEntryHandlerProvider;
    private final Provider<EmptyHandler> emptyHandlerProvider;
    private final Provider<ExpiryDateEntryHandler> expiryDateEntryHandlerProvider;
    private final Provider<FinishedHandler> finishedHandlerProvider;
    private final Provider<PaymentCollectionLoggerFactory> loggerFactoryProvider;
    private final Provider<ManualEntryLoggerInterface> manualEntryLoggerProvider;
    private final Provider<PanEntryHandler> panEntryHandlerProvider;
    private final Provider<ZipCodeHandler> zipCodeHandlerProvider;

    public ManualEntryStateMachineModule_ProvidesManualEntryStateMachineFactory(Provider<EmptyHandler> provider, Provider<ConfigureReaderHandler> provider2, Provider<ZipCodeHandler> provider3, Provider<ConfirmDetailsHandler> provider4, Provider<PanEntryHandler> provider5, Provider<ExpiryDateEntryHandler> provider6, Provider<CvvEntryHandler> provider7, Provider<FinishedHandler> provider8, Provider<ManualEntryLoggerInterface> provider9, Provider<PaymentCollectionLoggerFactory> provider10) {
        this.emptyHandlerProvider = provider;
        this.configureReaderHandlerProvider = provider2;
        this.zipCodeHandlerProvider = provider3;
        this.confirmDetailsHandlerProvider = provider4;
        this.panEntryHandlerProvider = provider5;
        this.expiryDateEntryHandlerProvider = provider6;
        this.cvvEntryHandlerProvider = provider7;
        this.finishedHandlerProvider = provider8;
        this.manualEntryLoggerProvider = provider9;
        this.loggerFactoryProvider = provider10;
    }

    @Override // javax.inject.Provider
    public ManualEntryStateMachine get() {
        return providesManualEntryStateMachine(this.emptyHandlerProvider.get(), this.configureReaderHandlerProvider.get(), this.zipCodeHandlerProvider.get(), this.confirmDetailsHandlerProvider.get(), this.panEntryHandlerProvider.get(), this.expiryDateEntryHandlerProvider.get(), this.cvvEntryHandlerProvider.get(), this.finishedHandlerProvider.get(), this.manualEntryLoggerProvider.get(), this.loggerFactoryProvider.get());
    }

    public static ManualEntryStateMachineModule_ProvidesManualEntryStateMachineFactory create(Provider<EmptyHandler> provider, Provider<ConfigureReaderHandler> provider2, Provider<ZipCodeHandler> provider3, Provider<ConfirmDetailsHandler> provider4, Provider<PanEntryHandler> provider5, Provider<ExpiryDateEntryHandler> provider6, Provider<CvvEntryHandler> provider7, Provider<FinishedHandler> provider8, Provider<ManualEntryLoggerInterface> provider9, Provider<PaymentCollectionLoggerFactory> provider10) {
        return new ManualEntryStateMachineModule_ProvidesManualEntryStateMachineFactory(provider, provider2, provider3, provider4, provider5, provider6, provider7, provider8, provider9, provider10);
    }

    public static ManualEntryStateMachine providesManualEntryStateMachine(EmptyHandler emptyHandler, ConfigureReaderHandler configureReaderHandler, ZipCodeHandler zipCodeHandler, ConfirmDetailsHandler confirmDetailsHandler, PanEntryHandler panEntryHandler, ExpiryDateEntryHandler expiryDateEntryHandler, CvvEntryHandler cvvEntryHandler, FinishedHandler finishedHandler, ManualEntryLoggerInterface manualEntryLoggerInterface, PaymentCollectionLoggerFactory paymentCollectionLoggerFactory) {
        return (ManualEntryStateMachine) Preconditions.checkNotNullFromProvides(ManualEntryStateMachineModule.INSTANCE.providesManualEntryStateMachine(emptyHandler, configureReaderHandler, zipCodeHandler, confirmDetailsHandler, panEntryHandler, expiryDateEntryHandler, cvvEntryHandler, finishedHandler, manualEntryLoggerInterface, paymentCollectionLoggerFactory));
    }
}
