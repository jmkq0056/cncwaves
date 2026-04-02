package com.stripe.paymentcollection.metrics;

import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.stripe.hardware.magstripe.MagStripePaymentCollectionAuthority;
import com.stripe.jvmcore.logging.HealthLogger;
import com.stripe.jvmcore.logging.HealthLoggerBuilder;
import com.stripe.jvmcore.logging.terminal.log.Log;
import com.stripe.loggingmodels.Outcome;
import com.stripe.paymentcollection.manualentry.ManualEntryData;
import com.stripe.paymentcollection.manualentry.ManualEntryFailureReason;
import com.stripe.paymentcollection.manualentry.ManualEntryLoggerInterface;
import com.stripe.paymentcollection.manualentry.ManualEntryState;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.paymentcollection.DiscreteScope;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.paymentcollection.PaymentCollectionDomain;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.paymentcollection.StageScope;
import com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Counter;
import com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Timer;
import java.util.HashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: compiled from: ManualEntryLogger.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\u0018\u0000 \u001c2\u001a\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u00012\u00020\u0006:\u0001\u001cB\u0015\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\rH\u0016J\u0012\u0010\u0016\u001a\u00020\u00142\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016J\u0012\u0010\u0019\u001a\u00020\u00142\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016J\b\u0010\u001a\u001a\u00020\u001bH\u0002R\u0010\u0010\f\u001a\u0004\u0018\u00010\rX\u0082\u000e¢\u0006\u0002\n\u0000R*\u0010\u000e\u001a\u001e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00110\u000fj\u0002`\u0012X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001d"}, d2 = {"Lcom/stripe/paymentcollection/metrics/ManualEntryLogger;", "Lcom/stripe/paymentcollection/metrics/StageEventLogHelper;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/PaymentCollectionDomain;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/PaymentCollectionDomain$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;", "Lcom/stripe/paymentcollection/manualentry/ManualEntryLoggerInterface;", "healthLoggerBuilder", "Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;", "endToEndEventLogger", "Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;", "(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;)V", "curState", "Lcom/stripe/paymentcollection/manualentry/ManualEntryState;", "discreteHealthLogger", "Lcom/stripe/jvmcore/logging/HealthLogger;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;", "Lcom/stripe/paymentcollection/metrics/DiscreteHealthLogger;", "onEnter", "", RemoteConfigConstants.ResponseFieldKey.STATE, "onExit", "data", "Lcom/stripe/paymentcollection/manualentry/ManualEntryData;", "onInvalidInput", "shouldLog", "", "Companion", "impl_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ManualEntryLogger extends StageEventLogHelper<PaymentCollectionDomain, PaymentCollectionDomain.Builder, StageScope, StageScope.Builder> implements ManualEntryLoggerInterface {
    private static final Log LOGGER = Log.INSTANCE.getLogger(ManualEntryLogger.class);
    private ManualEntryState curState;
    private final HealthLogger<PaymentCollectionDomain, PaymentCollectionDomain.Builder, DiscreteScope, DiscreteScope.Builder> discreteHealthLogger;

    /* JADX INFO: compiled from: ManualEntryLogger.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ManualEntryState.values().length];
            try {
                iArr[ManualEntryState.EMPTY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ManualEntryState.CONFIGURE_READER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ManualEntryState.FINISHED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[ManualEntryState.PAN_ENTRY.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[ManualEntryState.EXPIRY_DATE_ENTRY.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[ManualEntryState.CVV_ENTRY.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[ManualEntryState.ZIP_CODE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[ManualEntryState.CONFIRM_DETAILS.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ManualEntryLogger(HealthLoggerBuilder healthLoggerBuilder, EndToEndEventLogger endToEndEventLogger) {
        super(UtilsKt.buildsStageHealthLogger(healthLoggerBuilder), "ManualEntry", endToEndEventLogger, LatencyCategory.USER_ACTION);
        Intrinsics.checkNotNullParameter(healthLoggerBuilder, "healthLoggerBuilder");
        Intrinsics.checkNotNullParameter(endToEndEventLogger, "endToEndEventLogger");
        this.discreteHealthLogger = UtilsKt.buildsDiscreteHealthLogger(healthLoggerBuilder);
    }

    @Override // com.stripe.paymentcollection.manualentry.ManualEntryLoggerInterface
    public void onEnter(ManualEntryState state) {
        Intrinsics.checkNotNullParameter(state, "state");
        this.curState = state;
        if (shouldLog()) {
            StageEventLogHelper.openLogHelper$default(this, null, new Function2<StageScope.Builder, Timer, Unit>() { // from class: com.stripe.paymentcollection.metrics.ManualEntryLogger.onEnter.1
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(StageScope.Builder builder, Timer timer) {
                    invoke2(builder, timer);
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(StageScope.Builder openLogHelper, Timer event) {
                    Intrinsics.checkNotNullParameter(openLogHelper, "$this$openLogHelper");
                    Intrinsics.checkNotNullParameter(event, "event");
                    openLogHelper.manual_entry = event;
                }
            }, 1, null);
        }
    }

    @Override // com.stripe.paymentcollection.manualentry.ManualEntryLoggerInterface
    public void onExit(final ManualEntryData data) {
        if (data != null && shouldLog()) {
            closeLogHelper(data, new Function1<Map<String, String>, Pair<? extends Outcome, ? extends Map<String, String>>>() { // from class: com.stripe.paymentcollection.metrics.ManualEntryLogger.onExit.1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final Pair<Outcome, Map<String, String>> invoke(Map<String, String> tagMap) {
                    Result result;
                    String simpleName;
                    Intrinsics.checkNotNullParameter(tagMap, "tagMap");
                    if (data.getFailureReason() != null) {
                        result = Result.FAILURE;
                    } else {
                        result = Result.SUCCESS;
                    }
                    ManualEntryLogger manualEntryLogger = this;
                    ManualEntryData manualEntryData = data;
                    ManualEntryState manualEntryState = manualEntryLogger.curState;
                    String simpleName2 = "MagStripeAllowReason";
                    if (manualEntryState != null) {
                        if (Intrinsics.areEqual(Reflection.getOrCreateKotlinClass(ManualEntryState.class), Reflection.getOrCreateKotlinClass(MagStripePaymentCollectionAuthority.class))) {
                            simpleName = "MagStripeAllowReason";
                        } else {
                            simpleName = Reflection.getOrCreateKotlinClass(ManualEntryState.class).getSimpleName();
                            Intrinsics.checkNotNull(simpleName);
                        }
                        tagMap.put(simpleName, manualEntryState.name());
                    }
                    ManualEntryFailureReason failureReason = manualEntryData.getFailureReason();
                    if (failureReason != null) {
                        if (!Intrinsics.areEqual(Reflection.getOrCreateKotlinClass(ManualEntryFailureReason.class), Reflection.getOrCreateKotlinClass(MagStripePaymentCollectionAuthority.class))) {
                            simpleName2 = Reflection.getOrCreateKotlinClass(ManualEntryFailureReason.class).getSimpleName();
                            Intrinsics.checkNotNull(simpleName2);
                        }
                        tagMap.put(simpleName2, failureReason.name());
                    }
                    return new Pair<>(ResultKt.toOutcome(result), tagMap);
                }
            });
        }
    }

    @Override // com.stripe.paymentcollection.manualentry.ManualEntryLoggerInterface
    public void onInvalidInput(ManualEntryData data) throws IllegalAccessException, InstantiationException {
        String simpleName;
        if (data == null) {
            return;
        }
        LOGGER.i("onInvalidInput at " + this.curState, new Pair[0]);
        HashMap mapGenerateCommonTags$default = UtilsKt.generateCommonTags$default(data, (LatencyCategory) null, 2, (Object) null);
        ManualEntryState manualEntryState = this.curState;
        if (manualEntryState != null) {
            if (Intrinsics.areEqual(Reflection.getOrCreateKotlinClass(ManualEntryState.class), Reflection.getOrCreateKotlinClass(MagStripePaymentCollectionAuthority.class))) {
                simpleName = "MagStripeAllowReason";
            } else {
                simpleName = Reflection.getOrCreateKotlinClass(ManualEntryState.class).getSimpleName();
                Intrinsics.checkNotNull(simpleName);
            }
            mapGenerateCommonTags$default.put(simpleName, manualEntryState.name());
        }
        HealthLogger.incrementCounter$default(this.discreteHealthLogger, null, mapGenerateCommonTags$default, null, new Function2<DiscreteScope.Builder, Counter, Unit>() { // from class: com.stripe.paymentcollection.metrics.ManualEntryLogger.onInvalidInput.1
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(DiscreteScope.Builder builder, Counter counter) {
                invoke2(builder, counter);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(DiscreteScope.Builder incrementCounter, Counter event) {
                Intrinsics.checkNotNullParameter(incrementCounter, "$this$incrementCounter");
                Intrinsics.checkNotNullParameter(event, "event");
                incrementCounter.manual_entry_invalid_input = event;
            }
        }, 5, null);
    }

    private final boolean shouldLog() {
        ManualEntryState manualEntryState = this.curState;
        switch (manualEntryState == null ? -1 : WhenMappings.$EnumSwitchMapping$0[manualEntryState.ordinal()]) {
            case -1:
            case 1:
            case 2:
            case 3:
                return false;
            case 0:
            default:
                throw new NoWhenBranchMatchedException();
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
                return true;
        }
    }
}
