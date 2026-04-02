package com.stripe.stripeterminal.internal.common.dagger;

import com.stripe.jvmcore.logging.HealthLogger;
import com.stripe.jvmcore.logging.HealthLoggerBuilder;
import com.stripe.proto.terminal.clientlogger.pub.message.health.HealthMetric;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.passthrough.DiscreteScope;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.passthrough.PassthroughDomain;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.passthrough.StageScope;
import dagger.Module;
import dagger.Provides;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PassthroughHealthLoggerModule.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J,\u0010\u0003\u001a\u001e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0004j\u0002`\t2\u0006\u0010\n\u001a\u00020\u000bH\u0007J,\u0010\f\u001a\u001e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e0\u0004j\u0002`\u000f2\u0006\u0010\n\u001a\u00020\u000bH\u0007¨\u0006\u0010"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/dagger/PassthroughHealthLoggerModule;", "", "()V", "providePassthroughHealthDiscreteLogger", "Lcom/stripe/jvmcore/logging/HealthLogger;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/DiscreteScope;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/DiscreteScope$Builder;", "Lcom/stripe/stripeterminal/internal/common/log/PassthroughHealthDiscreteLogger;", "healthLoggerBuilder", "Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;", "providePassthroughHealthStageLogger", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/StageScope;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/StageScope$Builder;", "Lcom/stripe/stripeterminal/internal/common/log/PassthroughHealthStageLogger;", "common_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module
public final class PassthroughHealthLoggerModule {
    public static final PassthroughHealthLoggerModule INSTANCE = new PassthroughHealthLoggerModule();

    private PassthroughHealthLoggerModule() {
    }

    @Provides
    public final HealthLogger<PassthroughDomain, PassthroughDomain.Builder, DiscreteScope, DiscreteScope.Builder> providePassthroughHealthDiscreteLogger(HealthLoggerBuilder healthLoggerBuilder) {
        Intrinsics.checkNotNullParameter(healthLoggerBuilder, "healthLoggerBuilder");
        return new HealthLoggerBuilder.DomainedBuilder.ScopedBuilder(new HealthLoggerBuilder.DomainedBuilder(healthLoggerBuilder, PassthroughDomain.class, PassthroughDomain.Builder.class, new Function2<HealthMetric.Builder, PassthroughDomain, Unit>() { // from class: com.stripe.stripeterminal.internal.common.dagger.PassthroughHealthLoggerModule.providePassthroughHealthDiscreteLogger.1
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(HealthMetric.Builder builder, PassthroughDomain passthroughDomain) {
                invoke2(builder, passthroughDomain);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(HealthMetric.Builder withDomain, PassthroughDomain it) {
                Intrinsics.checkNotNullParameter(withDomain, "$this$withDomain");
                Intrinsics.checkNotNullParameter(it, "it");
                withDomain.passthrough = it;
            }
        }), DiscreteScope.class, DiscreteScope.Builder.class, new Function2<PassthroughDomain.Builder, DiscreteScope, Unit>() { // from class: com.stripe.stripeterminal.internal.common.dagger.PassthroughHealthLoggerModule.providePassthroughHealthDiscreteLogger.2
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(PassthroughDomain.Builder builder, DiscreteScope discreteScope) {
                invoke2(builder, discreteScope);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(PassthroughDomain.Builder withScope, DiscreteScope it) {
                Intrinsics.checkNotNullParameter(withScope, "$this$withScope");
                Intrinsics.checkNotNullParameter(it, "it");
                withScope.discrete = it;
            }
        }).build();
    }

    @Provides
    public final HealthLogger<PassthroughDomain, PassthroughDomain.Builder, StageScope, StageScope.Builder> providePassthroughHealthStageLogger(HealthLoggerBuilder healthLoggerBuilder) {
        Intrinsics.checkNotNullParameter(healthLoggerBuilder, "healthLoggerBuilder");
        return new HealthLoggerBuilder.DomainedBuilder.ScopedBuilder(new HealthLoggerBuilder.DomainedBuilder(healthLoggerBuilder, PassthroughDomain.class, PassthroughDomain.Builder.class, new Function2<HealthMetric.Builder, PassthroughDomain, Unit>() { // from class: com.stripe.stripeterminal.internal.common.dagger.PassthroughHealthLoggerModule.providePassthroughHealthStageLogger.1
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(HealthMetric.Builder builder, PassthroughDomain passthroughDomain) {
                invoke2(builder, passthroughDomain);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(HealthMetric.Builder withDomain, PassthroughDomain it) {
                Intrinsics.checkNotNullParameter(withDomain, "$this$withDomain");
                Intrinsics.checkNotNullParameter(it, "it");
                withDomain.passthrough = it;
            }
        }), StageScope.class, StageScope.Builder.class, new Function2<PassthroughDomain.Builder, StageScope, Unit>() { // from class: com.stripe.stripeterminal.internal.common.dagger.PassthroughHealthLoggerModule.providePassthroughHealthStageLogger.2
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(PassthroughDomain.Builder builder, StageScope stageScope) {
                invoke2(builder, stageScope);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(PassthroughDomain.Builder withScope, StageScope it) {
                Intrinsics.checkNotNullParameter(withScope, "$this$withScope");
                Intrinsics.checkNotNullParameter(it, "it");
                withScope.stage = it;
            }
        }).build();
    }
}
