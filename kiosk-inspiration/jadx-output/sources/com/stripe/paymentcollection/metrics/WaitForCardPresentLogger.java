package com.stripe.paymentcollection.metrics;

import com.stripe.hardware.emv.EmvTransactionType;
import com.stripe.hardware.magstripe.MagStripePaymentCollectionAuthority;
import com.stripe.hardware.paymentcollection.ContactCardSlotState;
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
import kotlin.Triple;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: compiled from: WaitForCardPresentLogger.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u00002\u001e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0001j\u0002`\u0006B1\u0012\"\u0010\u0007\u001a\u001e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\bj\u0002`\t\u0012\u0006\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fJ\u0010\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010J\u0006\u0010\u0011\u001a\u00020\u000e¨\u0006\u0012"}, d2 = {"Lcom/stripe/paymentcollection/metrics/WaitForCardPresentLogger;", "Lcom/stripe/paymentcollection/metrics/StageEventLogHelper;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/PaymentCollectionDomain;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/PaymentCollectionDomain$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;", "Lcom/stripe/paymentcollection/metrics/PaymentCollectionStageEventLogger;", "logger", "Lcom/stripe/jvmcore/logging/HealthLogger;", "Lcom/stripe/paymentcollection/metrics/StageLogger;", "endToEndEventLogger", "Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;", "(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;)V", "closeLog", "", "data", "Lcom/stripe/paymentcollection/PaymentCollectionData;", "openLog", "impl_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class WaitForCardPresentLogger extends StageEventLogHelper<PaymentCollectionDomain, PaymentCollectionDomain.Builder, StageScope, StageScope.Builder> {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WaitForCardPresentLogger(HealthLogger<PaymentCollectionDomain, PaymentCollectionDomain.Builder, StageScope, StageScope.Builder> logger, EndToEndEventLogger endToEndEventLogger) {
        super(logger, "CardPresent", endToEndEventLogger, LatencyCategory.USER_ACTION);
        Intrinsics.checkNotNullParameter(logger, "logger");
        Intrinsics.checkNotNullParameter(endToEndEventLogger, "endToEndEventLogger");
    }

    public final void openLog() {
        if (isOpen()) {
            return;
        }
        StageEventLogHelper.openLogHelper$default(this, null, new Function2<StageScope.Builder, Timer, Unit>() { // from class: com.stripe.paymentcollection.metrics.WaitForCardPresentLogger.openLog.1
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(StageScope.Builder builder, Timer timer) {
                invoke2(builder, timer);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(StageScope.Builder openLogHelper, Timer event) {
                Intrinsics.checkNotNullParameter(openLogHelper, "$this$openLogHelper");
                Intrinsics.checkNotNullParameter(event, "event");
                openLogHelper.card_present = event;
            }
        }, 1, null);
    }

    public final void closeLog(final PaymentCollectionData data) {
        if (data == null) {
            return;
        }
        closeLogHelper(data, new Function1<Map<String, String>, Pair<? extends Outcome, ? extends Map<String, String>>>() { // from class: com.stripe.paymentcollection.metrics.WaitForCardPresentLogger.closeLog.1

            /* JADX INFO: renamed from: com.stripe.paymentcollection.metrics.WaitForCardPresentLogger$closeLog$1$WhenMappings */
            /* JADX INFO: compiled from: WaitForCardPresentLogger.kt */
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
                    int[] iArr2 = new int[EmvTransactionType.values().length];
                    try {
                        iArr2[EmvTransactionType.QUICK.ordinal()] = 1;
                    } catch (NoSuchFieldError unused4) {
                    }
                    try {
                        iArr2[EmvTransactionType.TRADITIONAL.ordinal()] = 2;
                    } catch (NoSuchFieldError unused5) {
                    }
                    $EnumSwitchMapping$1 = iArr2;
                }
            }

            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Pair<Outcome, Map<String, String>> invoke(Map<String, String> tagMap) {
                Triple triple;
                PaymentMethodType paymentMethodType;
                String simpleName;
                CardPresentFailureReason cardPresentFailureReason;
                Intrinsics.checkNotNullParameter(tagMap, "tagMap");
                if (data.isCancelled()) {
                    Result result = Result.FAILURE;
                    CancelReason cancelReason = data.getCancelReason();
                    int i = cancelReason == null ? -1 : WhenMappings.$EnumSwitchMapping$0[cancelReason.ordinal()];
                    if (i == -1) {
                        cardPresentFailureReason = CardPresentFailureReason.UNKNOWN;
                    } else if (i == 1) {
                        cardPresentFailureReason = CardPresentFailureReason.MERCHANT_CANCELLED;
                    } else if (i == 2) {
                        cardPresentFailureReason = CardPresentFailureReason.HARDWARE_CANCELLED;
                    } else if (i == 3) {
                        cardPresentFailureReason = CardPresentFailureReason.CUSTOMER_CANCELLED;
                    } else {
                        throw new NoWhenBranchMatchedException();
                    }
                    triple = new Triple(result, cardPresentFailureReason, null);
                } else if (data.isTimedOut()) {
                    triple = new Triple(Result.FAILURE, CardPresentFailureReason.TIMEOUT, null);
                } else if (data.getShouldStartManualEntry()) {
                    triple = new Triple(Result.SUCCESS, null, PaymentMethodType.MANUAL_ENTRY);
                } else if (data.getMagStripeReadResult() != null) {
                    triple = new Triple(Result.SUCCESS, null, PaymentMethodType.MAGSTRIPE);
                } else if (data.getCardSlotState() != ContactCardSlotState.EMPTY) {
                    int i2 = WhenMappings.$EnumSwitchMapping$1[data.getEmvTransactionType().ordinal()];
                    if (i2 == 1) {
                        paymentMethodType = PaymentMethodType.EMV_INSERT_QUICK;
                    } else {
                        if (i2 != 2) {
                            throw new NoWhenBranchMatchedException();
                        }
                        paymentMethodType = PaymentMethodType.EMV_INSERT_FULL;
                    }
                    triple = new Triple(Result.SUCCESS, null, paymentMethodType);
                } else {
                    triple = data.getOnlineAuthorizationData() != null ? new Triple(Result.SUCCESS, null, PaymentMethodType.EMV_TAP) : new Triple(Result.FAILURE, CardPresentFailureReason.UNKNOWN, null);
                }
                Result result2 = (Result) triple.component1();
                CardPresentFailureReason cardPresentFailureReason2 = (CardPresentFailureReason) triple.component2();
                PaymentMethodType paymentMethodType2 = (PaymentMethodType) triple.component3();
                CardPresentFailureReason cardPresentFailureReason3 = cardPresentFailureReason2;
                String simpleName2 = "MagStripeAllowReason";
                if (cardPresentFailureReason3 != null) {
                    if (Intrinsics.areEqual(Reflection.getOrCreateKotlinClass(CardPresentFailureReason.class), Reflection.getOrCreateKotlinClass(MagStripePaymentCollectionAuthority.class))) {
                        simpleName = "MagStripeAllowReason";
                    } else {
                        simpleName = Reflection.getOrCreateKotlinClass(CardPresentFailureReason.class).getSimpleName();
                        Intrinsics.checkNotNull(simpleName);
                    }
                    tagMap.put(simpleName, cardPresentFailureReason3.name());
                }
                PaymentMethodType paymentMethodType3 = paymentMethodType2;
                if (paymentMethodType3 != null) {
                    if (!Intrinsics.areEqual(Reflection.getOrCreateKotlinClass(PaymentMethodType.class), Reflection.getOrCreateKotlinClass(MagStripePaymentCollectionAuthority.class))) {
                        simpleName2 = Reflection.getOrCreateKotlinClass(PaymentMethodType.class).getSimpleName();
                        Intrinsics.checkNotNull(simpleName2);
                    }
                    tagMap.put(simpleName2, paymentMethodType3.name());
                }
                return new Pair<>(ResultKt.toOutcome(result2), tagMap);
            }
        });
    }
}
