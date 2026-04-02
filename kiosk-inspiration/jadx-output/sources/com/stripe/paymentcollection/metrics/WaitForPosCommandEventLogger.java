package com.stripe.paymentcollection.metrics;

import com.stripe.hardware.magstripe.MagStripePaymentCollectionAuthority;
import com.stripe.jvmcore.logging.HealthLogger;
import com.stripe.loggingmodels.Outcome;
import com.stripe.paymentcollection.CancelReason;
import com.stripe.paymentcollection.PaymentCollectionData;
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

/* JADX INFO: compiled from: WaitForPosCommandEventLogger.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0000\u0018\u00002\u001e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0001j\u0002`\u0006B1\u0012\"\u0010\u0007\u001a\u001e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\bj\u0002`\t\u0012\u0006\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fJ\b\u0010\u000f\u001a\u00020\u0010H\u0016J\u001a\u0010\u0011\u001a\u00020\u00102\b\u0010\u0012\u001a\u0004\u0018\u00010\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u000eJ\u0012\u0010\u0015\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0012\u001a\u00020\u0013H\u0002J\u000e\u0010\u0017\u001a\u00020\u00102\u0006\u0010\u0018\u001a\u00020\u000eR\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0019"}, d2 = {"Lcom/stripe/paymentcollection/metrics/WaitForPosCommandEventLogger;", "Lcom/stripe/paymentcollection/metrics/StageEventLogHelper;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/PaymentCollectionDomain;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/PaymentCollectionDomain$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;", "Lcom/stripe/paymentcollection/metrics/PaymentCollectionStageEventLogger;", "logger", "Lcom/stripe/jvmcore/logging/HealthLogger;", "Lcom/stripe/paymentcollection/metrics/StageLogger;", "endToEndEventLogger", "Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;", "(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;)V", "pendingCommand", "Lcom/stripe/paymentcollection/metrics/PendingPosCommand;", "cleanUp", "", "closeLog", "data", "Lcom/stripe/paymentcollection/PaymentCollectionData;", "closingCommand", "getFailureReason", "Lcom/stripe/paymentcollection/metrics/WaitForPosCommandFailureReason;", "openLog", "command", "impl_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class WaitForPosCommandEventLogger extends StageEventLogHelper<PaymentCollectionDomain, PaymentCollectionDomain.Builder, StageScope, StageScope.Builder> {
    private PendingPosCommand pendingCommand;

    /* JADX INFO: compiled from: WaitForPosCommandEventLogger.kt */
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
    public WaitForPosCommandEventLogger(HealthLogger<PaymentCollectionDomain, PaymentCollectionDomain.Builder, StageScope, StageScope.Builder> logger, EndToEndEventLogger endToEndEventLogger) {
        super(logger, "PosCommand", endToEndEventLogger, LatencyCategory.POS_COMMAND_DELAY);
        Intrinsics.checkNotNullParameter(logger, "logger");
        Intrinsics.checkNotNullParameter(endToEndEventLogger, "endToEndEventLogger");
    }

    public final void openLog(PendingPosCommand command) {
        Intrinsics.checkNotNullParameter(command, "command");
        this.pendingCommand = command;
        StageEventLogHelper.openLogHelper$default(this, null, new Function2<StageScope.Builder, Timer, Unit>() { // from class: com.stripe.paymentcollection.metrics.WaitForPosCommandEventLogger.openLog.1
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(StageScope.Builder builder, Timer timer) {
                invoke2(builder, timer);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(StageScope.Builder openLogHelper, Timer event) {
                Intrinsics.checkNotNullParameter(openLogHelper, "$this$openLogHelper");
                Intrinsics.checkNotNullParameter(event, "event");
                openLogHelper.pos_app_processing = event;
            }
        }, 1, null);
    }

    public final void closeLog(final PaymentCollectionData data, PendingPosCommand closingCommand) {
        final PendingPosCommand pendingPosCommand = this.pendingCommand;
        if (pendingPosCommand == null || data == null) {
            return;
        }
        if (closingCommand != null && closingCommand != pendingPosCommand) {
            cleanUp();
        } else {
            closeLogHelper(data, new Function1<Map<String, String>, Pair<? extends Outcome, ? extends Map<String, String>>>() { // from class: com.stripe.paymentcollection.metrics.WaitForPosCommandEventLogger.closeLog.1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final Pair<Outcome, Map<String, String>> invoke(Map<String, String> tagMap) {
                    String simpleName;
                    Intrinsics.checkNotNullParameter(tagMap, "tagMap");
                    WaitForPosCommandFailureReason failureReason = WaitForPosCommandEventLogger.this.getFailureReason(data);
                    Result result = failureReason == null ? Result.SUCCESS : Result.FAILURE;
                    PendingPosCommand pendingPosCommand2 = pendingPosCommand;
                    WaitForPosCommandFailureReason waitForPosCommandFailureReason = failureReason;
                    String simpleName2 = "MagStripeAllowReason";
                    if (waitForPosCommandFailureReason != null) {
                        if (Intrinsics.areEqual(Reflection.getOrCreateKotlinClass(WaitForPosCommandFailureReason.class), Reflection.getOrCreateKotlinClass(MagStripePaymentCollectionAuthority.class))) {
                            simpleName = "MagStripeAllowReason";
                        } else {
                            simpleName = Reflection.getOrCreateKotlinClass(WaitForPosCommandFailureReason.class).getSimpleName();
                            Intrinsics.checkNotNull(simpleName);
                        }
                        tagMap.put(simpleName, waitForPosCommandFailureReason.name());
                    }
                    PendingPosCommand pendingPosCommand3 = pendingPosCommand2;
                    if (pendingPosCommand3 != null) {
                        if (!Intrinsics.areEqual(Reflection.getOrCreateKotlinClass(PendingPosCommand.class), Reflection.getOrCreateKotlinClass(MagStripePaymentCollectionAuthority.class))) {
                            simpleName2 = Reflection.getOrCreateKotlinClass(PendingPosCommand.class).getSimpleName();
                            Intrinsics.checkNotNull(simpleName2);
                        }
                        tagMap.put(simpleName2, pendingPosCommand3.name());
                    }
                    return new Pair<>(ResultKt.toOutcome(result), tagMap);
                }
            });
            this.pendingCommand = null;
        }
    }

    @Override // com.stripe.paymentcollection.metrics.StageEventLogHelper
    public void cleanUp() {
        super.cleanUp();
        this.pendingCommand = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final WaitForPosCommandFailureReason getFailureReason(PaymentCollectionData data) {
        if (!data.isCancelled()) {
            if (data.isTimedOut()) {
                return WaitForPosCommandFailureReason.TIMED_OUT;
            }
            return null;
        }
        CancelReason cancelReason = data.getCancelReason();
        int i = cancelReason == null ? -1 : WhenMappings.$EnumSwitchMapping$0[cancelReason.ordinal()];
        if (i == -1) {
            return WaitForPosCommandFailureReason.UNKNOWN;
        }
        if (i == 1) {
            return WaitForPosCommandFailureReason.MERCHANT_CANCELLED;
        }
        if (i == 2) {
            return WaitForPosCommandFailureReason.HARDWARE_CANCELLED;
        }
        if (i == 3) {
            return WaitForPosCommandFailureReason.CUSTOMER_CANCELLED;
        }
        throw new NoWhenBranchMatchedException();
    }
}
