package com.stripe.paymentcollection;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.stripe.hardware.magstripe.MagStripePaymentCollectionAuthority;
import com.stripe.hardware.magstripe.MagStripeReadResult;
import com.stripe.hardware.magstripe.MagStripeReadSuccess;
import com.stripe.paymentcollection.DynamicCurrencyConversionSelectionStatus;
import com.stripe.paymentcollection.OnlineAuthState;
import com.stripe.paymentcollection.TippingState;
import com.stripe.paymentcollection.log.PaymentCollectionLogger;
import com.stripe.statemachine.StateMachine;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PaymentCollectionStateHandlers.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J \u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0002J\u0010\u0010\u000f\u001a\u00020\b2\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\u001c\u0010\u0012\u001a\u00020\b2\b\u0010\u0013\u001a\u0004\u0018\u00010\u00112\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016J\u001a\u0010\u0016\u001a\u00020\b2\u0006\u0010\u0017\u001a\u00020\u00112\b\u0010\u0018\u001a\u0004\u0018\u00010\u0011H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0019"}, d2 = {"Lcom/stripe/paymentcollection/OnlineAuthorizationMagStripeHandler;", "Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;", "timer", "Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;", "logger", "Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;", "(Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V", "generateMagStripeAuthRequestEvent", "", "result", "Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;", "collectionAuthority", "Lcom/stripe/hardware/magstripe/MagStripePaymentCollectionAuthority;", "tipResult", "Lcom/stripe/paymentcollection/TippingState$EndState;", "generatePresentProcessingEvent", "data", "Lcom/stripe/paymentcollection/PaymentCollectionData;", "onEnter", "current", TypedValues.TransitionType.S_FROM, "Lcom/stripe/paymentcollection/PaymentCollectionState;", "onPaymentCollectionDataUpdate", "new", "old", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class OnlineAuthorizationMagStripeHandler extends PaymentCollectionStateHandler {
    private final PaymentCollectionLogger logger;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OnlineAuthorizationMagStripeHandler(PaymentCollectionStateTimer timer, PaymentCollectionLogger logger) {
        super(PaymentCollectionState.ONLINE_AUTHORIZATION_MAG_STRIPE, timer, logger);
        Intrinsics.checkNotNullParameter(timer, "timer");
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.logger = logger;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.stripe.paymentcollection.PaymentCollectionStateHandler, com.stripe.statemachine.StateMachine.StateHandler
    public void onEnter(PaymentCollectionData current, PaymentCollectionState from) {
        super.onEnter(current, from);
        if (current != null) {
            generatePresentProcessingEvent(current);
            MagStripeReadResult magStripeReadResult = current.getMagStripeReadResult();
            MagStripePaymentCollectionAuthority magStripePaymentCollectionAuthority = current.getMagStripePaymentCollectionAuthority();
            TippingState tippingState = current.getTippingState();
            if ((magStripeReadResult instanceof MagStripeReadSuccess) && magStripePaymentCollectionAuthority != null) {
                getDiscreteEventLogger().logAllowingMagStripe(current);
                if (tippingState instanceof TippingState.EndState) {
                    getOnlineAuthStateLogger().updateOnlineAuthState(OnlineAuthState.ReadyToStartConfirmation.INSTANCE, current);
                    generateMagStripeAuthRequestEvent((MagStripeReadSuccess) magStripeReadResult, magStripePaymentCollectionAuthority, (TippingState.EndState) tippingState);
                }
            } else {
                this.logger.e("Entered Mag Stripe Authorization without card data");
            }
            if (current.getShouldAutoRespondOnlineAuth()) {
                StateMachine.StateHandler.transitionTo$default(this, PaymentCollectionState.COLLECTION_COMPLETE, null, 2, null);
            }
        }
    }

    @Override // com.stripe.paymentcollection.PaymentCollectionStateHandler
    public void onPaymentCollectionDataUpdate(PaymentCollectionData paymentCollectionData, PaymentCollectionData old) {
        Intrinsics.checkNotNullParameter(paymentCollectionData, "new");
        super.onPaymentCollectionDataUpdate(paymentCollectionData, old);
        if (paymentCollectionData.getDynamicCurrencyConversionSelectionStatus() instanceof DynamicCurrencyConversionSelectionStatus.Requested) {
            StateMachine.StateHandler.transitionTo$default(this, PaymentCollectionState.DCC_SELECTION, null, 2, null);
        } else if (paymentCollectionData.getOnlineAuthorizationResponse() != null) {
            yieldEvent(new SecondGenACResponseEvent(MagStripeSecondGenACResponse.INSTANCE));
            StateMachine.StateHandler.transitionTo$default(this, PaymentCollectionState.COLLECTION_COMPLETE, null, 2, null);
        }
    }

    private final void generateMagStripeAuthRequestEvent(MagStripeReadSuccess result, MagStripePaymentCollectionAuthority collectionAuthority, TippingState.EndState tipResult) {
        yieldEvent(new MagStripeAuthorizationRequestEvent(result, collectionAuthority, tipResult));
    }

    private final void generatePresentProcessingEvent(PaymentCollectionData data) {
        yieldEvent(createPresentProcessingEvent(data));
    }
}
