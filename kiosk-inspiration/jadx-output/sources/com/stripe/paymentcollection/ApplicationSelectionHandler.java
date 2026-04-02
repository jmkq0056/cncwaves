package com.stripe.paymentcollection;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.stripe.hardware.emv.TlvMap;
import com.stripe.hardware.paymentcollection.ApplicationSelectionModel;
import com.stripe.paymentcollection.log.PaymentCollectionLogger;
import com.stripe.paymentcollection.metrics.StageEventLogger;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PaymentCollectionStateHandlers.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u0000 \u001d2\u00020\u0001:\u0001\u001dB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u0007\u001a\u00020\bH\u0002J\u0010\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\u000bH\u0002J\u0010\u0010\f\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\u000eH\u0002J\u001c\u0010\u000f\u001a\u00020\b2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000e2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0016J\u0010\u0010\u0013\u001a\u00020\b2\u0006\u0010\u0014\u001a\u00020\u0012H\u0016J\u0010\u0010\u0015\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u001a\u0010\u0016\u001a\u00020\b2\u0006\u0010\u0017\u001a\u00020\u000e2\b\u0010\u0018\u001a\u0004\u0018\u00010\u000eH\u0016J\u0012\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\u0006\u0010\u001b\u001a\u00020\u001cH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001e"}, d2 = {"Lcom/stripe/paymentcollection/ApplicationSelectionHandler;", "Lcom/stripe/paymentcollection/PaymentCollectionScreenInputStateHandler;", "timer", "Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;", "logger", "Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;", "(Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V", "generateAutoSelectApplicationEvent", "", "generateSelectApplicationEvent", FirebaseAnalytics.Param.INDEX, "", "generateUserInteractionEvent", "data", "Lcom/stripe/paymentcollection/PaymentCollectionData;", "onEnter", "current", TypedValues.TransitionType.S_FROM, "Lcom/stripe/paymentcollection/PaymentCollectionState;", "onExit", TypedValues.TransitionType.S_TO, "onImplicitSelection", "onPaymentCollectionDataUpdate", "new", "old", "parseApplicationTlv", "Lcom/stripe/hardware/paymentcollection/ApplicationSelectionModel$Application;", "blob", "", "Companion", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ApplicationSelectionHandler extends PaymentCollectionScreenInputStateHandler {
    private static final int AUTO_SELECTED_APPLICATION_INDEX = 0;
    public static final int UNKNOWN_SELECTED_APPLICATION_INDEX = -1;
    private final PaymentCollectionLogger logger;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ApplicationSelectionHandler(PaymentCollectionStateTimer timer, PaymentCollectionLogger logger) {
        super(PaymentCollectionState.APPLICATION_SELECTION, timer, logger);
        Intrinsics.checkNotNullParameter(timer, "timer");
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.logger = logger;
    }

    @Override // com.stripe.paymentcollection.PaymentCollectionScreenInputStateHandler
    public void onImplicitSelection(PaymentCollectionData data) {
        Intrinsics.checkNotNullParameter(data, "data");
        updateDataWithoutCallback(PaymentCollectionData.copy$default(data, null, null, null, null, false, 0, null, false, false, null, null, null, -1, null, null, null, null, 0, false, null, null, null, false, null, false, null, null, null, null, null, false, null, null, null, false, null, null, false, null, null, false, null, false, false, null, null, null, null, null, null, false, false, null, null, false, false, false, false, null, null, null, null, false, null, false, null, false, false, false, false, -4097, -1, 63, null));
        transitionTo(PaymentCollectionState.PROCESSING, "Application selected with unknown value.");
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.stripe.paymentcollection.PaymentCollectionStateHandler, com.stripe.statemachine.StateMachine.StateHandler
    public void onEnter(PaymentCollectionData current, PaymentCollectionState from) {
        super.onEnter(current, from);
        if (current != null) {
            getStageEventLogger().openApplicationSelectionLog();
            if (current.getShouldAutoSelectApplication()) {
                generateAutoSelectApplicationEvent();
            }
            onPaymentCollectionDataUpdate(current, current);
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.stripe.paymentcollection.PaymentCollectionStateHandler, com.stripe.statemachine.StateMachine.StateHandler
    public void onExit(PaymentCollectionState to) {
        Intrinsics.checkNotNullParameter(to, "to");
        super.onExit(to);
        StageEventLogger stageEventLogger = getStageEventLogger();
        PaymentCollectionData data = getData();
        Intrinsics.checkNotNull(data);
        stageEventLogger.closeApplicationSelectionLog(data, to);
    }

    @Override // com.stripe.paymentcollection.PaymentCollectionStateHandler
    public void onPaymentCollectionDataUpdate(PaymentCollectionData paymentCollectionData, PaymentCollectionData old) {
        Intrinsics.checkNotNullParameter(paymentCollectionData, "new");
        super.onPaymentCollectionDataUpdate(paymentCollectionData, old);
        if (transitionOnImplicitSelectionIfNeeded(paymentCollectionData)) {
            return;
        }
        Integer selectedApplicationIndex = paymentCollectionData.getSelectedApplicationIndex();
        if (selectedApplicationIndex != null) {
            generateSelectApplicationEvent(selectedApplicationIndex.intValue());
            transitionTo(PaymentCollectionState.LANGUAGE_SELECTION, "Application index recorded.");
        } else {
            if (checkForPrematureTransactionCompletionAndTransitionIfNeeded(paymentCollectionData) || paymentCollectionData.getShouldAutoSelectApplication()) {
                return;
            }
            generateUserInteractionEvent(paymentCollectionData);
        }
    }

    private final void generateSelectApplicationEvent(int index) {
        yieldEvent(new SelectApplicationEvent(index));
    }

    private final void generateUserInteractionEvent(PaymentCollectionData data) {
        List<String> applicationList = data.getApplicationList();
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = applicationList.iterator();
        while (it.hasNext()) {
            ApplicationSelectionModel.Application applicationTlv = parseApplicationTlv((String) it.next());
            if (applicationTlv != null) {
                arrayList.add(applicationTlv);
            }
        }
        ArrayList arrayList2 = arrayList;
        if (arrayList2.size() == data.getApplicationList().size()) {
            yieldEvent(new PresentApplicationSelectionEvent(new ApplicationSelectionModel(arrayList2, data.getAmount(), data.getEnableCustomerCancellation(), data.getApplicationSelectionRetryReason())));
        }
    }

    private final void generateAutoSelectApplicationEvent() {
        yieldEvent(new AutoSelectApplicationEvent(0));
    }

    private final ApplicationSelectionModel.Application parseApplicationTlv(String blob) {
        TlvMap tlvMap = TlvMap.INSTANCE.toTlvMap(blob);
        if (tlvMap == null) {
            this.logger.w("Unable to parse TLV blob received in application selection");
            return null;
        }
        return new ApplicationSelectionModel.Application(tlvMap.getApplicationName(), tlvMap.getDedicatedFileName(), blob);
    }
}
