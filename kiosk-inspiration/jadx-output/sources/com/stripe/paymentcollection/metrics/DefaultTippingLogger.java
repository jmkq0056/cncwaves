package com.stripe.paymentcollection.metrics;

import com.stripe.core.bbpos.BbposDeviceControllerImpl;
import com.stripe.hardware.magstripe.MagStripePaymentCollectionAuthority;
import com.stripe.jvmcore.logging.HealthLogger;
import com.stripe.jvmcore.logging.HealthLoggerBuilder;
import com.stripe.jvmcore.logging.terminal.log.Log;
import com.stripe.loggingmodels.Outcome;
import com.stripe.paymentcollection.PaymentCollectionData;
import com.stripe.proto.terminal.clientlogger.pub.message.health.HealthMetric;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.tipping.DiscreteScope;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.tipping.StageScope;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.tipping.TippingDomain;
import com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Counter;
import com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Timer;
import com.stripe.restclient.IntegrationType;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: compiled from: DefaultTippingLogger.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0004\u0018\u0000 $2\u00020\u0001:\u0002$%B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J(\u0010\u0012\u001a\u001a\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\b2\u0006\u0010\u0002\u001a\u00020\u0003H\u0002J(\u0010\u0013\u001a\u001a\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00110\b2\u0006\u0010\u0002\u001a\u00020\u0003H\u0002J\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\"\u0010\u0018\u001a\u00020\u00152\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001a2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0016J\u0010\u0010\u001e\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\u0012\u0010\u001f\u001a\u00020\u00152\b\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0016J\u001a\u0010 \u001a\u00020\u00152\b\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\u0006\u0010!\u001a\u00020\"H\u0016J\b\u0010#\u001a\u00020\u0015H\u0016R&\u0010\u0007\u001a\u001a\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R&\u0010\u000f\u001a\u001a\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00110\bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006&"}, d2 = {"Lcom/stripe/paymentcollection/metrics/DefaultTippingLogger;", "Lcom/stripe/paymentcollection/metrics/TippingLogger;", "healthLoggerBuilder", "Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;", "endToEndEventLogger", "Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;", "(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;)V", "tippingDiscreteLogger", "Lcom/stripe/jvmcore/logging/HealthLogger;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/TippingDomain;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/TippingDomain$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/DiscreteScope;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/DiscreteScope$Builder;", "tippingSelectionLogger", "Lcom/stripe/paymentcollection/metrics/DefaultTippingLogger$TippingSelectionStageLogger;", "tippingStageLogger", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/StageScope;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/StageScope$Builder;", "buildTippingDiscreteHealthLogger", "buildTippingStageHealthLogger", "closeTippingSelectionLog", "", "data", "Lcom/stripe/paymentcollection/PaymentCollectionData;", "logCurrencyMismatch", "tippingCurrencies", "", BbposDeviceControllerImpl.CURRENCY_CODE_PARAM_NAME, "integrationType", "Lcom/stripe/restclient/IntegrationType;", "logReselectTipping", "logSkipTipping", "logTipEligible", "eligibleAmount", "", "openTippingSelectionLog", "Companion", "TippingSelectionStageLogger", "impl_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DefaultTippingLogger implements TippingLogger {
    private static final Log LOGGER = Log.INSTANCE.getLogger(TippingLogger.class);
    private final HealthLogger<TippingDomain, TippingDomain.Builder, DiscreteScope, DiscreteScope.Builder> tippingDiscreteLogger;
    private final TippingSelectionStageLogger tippingSelectionLogger;
    private final HealthLogger<TippingDomain, TippingDomain.Builder, StageScope, StageScope.Builder> tippingStageLogger;

    public DefaultTippingLogger(HealthLoggerBuilder healthLoggerBuilder, EndToEndEventLogger endToEndEventLogger) {
        Intrinsics.checkNotNullParameter(healthLoggerBuilder, "healthLoggerBuilder");
        Intrinsics.checkNotNullParameter(endToEndEventLogger, "endToEndEventLogger");
        HealthLogger<TippingDomain, TippingDomain.Builder, StageScope, StageScope.Builder> healthLoggerBuildTippingStageHealthLogger = buildTippingStageHealthLogger(healthLoggerBuilder);
        this.tippingStageLogger = healthLoggerBuildTippingStageHealthLogger;
        this.tippingSelectionLogger = new TippingSelectionStageLogger(healthLoggerBuildTippingStageHealthLogger, endToEndEventLogger, new TippingLoggerMapper());
        this.tippingDiscreteLogger = buildTippingDiscreteHealthLogger(healthLoggerBuilder);
    }

    @Override // com.stripe.paymentcollection.metrics.TippingLogger
    public void openTippingSelectionLog() {
        this.tippingSelectionLogger.openLog();
    }

    @Override // com.stripe.paymentcollection.metrics.TippingLogger
    public void closeTippingSelectionLog(PaymentCollectionData data) {
        Intrinsics.checkNotNullParameter(data, "data");
        this.tippingSelectionLogger.closeLog(data);
    }

    @Override // com.stripe.paymentcollection.metrics.TippingLogger
    public void logReselectTipping(PaymentCollectionData data) throws IllegalAccessException, InstantiationException {
        String simpleName;
        Intrinsics.checkNotNullParameter(data, "data");
        LOGGER.i("logReselectTipping", new Pair[0]);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        IntegrationType integrationType = data.getIntegrationType();
        if (integrationType != null) {
            if (Intrinsics.areEqual(Reflection.getOrCreateKotlinClass(IntegrationType.class), Reflection.getOrCreateKotlinClass(MagStripePaymentCollectionAuthority.class))) {
                simpleName = "MagStripeAllowReason";
            } else {
                simpleName = Reflection.getOrCreateKotlinClass(IntegrationType.class).getSimpleName();
                Intrinsics.checkNotNull(simpleName);
            }
            linkedHashMap.put(simpleName, integrationType.name());
        }
        HealthLogger.incrementCounter$default(this.tippingDiscreteLogger, null, linkedHashMap, null, new Function2<DiscreteScope.Builder, Counter, Unit>() { // from class: com.stripe.paymentcollection.metrics.DefaultTippingLogger.logReselectTipping.1
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(DiscreteScope.Builder builder, Counter counter) {
                invoke2(builder, counter);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(DiscreteScope.Builder incrementCounter, Counter event) {
                Intrinsics.checkNotNullParameter(incrementCounter, "$this$incrementCounter");
                Intrinsics.checkNotNullParameter(event, "event");
                incrementCounter.reselect_tipping = event;
            }
        }, 5, null);
    }

    @Override // com.stripe.paymentcollection.metrics.TippingLogger
    public void logCurrencyMismatch(String tippingCurrencies, String currencyCode, IntegrationType integrationType) throws IllegalAccessException, InstantiationException {
        String simpleName;
        Intrinsics.checkNotNullParameter(tippingCurrencies, "tippingCurrencies");
        Intrinsics.checkNotNullParameter(currencyCode, "currencyCode");
        LOGGER.i("Tipping flow will not start because there are no tipping configs match. the transaction used for the currency. Tipping currencies: " + tippingCurrencies + ". Transaction currency: " + currencyCode, new Pair[0]);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        IntegrationType integrationType2 = integrationType;
        if (integrationType2 != null) {
            if (Intrinsics.areEqual(Reflection.getOrCreateKotlinClass(IntegrationType.class), Reflection.getOrCreateKotlinClass(MagStripePaymentCollectionAuthority.class))) {
                simpleName = "MagStripeAllowReason";
            } else {
                simpleName = Reflection.getOrCreateKotlinClass(IntegrationType.class).getSimpleName();
                Intrinsics.checkNotNull(simpleName);
            }
            linkedHashMap.put(simpleName, integrationType2.name());
        }
        HealthLogger.incrementCounter$default(this.tippingDiscreteLogger, null, linkedHashMap, null, new Function2<DiscreteScope.Builder, Counter, Unit>() { // from class: com.stripe.paymentcollection.metrics.DefaultTippingLogger.logCurrencyMismatch.1
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(DiscreteScope.Builder builder, Counter counter) {
                invoke2(builder, counter);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(DiscreteScope.Builder incrementCounter, Counter event) {
                Intrinsics.checkNotNullParameter(incrementCounter, "$this$incrementCounter");
                Intrinsics.checkNotNullParameter(event, "event");
                incrementCounter.currency_mismatch_tipping_config = event;
            }
        }, 5, null);
    }

    @Override // com.stripe.paymentcollection.metrics.TippingLogger
    public void logSkipTipping(IntegrationType integrationType) throws IllegalAccessException, InstantiationException {
        String simpleName;
        LOGGER.i("Not starting the tipping flow because the skip tipping flag is set to true", new Pair[0]);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        IntegrationType integrationType2 = integrationType;
        if (integrationType2 != null) {
            if (Intrinsics.areEqual(Reflection.getOrCreateKotlinClass(IntegrationType.class), Reflection.getOrCreateKotlinClass(MagStripePaymentCollectionAuthority.class))) {
                simpleName = "MagStripeAllowReason";
            } else {
                simpleName = Reflection.getOrCreateKotlinClass(IntegrationType.class).getSimpleName();
                Intrinsics.checkNotNull(simpleName);
            }
            linkedHashMap.put(simpleName, integrationType2.name());
        }
        HealthLogger.incrementCounter$default(this.tippingDiscreteLogger, null, linkedHashMap, null, new Function2<DiscreteScope.Builder, Counter, Unit>() { // from class: com.stripe.paymentcollection.metrics.DefaultTippingLogger.logSkipTipping.1
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(DiscreteScope.Builder builder, Counter counter) {
                invoke2(builder, counter);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(DiscreteScope.Builder incrementCounter, Counter event) {
                Intrinsics.checkNotNullParameter(incrementCounter, "$this$incrementCounter");
                Intrinsics.checkNotNullParameter(event, "event");
                incrementCounter.skip_tipping = event;
            }
        }, 5, null);
    }

    @Override // com.stripe.paymentcollection.metrics.TippingLogger
    public void logTipEligible(IntegrationType integrationType, long eligibleAmount) throws IllegalAccessException, InstantiationException {
        String simpleName;
        LOGGER.i("logTipEligible", new Pair[0]);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        IntegrationType integrationType2 = integrationType;
        if (integrationType2 != null) {
            if (Intrinsics.areEqual(Reflection.getOrCreateKotlinClass(IntegrationType.class), Reflection.getOrCreateKotlinClass(MagStripePaymentCollectionAuthority.class))) {
                simpleName = "MagStripeAllowReason";
            } else {
                simpleName = Reflection.getOrCreateKotlinClass(IntegrationType.class).getSimpleName();
                Intrinsics.checkNotNull(simpleName);
            }
            linkedHashMap.put(simpleName, integrationType2.name());
        }
        linkedHashMap.put("IsZeroValue", String.valueOf(eligibleAmount == 0));
        HealthLogger.incrementCounter$default(this.tippingDiscreteLogger, null, linkedHashMap, null, new Function2<DiscreteScope.Builder, Counter, Unit>() { // from class: com.stripe.paymentcollection.metrics.DefaultTippingLogger.logTipEligible.1
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(DiscreteScope.Builder builder, Counter counter) {
                invoke2(builder, counter);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(DiscreteScope.Builder incrementCounter, Counter event) {
                Intrinsics.checkNotNullParameter(incrementCounter, "$this$incrementCounter");
                Intrinsics.checkNotNullParameter(event, "event");
                incrementCounter.tip_eligible = event;
            }
        }, 5, null);
    }

    /* JADX INFO: compiled from: DefaultTippingLogger.kt */
    @Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u00002\u001a\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0001B5\u0012\u001e\u0010\u0006\u001a\u001a\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fJ\u000e\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010J\u0006\u0010\u0011\u001a\u00020\u000eR\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lcom/stripe/paymentcollection/metrics/DefaultTippingLogger$TippingSelectionStageLogger;", "Lcom/stripe/paymentcollection/metrics/StageEventLogHelper;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/TippingDomain;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/TippingDomain$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/StageScope;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/StageScope$Builder;", "logger", "Lcom/stripe/jvmcore/logging/HealthLogger;", "endToEndEventLogger", "Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;", "mapper", "Lcom/stripe/paymentcollection/metrics/TippingLoggerMapper;", "(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;Lcom/stripe/paymentcollection/metrics/TippingLoggerMapper;)V", "closeLog", "", "data", "Lcom/stripe/paymentcollection/PaymentCollectionData;", "openLog", "impl_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class TippingSelectionStageLogger extends StageEventLogHelper<TippingDomain, TippingDomain.Builder, StageScope, StageScope.Builder> {
        private final TippingLoggerMapper mapper;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public TippingSelectionStageLogger(HealthLogger<TippingDomain, TippingDomain.Builder, StageScope, StageScope.Builder> logger, EndToEndEventLogger endToEndEventLogger, TippingLoggerMapper mapper) {
            super(logger, "TippingSelection", endToEndEventLogger, LatencyCategory.USER_ACTION);
            Intrinsics.checkNotNullParameter(logger, "logger");
            Intrinsics.checkNotNullParameter(endToEndEventLogger, "endToEndEventLogger");
            Intrinsics.checkNotNullParameter(mapper, "mapper");
            this.mapper = mapper;
        }

        public final void openLog() {
            StageEventLogHelper.openLogHelper$default(this, null, new Function2<StageScope.Builder, Timer, Unit>() { // from class: com.stripe.paymentcollection.metrics.DefaultTippingLogger$TippingSelectionStageLogger$openLog$1
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(StageScope.Builder builder, Timer timer) {
                    invoke2(builder, timer);
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(StageScope.Builder openLogHelper, Timer event) {
                    Intrinsics.checkNotNullParameter(openLogHelper, "$this$openLogHelper");
                    Intrinsics.checkNotNullParameter(event, "event");
                    openLogHelper.tipping_selection = event;
                }
            }, 1, null);
        }

        public final void closeLog(final PaymentCollectionData data) {
            Intrinsics.checkNotNullParameter(data, "data");
            closeLogHelper(data, new Function1<Map<String, String>, Pair<? extends Outcome, ? extends Map<String, String>>>() { // from class: com.stripe.paymentcollection.metrics.DefaultTippingLogger$TippingSelectionStageLogger$closeLog$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final Pair<Outcome, Map<String, String>> invoke(Map<String, String> tagMap) {
                    Intrinsics.checkNotNullParameter(tagMap, "tagMap");
                    Map<String, String> mapGenerateTippingTags = this.this$0.mapper.generateTippingTags(data);
                    Result resultGenerateTippingResult = this.this$0.mapper.generateTippingResult(data);
                    tagMap.putAll(mapGenerateTippingTags);
                    return new Pair<>(ResultKt.toOutcome(resultGenerateTippingResult), tagMap);
                }
            });
        }
    }

    private final HealthLogger<TippingDomain, TippingDomain.Builder, StageScope, StageScope.Builder> buildTippingStageHealthLogger(HealthLoggerBuilder healthLoggerBuilder) {
        return new HealthLoggerBuilder.DomainedBuilder.ScopedBuilder(new HealthLoggerBuilder.DomainedBuilder(healthLoggerBuilder, TippingDomain.class, TippingDomain.Builder.class, new Function2<HealthMetric.Builder, TippingDomain, Unit>() { // from class: com.stripe.paymentcollection.metrics.DefaultTippingLogger.buildTippingStageHealthLogger.1
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(HealthMetric.Builder builder, TippingDomain tippingDomain) {
                invoke2(builder, tippingDomain);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(HealthMetric.Builder withDomain, TippingDomain domain) {
                Intrinsics.checkNotNullParameter(withDomain, "$this$withDomain");
                Intrinsics.checkNotNullParameter(domain, "domain");
                withDomain.tipping = domain;
            }
        }), StageScope.class, StageScope.Builder.class, new Function2<TippingDomain.Builder, StageScope, Unit>() { // from class: com.stripe.paymentcollection.metrics.DefaultTippingLogger.buildTippingStageHealthLogger.2
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(TippingDomain.Builder builder, StageScope stageScope) {
                invoke2(builder, stageScope);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(TippingDomain.Builder withScope, StageScope scope) {
                Intrinsics.checkNotNullParameter(withScope, "$this$withScope");
                Intrinsics.checkNotNullParameter(scope, "scope");
                withScope.stage = scope;
            }
        }).build();
    }

    private final HealthLogger<TippingDomain, TippingDomain.Builder, DiscreteScope, DiscreteScope.Builder> buildTippingDiscreteHealthLogger(HealthLoggerBuilder healthLoggerBuilder) {
        return new HealthLoggerBuilder.DomainedBuilder.ScopedBuilder(new HealthLoggerBuilder.DomainedBuilder(healthLoggerBuilder, TippingDomain.class, TippingDomain.Builder.class, new Function2<HealthMetric.Builder, TippingDomain, Unit>() { // from class: com.stripe.paymentcollection.metrics.DefaultTippingLogger.buildTippingDiscreteHealthLogger.1
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(HealthMetric.Builder builder, TippingDomain tippingDomain) {
                invoke2(builder, tippingDomain);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(HealthMetric.Builder withDomain, TippingDomain domain) {
                Intrinsics.checkNotNullParameter(withDomain, "$this$withDomain");
                Intrinsics.checkNotNullParameter(domain, "domain");
                withDomain.tipping = domain;
            }
        }), DiscreteScope.class, DiscreteScope.Builder.class, new Function2<TippingDomain.Builder, DiscreteScope, Unit>() { // from class: com.stripe.paymentcollection.metrics.DefaultTippingLogger.buildTippingDiscreteHealthLogger.2
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(TippingDomain.Builder builder, DiscreteScope discreteScope) {
                invoke2(builder, discreteScope);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(TippingDomain.Builder withScope, DiscreteScope scope) {
                Intrinsics.checkNotNullParameter(withScope, "$this$withScope");
                Intrinsics.checkNotNullParameter(scope, "scope");
                withScope.discrete = scope;
            }
        }).build();
    }
}
