package com.stripe.paymentcollection.metrics;

import com.stripe.hardware.magstripe.MagStripePaymentCollectionAuthority;
import com.stripe.jvmcore.logging.HealthLogger;
import com.stripe.loggingmodels.Outcome;
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

/* JADX INFO: compiled from: DisplayCartLogger.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u00002\u001e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0001j\u0002`\u0006B1\u0012\"\u0010\u0007\u001a\u001e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\bj\u0002`\t\u0012\u0006\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fJ\u0016\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012J\u0006\u0010\u0013\u001a\u00020\u000e¨\u0006\u0014"}, d2 = {"Lcom/stripe/paymentcollection/metrics/DisplayCartLogger;", "Lcom/stripe/paymentcollection/metrics/StageEventLogHelper;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/PaymentCollectionDomain;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/PaymentCollectionDomain$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;", "Lcom/stripe/paymentcollection/metrics/PaymentCollectionStageEventLogger;", "logger", "Lcom/stripe/jvmcore/logging/HealthLogger;", "Lcom/stripe/paymentcollection/metrics/StageLogger;", "endToEndEventLogger", "Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;", "(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;)V", "closeLog", "", "data", "Lcom/stripe/paymentcollection/PaymentCollectionData;", "displayCartResult", "Lcom/stripe/paymentcollection/metrics/DisplayCartResult;", "openLog", "impl_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DisplayCartLogger extends StageEventLogHelper<PaymentCollectionDomain, PaymentCollectionDomain.Builder, StageScope, StageScope.Builder> {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DisplayCartLogger(HealthLogger<PaymentCollectionDomain, PaymentCollectionDomain.Builder, StageScope, StageScope.Builder> logger, EndToEndEventLogger endToEndEventLogger) {
        super(logger, "DisplayCart", endToEndEventLogger, null, 8, null);
        Intrinsics.checkNotNullParameter(logger, "logger");
        Intrinsics.checkNotNullParameter(endToEndEventLogger, "endToEndEventLogger");
    }

    public final void openLog() {
        StageEventLogHelper.openLogHelper$default(this, null, new Function2<StageScope.Builder, Timer, Unit>() { // from class: com.stripe.paymentcollection.metrics.DisplayCartLogger.openLog.1
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(StageScope.Builder builder, Timer timer) {
                invoke2(builder, timer);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(StageScope.Builder openLogHelper, Timer event) {
                Intrinsics.checkNotNullParameter(openLogHelper, "$this$openLogHelper");
                Intrinsics.checkNotNullParameter(event, "event");
                openLogHelper.display_cart = event;
            }
        }, 1, null);
    }

    public final void closeLog(PaymentCollectionData data, final DisplayCartResult displayCartResult) {
        Intrinsics.checkNotNullParameter(data, "data");
        Intrinsics.checkNotNullParameter(displayCartResult, "displayCartResult");
        closeLogHelper(data, new Function1<Map<String, String>, Pair<? extends Outcome, ? extends Map<String, String>>>() { // from class: com.stripe.paymentcollection.metrics.DisplayCartLogger.closeLog.1

            /* JADX INFO: renamed from: com.stripe.paymentcollection.metrics.DisplayCartLogger$closeLog$1$WhenMappings */
            /* JADX INFO: compiled from: DisplayCartLogger.kt */
            @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
            public /* synthetic */ class WhenMappings {
                public static final /* synthetic */ int[] $EnumSwitchMapping$0;

                static {
                    int[] iArr = new int[DisplayCartResult.values().length];
                    try {
                        iArr[DisplayCartResult.CART_UPDATED.ordinal()] = 1;
                    } catch (NoSuchFieldError unused) {
                    }
                    try {
                        iArr[DisplayCartResult.STARTED_COLLECTION.ordinal()] = 2;
                    } catch (NoSuchFieldError unused2) {
                    }
                    try {
                        iArr[DisplayCartResult.UNKNOWN.ordinal()] = 3;
                    } catch (NoSuchFieldError unused3) {
                    }
                    try {
                        iArr[DisplayCartResult.MERCHANT_CANCELLED.ordinal()] = 4;
                    } catch (NoSuchFieldError unused4) {
                    }
                    try {
                        iArr[DisplayCartResult.CUSTOMER_CANCELLED.ordinal()] = 5;
                    } catch (NoSuchFieldError unused5) {
                    }
                    $EnumSwitchMapping$0 = iArr;
                }
            }

            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Pair<Outcome, Map<String, String>> invoke(Map<String, String> tagMap) {
                Result result;
                String simpleName;
                Intrinsics.checkNotNullParameter(tagMap, "tagMap");
                int i = WhenMappings.$EnumSwitchMapping$0[displayCartResult.ordinal()];
                if (i == 1 || i == 2) {
                    result = Result.SUCCESS;
                } else {
                    if (i != 3 && i != 4 && i != 5) {
                        throw new NoWhenBranchMatchedException();
                    }
                    result = Result.FAILURE;
                }
                DisplayCartResult displayCartResult2 = displayCartResult;
                if (displayCartResult2 != null) {
                    if (Intrinsics.areEqual(Reflection.getOrCreateKotlinClass(DisplayCartResult.class), Reflection.getOrCreateKotlinClass(MagStripePaymentCollectionAuthority.class))) {
                        simpleName = "MagStripeAllowReason";
                    } else {
                        simpleName = Reflection.getOrCreateKotlinClass(DisplayCartResult.class).getSimpleName();
                        Intrinsics.checkNotNull(simpleName);
                    }
                    tagMap.put(simpleName, displayCartResult2.name());
                }
                return new Pair<>(ResultKt.toOutcome(result), tagMap);
            }
        });
    }
}
