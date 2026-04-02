package com.stripe.jvmcore.logging;

import androidx.core.app.NotificationCompat;
import com.squareup.wire.Message;
import com.stripe.jvmcore.dagger.Debug;
import com.stripe.loggingmodels.MetricLogger;
import com.stripe.logwriter.LogWriter;
import com.stripe.proto.terminal.clientlogger.pub.message.health.HealthMetric;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.SequencesKt;

/* JADX INFO: compiled from: HealthLogger.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001:\u0001\u0017B+\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJw\u0010\u000b\u001a\u0012\u0012\u0004\u0012\u0002H\r\u0012\u0004\u0012\u0002H\u000e0\fR\u00020\u0000\"\u0016\b\u0000\u0010\r\u0018\u0001*\u000e\u0012\u0004\u0012\u0002H\r\u0012\u0004\u0012\u0002H\u000e0\u000f\"\u0016\b\u0001\u0010\u000e\u0018\u0001*\u000e\u0012\u0004\u0012\u0002H\r\u0012\u0004\u0012\u0002H\u000e0\u00102)\b\b\u0010\u0011\u001a#\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u0002H\r\u0012\u0004\u0012\u00020\u00140\u0012j\b\u0012\u0004\u0012\u0002H\r`\u0015¢\u0006\u0002\b\u0016H\u0086\bø\u0001\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u0018"}, d2 = {"Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;", "", "metricLogger", "Lcom/stripe/loggingmodels/MetricLogger;", "isDebug", "", "listeners", "Lcom/stripe/jvmcore/logging/HealthMetricListenersProvider;", "logWriter", "Lcom/stripe/logwriter/LogWriter;", "(Lcom/stripe/loggingmodels/MetricLogger;ZLcom/stripe/jvmcore/logging/HealthMetricListenersProvider;Lcom/stripe/logwriter/LogWriter;)V", "withDomain", "Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder;", "D", "DB", "Lcom/squareup/wire/Message;", "Lcom/squareup/wire/Message$Builder;", "domainSetter", "Lkotlin/Function2;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;", "", "Lcom/stripe/jvmcore/logging/DomainSetter;", "Lkotlin/ExtensionFunctionType;", "DomainedBuilder", "logging"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class HealthLoggerBuilder {
    private final boolean isDebug;
    private final HealthMetricListenersProvider listeners;
    private final LogWriter logWriter;
    private final MetricLogger metricLogger;

    @Inject
    public HealthLoggerBuilder(MetricLogger metricLogger, @Debug boolean z, HealthMetricListenersProvider listeners, LogWriter logWriter) {
        Intrinsics.checkNotNullParameter(metricLogger, "metricLogger");
        Intrinsics.checkNotNullParameter(listeners, "listeners");
        Intrinsics.checkNotNullParameter(logWriter, "logWriter");
        this.metricLogger = metricLogger;
        this.isDebug = z;
        this.listeners = listeners;
        this.logWriter = logWriter;
    }

    public /* synthetic */ HealthLoggerBuilder(MetricLogger metricLogger, boolean z, HealthMetricListenersProvider healthMetricListenersProvider, LogWriter logWriter, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(metricLogger, z, (i & 4) != 0 ? new HealthMetricListenersProvider() { // from class: com.stripe.jvmcore.logging.HealthLoggerBuilder$$ExternalSyntheticLambda0
            @Override // com.stripe.jvmcore.logging.HealthMetricListenersProvider
            public final List getHealthMetricListeners() {
                return CollectionsKt.emptyList();
            }
        } : healthMetricListenersProvider, logWriter);
    }

    public final /* synthetic */ <D extends Message<D, DB>, DB extends Message.Builder<D, DB>> DomainedBuilder<D, DB> withDomain(Function2<? super HealthMetric.Builder, ? super D, Unit> domainSetter) {
        Intrinsics.checkNotNullParameter(domainSetter, "domainSetter");
        Intrinsics.reifiedOperationMarker(4, "D");
        Intrinsics.reifiedOperationMarker(4, "DB");
        return new DomainedBuilder<>(this, Message.class, Message.Builder.class, domainSetter);
    }

    /* JADX INFO: compiled from: HealthLogger.kt */
    @Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0004\u0018\u0000*\u0014\b\u0000\u0010\u0001*\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00030\u0002*\u0014\b\u0001\u0010\u0003*\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00030\u00042\u00020\u0005:\u0001\u0017BJ\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00010\u0007\u0012'\u0010\t\u001a#\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\f0\nj\b\u0012\u0004\u0012\u00028\u0000`\r¢\u0006\u0002\b\u000e¢\u0006\u0002\u0010\u000fJ\u008d\u0001\u0010\u0010\u001a\"\u0012\u0004\u0012\u0002H\u0012\u0012\u0004\u0012\u0002H\u00130\u0011R\u0012\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0000R\u00020\u0014\"\u0016\b\u0002\u0010\u0012\u0018\u0001*\u000e\u0012\u0004\u0012\u0002H\u0012\u0012\u0004\u0012\u0002H\u00130\u0002\"\u0016\b\u0003\u0010\u0013\u0018\u0001*\u000e\u0012\u0004\u0012\u0002H\u0012\u0012\u0004\u0012\u0002H\u00130\u00042/\b\b\u0010\u0015\u001a)\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u0002H\u0012\u0012\u0004\u0012\u00020\f0\nj\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u0002H\u0012`\u0016¢\u0006\u0002\b\u000eH\u0086\bø\u0001\u0000R\u0014\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00010\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R/\u0010\t\u001a#\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\f0\nj\b\u0012\u0004\u0012\u00028\u0000`\r¢\u0006\u0002\b\u000eX\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u0018"}, d2 = {"Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder;", "D", "Lcom/squareup/wire/Message;", "DB", "Lcom/squareup/wire/Message$Builder;", "", "domainClass", "Ljava/lang/Class;", "domainBuilderClass", "domainSetter", "Lkotlin/Function2;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;", "", "Lcom/stripe/jvmcore/logging/DomainSetter;", "Lkotlin/ExtensionFunctionType;", "(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;Ljava/lang/Class;Ljava/lang/Class;Lkotlin/jvm/functions/Function2;)V", "withScope", "Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder$ScopedBuilder;", "S", "SB", "Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;", "scopeSetter", "Lcom/stripe/jvmcore/logging/ScopeSetter;", "ScopedBuilder", "logging"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public final class DomainedBuilder<D extends Message<D, DB>, DB extends Message.Builder<D, DB>> {
        private final Class<DB> domainBuilderClass;
        private final Class<D> domainClass;
        private final Function2<HealthMetric.Builder, D, Unit> domainSetter;
        final /* synthetic */ HealthLoggerBuilder this$0;

        /* JADX WARN: Multi-variable type inference failed */
        public DomainedBuilder(HealthLoggerBuilder healthLoggerBuilder, Class<D> domainClass, Class<DB> domainBuilderClass, Function2<? super HealthMetric.Builder, ? super D, Unit> domainSetter) {
            Intrinsics.checkNotNullParameter(domainClass, "domainClass");
            Intrinsics.checkNotNullParameter(domainBuilderClass, "domainBuilderClass");
            Intrinsics.checkNotNullParameter(domainSetter, "domainSetter");
            this.this$0 = healthLoggerBuilder;
            this.domainClass = domainClass;
            this.domainBuilderClass = domainBuilderClass;
            this.domainSetter = domainSetter;
        }

        public final /* synthetic */ <S extends Message<S, SB>, SB extends Message.Builder<S, SB>> DomainedBuilder<D, DB>.ScopedBuilder<S, SB> withScope(Function2<? super DB, ? super S, Unit> scopeSetter) {
            Intrinsics.checkNotNullParameter(scopeSetter, "scopeSetter");
            Intrinsics.reifiedOperationMarker(4, "S");
            Intrinsics.reifiedOperationMarker(4, "SB");
            return new ScopedBuilder<>(this, Message.class, Message.Builder.class, scopeSetter);
        }

        /* JADX INFO: compiled from: HealthLogger.kt */
        @Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0004\u0018\u0000*\u0014\b\u0002\u0010\u0001*\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00030\u0002*\u0014\b\u0003\u0010\u0003*\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00030\u00042\u00020\u0005BP\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00020\u0007\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00030\u0007\u0012-\u0010\t\u001a)\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00020\u000b0\nj\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002`\f¢\u0006\u0002\b\r¢\u0006\u0002\u0010\u000eJ\u001e\u0010\u000f\u001a\u001a\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0010J\b\u0010\u0011\u001a\u00020\u000bH\u0002R\u0014\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00030\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R5\u0010\t\u001a)\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00020\u000b0\nj\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002`\f¢\u0006\u0002\b\rX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder$ScopedBuilder;", "S", "Lcom/squareup/wire/Message;", "SB", "Lcom/squareup/wire/Message$Builder;", "", "scopeClass", "Ljava/lang/Class;", "scopeBuilderClass", "scopeSetter", "Lkotlin/Function2;", "", "Lcom/stripe/jvmcore/logging/ScopeSetter;", "Lkotlin/ExtensionFunctionType;", "(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder;Ljava/lang/Class;Ljava/lang/Class;Lkotlin/jvm/functions/Function2;)V", "build", "Lcom/stripe/jvmcore/logging/HealthLogger;", "validate", "logging"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public final class ScopedBuilder<S extends Message<S, SB>, SB extends Message.Builder<S, SB>> {
            private final Class<SB> scopeBuilderClass;
            private final Class<S> scopeClass;
            private final Function2<DB, S, Unit> scopeSetter;
            final /* synthetic */ DomainedBuilder<D, DB> this$0;

            /* JADX WARN: Multi-variable type inference failed */
            public ScopedBuilder(DomainedBuilder domainedBuilder, Class<S> scopeClass, Class<SB> scopeBuilderClass, Function2<? super DB, ? super S, Unit> scopeSetter) {
                Intrinsics.checkNotNullParameter(scopeClass, "scopeClass");
                Intrinsics.checkNotNullParameter(scopeBuilderClass, "scopeBuilderClass");
                Intrinsics.checkNotNullParameter(scopeSetter, "scopeSetter");
                this.this$0 = domainedBuilder;
                this.scopeClass = scopeClass;
                this.scopeBuilderClass = scopeBuilderClass;
                this.scopeSetter = scopeSetter;
            }

            public final HealthLogger<D, DB, S, SB> build() {
                validate();
                return new HealthLogger<>(((DomainedBuilder) this.this$0).domainClass, ((DomainedBuilder) this.this$0).domainBuilderClass, ((DomainedBuilder) this.this$0).domainSetter, this.scopeClass, this.scopeBuilderClass, this.scopeSetter, this.this$0.this$0.metricLogger, this.this$0.this$0.isDebug, this.this$0.this$0.listeners.getHealthMetricListeners(), this.this$0.this$0.logWriter);
            }

            private final void validate() {
                if (!this.this$0.this$0.isDebug || SequencesKt.count(ReflectionUtils.INSTANCE.withOneOf(ReflectionUtils.INSTANCE.properties(HealthMetric.class), "domain")) > 0) {
                    boolean z = !this.this$0.this$0.isDebug || SequencesKt.count(ReflectionUtils.INSTANCE.withOneOf(ReflectionUtils.INSTANCE.properties(((DomainedBuilder) this.this$0).domainClass), "scope")) > 0;
                    DomainedBuilder<D, DB> domainedBuilder = this.this$0;
                    if (z) {
                        if (domainedBuilder.this$0.isDebug && SequencesKt.count(ReflectionUtils.INSTANCE.withOneOf(ReflectionUtils.INSTANCE.properties(this.scopeClass), NotificationCompat.CATEGORY_EVENT)) <= 0) {
                            throw new IllegalArgumentException((this.scopeClass.getSimpleName() + " must have a protobuf oneof named event").toString());
                        }
                        return;
                    }
                    throw new IllegalArgumentException((((DomainedBuilder) domainedBuilder).domainClass.getSimpleName() + " must have a protobuf oneof named scope").toString());
                }
                throw new IllegalArgumentException("HealthMetric must have a protobuf oneof named domain".toString());
            }
        }
    }
}
