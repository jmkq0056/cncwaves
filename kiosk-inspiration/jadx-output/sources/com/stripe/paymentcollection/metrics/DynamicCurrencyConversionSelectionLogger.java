package com.stripe.paymentcollection.metrics;

import com.stripe.hardware.magstripe.MagStripePaymentCollectionAuthority;
import com.stripe.jvmcore.logging.HealthLogger;
import com.stripe.loggingmodels.Outcome;
import com.stripe.paymentcollection.CancelReason;
import com.stripe.paymentcollection.PaymentCollectionData;
import com.stripe.paymentcollection.PaymentCollectionState;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.paymentcollection.PaymentCollectionDomain;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.paymentcollection.StageScope;
import com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Timer;
import com.stripe.transaction.DynamicCurrencyConversionData;
import java.util.Map;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: compiled from: DynamicCurrencyConversionSelectionLogger.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u00002\u001e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0001j\u0002`\u0006B1\u0012\"\u0010\u0007\u001a\u001e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\bj\u0002`\t\u0012\u0006\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fJ\u0016\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012J\u0006\u0010\u0013\u001a\u00020\u000e¨\u0006\u0014"}, d2 = {"Lcom/stripe/paymentcollection/metrics/DynamicCurrencyConversionSelectionLogger;", "Lcom/stripe/paymentcollection/metrics/StageEventLogHelper;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/PaymentCollectionDomain;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/PaymentCollectionDomain$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;", "Lcom/stripe/paymentcollection/metrics/PaymentCollectionStageEventLogger;", "logger", "Lcom/stripe/jvmcore/logging/HealthLogger;", "Lcom/stripe/paymentcollection/metrics/StageLogger;", "endToEventLogger", "Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;", "(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;)V", "closeLog", "", "data", "Lcom/stripe/paymentcollection/PaymentCollectionData;", "nextState", "Lcom/stripe/paymentcollection/PaymentCollectionState;", "openLog", "impl_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DynamicCurrencyConversionSelectionLogger extends StageEventLogHelper<PaymentCollectionDomain, PaymentCollectionDomain.Builder, StageScope, StageScope.Builder> {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DynamicCurrencyConversionSelectionLogger(HealthLogger<PaymentCollectionDomain, PaymentCollectionDomain.Builder, StageScope, StageScope.Builder> logger, EndToEndEventLogger endToEventLogger) {
        super(logger, "DynamicCurrencyConversionSelection", endToEventLogger, LatencyCategory.USER_ACTION);
        Intrinsics.checkNotNullParameter(logger, "logger");
        Intrinsics.checkNotNullParameter(endToEventLogger, "endToEventLogger");
    }

    public final void openLog() {
        StageEventLogHelper.openLogHelper$default(this, null, new Function2<StageScope.Builder, Timer, Unit>() { // from class: com.stripe.paymentcollection.metrics.DynamicCurrencyConversionSelectionLogger.openLog.1
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(StageScope.Builder builder, Timer timer) {
                invoke2(builder, timer);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(StageScope.Builder openLogHelper, Timer event) {
                Intrinsics.checkNotNullParameter(openLogHelper, "$this$openLogHelper");
                Intrinsics.checkNotNullParameter(event, "event");
                openLogHelper.dcc_selection = event;
            }
        }, 1, null);
    }

    public final void closeLog(final PaymentCollectionData data, final PaymentCollectionState nextState) {
        final DynamicCurrencyConversionSelectionResult dynamicCurrencyConversionSelectionResult;
        Intrinsics.checkNotNullParameter(data, "data");
        Intrinsics.checkNotNullParameter(nextState, "nextState");
        Boolean selectedDynamicCurrencyConversion = data.getSelectedDynamicCurrencyConversion();
        if (selectedDynamicCurrencyConversion != null) {
            dynamicCurrencyConversionSelectionResult = selectedDynamicCurrencyConversion.booleanValue() ? DynamicCurrencyConversionSelectionResult.TARGET : DynamicCurrencyConversionSelectionResult.ORIGINAL;
        } else {
            dynamicCurrencyConversionSelectionResult = null;
        }
        closeLogHelper(data, new Function1<Map<String, String>, Pair<? extends Outcome, ? extends Map<String, String>>>() { // from class: com.stripe.paymentcollection.metrics.DynamicCurrencyConversionSelectionLogger.closeLog.1

            /* JADX INFO: renamed from: com.stripe.paymentcollection.metrics.DynamicCurrencyConversionSelectionLogger$closeLog$1$WhenMappings */
            /* JADX INFO: compiled from: DynamicCurrencyConversionSelectionLogger.kt */
            @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
            public /* synthetic */ class WhenMappings {
                public static final /* synthetic */ int[] $EnumSwitchMapping$0;
                public static final /* synthetic */ int[] $EnumSwitchMapping$1;

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
                    int[] iArr2 = new int[PaymentCollectionState.values().length];
                    try {
                        iArr2[PaymentCollectionState.PROCESSING.ordinal()] = 1;
                    } catch (NoSuchFieldError unused4) {
                    }
                    try {
                        iArr2[PaymentCollectionState.CANCEL.ordinal()] = 2;
                    } catch (NoSuchFieldError unused5) {
                    }
                    $EnumSwitchMapping$1 = iArr2;
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
                DynamicCurrencyConversionSelectionFailureReason dynamicCurrencyConversionSelectionFailureReason;
                Intrinsics.checkNotNullParameter(tagMap, "tagMap");
                int i = WhenMappings.$EnumSwitchMapping$1[nextState.ordinal()];
                if (i == 1) {
                    pair = new Pair(Result.SUCCESS, null);
                } else if (i == 2) {
                    Result result = Result.FAILURE;
                    CancelReason cancelReason = data.getCancelReason();
                    int i2 = cancelReason == null ? -1 : WhenMappings.$EnumSwitchMapping$0[cancelReason.ordinal()];
                    if (i2 == -1) {
                        dynamicCurrencyConversionSelectionFailureReason = DynamicCurrencyConversionSelectionFailureReason.UNKNOWN;
                    } else if (i2 == 1) {
                        dynamicCurrencyConversionSelectionFailureReason = DynamicCurrencyConversionSelectionFailureReason.MERCHANT_CANCELLED;
                    } else if (i2 == 2) {
                        dynamicCurrencyConversionSelectionFailureReason = DynamicCurrencyConversionSelectionFailureReason.HARDWARE_CANCELLED;
                    } else if (i2 == 3) {
                        dynamicCurrencyConversionSelectionFailureReason = DynamicCurrencyConversionSelectionFailureReason.CUSTOMER_CANCELLED;
                    } else {
                        throw new NoWhenBranchMatchedException();
                    }
                    pair = new Pair(result, dynamicCurrencyConversionSelectionFailureReason);
                } else {
                    pair = new Pair(Result.FAILURE, DynamicCurrencyConversionSelectionFailureReason.UNKNOWN);
                }
                Result result2 = (Result) pair.component1();
                DynamicCurrencyConversionSelectionFailureReason dynamicCurrencyConversionSelectionFailureReason2 = (DynamicCurrencyConversionSelectionFailureReason) pair.component2();
                DynamicCurrencyConversionSelectionResult dynamicCurrencyConversionSelectionResult2 = dynamicCurrencyConversionSelectionResult;
                PaymentCollectionData paymentCollectionData = data;
                DynamicCurrencyConversionSelectionResult dynamicCurrencyConversionSelectionResult3 = dynamicCurrencyConversionSelectionResult2;
                String simpleName2 = "MagStripeAllowReason";
                if (dynamicCurrencyConversionSelectionResult3 != null) {
                    if (Intrinsics.areEqual(Reflection.getOrCreateKotlinClass(DynamicCurrencyConversionSelectionResult.class), Reflection.getOrCreateKotlinClass(MagStripePaymentCollectionAuthority.class))) {
                        simpleName = "MagStripeAllowReason";
                    } else {
                        simpleName = Reflection.getOrCreateKotlinClass(DynamicCurrencyConversionSelectionResult.class).getSimpleName();
                        Intrinsics.checkNotNull(simpleName);
                    }
                    tagMap.put(simpleName, dynamicCurrencyConversionSelectionResult3.name());
                }
                DynamicCurrencyConversionSelectionFailureReason dynamicCurrencyConversionSelectionFailureReason3 = dynamicCurrencyConversionSelectionFailureReason2;
                if (dynamicCurrencyConversionSelectionFailureReason3 != null) {
                    if (!Intrinsics.areEqual(Reflection.getOrCreateKotlinClass(DynamicCurrencyConversionSelectionFailureReason.class), Reflection.getOrCreateKotlinClass(MagStripePaymentCollectionAuthority.class))) {
                        simpleName2 = Reflection.getOrCreateKotlinClass(DynamicCurrencyConversionSelectionFailureReason.class).getSimpleName();
                        Intrinsics.checkNotNull(simpleName2);
                    }
                    tagMap.put(simpleName2, dynamicCurrencyConversionSelectionFailureReason3.name());
                }
                DynamicCurrencyConversionData dynamicCurrencyConversionData = paymentCollectionData.getDynamicCurrencyConversionData();
                if (dynamicCurrencyConversionData != null) {
                    tagMap.put("ExtendedAuthEnabled", String.valueOf(dynamicCurrencyConversionData.getRequestExtendedAuth()));
                    tagMap.put("IncrementalAuthEnabled", String.valueOf(dynamicCurrencyConversionData.getRequestIncrementalAuth()));
                    tagMap.put("SetupFutureUsageEnabled", String.valueOf(dynamicCurrencyConversionData.getSetupFutureUsage()));
                }
                return new Pair<>(ResultKt.toOutcome(result2), tagMap);
            }
        });
    }
}
