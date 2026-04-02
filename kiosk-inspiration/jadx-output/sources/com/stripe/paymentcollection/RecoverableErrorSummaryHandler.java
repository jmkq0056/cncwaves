package com.stripe.paymentcollection;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.stripe.paymentcollection.log.PaymentCollectionLogger;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PaymentCollectionStateHandlers.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u001c\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0016J\u0010\u0010\r\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\fH\u0016J\u001a\u0010\u000f\u001a\u00020\b2\u0006\u0010\u0010\u001a\u00020\n2\b\u0010\u0011\u001a\u0004\u0018\u00010\nH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lcom/stripe/paymentcollection/RecoverableErrorSummaryHandler;", "Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;", "timer", "Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;", "logger", "Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;", "(Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V", "onEnter", "", "current", "Lcom/stripe/paymentcollection/PaymentCollectionData;", TypedValues.TransitionType.S_FROM, "Lcom/stripe/paymentcollection/PaymentCollectionState;", "onExit", TypedValues.TransitionType.S_TO, "onPaymentCollectionDataUpdate", "new", "old", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class RecoverableErrorSummaryHandler extends PaymentCollectionStateHandler {
    private final PaymentCollectionLogger logger;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RecoverableErrorSummaryHandler(PaymentCollectionStateTimer timer, PaymentCollectionLogger logger) {
        super(PaymentCollectionState.RECOVERABLE_ERROR_SUMMARY, timer, logger);
        Intrinsics.checkNotNullParameter(timer, "timer");
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.logger = logger;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.stripe.paymentcollection.PaymentCollectionStateHandler, com.stripe.statemachine.StateMachine.StateHandler
    public void onExit(PaymentCollectionState to) {
        Intrinsics.checkNotNullParameter(to, "to");
        super.onExit(to);
        if (to == PaymentCollectionState.COLLECTION) {
            clearContactCardStateAndPrepareNextCollection();
            getCollectionEventLogger().start();
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0075  */
    @Override // com.stripe.paymentcollection.PaymentCollectionStateHandler, com.stripe.statemachine.StateMachine.StateHandler
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onEnter(com.stripe.paymentcollection.PaymentCollectionData r7, com.stripe.paymentcollection.PaymentCollectionState r8) {
        /*
            r6 = this;
            super.onEnter(r7, r8)
            r8 = 0
            if (r7 == 0) goto L11
            com.stripe.transaction.PaymentCollectionDeviceCapability r0 = r7.getDeviceCapability()
            if (r0 == 0) goto L11
            boolean r0 = r0.getDirectlyControlsScreenInput()
            goto L12
        L11:
            r0 = r8
        L12:
            r1 = 0
            if (r0 != 0) goto L2e
            com.stripe.paymentcollection.log.PaymentCollectionLogger r0 = r6.logger
            java.lang.String r2 = "Ready to collect again - does not control input."
            kotlin.Pair[] r8 = new kotlin.Pair[r8]
            r0.i(r2, r8)
            if (r7 == 0) goto L24
            r6.startCollectionIfNeeded(r7)
            return
        L24:
            r7 = r6
            com.stripe.statemachine.StateMachine$StateHandler r7 = (com.stripe.statemachine.StateMachine.StateHandler) r7
            com.stripe.paymentcollection.PaymentCollectionState r8 = com.stripe.paymentcollection.PaymentCollectionState.COLLECTION
            r0 = 2
            com.stripe.statemachine.StateMachine.StateHandler.transitionTo$default(r7, r8, r1, r0, r1)
            return
        L2e:
            if (r7 == 0) goto L3d
            com.stripe.hardware.emv.TransactionResult$Result r0 = r7.getHardwareTransactionResult()
            if (r0 == 0) goto L3d
            com.stripe.hardware.paymentcollection.RecoverableError$Companion r1 = com.stripe.hardware.paymentcollection.RecoverableError.INSTANCE
            com.stripe.hardware.paymentcollection.RecoverableError r0 = r1.fromTransactionResult(r0)
            r1 = r0
        L3d:
            com.stripe.hardware.paymentcollection.RecoverableError r0 = com.stripe.hardware.paymentcollection.RecoverableError.CARD_REMOVED_TOO_SOON
            r2 = 1
            if (r1 != r0) goto L4e
            java.util.List r0 = r7.getApplicationList()
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L4e
            r0 = r2
            goto L4f
        L4e:
            r0 = r8
        L4f:
            if (r7 == 0) goto L75
            com.stripe.hardware.emv.TransactionResult$Result r3 = r7.getHardwareTransactionResult()
            com.stripe.hardware.emv.TransactionResult$Result r4 = com.stripe.hardware.emv.TransactionResult.Result.TERMINATED
            if (r3 != r4) goto L5b
            r3 = r2
            goto L5c
        L5b:
            r3 = r8
        L5c:
            com.stripe.hardware.emv.IntermediateTransactionError r4 = r7.getIntermediateTransactionError()
            if (r4 != 0) goto L64
            r4 = r2
            goto L65
        L64:
            r4 = r8
        L65:
            com.stripe.paymentcollection.EarlyTransactionAbortReason r5 = r7.getEarlyTransactionAbortReason()
            if (r5 != 0) goto L6d
            r5 = r2
            goto L6e
        L6d:
            r5 = r8
        L6e:
            if (r3 == 0) goto L75
            if (r4 == 0) goto L75
            if (r5 == 0) goto L75
            goto L76
        L75:
            r2 = r8
        L76:
            if (r0 == 0) goto L80
            com.stripe.paymentcollection.PaymentCollectionState r7 = com.stripe.paymentcollection.PaymentCollectionState.COLLECTION
            java.lang.String r8 = "Ready to collect again - technical fallback."
            r6.transitionTo(r7, r8)
            return
        L80:
            if (r1 == 0) goto L96
            com.stripe.paymentcollection.DisplayRecoverableErrorEvent r8 = new com.stripe.paymentcollection.DisplayRecoverableErrorEvent
            com.stripe.hardware.paymentcollection.RecoverableErrorModel r0 = new com.stripe.hardware.paymentcollection.RecoverableErrorModel
            boolean r7 = r7.getEnableCustomerCancellation()
            r0.<init>(r1, r7)
            r8.<init>(r0)
            com.stripe.paymentcollection.PaymentCollectionEvent r8 = (com.stripe.paymentcollection.PaymentCollectionEvent) r8
            r6.yieldEvent(r8)
            return
        L96:
            if (r2 == 0) goto Lb0
            com.stripe.paymentcollection.DisplayRecoverableErrorEvent r0 = new com.stripe.paymentcollection.DisplayRecoverableErrorEvent
            com.stripe.hardware.paymentcollection.RecoverableErrorModel r1 = new com.stripe.hardware.paymentcollection.RecoverableErrorModel
            com.stripe.hardware.paymentcollection.RecoverableError r2 = com.stripe.hardware.paymentcollection.RecoverableError.DECLINED
            if (r7 == 0) goto La4
            boolean r8 = r7.getEnableCustomerCancellation()
        La4:
            r1.<init>(r2, r8)
            r0.<init>(r1)
            com.stripe.paymentcollection.PaymentCollectionEvent r0 = (com.stripe.paymentcollection.PaymentCollectionEvent) r0
            r6.yieldEvent(r0)
            return
        Lb0:
            com.stripe.paymentcollection.PaymentCollectionState r7 = com.stripe.paymentcollection.PaymentCollectionState.COLLECTION
            java.lang.String r8 = "Ready to collect again - no result."
            r6.transitionTo(r7, r8)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.paymentcollection.RecoverableErrorSummaryHandler.onEnter(com.stripe.paymentcollection.PaymentCollectionData, com.stripe.paymentcollection.PaymentCollectionState):void");
    }

    @Override // com.stripe.paymentcollection.PaymentCollectionStateHandler
    public void onPaymentCollectionDataUpdate(PaymentCollectionData paymentCollectionData, PaymentCollectionData old) {
        Intrinsics.checkNotNullParameter(paymentCollectionData, "new");
        super.onPaymentCollectionDataUpdate(paymentCollectionData, old);
        PaymentCollectionData data = getData();
        if (data == null || !data.getUserRetryRequested()) {
            return;
        }
        transitionTo(PaymentCollectionState.COLLECTION, "Ready to collect again - retry requested.");
    }
}
