package com.stripe.jvmcore.forms.dagger;

import com.stripe.jvmcore.forms.logger.DefaultFormsIntegrationLogger;
import com.stripe.jvmcore.forms.logger.FormsIntegrationLogger;
import com.stripe.jvmcore.logging.HealthLogger;
import com.stripe.jvmcore.logging.HealthLoggerBuilder;
import com.stripe.proto.terminal.clientlogger.pub.message.health.HealthMetric;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.forms.FormsDomain;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.forms.StageScope;
import dagger.Module;
import dagger.Provides;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: FormsIntegrationLoggerModule.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J,\u0010\u0003\u001a\u00020\u00042\"\u0010\u0005\u001a\u001e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u0006j\u0002`\u000bH\u0007J1\u0010\f\u001a\u001e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u0006j\u0002`\u000b2\u0006\u0010\r\u001a\u00020\u000eH\u0001¢\u0006\u0002\b\u000f¨\u0006\u0010"}, d2 = {"Lcom/stripe/jvmcore/forms/dagger/FormsIntegrationLoggerModule;", "", "()V", "provideFormsIntegrationLogger", "Lcom/stripe/jvmcore/forms/logger/FormsIntegrationLogger;", "stageHealthMetrics", "Lcom/stripe/jvmcore/logging/HealthLogger;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/FormsDomain;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/FormsDomain$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/StageScope;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/StageScope$Builder;", "Lcom/stripe/jvmcore/forms/logger/FormStageHealthMetrics;", "provideFormsStageHealthMetrics", "builder", "Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;", "provideFormsStageHealthMetrics$forms", "forms"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module
public final class FormsIntegrationLoggerModule {
    public static final FormsIntegrationLoggerModule INSTANCE = new FormsIntegrationLoggerModule();

    private FormsIntegrationLoggerModule() {
    }

    @Provides
    @Singleton
    public final HealthLogger<FormsDomain, FormsDomain.Builder, StageScope, StageScope.Builder> provideFormsStageHealthMetrics$forms(HealthLoggerBuilder builder) {
        Intrinsics.checkNotNullParameter(builder, "builder");
        return new HealthLoggerBuilder.DomainedBuilder.ScopedBuilder(new HealthLoggerBuilder.DomainedBuilder(builder, FormsDomain.class, FormsDomain.Builder.class, new Function2<HealthMetric.Builder, FormsDomain, Unit>() { // from class: com.stripe.jvmcore.forms.dagger.FormsIntegrationLoggerModule$provideFormsStageHealthMetrics$1
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(HealthMetric.Builder builder2, FormsDomain formsDomain) {
                invoke2(builder2, formsDomain);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(HealthMetric.Builder withDomain, FormsDomain it) {
                Intrinsics.checkNotNullParameter(withDomain, "$this$withDomain");
                Intrinsics.checkNotNullParameter(it, "it");
                withDomain.forms = it;
            }
        }), StageScope.class, StageScope.Builder.class, new Function2<FormsDomain.Builder, StageScope, Unit>() { // from class: com.stripe.jvmcore.forms.dagger.FormsIntegrationLoggerModule$provideFormsStageHealthMetrics$2
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(FormsDomain.Builder builder2, StageScope stageScope) {
                invoke2(builder2, stageScope);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(FormsDomain.Builder withScope, StageScope it) {
                Intrinsics.checkNotNullParameter(withScope, "$this$withScope");
                Intrinsics.checkNotNullParameter(it, "it");
                withScope.stage = it;
            }
        }).build();
    }

    @Provides
    @Singleton
    public final FormsIntegrationLogger provideFormsIntegrationLogger(HealthLogger<FormsDomain, FormsDomain.Builder, StageScope, StageScope.Builder> stageHealthMetrics) {
        Intrinsics.checkNotNullParameter(stageHealthMetrics, "stageHealthMetrics");
        return new DefaultFormsIntegrationLogger(stageHealthMetrics);
    }
}
