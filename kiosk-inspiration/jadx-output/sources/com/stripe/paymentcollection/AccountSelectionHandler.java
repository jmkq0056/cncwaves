package com.stripe.paymentcollection;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.stripe.core.bbpos.BbposDeviceControllerImpl;
import com.stripe.currency.Amount;
import com.stripe.hardware.emv.AccountType;
import com.stripe.hardware.paymentcollection.AccountTypeSelectionModel;
import com.stripe.paymentcollection.AccountSelectionStatus;
import com.stripe.paymentcollection.log.PaymentCollectionLogger;
import com.stripe.paymentcollection.metrics.StageEventLogger;
import kotlin.Metadata;
import kotlin.collections.SetsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PaymentCollectionStateHandlers.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\b\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0010\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0002J\"\u0010\u000b\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\u001c\u0010\u0012\u001a\u00020\b2\b\u0010\u0013\u001a\u0004\u0018\u00010\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0016J\u0010\u0010\u0017\u001a\u00020\b2\u0006\u0010\u0018\u001a\u00020\u0016H\u0016J\u0010\u0010\u0019\u001a\u00020\b2\u0006\u0010\u001a\u001a\u00020\u0014H\u0016J\u001a\u0010\u001b\u001a\u00020\b2\u0006\u0010\u001c\u001a\u00020\u00142\b\u0010\u001d\u001a\u0004\u0018\u00010\u0014H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001e"}, d2 = {"Lcom/stripe/paymentcollection/AccountSelectionHandler;", "Lcom/stripe/paymentcollection/PaymentCollectionScreenInputStateHandler;", "timer", "Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;", "logger", "Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;", "(Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V", "generateAccountTypeSelectionEvent", "", "accountType", "Lcom/stripe/hardware/emv/AccountType;", "generateUserInteractionEvent", BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, "Lcom/stripe/currency/Amount;", "language", "", "enableCustomerCancellation", "", "onEnter", "current", "Lcom/stripe/paymentcollection/PaymentCollectionData;", TypedValues.TransitionType.S_FROM, "Lcom/stripe/paymentcollection/PaymentCollectionState;", "onExit", TypedValues.TransitionType.S_TO, "onImplicitSelection", "data", "onPaymentCollectionDataUpdate", "new", "old", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class AccountSelectionHandler extends PaymentCollectionScreenInputStateHandler {
    private final PaymentCollectionLogger logger;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AccountSelectionHandler(PaymentCollectionStateTimer timer, PaymentCollectionLogger logger) {
        super(PaymentCollectionState.ACCOUNT_SELECTION, timer, logger);
        Intrinsics.checkNotNullParameter(timer, "timer");
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.logger = logger;
    }

    @Override // com.stripe.paymentcollection.PaymentCollectionScreenInputStateHandler
    public void onImplicitSelection(PaymentCollectionData data) {
        Intrinsics.checkNotNullParameter(data, "data");
        updateDataWithoutCallback(PaymentCollectionData.copy$default(data, null, null, null, null, false, 0, null, false, false, null, null, null, null, null, new AccountSelectionStatus.AccountSelected(null), null, null, 0, false, null, null, null, false, null, false, null, null, null, null, null, false, null, null, null, false, null, null, false, null, null, false, null, false, false, null, null, null, null, null, null, false, false, null, null, false, false, false, false, null, null, null, null, false, null, false, null, false, false, false, false, -16385, -1, 63, null));
        transitionTo(PaymentCollectionState.PROCESSING, "Account Type selected with unknown value");
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.stripe.paymentcollection.PaymentCollectionStateHandler, com.stripe.statemachine.StateMachine.StateHandler
    public void onEnter(PaymentCollectionData current, PaymentCollectionState from) {
        super.onEnter(current, from);
        if (current != null) {
            getStageEventLogger().openAccountSelectionLog();
            if (current.getSelectedApplicationIndex() == null) {
                this.logger.e("Attempt to select account without prior application selection.");
            } else if (current.getShouldAutoSelectAccount()) {
                transitionTo(PaymentCollectionState.PROCESSING, "Account Type selection not required.");
            } else {
                onPaymentCollectionDataUpdate(current, current);
            }
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
        stageEventLogger.closeAccountSelectionLog(data, to);
    }

    @Override // com.stripe.paymentcollection.PaymentCollectionStateHandler
    public void onPaymentCollectionDataUpdate(PaymentCollectionData paymentCollectionData, PaymentCollectionData old) {
        Intrinsics.checkNotNullParameter(paymentCollectionData, "new");
        super.onPaymentCollectionDataUpdate(paymentCollectionData, old);
        if (transitionOnImplicitSelectionIfNeeded(paymentCollectionData)) {
            return;
        }
        AccountType selectedAccount = paymentCollectionData.getSelectedAccount();
        if (selectedAccount != null) {
            generateAccountTypeSelectionEvent(selectedAccount);
            transitionTo(PaymentCollectionState.PROCESSING, "Account Type selected");
        } else {
            if (checkForPrematureTransactionCompletionAndTransitionIfNeeded(paymentCollectionData)) {
                return;
            }
            generateUserInteractionEvent(paymentCollectionData.getAmount(), paymentCollectionData.getSelectedLanguage(), paymentCollectionData.getEnableCustomerCancellation());
        }
    }

    private final void generateAccountTypeSelectionEvent(AccountType accountType) {
        yieldEvent(new SelectAccountTypeEvent(accountType));
    }

    private final void generateUserInteractionEvent(Amount amount, String language, boolean enableCustomerCancellation) {
        yieldEvent(new PresentAccountTypeSelectionEvent(new AccountTypeSelectionModel(SetsKt.linkedSetOf(AccountType.CHECKING, AccountType.SAVINGS), amount, language, enableCustomerCancellation)));
    }
}
