package com.stripe.paymentcollection;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.stripe.cart.Cart;
import com.stripe.core.bbpos.BbposDeviceControllerImpl;
import com.stripe.currency.Amount;
import com.stripe.hardware.ReaderConfiguration;
import com.stripe.hardware.emv.CancellationPhase;
import com.stripe.hardware.emv.CheckForCardBehavior;
import com.stripe.hardware.emv.InterfaceType;
import com.stripe.hardware.emv.IntermediateTransactionError;
import com.stripe.hardware.emv.TransactionResult;
import com.stripe.hardware.paymentcollection.DisplayCartModel;
import com.stripe.hardware.paymentcollection.PinEntryAccessibilityData;
import com.stripe.hardware.paymentcollection.PinEntryModel;
import com.stripe.hardware.paymentcollection.PinEntryRetryReason;
import com.stripe.hardware.paymentcollection.PinEntryStatus;
import com.stripe.paymentcollection.AccountSelectionStatus;
import com.stripe.paymentcollection.OnlineAuthState;
import com.stripe.paymentcollection.TippingState;
import com.stripe.paymentcollection.log.PaymentCollectionLogger;
import com.stripe.paymentcollection.metrics.DiscreteEventLogger;
import com.stripe.paymentcollection.metrics.EndToEndEventLogger;
import com.stripe.paymentcollection.metrics.EventLoggers;
import com.stripe.paymentcollection.metrics.OnlineAuthStateLogger;
import com.stripe.paymentcollection.metrics.StageEventLogger;
import com.stripe.paymentcollection.metrics.TippingLogger;
import com.stripe.statemachine.StateMachine;
import com.stripe.transaction.DynamicCurrencyConversionData;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;

/* JADX INFO: compiled from: PaymentCollectionStateHandlers.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u009c\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0000\b&\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u001d\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ\b\u0010\"\u001a\u00020#H\u0002J\u0010\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\u0003H\u0004J\b\u0010'\u001a\u00020#H\u0004J\u0010\u0010(\u001a\u00020)2\u0006\u0010&\u001a\u00020\u0003H\u0004J\u0017\u0010*\u001a\u0004\u0018\u00010#2\u0006\u0010&\u001a\u00020\u0003H\u0004¢\u0006\u0002\u0010+J\b\u0010,\u001a\u00020#H\u0004J\u000f\u0010-\u001a\u0004\u0018\u00010#H\u0004¢\u0006\u0002\u0010.J\b\u0010/\u001a\u00020#H\u0004J<\u00100\u001a\u00020#2\u0006\u00101\u001a\u0002022\u0006\u00103\u001a\u0002042\b\u00105\u001a\u0004\u0018\u0001062\b\u00107\u001a\u0004\u0018\u0001082\u0006\u00109\u001a\u00020%2\u0006\u0010:\u001a\u00020;H\u0004J\u001a\u0010<\u001a\u00020;2\u0006\u0010=\u001a\u00020\u00032\b\u0010>\u001a\u0004\u0018\u00010\u0003H\u0004J\u001c\u0010?\u001a\u00020#2\b\u0010@\u001a\u0004\u0018\u00010\u00032\b\u0010A\u001a\u0004\u0018\u00010\u0002H\u0016J\u0010\u0010B\u001a\u00020#2\u0006\u0010C\u001a\u00020\u0002H\u0016J\u001a\u0010D\u001a\u00020#2\u0006\u0010=\u001a\u00020\u00032\b\u0010>\u001a\u0004\u0018\u00010\u0003H\u0016J\u001a\u0010E\u001a\u00020#2\u0006\u0010F\u001a\u00020GH\u0002ø\u0001\u0000¢\u0006\u0004\bH\u0010IJ\u0018\u0010J\u001a\u00020#2\u0006\u0010=\u001a\u00020\u00032\b\u0010>\u001a\u0004\u0018\u00010\u0003J\u0010\u0010K\u001a\u00020#2\u0006\u0010&\u001a\u00020\u0003H\u0004J\u000e\u0010L\u001a\u00020#2\u0006\u0010\u0012\u001a\u00020\u0013J\u0015\u0010M\u001a\u00020#2\u0006\u0010\u0014\u001a\u00020\u0015H\u0000¢\u0006\u0002\bNJ\u0010\u0010O\u001a\u00020%2\u0006\u0010&\u001a\u00020\u0003H\u0004J\u0012\u0010P\u001a\u00020#2\b\u0010&\u001a\u0004\u0018\u00010\u0003H\u0002J\u0010\u0010Q\u001a\u00020#2\u0006\u0010R\u001a\u00020SH\u0004R\u0014\u0010\n\u001a\u00020\u000b8DX\u0084\u0004¢\u0006\u0006\u001a\u0004\b\f\u0010\rR\u0014\u0010\u000e\u001a\u00020\u000f8DX\u0084\u0004¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0016\u001a\u00020\u00178DX\u0084\u0004¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u0019R\u0014\u0010\u001a\u001a\u00020\u001b8DX\u0084\u0004¢\u0006\u0006\u001a\u0004\b\u001c\u0010\u001dR\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u001e\u001a\u00020\u001f8DX\u0084\u0004¢\u0006\u0006\u001a\u0004\b \u0010!\u0082\u0002\u0007\n\u0005\b¡\u001e0\u0001¨\u0006T"}, d2 = {"Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;", "Lcom/stripe/statemachine/StateMachine$StateHandler;", "Lcom/stripe/paymentcollection/PaymentCollectionState;", "Lcom/stripe/paymentcollection/PaymentCollectionData;", RemoteConfigConstants.ResponseFieldKey.STATE, "timer", "Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;", "logger", "Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;", "(Lcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V", "collectionEventLogger", "Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;", "getCollectionEventLogger", "()Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;", "discreteEventLogger", "Lcom/stripe/paymentcollection/metrics/DiscreteEventLogger;", "getDiscreteEventLogger", "()Lcom/stripe/paymentcollection/metrics/DiscreteEventLogger;", "eventDelegate", "Lcom/stripe/paymentcollection/PaymentCollectionEventDelegate;", "eventLoggers", "Lcom/stripe/paymentcollection/metrics/EventLoggers;", "onlineAuthStateLogger", "Lcom/stripe/paymentcollection/metrics/OnlineAuthStateLogger;", "getOnlineAuthStateLogger", "()Lcom/stripe/paymentcollection/metrics/OnlineAuthStateLogger;", "stageEventLogger", "Lcom/stripe/paymentcollection/metrics/StageEventLogger;", "getStageEventLogger", "()Lcom/stripe/paymentcollection/metrics/StageEventLogger;", "tippingLogger", "Lcom/stripe/paymentcollection/metrics/TippingLogger;", "getTippingLogger", "()Lcom/stripe/paymentcollection/metrics/TippingLogger;", "cancelTimer", "", "checkForPrematureTransactionCompletionAndTransitionIfNeeded", "", "data", "clearContactCardStateAndPrepareNextCollection", "createPresentProcessingEvent", "Lcom/stripe/paymentcollection/PresentProcessingEvent;", "generateDisplayCartEvent", "(Lcom/stripe/paymentcollection/PaymentCollectionData;)Lkotlin/Unit;", "generateStartPinEntryEvent", "generateStartPollingForCardStatusEvent", "()Lkotlin/Unit;", "generateStopReaderEvent", "generateUserInteractionEvent", BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, "Lcom/stripe/currency/Amount;", "numberOfAsterisks", "", "language", "", "pinEntryRetryReason", "Lcom/stripe/hardware/paymentcollection/PinEntryRetryReason;", "enableCustomerCancellation", "pinEntryAccessibilityData", "Lcom/stripe/hardware/paymentcollection/PinEntryAccessibilityData;", "getPinEntryAccessibilityData", "new", "old", "onEnter", "current", TypedValues.TransitionType.S_FROM, "onExit", TypedValues.TransitionType.S_TO, "onPaymentCollectionDataUpdate", "onPaymentCollectionTimeout", "timeout", "Lkotlin/time/Duration;", "onPaymentCollectionTimeout-LRDsOJo", "(J)V", "onUpdate", "sendOnlineAuthRequestEventIfNeeded", "setEventDelegate", "setEventLoggers", "setEventLoggers$public_release", "startCollectionIfNeeded", "startTimeoutCountdown", "yieldEvent", "paymentCollectionEvent", "Lcom/stripe/paymentcollection/PaymentCollectionEvent;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public abstract class PaymentCollectionStateHandler extends StateMachine.StateHandler<PaymentCollectionState, PaymentCollectionData> {
    private PaymentCollectionEventDelegate eventDelegate;
    private EventLoggers eventLoggers;
    private final PaymentCollectionLogger logger;
    private final PaymentCollectionStateTimer timer;

    /* JADX INFO: compiled from: PaymentCollectionStateHandlers.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[TransactionResult.Result.values().length];
            try {
                iArr[TransactionResult.Result.ICC_CARD_REMOVED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[TransactionResult.Result.TERMINATED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[TransactionResult.Result.CARD_BLOCKED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[TransactionResult.Result.DEVICE_FAILURE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[TransactionResult.Result.CARD_STILL_INSERTED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[TransactionResult.Result.TIMEOUT.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[TransactionResult.Result.CANCELED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[PaymentCollectionState.values().length];
            try {
                iArr2[PaymentCollectionState.APPLICATION_SELECTION.ordinal()] = 1;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr2[PaymentCollectionState.ACCOUNT_SELECTION.ordinal()] = 2;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr2[PaymentCollectionState.PIN_ENTRY.ordinal()] = 3;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr2[PaymentCollectionState.ONLINE_AUTHORIZATION.ordinal()] = 4;
            } catch (NoSuchFieldError unused11) {
            }
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PaymentCollectionStateHandler(PaymentCollectionState state, PaymentCollectionStateTimer timer, PaymentCollectionLogger logger) {
        super(state);
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(timer, "timer");
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.timer = timer;
        this.logger = logger;
    }

    protected final EndToEndEventLogger getCollectionEventLogger() {
        EventLoggers eventLoggers = this.eventLoggers;
        if (eventLoggers == null) {
            Intrinsics.throwUninitializedPropertyAccessException("eventLoggers");
            eventLoggers = null;
        }
        return eventLoggers.getEndToEndEventLogger();
    }

    protected final StageEventLogger getStageEventLogger() {
        EventLoggers eventLoggers = this.eventLoggers;
        if (eventLoggers == null) {
            Intrinsics.throwUninitializedPropertyAccessException("eventLoggers");
            eventLoggers = null;
        }
        return eventLoggers.getStageEventLogger();
    }

    protected final TippingLogger getTippingLogger() {
        EventLoggers eventLoggers = this.eventLoggers;
        if (eventLoggers == null) {
            Intrinsics.throwUninitializedPropertyAccessException("eventLoggers");
            eventLoggers = null;
        }
        return eventLoggers.getTippingLogger();
    }

    protected final DiscreteEventLogger getDiscreteEventLogger() {
        EventLoggers eventLoggers = this.eventLoggers;
        if (eventLoggers == null) {
            Intrinsics.throwUninitializedPropertyAccessException("eventLoggers");
            eventLoggers = null;
        }
        return eventLoggers.getDiscreteEventLogger();
    }

    protected final OnlineAuthStateLogger getOnlineAuthStateLogger() {
        EventLoggers eventLoggers = this.eventLoggers;
        if (eventLoggers == null) {
            Intrinsics.throwUninitializedPropertyAccessException("eventLoggers");
            eventLoggers = null;
        }
        return eventLoggers.getOnlineAuthStateLogger();
    }

    public final void setEventDelegate(PaymentCollectionEventDelegate eventDelegate) {
        Intrinsics.checkNotNullParameter(eventDelegate, "eventDelegate");
        this.eventDelegate = eventDelegate;
    }

    public final void setEventLoggers$public_release(EventLoggers eventLoggers) {
        Intrinsics.checkNotNullParameter(eventLoggers, "eventLoggers");
        this.eventLoggers = eventLoggers;
    }

    protected final void yieldEvent(PaymentCollectionEvent paymentCollectionEvent) {
        Intrinsics.checkNotNullParameter(paymentCollectionEvent, "paymentCollectionEvent");
        PaymentCollectionEventDelegate paymentCollectionEventDelegate = this.eventDelegate;
        if (paymentCollectionEventDelegate == null) {
            Intrinsics.throwUninitializedPropertyAccessException("eventDelegate");
            paymentCollectionEventDelegate = null;
        }
        paymentCollectionEventDelegate.onHandlePaymentCollectionEvent(paymentCollectionEvent);
    }

    @Override // com.stripe.statemachine.StateMachine.StateHandler
    public final void onUpdate(PaymentCollectionData paymentCollectionData, PaymentCollectionData old) {
        Intrinsics.checkNotNullParameter(paymentCollectionData, "new");
        if ((old == null || !old.isCancelled()) && paymentCollectionData.isCancelled()) {
            PaymentCollectionState paymentCollectionState = PaymentCollectionState.CANCEL;
            CancelReason cancelReason = paymentCollectionData.getCancelReason();
            transitionTo(paymentCollectionState, cancelReason != null ? cancelReason.name() : null);
            return;
        }
        onPaymentCollectionDataUpdate(paymentCollectionData, old);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.stripe.statemachine.StateMachine.StateHandler
    public void onEnter(PaymentCollectionData current, PaymentCollectionState from) {
        super.onEnter(current, from);
        this.logger.d("onEnter", TuplesKt.to("current", current), TuplesKt.to(TypedValues.TransitionType.S_FROM, from));
        startTimeoutCountdown(current);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.stripe.statemachine.StateMachine.StateHandler
    public void onExit(PaymentCollectionState to) {
        Intrinsics.checkNotNullParameter(to, "to");
        super.onExit(to);
        cancelTimer();
    }

    /* JADX INFO: renamed from: onPaymentCollectionTimeout-LRDsOJo, reason: not valid java name */
    private final void m495onPaymentCollectionTimeoutLRDsOJo(long timeout) {
        this.logger.d("Payment collection timed-out after " + ((Object) Duration.m2219toStringimpl(timeout)), new Pair[0]);
        StateMachine.StateHandler.transitionTo$default(this, PaymentCollectionState.TIMEOUT, null, 2, null);
    }

    public void onPaymentCollectionDataUpdate(PaymentCollectionData paymentCollectionData, PaymentCollectionData old) {
        Intrinsics.checkNotNullParameter(paymentCollectionData, "new");
        this.logger.d("onPaymentCollectionDataUpdate", TuplesKt.to("new", paymentCollectionData), TuplesKt.to("old", old));
        if (paymentCollectionData.getCardSlotState() != (old != null ? old.getCardSlotState() : null)) {
            yieldEvent(new CardStateUpdateEvent(paymentCollectionData.getCardSlotState()));
        }
    }

    protected final boolean checkForPrematureTransactionCompletionAndTransitionIfNeeded(PaymentCollectionData data) {
        Intrinsics.checkNotNullParameter(data, "data");
        if (data.isDeclined()) {
            transitionTo(PaymentCollectionState.PREPARE_TO_COLLECT_AGAIN, "Declined.");
            return true;
        }
        TransactionResult.Result hardwareTransactionResult = data.getHardwareTransactionResult();
        switch (hardwareTransactionResult == null ? -1 : WhenMappings.$EnumSwitchMapping$0[hardwareTransactionResult.ordinal()]) {
            case 1:
                DiscreteEventLogger discreteEventLogger = getDiscreteEventLogger();
                PaymentCollectionData data2 = getData();
                Intrinsics.checkNotNull(data2);
                discreteEventLogger.logPrematureCardRemoval(data2);
                transitionTo(PaymentCollectionState.PREPARE_TO_COLLECT_AGAIN, "Card removed prematurely.");
                break;
            case 2:
                if (data.getDeviceCapability().getRetryUponTerminate()) {
                    transitionTo(PaymentCollectionState.PREPARE_TO_COLLECT_AGAIN, "Terminated.");
                } else {
                    yieldEvent(HardwareTransactionCancelledEvent.INSTANCE);
                }
                break;
            case 3:
                transitionTo(PaymentCollectionState.PREPARE_TO_COLLECT_AGAIN, "Card blocked.");
                break;
            case 4:
                transitionTo(PaymentCollectionState.FINISHED, "Device failure.");
                break;
            case 5:
                transitionTo(PaymentCollectionState.PREPARE_TO_COLLECT_AGAIN, "Previous card still inserted.");
                break;
            case 6:
                transitionTo(PaymentCollectionState.TIMEOUT, "Transaction timed out.");
                break;
            case 7:
                yieldEvent(HardwareTransactionCancelledEvent.INSTANCE);
                break;
        }
        return true;
    }

    protected final Unit generateDisplayCartEvent(PaymentCollectionData data) {
        Intrinsics.checkNotNullParameter(data, "data");
        Cart cartToDisplay = data.getCartToDisplay();
        if (cartToDisplay == null) {
            return null;
        }
        yieldEvent(new DisplayCartEvent(new DisplayCartModel(cartToDisplay, data.isPreDipEnabled(), data.getOnlineAuthorizationData() != null)));
        return Unit.INSTANCE;
    }

    protected final boolean startCollectionIfNeeded(PaymentCollectionData data) {
        Pair pair;
        Intrinsics.checkNotNullParameter(data, "data");
        if (!data.getConfirmedCollection() && !data.isPreDipEnabled()) {
            pair = new Pair(PaymentCollectionState.DISPLAY_CART_PRE_COLLECTION, "Display cart.");
        } else if ((data.getTippingState() instanceof TippingState.SelectionNeeded) && data.getConfirmedCollection()) {
            pair = new Pair(PaymentCollectionState.TIPPING_SELECTION, "Tipping required.");
        } else {
            pair = new Pair(PaymentCollectionState.COLLECTION, "Tipping and manual entry not required.");
        }
        PaymentCollectionState paymentCollectionState = (PaymentCollectionState) pair.component1();
        String str = (String) pair.component2();
        if (paymentCollectionState == getState()) {
            return false;
        }
        transitionTo(paymentCollectionState, str);
        return true;
    }

    private final void startTimeoutCountdown(PaymentCollectionData data) {
        this.timer.start(getState(), data, new Function0<Unit>() { // from class: com.stripe.paymentcollection.PaymentCollectionStateHandler.startTimeoutCountdown.1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                StateMachine.StateHandler.transitionTo$default(PaymentCollectionStateHandler.this, PaymentCollectionState.TIMEOUT, null, 2, null);
            }
        });
    }

    protected final void generateUserInteractionEvent(Amount amount, int numberOfAsterisks, String language, PinEntryRetryReason pinEntryRetryReason, boolean enableCustomerCancellation, PinEntryAccessibilityData pinEntryAccessibilityData) {
        Intrinsics.checkNotNullParameter(amount, "amount");
        Intrinsics.checkNotNullParameter(pinEntryAccessibilityData, "pinEntryAccessibilityData");
        yieldEvent(new PresentPinEntryEvent(new PinEntryModel(amount, numberOfAsterisks, language, pinEntryRetryReason, enableCustomerCancellation, pinEntryAccessibilityData)));
    }

    protected final void generateStartPinEntryEvent() {
        yieldEvent(StartPinEntryEvent.INSTANCE);
    }

    protected final void sendOnlineAuthRequestEventIfNeeded(PaymentCollectionData data) {
        Intrinsics.checkNotNullParameter(data, "data");
        String onlineAuthorizationData = data.getOnlineAuthorizationData();
        TippingState tippingState = data.getTippingState();
        if (onlineAuthorizationData == null || !(tippingState instanceof TippingState.EndState) || data.getOnlineAuthorizationRequested()) {
            return;
        }
        updateDataWithoutCallback(PaymentCollectionData.copy$default(data, null, null, null, null, false, 0, null, false, false, null, null, null, null, null, null, null, null, 0, false, null, null, null, true, null, false, null, null, null, null, null, false, null, null, null, false, null, null, false, null, null, false, null, false, false, null, null, null, null, null, null, false, false, null, null, false, false, false, false, null, null, null, null, false, null, false, null, false, false, false, false, -4194305, -1, 63, null));
        getOnlineAuthStateLogger().updateOnlineAuthState(OnlineAuthState.ReadyToStartConfirmation.INSTANCE, data);
        InterfaceType interfaceTypeInterfaceTypeFromTlv = PaymentCollectionStateHandlersKt.interfaceTypeFromTlv(onlineAuthorizationData);
        Intrinsics.checkNotNull(interfaceTypeInterfaceTypeFromTlv);
        yieldEvent(new OnlineAuthorizationRequestEvent(interfaceTypeInterfaceTypeFromTlv, onlineAuthorizationData, (TippingState.EndState) tippingState));
    }

    private final void cancelTimer() {
        this.timer.cancel();
    }

    protected final Unit generateStartPollingForCardStatusEvent() {
        PaymentCollectionData data = getData();
        if (data == null) {
            return null;
        }
        if (data.getDeviceCapability().getCheckForCardBehavior() == CheckForCardBehavior.POLL_FOR_CARD_REMOVAL) {
            yieldEvent(new StartPollingForCardStatusEvent(ReaderConfiguration.INSTANCE.getINSERT()));
        }
        return Unit.INSTANCE;
    }

    protected final void generateStopReaderEvent() {
        CancellationPhase cancellationPhase;
        PaymentCollectionData data = getData();
        PaymentCollectionState stateWhenCancelled = data != null ? data.getStateWhenCancelled() : null;
        int i = stateWhenCancelled == null ? -1 : WhenMappings.$EnumSwitchMapping$1[stateWhenCancelled.ordinal()];
        if (i == 1) {
            cancellationPhase = CancellationPhase.APPLICATION_SELECTION;
        } else if (i == 2) {
            cancellationPhase = CancellationPhase.ACCOUNT_TYPE_SELECTION;
        } else if (i == 3) {
            cancellationPhase = CancellationPhase.PIN;
        } else if (i == 4) {
            cancellationPhase = CancellationPhase.AUTH;
        } else {
            cancellationPhase = CancellationPhase.COLLECTION;
        }
        yieldEvent(new StopReaderEvent(cancellationPhase));
    }

    protected final void clearContactCardStateAndPrepareNextCollection() {
        TransactionResult.Result hardwareTransactionResult;
        PaymentCollectionData data = getData();
        if (data != null) {
            if (data.getHardwareTransactionResult() == TransactionResult.Result.TERMINATED && data.getIntermediateTransactionError() == IntermediateTransactionError.TOO_MANY_TAPS) {
                hardwareTransactionResult = TransactionResult.Result.MOBILE_WALLET_TOO_MANY_TAPS;
            } else {
                hardwareTransactionResult = data.getHardwareTransactionResult();
                if (hardwareTransactionResult == null) {
                    hardwareTransactionResult = data.getLastCollectionResult();
                }
            }
            TransactionResult.Result result = hardwareTransactionResult;
            updateDataWithoutCallback(PaymentCollectionData.copy$default(data, null, null, null, null, false, 0, null, false, false, null, CollectionsKt.emptyList(), null, null, null, AccountSelectionStatus.NotRequested.INSTANCE, PinEntryStatus.NOT_REQUESTED, null, 0, false, null, null, null, false, null, false, null, null, null, null, null, false, null, null, result, false, null, null, false, null, null, false, null, false, false, null, null, null, null, null, null, false, false, null, null, false, false, false, false, null, null, null, null, false, null, false, null, false, false, false, false, 2013791167, -135312, 63, null));
        }
    }

    protected final PresentProcessingEvent createPresentProcessingEvent(PaymentCollectionData data) {
        Intrinsics.checkNotNullParameter(data, "data");
        DynamicCurrencyConversionData dynamicCurrencyConversionData = data.getDynamicCurrencyConversionData();
        Amount amount = Intrinsics.areEqual((Object) data.getSelectedDynamicCurrencyConversion(), (Object) true) ? dynamicCurrencyConversionData != null ? dynamicCurrencyConversionData.getAmount() : null : null;
        if (amount == null) {
            amount = data.getAmount();
        }
        return new PresentProcessingEvent(data.getTransactionType(), amount, data.getSelectedLanguage());
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0026  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final com.stripe.hardware.paymentcollection.PinEntryAccessibilityData getPinEntryAccessibilityData(com.stripe.paymentcollection.PaymentCollectionData r3, com.stripe.paymentcollection.PaymentCollectionData r4) {
        /*
            r2 = this;
            java.lang.String r0 = "new"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r0)
            com.stripe.hardware.paymentcollection.PinEntryStatus r0 = r3.getPinEntryStatus()
            com.stripe.hardware.paymentcollection.PinEntryStatus r1 = com.stripe.hardware.paymentcollection.PinEntryStatus.INCORRECT_PIN
            if (r0 != r1) goto Lf
            r0 = 1
            goto L10
        Lf:
            r0 = 0
        L10:
            com.stripe.hardware.paymentcollection.AccessiblePinPadTouchEvent r3 = r3.getAccessiblePinPadTouchEvent()
            r1 = 0
            if (r3 == 0) goto L26
            if (r4 == 0) goto L1e
            com.stripe.hardware.paymentcollection.AccessiblePinPadTouchEvent r4 = r4.getAccessiblePinPadTouchEvent()
            goto L1f
        L1e:
            r4 = r1
        L1f:
            boolean r4 = kotlin.jvm.internal.Intrinsics.areEqual(r3, r4)
            if (r4 != 0) goto L26
            goto L27
        L26:
            r3 = r1
        L27:
            com.stripe.hardware.paymentcollection.PinEntryAccessibilityData r4 = new com.stripe.hardware.paymentcollection.PinEntryAccessibilityData
            r4.<init>(r3, r0)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.paymentcollection.PaymentCollectionStateHandler.getPinEntryAccessibilityData(com.stripe.paymentcollection.PaymentCollectionData, com.stripe.paymentcollection.PaymentCollectionData):com.stripe.hardware.paymentcollection.PinEntryAccessibilityData");
    }
}
