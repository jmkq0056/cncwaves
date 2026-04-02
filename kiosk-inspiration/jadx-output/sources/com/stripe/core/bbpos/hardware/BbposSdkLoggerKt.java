package com.stripe.core.bbpos.hardware;

import com.stripe.jvmcore.logging.HealthLogger;
import com.stripe.jvmcore.logging.HealthLoggerBuilder;
import com.stripe.proto.terminal.clientlogger.pub.message.health.HealthMetric;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.bbpos.BbposDomain;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.bbpos.BbposSdkScope;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: BbposSdkLogger.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000$\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a,\u0010\u0000\u001a\u001e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0001j\u0002`\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0000*<\b\u0000\u0010\t\"\u001a\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u00012\u001a\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0001¨\u0006\n"}, d2 = {"buildsBbposSdkEventLogger", "Lcom/stripe/jvmcore/logging/HealthLogger;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposDomain;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposDomain$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposSdkScope;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposSdkScope$Builder;", "Lcom/stripe/core/bbpos/hardware/BbposSdkEventLogger;", "healthLoggerBuilder", "Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;", "BbposSdkEventLogger", "hardware_release"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class BbposSdkLoggerKt {
    public static final HealthLogger<BbposDomain, BbposDomain.Builder, BbposSdkScope, BbposSdkScope.Builder> buildsBbposSdkEventLogger(HealthLoggerBuilder healthLoggerBuilder) {
        Intrinsics.checkNotNullParameter(healthLoggerBuilder, "healthLoggerBuilder");
        return new HealthLoggerBuilder.DomainedBuilder.ScopedBuilder(new HealthLoggerBuilder.DomainedBuilder(healthLoggerBuilder, BbposDomain.class, BbposDomain.Builder.class, new Function2<HealthMetric.Builder, BbposDomain, Unit>() { // from class: com.stripe.core.bbpos.hardware.BbposSdkLoggerKt.buildsBbposSdkEventLogger.1
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(HealthMetric.Builder builder, BbposDomain bbposDomain) {
                invoke2(builder, bbposDomain);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(HealthMetric.Builder withDomain, BbposDomain domain) {
                Intrinsics.checkNotNullParameter(withDomain, "$this$withDomain");
                Intrinsics.checkNotNullParameter(domain, "domain");
                withDomain.bbpos = domain;
            }
        }), BbposSdkScope.class, BbposSdkScope.Builder.class, new Function2<BbposDomain.Builder, BbposSdkScope, Unit>() { // from class: com.stripe.core.bbpos.hardware.BbposSdkLoggerKt.buildsBbposSdkEventLogger.2
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(BbposDomain.Builder builder, BbposSdkScope bbposSdkScope) {
                invoke2(builder, bbposSdkScope);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(BbposDomain.Builder withScope, BbposSdkScope scope) {
                Intrinsics.checkNotNullParameter(withScope, "$this$withScope");
                Intrinsics.checkNotNullParameter(scope, "scope");
                withScope.bbpos_sdk_scope = scope;
            }
        }).build();
    }
}
