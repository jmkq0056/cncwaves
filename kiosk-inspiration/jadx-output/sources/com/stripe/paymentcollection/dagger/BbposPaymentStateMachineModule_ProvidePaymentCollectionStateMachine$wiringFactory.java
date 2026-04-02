package com.stripe.paymentcollection.dagger;

import com.stripe.paymentcollection.PaymentCollectionEventDelegate;
import com.stripe.paymentcollection.PaymentCollectionFeatureFlagRepository;
import com.stripe.paymentcollection.PaymentCollectionStateMachine;
import com.stripe.paymentcollection.PaymentCollectionStateTimer;
import com.stripe.paymentcollection.log.PaymentCollectionLoggerFactory;
import com.stripe.paymentcollection.manualentry.ManualEntryStateMachine;
import com.stripe.paymentcollection.metrics.EventLoggers;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class BbposPaymentStateMachineModule_ProvidePaymentCollectionStateMachine$wiringFactory implements Factory<PaymentCollectionStateMachine> {
    private final Provider<PaymentCollectionEventDelegate> eventDelegateProvider;
    private final Provider<EventLoggers> eventLoggersProvider;
    private final Provider<PaymentCollectionLoggerFactory> loggerFactoryProvider;
    private final Provider<ManualEntryStateMachine> manualEntryStateMachineProvider;
    private final BbposPaymentStateMachineModule module;
    private final Provider<PaymentCollectionFeatureFlagRepository> paymentCollectionFeatureFlagRepositoryProvider;
    private final Provider<PaymentCollectionStateTimer> timerProvider;

    public BbposPaymentStateMachineModule_ProvidePaymentCollectionStateMachine$wiringFactory(BbposPaymentStateMachineModule bbposPaymentStateMachineModule, Provider<PaymentCollectionEventDelegate> provider, Provider<EventLoggers> provider2, Provider<PaymentCollectionStateTimer> provider3, Provider<PaymentCollectionFeatureFlagRepository> provider4, Provider<ManualEntryStateMachine> provider5, Provider<PaymentCollectionLoggerFactory> provider6) {
        this.module = bbposPaymentStateMachineModule;
        this.eventDelegateProvider = provider;
        this.eventLoggersProvider = provider2;
        this.timerProvider = provider3;
        this.paymentCollectionFeatureFlagRepositoryProvider = provider4;
        this.manualEntryStateMachineProvider = provider5;
        this.loggerFactoryProvider = provider6;
    }

    @Override // javax.inject.Provider
    public PaymentCollectionStateMachine get() {
        return providePaymentCollectionStateMachine$wiring(this.module, this.eventDelegateProvider.get(), this.eventLoggersProvider.get(), this.timerProvider.get(), this.paymentCollectionFeatureFlagRepositoryProvider.get(), this.manualEntryStateMachineProvider.get(), this.loggerFactoryProvider.get());
    }

    public static BbposPaymentStateMachineModule_ProvidePaymentCollectionStateMachine$wiringFactory create(BbposPaymentStateMachineModule bbposPaymentStateMachineModule, Provider<PaymentCollectionEventDelegate> provider, Provider<EventLoggers> provider2, Provider<PaymentCollectionStateTimer> provider3, Provider<PaymentCollectionFeatureFlagRepository> provider4, Provider<ManualEntryStateMachine> provider5, Provider<PaymentCollectionLoggerFactory> provider6) {
        return new BbposPaymentStateMachineModule_ProvidePaymentCollectionStateMachine$wiringFactory(bbposPaymentStateMachineModule, provider, provider2, provider3, provider4, provider5, provider6);
    }

    public static PaymentCollectionStateMachine providePaymentCollectionStateMachine$wiring(BbposPaymentStateMachineModule bbposPaymentStateMachineModule, PaymentCollectionEventDelegate paymentCollectionEventDelegate, EventLoggers eventLoggers, PaymentCollectionStateTimer paymentCollectionStateTimer, PaymentCollectionFeatureFlagRepository paymentCollectionFeatureFlagRepository, ManualEntryStateMachine manualEntryStateMachine, PaymentCollectionLoggerFactory paymentCollectionLoggerFactory) {
        return (PaymentCollectionStateMachine) Preconditions.checkNotNullFromProvides(bbposPaymentStateMachineModule.providePaymentCollectionStateMachine$wiring(paymentCollectionEventDelegate, eventLoggers, paymentCollectionStateTimer, paymentCollectionFeatureFlagRepository, manualEntryStateMachine, paymentCollectionLoggerFactory));
    }
}
