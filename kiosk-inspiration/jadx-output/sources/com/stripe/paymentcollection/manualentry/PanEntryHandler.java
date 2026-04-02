package com.stripe.paymentcollection.manualentry;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.stripe.hardware.paymentcollection.PanEntryModel;
import com.stripe.paymentcollection.ManualEntryEvent;
import com.stripe.paymentcollection.PaymentCollectionEventDelegate;
import com.stripe.paymentcollection.log.PaymentCollectionLogger;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ManualEntryStates.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u001c\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0016J\u001a\u0010\r\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\n2\b\u0010\u000f\u001a\u0004\u0018\u00010\nH\u0014J\u0010\u0010\u0010\u001a\u00020\b2\u0006\u0010\u0011\u001a\u00020\nH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lcom/stripe/paymentcollection/manualentry/PanEntryHandler;", "Lcom/stripe/paymentcollection/manualentry/ManualEntryHandler;", "eventDelegate", "Lcom/stripe/paymentcollection/PaymentCollectionEventDelegate;", "logger", "Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;", "(Lcom/stripe/paymentcollection/PaymentCollectionEventDelegate;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V", "onEnter", "", "current", "Lcom/stripe/paymentcollection/manualentry/ManualEntryData;", TypedValues.TransitionType.S_FROM, "Lcom/stripe/paymentcollection/manualentry/ManualEntryState;", "onProcessDataUpdate", "new", "old", "sendPanEntryUiEvent", "data", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class PanEntryHandler extends ManualEntryHandler {
    private final PaymentCollectionLogger logger;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PanEntryHandler(PaymentCollectionEventDelegate eventDelegate, PaymentCollectionLogger logger) {
        super(ManualEntryState.PAN_ENTRY, eventDelegate);
        Intrinsics.checkNotNullParameter(eventDelegate, "eventDelegate");
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.logger = logger;
    }

    @Override // com.stripe.statemachine.StateMachine.StateHandler
    public void onEnter(ManualEntryData current, ManualEntryState from) {
        super.onEnter(current, from);
        this.logger.i("PanEntryHandler.onEnter", new Pair[0]);
        if (current != null) {
            sendPanEntryUiEvent(current);
            sendStartPinEvent();
        }
    }

    @Override // com.stripe.paymentcollection.manualentry.ManualEntryHandler
    protected void onProcessDataUpdate(ManualEntryData manualEntryData, ManualEntryData old) {
        Intrinsics.checkNotNullParameter(manualEntryData, "new");
        sendPanEntryUiEvent(manualEntryData);
    }

    private final void sendPanEntryUiEvent(ManualEntryData data) {
        getEventDelegate().onHandlePaymentCollectionEvent(new ManualEntryEvent(new PanEntryModel(data.getAmount(), data.getPanUnmaskedDigits(), data.getPanAsteriskCount(), data.getShowError(), data.getTransactionType())));
    }
}
