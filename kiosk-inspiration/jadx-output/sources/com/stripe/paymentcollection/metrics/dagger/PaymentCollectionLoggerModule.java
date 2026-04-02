package com.stripe.paymentcollection.metrics.dagger;

import com.stripe.jvmcore.logging.HealthLogger;
import com.stripe.jvmcore.logging.HealthLoggerBuilder;
import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import com.stripe.paymentcollection.manualentry.ManualEntryLoggerInterface;
import com.stripe.paymentcollection.metrics.DefaultDiscreteEventLogger;
import com.stripe.paymentcollection.metrics.DefaultEndToEndEventLogger;
import com.stripe.paymentcollection.metrics.DefaultOnlineAuthStateLogger;
import com.stripe.paymentcollection.metrics.DefaultStageEventLogger;
import com.stripe.paymentcollection.metrics.DefaultTippingLogger;
import com.stripe.paymentcollection.metrics.DiscreteEventLogger;
import com.stripe.paymentcollection.metrics.EndToEndEventLogger;
import com.stripe.paymentcollection.metrics.EventLoggers;
import com.stripe.paymentcollection.metrics.ManualEntryLogger;
import com.stripe.paymentcollection.metrics.OnlineAuthStateLogger;
import com.stripe.paymentcollection.metrics.StageEventLogger;
import com.stripe.paymentcollection.metrics.TippingLogger;
import com.stripe.proto.terminal.clientlogger.pub.message.health.HealthMetric;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.tipping.DiscreteScope;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.tipping.StageScope;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.tipping.TippingDomain;
import com.stripe.time.Clock;
import dagger.Module;
import dagger.Provides;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PaymentCollectionLoggerModule.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000x\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÁ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0007J\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\fH\u0007J0\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0007J\u0015\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0001¢\u0006\u0002\b\u001bJ\u0018\u0010\u001c\u001a\u00020\u001a2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\nH\u0007J\u0010\u0010\u001d\u001a\u00020\u00142\u0006\u0010\u0010\u001a\u00020\u0011H\u0007J\u0018\u0010\u001e\u001a\u00020\u00112\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\nH\u0007J-\u0010\u001f\u001a\u001a\u0012\u0004\u0012\u00020!\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020#\u0012\u0004\u0012\u00020$0 2\u0006\u0010\u0005\u001a\u00020\u0006H\u0001¢\u0006\u0002\b%J\u0018\u0010&\u001a\u00020\u00162\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\nH\u0007J-\u0010'\u001a\u001a\u0012\u0004\u0012\u00020!\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020(\u0012\u0004\u0012\u00020)0 2\u0006\u0010\u0005\u001a\u00020\u0006H\u0001¢\u0006\u0002\b*¨\u0006+"}, d2 = {"Lcom/stripe/paymentcollection/metrics/dagger/PaymentCollectionLoggerModule;", "", "()V", "providesDiscreteEventLogger", "Lcom/stripe/paymentcollection/metrics/DiscreteEventLogger;", "healthLoggerBuilder", "Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;", "loggerFactory", "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;", "providesEndToEndEventLogger", "Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;", "clock", "Lcom/stripe/time/Clock;", "providesEventLoggers", "Lcom/stripe/paymentcollection/metrics/EventLoggers;", "endToEndEventLogger", "stageEventLogger", "Lcom/stripe/paymentcollection/metrics/StageEventLogger;", "discreteEventLogger", "onlineAuthStateLogger", "Lcom/stripe/paymentcollection/metrics/OnlineAuthStateLogger;", "tippingLogger", "Lcom/stripe/paymentcollection/metrics/TippingLogger;", "providesManualEntryEventLogger", "Lcom/stripe/paymentcollection/manualentry/ManualEntryLoggerInterface;", "manualEntryLogger", "Lcom/stripe/paymentcollection/metrics/ManualEntryLogger;", "providesManualEntryEventLogger$wiring", "providesManualEntryLogger", "providesOnlineAuthStateLogger", "providesStageEventLogger", "providesTippingDiscreteLogger", "Lcom/stripe/jvmcore/logging/HealthLogger;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/TippingDomain;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/TippingDomain$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/DiscreteScope;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/DiscreteScope$Builder;", "providesTippingDiscreteLogger$wiring", "providesTippingLogger", "providesTippingStageLogger", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/StageScope;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/StageScope$Builder;", "providesTippingStageLogger$wiring", "wiring"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module
public final class PaymentCollectionLoggerModule {
    public static final PaymentCollectionLoggerModule INSTANCE = new PaymentCollectionLoggerModule();

    private PaymentCollectionLoggerModule() {
    }

    @Provides
    public final ManualEntryLoggerInterface providesManualEntryEventLogger$wiring(ManualEntryLogger manualEntryLogger) {
        Intrinsics.checkNotNullParameter(manualEntryLogger, "manualEntryLogger");
        return manualEntryLogger;
    }

    @Provides
    public final HealthLogger<TippingDomain, TippingDomain.Builder, DiscreteScope, DiscreteScope.Builder> providesTippingDiscreteLogger$wiring(HealthLoggerBuilder healthLoggerBuilder) {
        Intrinsics.checkNotNullParameter(healthLoggerBuilder, "healthLoggerBuilder");
        return new HealthLoggerBuilder.DomainedBuilder.ScopedBuilder(new HealthLoggerBuilder.DomainedBuilder(healthLoggerBuilder, TippingDomain.class, TippingDomain.Builder.class, new Function2<HealthMetric.Builder, TippingDomain, Unit>() { // from class: com.stripe.paymentcollection.metrics.dagger.PaymentCollectionLoggerModule$providesTippingDiscreteLogger$1
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
        }), DiscreteScope.class, DiscreteScope.Builder.class, new Function2<TippingDomain.Builder, DiscreteScope, Unit>() { // from class: com.stripe.paymentcollection.metrics.dagger.PaymentCollectionLoggerModule$providesTippingDiscreteLogger$2
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

    @Provides
    public final HealthLogger<TippingDomain, TippingDomain.Builder, StageScope, StageScope.Builder> providesTippingStageLogger$wiring(HealthLoggerBuilder healthLoggerBuilder) {
        Intrinsics.checkNotNullParameter(healthLoggerBuilder, "healthLoggerBuilder");
        return new HealthLoggerBuilder.DomainedBuilder.ScopedBuilder(new HealthLoggerBuilder.DomainedBuilder(healthLoggerBuilder, TippingDomain.class, TippingDomain.Builder.class, new Function2<HealthMetric.Builder, TippingDomain, Unit>() { // from class: com.stripe.paymentcollection.metrics.dagger.PaymentCollectionLoggerModule$providesTippingStageLogger$1
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
        }), StageScope.class, StageScope.Builder.class, new Function2<TippingDomain.Builder, StageScope, Unit>() { // from class: com.stripe.paymentcollection.metrics.dagger.PaymentCollectionLoggerModule$providesTippingStageLogger$2
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

    @Provides
    @Singleton
    public final EndToEndEventLogger providesEndToEndEventLogger(HealthLoggerBuilder healthLoggerBuilder, Clock clock) {
        Intrinsics.checkNotNullParameter(healthLoggerBuilder, "healthLoggerBuilder");
        Intrinsics.checkNotNullParameter(clock, "clock");
        return new DefaultEndToEndEventLogger(healthLoggerBuilder, clock);
    }

    @Provides
    @Singleton
    public final StageEventLogger providesStageEventLogger(HealthLoggerBuilder healthLoggerBuilder, EndToEndEventLogger endToEndEventLogger) {
        Intrinsics.checkNotNullParameter(healthLoggerBuilder, "healthLoggerBuilder");
        Intrinsics.checkNotNullParameter(endToEndEventLogger, "endToEndEventLogger");
        return new DefaultStageEventLogger(healthLoggerBuilder, endToEndEventLogger);
    }

    @Provides
    @Singleton
    public final DiscreteEventLogger providesDiscreteEventLogger(HealthLoggerBuilder healthLoggerBuilder, LoggerFactory loggerFactory) {
        Intrinsics.checkNotNullParameter(healthLoggerBuilder, "healthLoggerBuilder");
        Intrinsics.checkNotNullParameter(loggerFactory, "loggerFactory");
        return new DefaultDiscreteEventLogger(healthLoggerBuilder, loggerFactory);
    }

    @Provides
    @Singleton
    public final OnlineAuthStateLogger providesOnlineAuthStateLogger(StageEventLogger stageEventLogger) {
        Intrinsics.checkNotNullParameter(stageEventLogger, "stageEventLogger");
        return new DefaultOnlineAuthStateLogger(stageEventLogger);
    }

    @Provides
    @Singleton
    public final TippingLogger providesTippingLogger(HealthLoggerBuilder healthLoggerBuilder, EndToEndEventLogger endToEndEventLogger) {
        Intrinsics.checkNotNullParameter(healthLoggerBuilder, "healthLoggerBuilder");
        Intrinsics.checkNotNullParameter(endToEndEventLogger, "endToEndEventLogger");
        return new DefaultTippingLogger(healthLoggerBuilder, endToEndEventLogger);
    }

    @Provides
    @Singleton
    public final EventLoggers providesEventLoggers(EndToEndEventLogger endToEndEventLogger, StageEventLogger stageEventLogger, DiscreteEventLogger discreteEventLogger, OnlineAuthStateLogger onlineAuthStateLogger, TippingLogger tippingLogger) {
        Intrinsics.checkNotNullParameter(endToEndEventLogger, "endToEndEventLogger");
        Intrinsics.checkNotNullParameter(stageEventLogger, "stageEventLogger");
        Intrinsics.checkNotNullParameter(discreteEventLogger, "discreteEventLogger");
        Intrinsics.checkNotNullParameter(onlineAuthStateLogger, "onlineAuthStateLogger");
        Intrinsics.checkNotNullParameter(tippingLogger, "tippingLogger");
        return new EventLoggers(endToEndEventLogger, stageEventLogger, discreteEventLogger, onlineAuthStateLogger, tippingLogger);
    }

    @Provides
    public final ManualEntryLogger providesManualEntryLogger(HealthLoggerBuilder healthLoggerBuilder, EndToEndEventLogger endToEndEventLogger) {
        Intrinsics.checkNotNullParameter(healthLoggerBuilder, "healthLoggerBuilder");
        Intrinsics.checkNotNullParameter(endToEndEventLogger, "endToEndEventLogger");
        return new ManualEntryLogger(healthLoggerBuilder, endToEndEventLogger);
    }
}
