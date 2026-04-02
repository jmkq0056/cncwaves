package com.stripe.paymentcollection.dagger;

import com.stripe.hardware.paymentcollection.ManualEntryEventReceiver;
import com.stripe.paymentcollection.manualentry.ManualEntryStateMachine;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class PaymentCollectionModule_ProvidesManualEntryEventReceiverFactory implements Factory<ManualEntryEventReceiver> {
    private final Provider<ManualEntryStateMachine> stateMachineProvider;

    public PaymentCollectionModule_ProvidesManualEntryEventReceiverFactory(Provider<ManualEntryStateMachine> provider) {
        this.stateMachineProvider = provider;
    }

    @Override // javax.inject.Provider
    public ManualEntryEventReceiver get() {
        return providesManualEntryEventReceiver(this.stateMachineProvider.get());
    }

    public static PaymentCollectionModule_ProvidesManualEntryEventReceiverFactory create(Provider<ManualEntryStateMachine> provider) {
        return new PaymentCollectionModule_ProvidesManualEntryEventReceiverFactory(provider);
    }

    public static ManualEntryEventReceiver providesManualEntryEventReceiver(ManualEntryStateMachine manualEntryStateMachine) {
        return (ManualEntryEventReceiver) Preconditions.checkNotNullFromProvides(PaymentCollectionModule.INSTANCE.providesManualEntryEventReceiver(manualEntryStateMachine));
    }
}
