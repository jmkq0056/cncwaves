package com.stripe.paymentcollection.metrics;

import androidx.core.app.NotificationCompat;
import com.stripe.hardware.magstripe.MagStripePaymentCollectionAuthority;
import com.stripe.hardware.paymentcollection.ContactCardSlotState;
import com.stripe.hardware.paymentcollection.PinEntryStatus;
import com.stripe.jvmcore.logging.HealthLogger;
import com.stripe.loggingmodels.Outcome;
import com.stripe.paymentcollection.AuthorizePaymentEvent;
import com.stripe.paymentcollection.BatteryCriticallyLowEvent;
import com.stripe.paymentcollection.CancelHardwareTippingCollectionEvent;
import com.stripe.paymentcollection.CancelReason;
import com.stripe.paymentcollection.ChipCardInitializationFailed;
import com.stripe.paymentcollection.ConfigureReaderEvent;
import com.stripe.paymentcollection.ContactCardUpdateEvent;
import com.stripe.paymentcollection.DeviceMissingEncryptionKeyEvent;
import com.stripe.paymentcollection.EmptyCandidateListEncounteredEvent;
import com.stripe.paymentcollection.HardwareEvent;
import com.stripe.paymentcollection.HardwareListenerEvent;
import com.stripe.paymentcollection.HardwareTippingCollectionEvent;
import com.stripe.paymentcollection.HardwareTippingCollectionResultEvent;
import com.stripe.paymentcollection.HardwareTransactionCancelledEvent;
import com.stripe.paymentcollection.IntermediateErrorEvent;
import com.stripe.paymentcollection.MagStripeReadEvent;
import com.stripe.paymentcollection.OnAccessiblePinPadEvent;
import com.stripe.paymentcollection.PaymentCollectionData;
import com.stripe.paymentcollection.PinEntryStatusChangeEvent;
import com.stripe.paymentcollection.ReaderFinalConfirmationTlvCollectedEvent;
import com.stripe.paymentcollection.ReaderTypeChangedEvent;
import com.stripe.paymentcollection.ReadingCardEvent;
import com.stripe.paymentcollection.RequestOnlineAuthorisationEvent;
import com.stripe.paymentcollection.RequestPinEntryEvent;
import com.stripe.paymentcollection.RequestSelectAccountEvent;
import com.stripe.paymentcollection.RequestSelectApplicationEvent;
import com.stripe.paymentcollection.ResetPaymentInterfacesEvent;
import com.stripe.paymentcollection.SelectAccountTypeEvent;
import com.stripe.paymentcollection.SelectApplicationEvent;
import com.stripe.paymentcollection.SelectLanguageEvent;
import com.stripe.paymentcollection.SendFinalConfirmEvent;
import com.stripe.paymentcollection.SetPinEntryAsteriskCountEvent;
import com.stripe.paymentcollection.SetPinPadResultEvent;
import com.stripe.paymentcollection.ShowThankYouEvent;
import com.stripe.paymentcollection.StartPinEntryEvent;
import com.stripe.paymentcollection.StartPollingForCardStatusEvent;
import com.stripe.paymentcollection.StopReaderEvent;
import com.stripe.paymentcollection.TransactionCompletedEvent;
import com.stripe.paymentcollection.WaitForCardPresentEvent;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.paymentcollection.PaymentCollectionDomain;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.paymentcollection.StageScope;
import com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Timer;
import java.util.Map;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: compiled from: KernelProcessingEventLogger.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0000\u0018\u0000 \u001e2\u001e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0001j\u0002`\u0006:\u0001\u001eB1\u0012\"\u0010\u0007\u001a\u001e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\bj\u0002`\t\u0012\u0006\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fJ\u001a\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0002J\u0010\u0010\u0015\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\u0010\u0010\u0015\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00020\u0018H\u0002J\u0018\u0010\u0019\u001a\u00020\u00102\u0006\u0010\u0016\u001a\u00020\u00172\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012J\u0018\u0010\u001a\u001a\u00020\u00102\u0006\u0010\u0016\u001a\u00020\u00182\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012J\"\u0010\u001b\u001a\u00020\u00102\u0006\u0010\u001c\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u00142\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0002J\b\u0010\u001d\u001a\u00020\u0010H\u0002R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001f"}, d2 = {"Lcom/stripe/paymentcollection/metrics/KernelProcessingEventLogger;", "Lcom/stripe/paymentcollection/metrics/StageEventLogHelper;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/PaymentCollectionDomain;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/PaymentCollectionDomain$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;", "Lcom/stripe/paymentcollection/metrics/PaymentCollectionStageEventLogger;", "logger", "Lcom/stripe/jvmcore/logging/HealthLogger;", "Lcom/stripe/paymentcollection/metrics/StageLogger;", "endToEndEventLogger", "Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;", "(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;)V", "curStatus", "Lcom/stripe/paymentcollection/metrics/KernelProcessingStatus;", "closeLog", "", "data", "Lcom/stripe/paymentcollection/PaymentCollectionData;", "eventName", "", "getKernelStatus", NotificationCompat.CATEGORY_EVENT, "Lcom/stripe/paymentcollection/HardwareEvent;", "Lcom/stripe/paymentcollection/HardwareListenerEvent;", "onHardwareEvent", "onHardwareListenerEvent", "onKernelStatusUpdate", "newStatus", "openLog", "Companion", "impl_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class KernelProcessingEventLogger extends StageEventLogHelper<PaymentCollectionDomain, PaymentCollectionDomain.Builder, StageScope, StageScope.Builder> {
    private static final String KERNEL_PROCESSING_RESULT = "KernelProcessingResult";
    private KernelProcessingStatus curStatus;

    /* JADX INFO: compiled from: KernelProcessingEventLogger.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[ContactCardSlotState.values().length];
            try {
                iArr[ContactCardSlotState.EMPTY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ContactCardSlotState.CARD_INSERTED_INCORRECTLY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ContactCardSlotState.CARD_INSERTED_CORRECTLY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[PinEntryStatus.values().length];
            try {
                iArr2[PinEntryStatus.NOT_REQUESTED.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr2[PinEntryStatus.REQUESTED.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr2[PinEntryStatus.SUCCESS.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr2[PinEntryStatus.CANCEL.ordinal()] = 4;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr2[PinEntryStatus.TIMEOUT.ordinal()] = 5;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr2[PinEntryStatus.BYPASS.ordinal()] = 6;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr2[PinEntryStatus.WRONG_PIN_LENGTH.ordinal()] = 7;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr2[PinEntryStatus.INCORRECT_PIN.ordinal()] = 8;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr2[PinEntryStatus.ENTERED.ordinal()] = 9;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                iArr2[PinEntryStatus.ICC_REMOVED.ordinal()] = 10;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                iArr2[PinEntryStatus.CARD_ERROR.ordinal()] = 11;
            } catch (NoSuchFieldError unused14) {
            }
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KernelProcessingEventLogger(HealthLogger<PaymentCollectionDomain, PaymentCollectionDomain.Builder, StageScope, StageScope.Builder> logger, EndToEndEventLogger endToEndEventLogger) {
        super(logger, "KernelProcessing", endToEndEventLogger, LatencyCategory.KERNEL_PROCESSING);
        Intrinsics.checkNotNullParameter(logger, "logger");
        Intrinsics.checkNotNullParameter(endToEndEventLogger, "endToEndEventLogger");
        this.curStatus = KernelProcessingStatus.IDLE;
    }

    public final void onHardwareEvent(HardwareEvent event, PaymentCollectionData data) {
        Intrinsics.checkNotNullParameter(event, "event");
        KernelProcessingStatus kernelStatus = getKernelStatus(event);
        String simpleName = event.getClass().getSimpleName();
        Intrinsics.checkNotNullExpressionValue(simpleName, "getSimpleName(...)");
        onKernelStatusUpdate(kernelStatus, simpleName, data);
    }

    public final void onHardwareListenerEvent(HardwareListenerEvent event, PaymentCollectionData data) {
        Intrinsics.checkNotNullParameter(event, "event");
        KernelProcessingStatus kernelStatus = getKernelStatus(event);
        String simpleName = event.getClass().getSimpleName();
        Intrinsics.checkNotNullExpressionValue(simpleName, "getSimpleName(...)");
        onKernelStatusUpdate(kernelStatus, simpleName, data);
    }

    private final void onKernelStatusUpdate(KernelProcessingStatus newStatus, String eventName, PaymentCollectionData data) {
        StageEventLogHelper.INSTANCE.getLOGGER().i("KernelProcessing newStatus " + newStatus + " event " + eventName, new Pair[0]);
        if (newStatus == KernelProcessingStatus.UNKNOWN || newStatus == this.curStatus) {
            return;
        }
        this.curStatus = newStatus;
        if (newStatus == KernelProcessingStatus.BUSY) {
            openLog();
        } else {
            closeLog(data, eventName);
        }
    }

    private final void openLog() {
        StageEventLogHelper.openLogHelper$default(this, null, new Function2<StageScope.Builder, Timer, Unit>() { // from class: com.stripe.paymentcollection.metrics.KernelProcessingEventLogger.openLog.1
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(StageScope.Builder builder, Timer timer) {
                invoke2(builder, timer);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(StageScope.Builder openLogHelper, Timer event) {
                Intrinsics.checkNotNullParameter(openLogHelper, "$this$openLogHelper");
                Intrinsics.checkNotNullParameter(event, "event");
                openLogHelper.kernel_processing = event;
            }
        }, 1, null);
    }

    private final void closeLog(final PaymentCollectionData data, final String eventName) {
        if (data == null) {
            return;
        }
        closeLogHelper(data, new Function1<Map<String, String>, Pair<? extends Outcome, ? extends Map<String, String>>>() { // from class: com.stripe.paymentcollection.metrics.KernelProcessingEventLogger.closeLog.1

            /* JADX INFO: renamed from: com.stripe.paymentcollection.metrics.KernelProcessingEventLogger$closeLog$1$WhenMappings */
            /* JADX INFO: compiled from: KernelProcessingEventLogger.kt */
            @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
            public /* synthetic */ class WhenMappings {
                public static final /* synthetic */ int[] $EnumSwitchMapping$0;

                static {
                    int[] iArr = new int[CancelReason.values().length];
                    try {
                        iArr[CancelReason.MERCHANT_CANCELLED.ordinal()] = 1;
                    } catch (NoSuchFieldError unused) {
                    }
                    try {
                        iArr[CancelReason.HARDWARE_CANCELLED.ordinal()] = 2;
                    } catch (NoSuchFieldError unused2) {
                    }
                    try {
                        iArr[CancelReason.CUSTOMER_CANCELLED.ordinal()] = 3;
                    } catch (NoSuchFieldError unused3) {
                    }
                    $EnumSwitchMapping$0 = iArr;
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Pair<Outcome, Map<String, String>> invoke(Map<String, String> tagMap) {
                Pair pair;
                String simpleName;
                KernelProcessingFailureReason kernelProcessingFailureReason;
                Intrinsics.checkNotNullParameter(tagMap, "tagMap");
                if (data.isCancelled()) {
                    Result result = Result.FAILURE;
                    CancelReason cancelReason = data.getCancelReason();
                    int i = cancelReason == null ? -1 : WhenMappings.$EnumSwitchMapping$0[cancelReason.ordinal()];
                    if (i == -1) {
                        kernelProcessingFailureReason = KernelProcessingFailureReason.UNKNOWN;
                    } else if (i == 1) {
                        kernelProcessingFailureReason = KernelProcessingFailureReason.MERCHANT_CANCELLED;
                    } else if (i == 2) {
                        kernelProcessingFailureReason = KernelProcessingFailureReason.HARDWARE_CANCELLED;
                    } else if (i == 3) {
                        kernelProcessingFailureReason = KernelProcessingFailureReason.CUSTOMER_CANCELLED;
                    } else {
                        throw new NoWhenBranchMatchedException();
                    }
                    pair = new Pair(result, kernelProcessingFailureReason);
                } else {
                    pair = data.isTimedOut() ? new Pair(Result.FAILURE, KernelProcessingFailureReason.TIMEOUT) : new Pair(Result.SUCCESS, null);
                }
                Result result2 = (Result) pair.component1();
                KernelProcessingFailureReason kernelProcessingFailureReason2 = (KernelProcessingFailureReason) pair.component2();
                String str = eventName;
                KernelProcessingFailureReason kernelProcessingFailureReason3 = kernelProcessingFailureReason2;
                if (kernelProcessingFailureReason3 != null) {
                    if (Intrinsics.areEqual(Reflection.getOrCreateKotlinClass(KernelProcessingFailureReason.class), Reflection.getOrCreateKotlinClass(MagStripePaymentCollectionAuthority.class))) {
                        simpleName = "MagStripeAllowReason";
                    } else {
                        simpleName = Reflection.getOrCreateKotlinClass(KernelProcessingFailureReason.class).getSimpleName();
                        Intrinsics.checkNotNull(simpleName);
                    }
                    tagMap.put(simpleName, kernelProcessingFailureReason3.name());
                }
                tagMap.put(KernelProcessingEventLogger.KERNEL_PROCESSING_RESULT, str);
                return new Pair<>(ResultKt.toOutcome(result2), tagMap);
            }
        });
    }

    private final KernelProcessingStatus getKernelStatus(HardwareEvent event) {
        if (event instanceof ConfigureReaderEvent ? true : event instanceof AuthorizePaymentEvent ? true : event instanceof SelectAccountTypeEvent ? true : event instanceof SelectApplicationEvent ? true : event instanceof SelectLanguageEvent ? true : Intrinsics.areEqual(event, StartPinEntryEvent.INSTANCE) ? true : event instanceof StopReaderEvent ? true : Intrinsics.areEqual(event, RequestPinEntryEvent.INSTANCE) ? true : event instanceof SendFinalConfirmEvent) {
            return KernelProcessingStatus.BUSY;
        }
        if (event instanceof StartPollingForCardStatusEvent ? true : event instanceof HardwareTippingCollectionEvent ? true : Intrinsics.areEqual(event, CancelHardwareTippingCollectionEvent.INSTANCE)) {
            return KernelProcessingStatus.UNKNOWN;
        }
        throw new NoWhenBranchMatchedException();
    }

    private final KernelProcessingStatus getKernelStatus(HardwareListenerEvent event) {
        if (Intrinsics.areEqual(event, EmptyCandidateListEncounteredEvent.INSTANCE) ? true : Intrinsics.areEqual(event, ChipCardInitializationFailed.INSTANCE)) {
            return KernelProcessingStatus.BUSY;
        }
        if (event instanceof ContactCardUpdateEvent) {
            int i = WhenMappings.$EnumSwitchMapping$0[((ContactCardUpdateEvent) event).getUpdatedCardState().ordinal()];
            if (i == 1 || i == 2) {
                return KernelProcessingStatus.IDLE;
            }
            if (i == 3) {
                return KernelProcessingStatus.UNKNOWN;
            }
            throw new NoWhenBranchMatchedException();
        }
        if (event instanceof PinEntryStatusChangeEvent) {
            switch (WhenMappings.$EnumSwitchMapping$1[((PinEntryStatusChangeEvent) event).getStatus().ordinal()]) {
                case 1:
                    return KernelProcessingStatus.UNKNOWN;
                case 2:
                    return KernelProcessingStatus.IDLE;
                case 3:
                case 4:
                case 5:
                case 6:
                case 7:
                case 8:
                case 9:
                case 10:
                case 11:
                    return KernelProcessingStatus.BUSY;
                default:
                    throw new NoWhenBranchMatchedException();
            }
        }
        if (event instanceof TransactionCompletedEvent ? true : Intrinsics.areEqual(event, WaitForCardPresentEvent.INSTANCE) ? true : Intrinsics.areEqual(event, RequestSelectAccountEvent.INSTANCE) ? true : Intrinsics.areEqual(event, ShowThankYouEvent.INSTANCE) ? true : Intrinsics.areEqual(event, BatteryCriticallyLowEvent.INSTANCE) ? true : Intrinsics.areEqual(event, DeviceMissingEncryptionKeyEvent.INSTANCE) ? true : event instanceof SetPinEntryAsteriskCountEvent ? true : event instanceof OnAccessiblePinPadEvent ? true : event instanceof RequestSelectApplicationEvent ? true : event instanceof ReaderFinalConfirmationTlvCollectedEvent ? true : event instanceof ReaderTypeChangedEvent ? true : event instanceof MagStripeReadEvent ? true : event instanceof RequestOnlineAuthorisationEvent) {
            return KernelProcessingStatus.IDLE;
        }
        if (Intrinsics.areEqual(event, ResetPaymentInterfacesEvent.INSTANCE)) {
            return KernelProcessingStatus.UNKNOWN;
        }
        if (Intrinsics.areEqual(event, ReadingCardEvent.INSTANCE)) {
            return KernelProcessingStatus.BUSY;
        }
        if (!(event instanceof HardwareTippingCollectionResultEvent ? true : Intrinsics.areEqual(event, HardwareTransactionCancelledEvent.INSTANCE) ? true : event instanceof SetPinPadResultEvent) && !(event instanceof IntermediateErrorEvent)) {
            throw new NoWhenBranchMatchedException();
        }
        return KernelProcessingStatus.IDLE;
    }
}
