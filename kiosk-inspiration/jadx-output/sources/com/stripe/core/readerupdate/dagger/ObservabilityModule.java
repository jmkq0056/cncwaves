package com.stripe.core.readerupdate.dagger;

import com.stripe.jvmcore.logging.HealthLogger;
import com.stripe.jvmcore.logging.HealthLoggerBuilder;
import com.stripe.proto.terminal.clientlogger.pub.message.health.HealthMetric;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.updates.EndToEndScope;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.updates.SingleUpdateScope;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.updates.UpdatesDomain;
import dagger.Module;
import dagger.Provides;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ObservabilityModule.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÁ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J,\u0010\u0003\u001a\u001e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0004j\u0002`\t2\u0006\u0010\n\u001a\u00020\u000bH\u0007J,\u0010\f\u001a\u001e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e0\u0004j\u0002`\u000f2\u0006\u0010\n\u001a\u00020\u000bH\u0007¨\u0006\u0010"}, d2 = {"Lcom/stripe/core/readerupdate/dagger/ObservabilityModule;", "", "()V", "provideEndToEndHealthLogger", "Lcom/stripe/jvmcore/logging/HealthLogger;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/EndToEndScope;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/EndToEndScope$Builder;", "Lcom/stripe/core/readerupdate/healthreporter/EndToEndUpdateHealthLogger;", "healthLoggerBuilder", "Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;", "provideSingleUpdateHealthLogger", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/SingleUpdateScope;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/SingleUpdateScope$Builder;", "Lcom/stripe/core/readerupdate/healthreporter/SingleUpdateHealthLogger;", "readerupdate_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module
public final class ObservabilityModule {
    public static final ObservabilityModule INSTANCE = new ObservabilityModule();

    private ObservabilityModule() {
    }

    @Provides
    public final HealthLogger<UpdatesDomain, UpdatesDomain.Builder, EndToEndScope, EndToEndScope.Builder> provideEndToEndHealthLogger(HealthLoggerBuilder healthLoggerBuilder) {
        Intrinsics.checkNotNullParameter(healthLoggerBuilder, "healthLoggerBuilder");
        return new HealthLoggerBuilder.DomainedBuilder.ScopedBuilder(new HealthLoggerBuilder.DomainedBuilder(healthLoggerBuilder, UpdatesDomain.class, UpdatesDomain.Builder.class, new Function2<HealthMetric.Builder, UpdatesDomain, Unit>() { // from class: com.stripe.core.readerupdate.dagger.ObservabilityModule.provideEndToEndHealthLogger.1
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(HealthMetric.Builder builder, UpdatesDomain updatesDomain) {
                invoke2(builder, updatesDomain);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(HealthMetric.Builder withDomain, UpdatesDomain domain) {
                Intrinsics.checkNotNullParameter(withDomain, "$this$withDomain");
                Intrinsics.checkNotNullParameter(domain, "domain");
                withDomain.updates = domain;
            }
        }), EndToEndScope.class, EndToEndScope.Builder.class, new Function2<UpdatesDomain.Builder, EndToEndScope, Unit>() { // from class: com.stripe.core.readerupdate.dagger.ObservabilityModule.provideEndToEndHealthLogger.2
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(UpdatesDomain.Builder builder, EndToEndScope endToEndScope) {
                invoke2(builder, endToEndScope);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(UpdatesDomain.Builder withScope, EndToEndScope scope) {
                Intrinsics.checkNotNullParameter(withScope, "$this$withScope");
                Intrinsics.checkNotNullParameter(scope, "scope");
                withScope.end_to_end = scope;
            }
        }).build();
    }

    @Provides
    public final HealthLogger<UpdatesDomain, UpdatesDomain.Builder, SingleUpdateScope, SingleUpdateScope.Builder> provideSingleUpdateHealthLogger(HealthLoggerBuilder healthLoggerBuilder) {
        Intrinsics.checkNotNullParameter(healthLoggerBuilder, "healthLoggerBuilder");
        return new HealthLoggerBuilder.DomainedBuilder.ScopedBuilder(new HealthLoggerBuilder.DomainedBuilder(healthLoggerBuilder, UpdatesDomain.class, UpdatesDomain.Builder.class, new Function2<HealthMetric.Builder, UpdatesDomain, Unit>() { // from class: com.stripe.core.readerupdate.dagger.ObservabilityModule.provideSingleUpdateHealthLogger.1
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(HealthMetric.Builder builder, UpdatesDomain updatesDomain) {
                invoke2(builder, updatesDomain);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(HealthMetric.Builder withDomain, UpdatesDomain domain) {
                Intrinsics.checkNotNullParameter(withDomain, "$this$withDomain");
                Intrinsics.checkNotNullParameter(domain, "domain");
                withDomain.updates = domain;
            }
        }), SingleUpdateScope.class, SingleUpdateScope.Builder.class, new Function2<UpdatesDomain.Builder, SingleUpdateScope, Unit>() { // from class: com.stripe.core.readerupdate.dagger.ObservabilityModule.provideSingleUpdateHealthLogger.2
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(UpdatesDomain.Builder builder, SingleUpdateScope singleUpdateScope) {
                invoke2(builder, singleUpdateScope);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(UpdatesDomain.Builder withScope, SingleUpdateScope scope) {
                Intrinsics.checkNotNullParameter(withScope, "$this$withScope");
                Intrinsics.checkNotNullParameter(scope, "scope");
                withScope.stage = scope;
            }
        }).build();
    }
}
