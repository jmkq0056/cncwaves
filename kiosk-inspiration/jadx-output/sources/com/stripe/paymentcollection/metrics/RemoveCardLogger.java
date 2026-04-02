package com.stripe.paymentcollection.metrics;

import com.stripe.hardware.magstripe.MagStripePaymentCollectionAuthority;
import com.stripe.hardware.paymentcollection.PaymentCollectionResultType;
import com.stripe.jvmcore.logging.HealthLogger;
import com.stripe.loggingmodels.Outcome;
import com.stripe.paymentcollection.PaymentCollectionData;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.paymentcollection.PaymentCollectionDomain;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.paymentcollection.StageScope;
import com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Timer;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: compiled from: RemoveCardLogger.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u00002\u001e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0001j\u0002`\u0006B1\u0012\"\u0010\u0007\u001a\u001e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\bj\u0002`\t\u0012\u0006\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fJ\u000e\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010J\u0006\u0010\u0011\u001a\u00020\u000e¨\u0006\u0012"}, d2 = {"Lcom/stripe/paymentcollection/metrics/RemoveCardLogger;", "Lcom/stripe/paymentcollection/metrics/StageEventLogHelper;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/PaymentCollectionDomain;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/PaymentCollectionDomain$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;", "Lcom/stripe/paymentcollection/metrics/PaymentCollectionStageEventLogger;", "logger", "Lcom/stripe/jvmcore/logging/HealthLogger;", "Lcom/stripe/paymentcollection/metrics/StageLogger;", "endToEndEventLogger", "Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;", "(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;)V", "closeLog", "", "data", "Lcom/stripe/paymentcollection/PaymentCollectionData;", "openLog", "impl_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class RemoveCardLogger extends StageEventLogHelper<PaymentCollectionDomain, PaymentCollectionDomain.Builder, StageScope, StageScope.Builder> {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RemoveCardLogger(HealthLogger<PaymentCollectionDomain, PaymentCollectionDomain.Builder, StageScope, StageScope.Builder> logger, EndToEndEventLogger endToEndEventLogger) {
        super(logger, "RemoveCard", endToEndEventLogger, LatencyCategory.USER_ACTION);
        Intrinsics.checkNotNullParameter(logger, "logger");
        Intrinsics.checkNotNullParameter(endToEndEventLogger, "endToEndEventLogger");
    }

    public final void openLog() {
        StageEventLogHelper.openLogHelper$default(this, null, new Function2<StageScope.Builder, Timer, Unit>() { // from class: com.stripe.paymentcollection.metrics.RemoveCardLogger.openLog.1
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(StageScope.Builder builder, Timer timer) {
                invoke2(builder, timer);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(StageScope.Builder openLogHelper, Timer event) {
                Intrinsics.checkNotNullParameter(openLogHelper, "$this$openLogHelper");
                Intrinsics.checkNotNullParameter(event, "event");
                openLogHelper.remove_card = event;
            }
        }, 1, null);
    }

    public final void closeLog(final PaymentCollectionData data) {
        Intrinsics.checkNotNullParameter(data, "data");
        closeLogHelper(data, new Function1<Map<String, String>, Pair<? extends Outcome, ? extends Map<String, String>>>() { // from class: com.stripe.paymentcollection.metrics.RemoveCardLogger.closeLog.1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Pair<Outcome, Map<String, String>> invoke(Map<String, String> tagMap) {
                Result result;
                String simpleName;
                Intrinsics.checkNotNullParameter(tagMap, "tagMap");
                if (data.getCollectionResultType() == PaymentCollectionResultType.SUCCESS || data.getCollectionResultType() == PaymentCollectionResultType.NOT_FINISHED) {
                    result = Result.SUCCESS;
                } else {
                    result = Result.FAILURE;
                }
                CollectionFailureReason collectionFailureReason$impl_release = DefaultEndToEndEventLogger.INSTANCE.getCollectionFailureReason$impl_release(data, result);
                if (collectionFailureReason$impl_release != null) {
                    if (Intrinsics.areEqual(Reflection.getOrCreateKotlinClass(CollectionFailureReason.class), Reflection.getOrCreateKotlinClass(MagStripePaymentCollectionAuthority.class))) {
                        simpleName = "MagStripeAllowReason";
                    } else {
                        simpleName = Reflection.getOrCreateKotlinClass(CollectionFailureReason.class).getSimpleName();
                        Intrinsics.checkNotNull(simpleName);
                    }
                    tagMap.put(simpleName, collectionFailureReason$impl_release.name());
                }
                return new Pair<>(ResultKt.toOutcome(result), tagMap);
            }
        });
    }
}
