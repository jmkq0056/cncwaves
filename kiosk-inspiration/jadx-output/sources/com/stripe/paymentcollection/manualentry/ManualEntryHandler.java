package com.stripe.paymentcollection.manualentry;

import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.stripe.paymentcollection.PaymentCollectionEventDelegate;
import com.stripe.paymentcollection.StartPinEntryEvent;
import com.stripe.statemachine.StateMachine;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ManualEntryStates.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0005\b&\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0015\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u001a\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u00032\b\u0010\r\u001a\u0004\u0018\u00010\u0003H\u0014J\u0018\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u00032\b\u0010\r\u001a\u0004\u0018\u00010\u0003J\b\u0010\u000f\u001a\u00020\u000bH\u0004R\u0014\u0010\u0005\u001a\u00020\u0006X\u0084\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\t¨\u0006\u0010"}, d2 = {"Lcom/stripe/paymentcollection/manualentry/ManualEntryHandler;", "Lcom/stripe/statemachine/StateMachine$StateHandler;", "Lcom/stripe/paymentcollection/manualentry/ManualEntryState;", "Lcom/stripe/paymentcollection/manualentry/ManualEntryData;", RemoteConfigConstants.ResponseFieldKey.STATE, "eventDelegate", "Lcom/stripe/paymentcollection/PaymentCollectionEventDelegate;", "(Lcom/stripe/paymentcollection/manualentry/ManualEntryState;Lcom/stripe/paymentcollection/PaymentCollectionEventDelegate;)V", "getEventDelegate", "()Lcom/stripe/paymentcollection/PaymentCollectionEventDelegate;", "onProcessDataUpdate", "", "new", "old", "onUpdate", "sendStartPinEvent", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public abstract class ManualEntryHandler extends StateMachine.StateHandler<ManualEntryState, ManualEntryData> {
    private final PaymentCollectionEventDelegate eventDelegate;

    protected void onProcessDataUpdate(ManualEntryData manualEntryData, ManualEntryData old) {
        Intrinsics.checkNotNullParameter(manualEntryData, "new");
    }

    protected final PaymentCollectionEventDelegate getEventDelegate() {
        return this.eventDelegate;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ManualEntryHandler(ManualEntryState state, PaymentCollectionEventDelegate eventDelegate) {
        super(state);
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(eventDelegate, "eventDelegate");
        this.eventDelegate = eventDelegate;
    }

    @Override // com.stripe.statemachine.StateMachine.StateHandler
    public final void onUpdate(ManualEntryData manualEntryData, ManualEntryData old) {
        Intrinsics.checkNotNullParameter(manualEntryData, "new");
        super.onUpdate(manualEntryData, old);
        if (manualEntryData.getCollectionResult() != null) {
            StateMachine.StateHandler.transitionTo$default(this, ManualEntryState.FINISHED, null, 2, null);
            return;
        }
        if (manualEntryData.getEncryptedData() != null && manualEntryData.getZipCode().length() == 0) {
            StateMachine.StateHandler.transitionTo$default(this, ManualEntryState.ZIP_CODE, null, 2, null);
        } else if (manualEntryData.getEncryptedData() != null && manualEntryData.getZipCode().length() > 0 && !manualEntryData.getUserConfirmed()) {
            StateMachine.StateHandler.transitionTo$default(this, ManualEntryState.CONFIRM_DETAILS, null, 2, null);
        } else {
            onProcessDataUpdate(manualEntryData, old);
        }
    }

    protected final void sendStartPinEvent() {
        this.eventDelegate.onHandlePaymentCollectionEvent(StartPinEntryEvent.INSTANCE);
    }
}
