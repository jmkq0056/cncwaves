package com.stripe.paymentcollection.metrics;

import com.stripe.hardware.magstripe.MagStripePaymentCollectionAuthority;
import com.stripe.jvmcore.logging.HealthLogger;
import com.stripe.loggingmodels.Outcome;
import com.stripe.paymentcollection.CancelReason;
import com.stripe.paymentcollection.OnlineAuthState;
import com.stripe.paymentcollection.OnlineAuthType;
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

/* JADX INFO: compiled from: OnlineAuthLogger.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u00002\u001e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0001j\u0002`\u0006B1\u0012\"\u0010\u0007\u001a\u001e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\bj\u0002`\t\u0012\u0006\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fJ\u0018\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0017\u001a\u00020\u0018J\u0010\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cH\u0002J\u001e\u0010\u001d\u001a\u0010\u0012\u0004\u0012\u00020\u001f\u0012\u0006\u0012\u0004\u0018\u00010\u001a0\u001e2\u0006\u0010\u0017\u001a\u00020\u0018H\u0002J\u000e\u0010 \u001a\u00020\u00142\u0006\u0010\r\u001a\u00020\u000eR\u001c\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012¨\u0006!"}, d2 = {"Lcom/stripe/paymentcollection/metrics/OnlineAuthLogger;", "Lcom/stripe/paymentcollection/metrics/StageEventLogHelper;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/PaymentCollectionDomain;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/PaymentCollectionDomain$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;", "Lcom/stripe/paymentcollection/metrics/PaymentCollectionStageEventLogger;", "logger", "Lcom/stripe/jvmcore/logging/HealthLogger;", "Lcom/stripe/paymentcollection/metrics/StageLogger;", "endToEndEventLogger", "Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;", "(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;)V", "authType", "Lcom/stripe/paymentcollection/OnlineAuthType;", "getAuthType", "()Lcom/stripe/paymentcollection/OnlineAuthType;", "setAuthType", "(Lcom/stripe/paymentcollection/OnlineAuthType;)V", "closeLog", "", "data", "Lcom/stripe/paymentcollection/PaymentCollectionData;", "authState", "Lcom/stripe/paymentcollection/OnlineAuthState;", "getMetricReason", "Lcom/stripe/paymentcollection/metrics/OnlineAuthFailureReason;", "failureReason", "Lcom/stripe/paymentcollection/OnlineAuthFailureReason;", "getResult", "Lkotlin/Pair;", "Lcom/stripe/paymentcollection/metrics/Result;", "openLog", "impl_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class OnlineAuthLogger extends StageEventLogHelper<PaymentCollectionDomain, PaymentCollectionDomain.Builder, StageScope, StageScope.Builder> {
    private OnlineAuthType authType;

    /* JADX INFO: compiled from: OnlineAuthLogger.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[com.stripe.paymentcollection.OnlineAuthFailureReason.values().length];
            try {
                iArr[com.stripe.paymentcollection.OnlineAuthFailureReason.DECLINED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[com.stripe.paymentcollection.OnlineAuthFailureReason.SCA_NEEDED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[com.stripe.paymentcollection.OnlineAuthFailureReason.UNKNOWN_NETWORK_FAILURE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OnlineAuthLogger(HealthLogger<PaymentCollectionDomain, PaymentCollectionDomain.Builder, StageScope, StageScope.Builder> logger, EndToEndEventLogger endToEndEventLogger) {
        super(logger, "OnlineAuth", endToEndEventLogger, LatencyCategory.NETWORK_PROCESSING);
        Intrinsics.checkNotNullParameter(logger, "logger");
        Intrinsics.checkNotNullParameter(endToEndEventLogger, "endToEndEventLogger");
    }

    public final OnlineAuthType getAuthType() {
        return this.authType;
    }

    public final void setAuthType(OnlineAuthType onlineAuthType) {
        this.authType = onlineAuthType;
    }

    public final void openLog(OnlineAuthType authType) {
        Intrinsics.checkNotNullParameter(authType, "authType");
        this.authType = authType;
        StageEventLogHelper.openLogHelper$default(this, null, new Function2<StageScope.Builder, Timer, Unit>() { // from class: com.stripe.paymentcollection.metrics.OnlineAuthLogger.openLog.1
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(StageScope.Builder builder, Timer timer) {
                invoke2(builder, timer);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(StageScope.Builder openLogHelper, Timer event) {
                Intrinsics.checkNotNullParameter(openLogHelper, "$this$openLogHelper");
                Intrinsics.checkNotNullParameter(event, "event");
                openLogHelper.online_auth = event;
            }
        }, 1, null);
    }

    public final void closeLog(final PaymentCollectionData data, final OnlineAuthState authState) {
        Intrinsics.checkNotNullParameter(authState, "authState");
        final OnlineAuthType onlineAuthType = this.authType;
        if (onlineAuthType == null || data == null) {
            return;
        }
        closeLogHelper(data, new Function1<Map<String, String>, Pair<? extends Outcome, ? extends Map<String, String>>>() { // from class: com.stripe.paymentcollection.metrics.OnlineAuthLogger.closeLog.1

            /* JADX INFO: renamed from: com.stripe.paymentcollection.metrics.OnlineAuthLogger$closeLog$1$WhenMappings */
            /* JADX INFO: compiled from: OnlineAuthLogger.kt */
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
                Pair result;
                OnlineAuthFailureReason onlineAuthFailureReason;
                String simpleName;
                Intrinsics.checkNotNullParameter(tagMap, "tagMap");
                if (data.isTimedOut()) {
                    result = new Pair(Result.FAILURE, OnlineAuthFailureReason.TIMEOUT);
                } else if (!data.isCancelled()) {
                    result = this.getResult(authState);
                } else {
                    Result result2 = Result.FAILURE;
                    CancelReason cancelReason = data.getCancelReason();
                    int i = cancelReason == null ? -1 : WhenMappings.$EnumSwitchMapping$0[cancelReason.ordinal()];
                    if (i == -1) {
                        onlineAuthFailureReason = OnlineAuthFailureReason.UNKNOWN;
                    } else if (i == 1) {
                        onlineAuthFailureReason = OnlineAuthFailureReason.MERCHANT_CANCELLED;
                    } else if (i == 2) {
                        onlineAuthFailureReason = OnlineAuthFailureReason.HARDWARE_CANCELLED;
                    } else if (i == 3) {
                        onlineAuthFailureReason = OnlineAuthFailureReason.CUSTOMER_CANCELLED;
                    } else {
                        throw new NoWhenBranchMatchedException();
                    }
                    result = new Pair(result2, onlineAuthFailureReason);
                }
                Result result3 = (Result) result.component1();
                OnlineAuthFailureReason onlineAuthFailureReason2 = (OnlineAuthFailureReason) result.component2();
                OnlineAuthType onlineAuthType2 = onlineAuthType;
                OnlineAuthFailureReason onlineAuthFailureReason3 = onlineAuthFailureReason2;
                String simpleName2 = "MagStripeAllowReason";
                if (onlineAuthFailureReason3 != null) {
                    if (Intrinsics.areEqual(Reflection.getOrCreateKotlinClass(OnlineAuthFailureReason.class), Reflection.getOrCreateKotlinClass(MagStripePaymentCollectionAuthority.class))) {
                        simpleName = "MagStripeAllowReason";
                    } else {
                        simpleName = Reflection.getOrCreateKotlinClass(OnlineAuthFailureReason.class).getSimpleName();
                        Intrinsics.checkNotNull(simpleName);
                    }
                    tagMap.put(simpleName, onlineAuthFailureReason3.name());
                }
                OnlineAuthType onlineAuthType3 = onlineAuthType2;
                if (onlineAuthType3 != null) {
                    if (!Intrinsics.areEqual(Reflection.getOrCreateKotlinClass(OnlineAuthType.class), Reflection.getOrCreateKotlinClass(MagStripePaymentCollectionAuthority.class))) {
                        simpleName2 = Reflection.getOrCreateKotlinClass(OnlineAuthType.class).getSimpleName();
                        Intrinsics.checkNotNull(simpleName2);
                    }
                    tagMap.put(simpleName2, onlineAuthType3.name());
                }
                return new Pair<>(ResultKt.toOutcome(result3), tagMap);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Pair<Result, OnlineAuthFailureReason> getResult(OnlineAuthState authState) {
        if (Intrinsics.areEqual(authState, OnlineAuthState.Cancelled.INSTANCE)) {
            return new Pair<>(Result.FAILURE, OnlineAuthFailureReason.MERCHANT_CANCELLED);
        }
        if (authState instanceof OnlineAuthState.ConfirmationResponseReceived.Failed) {
            return new Pair<>(Result.FAILURE, getMetricReason(((OnlineAuthState.ConfirmationResponseReceived.Failed) authState).getReason()));
        }
        if (authState instanceof OnlineAuthState.SecondGenAcResponseReceived.Failed) {
            return new Pair<>(Result.FAILURE, getMetricReason(((OnlineAuthState.SecondGenAcResponseReceived.Failed) authState).getReason()));
        }
        if (Intrinsics.areEqual(authState, OnlineAuthState.ConfirmationStarted.INSTANCE) ? true : Intrinsics.areEqual(authState, OnlineAuthState.ReadyToStartConfirmation.INSTANCE) ? true : Intrinsics.areEqual(authState, OnlineAuthState.SecondGenAcStarted.INSTANCE)) {
            return new Pair<>(Result.FAILURE, OnlineAuthFailureReason.UNKNOWN);
        }
        if (authState instanceof OnlineAuthState.ConfirmationResponseReceived.NeedSecondGenAc ? true : authState instanceof OnlineAuthState.ConfirmationResponseReceived.Success ? true : authState instanceof OnlineAuthState.SecondGenAcResponseReceived.Success) {
            return new Pair<>(Result.SUCCESS, null);
        }
        throw new NoWhenBranchMatchedException();
    }

    private final OnlineAuthFailureReason getMetricReason(com.stripe.paymentcollection.OnlineAuthFailureReason failureReason) {
        int i = WhenMappings.$EnumSwitchMapping$0[failureReason.ordinal()];
        if (i == 1) {
            return OnlineAuthFailureReason.DECLINED;
        }
        if (i == 2) {
            return OnlineAuthFailureReason.SCA_NEEDED;
        }
        if (i == 3) {
            return OnlineAuthFailureReason.UNKNOWN_NETWORK_FAILURE;
        }
        throw new NoWhenBranchMatchedException();
    }
}
