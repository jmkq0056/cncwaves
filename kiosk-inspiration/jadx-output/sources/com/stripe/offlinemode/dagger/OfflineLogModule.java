package com.stripe.offlinemode.dagger;

import com.google.gson.Gson;
import com.stripe.jvmcore.logging.HealthLogger;
import com.stripe.jvmcore.logging.HealthLoggerBuilder;
import com.stripe.jvmcore.logging.terminal.contracts.LogRepository;
import com.stripe.jvmcore.logging.terminal.log.DefaultLogRepository;
import com.stripe.jvmcore.logging.terminal.log.DefaultLogger;
import com.stripe.loggingmodels.TraceLogger;
import com.stripe.logwriter.LogWriter;
import com.stripe.offlinemode.log.DefaultOfflineForwardingTraceLogger;
import com.stripe.offlinemode.log.DefaultOfflineTraceManager;
import com.stripe.offlinemode.log.OfflineForwardingLogOperation;
import com.stripe.offlinemode.log.OfflineForwardingLogOperationCollector;
import com.stripe.offlinemode.log.OfflineForwardingLogOperationFactory;
import com.stripe.offlinemode.log.OfflineForwardingTraceLogger;
import com.stripe.offlinemode.log.OfflineForwardingTraceManager;
import com.stripe.offlinemode.log.OfflineTraceHelper;
import com.stripe.proto.terminal.clientlogger.pub.message.health.HealthMetric;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.offline.DiscreteScope;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.offline.EndToEndScope;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.offline.OfflineDomain;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.offline.StageScope;
import com.stripe.time.Clock;
import dagger.Binds;
import dagger.Module;
import dagger.Provides;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.random.Random;

/* JADX INFO: compiled from: OfflineLogModule.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u008c\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\u00020\u0001:\u0001+B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J,\u0010\u0003\u001a\u001e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0004j\u0002`\t2\u0006\u0010\n\u001a\u00020\u000bH\u0007J,\u0010\f\u001a\u001e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e0\u0004j\u0002`\u000f2\u0006\u0010\n\u001a\u00020\u000bH\u0007J\u000e\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00120\u0011H\u0007J,\u0010\u0013\u001a\u001e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00150\u0004j\u0002`\u00162\u0006\u0010\n\u001a\u00020\u000bH\u0007J\b\u0010\u0017\u001a\u00020\u0018H\u0007JF\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\u00182\f\u0010$\u001a\b\u0012\u0004\u0012\u00020\u00120\u00112\u0006\u0010%\u001a\u00020&H\u0007J\u0010\u0010'\u001a\u00020(2\u0006\u0010)\u001a\u00020*H\u0007¨\u0006,"}, d2 = {"Lcom/stripe/offlinemode/dagger/OfflineLogModule;", "", "()V", "provideEndToEndLogger", "Lcom/stripe/jvmcore/logging/HealthLogger;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/EndToEndScope;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/EndToEndScope$Builder;", "Lcom/stripe/offlinemode/log/OfflineEndToEndLogger;", "builder", "Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;", "provideOfflineDiscreteLogger", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;", "Lcom/stripe/offlinemode/log/OfflineDiscreteLogger;", "provideOfflineLogRepository", "Lcom/stripe/jvmcore/logging/terminal/contracts/LogRepository;", "Lcom/stripe/offlinemode/log/OfflineForwardingLogOperation;", "provideOfflineStageLogger", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/StageScope;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/StageScope$Builder;", "Lcom/stripe/offlinemode/log/OfflineStageLogger;", "provideOfflineTraceHelper", "Lcom/stripe/offlinemode/log/OfflineTraceHelper;", "provideOfflineTraceLogger", "Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;", "traceLogger", "Lcom/stripe/loggingmodels/TraceLogger;", "clock", "Lcom/stripe/time/Clock;", "logWriter", "Lcom/stripe/logwriter/LogWriter;", "traceManager", "Lcom/stripe/offlinemode/log/OfflineForwardingTraceManager;", "helper", "repository", "gson", "Lcom/google/gson/Gson;", "provideOfflineTraceManager", "Lcom/stripe/offlinemode/log/DefaultOfflineTraceManager;", "random", "Lkotlin/random/Random;", "Bindings", "offlinemode_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module(includes = {Bindings.class})
public final class OfflineLogModule {
    public static final OfflineLogModule INSTANCE = new OfflineLogModule();

    /* JADX INFO: compiled from: OfflineLogModule.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bg\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H'ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0006À\u0006\u0001"}, d2 = {"Lcom/stripe/offlinemode/dagger/OfflineLogModule$Bindings;", "", "bindOfflineTraceManager", "Lcom/stripe/offlinemode/log/OfflineForwardingTraceManager;", "defaultOfflineTraceManager", "Lcom/stripe/offlinemode/log/DefaultOfflineTraceManager;", "offlinemode_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    @Module
    public interface Bindings {
        @Binds
        OfflineForwardingTraceManager bindOfflineTraceManager(DefaultOfflineTraceManager defaultOfflineTraceManager);
    }

    private OfflineLogModule() {
    }

    @Provides
    @Singleton
    public final HealthLogger<OfflineDomain, OfflineDomain.Builder, EndToEndScope, EndToEndScope.Builder> provideEndToEndLogger(HealthLoggerBuilder builder) {
        Intrinsics.checkNotNullParameter(builder, "builder");
        return new HealthLoggerBuilder.DomainedBuilder.ScopedBuilder(new HealthLoggerBuilder.DomainedBuilder(builder, OfflineDomain.class, OfflineDomain.Builder.class, new Function2<HealthMetric.Builder, OfflineDomain, Unit>() { // from class: com.stripe.offlinemode.dagger.OfflineLogModule.provideEndToEndLogger.1
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(HealthMetric.Builder builder2, OfflineDomain offlineDomain) {
                invoke2(builder2, offlineDomain);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(HealthMetric.Builder withDomain, OfflineDomain it) {
                Intrinsics.checkNotNullParameter(withDomain, "$this$withDomain");
                Intrinsics.checkNotNullParameter(it, "it");
                withDomain.offline = it;
            }
        }), EndToEndScope.class, EndToEndScope.Builder.class, new Function2<OfflineDomain.Builder, EndToEndScope, Unit>() { // from class: com.stripe.offlinemode.dagger.OfflineLogModule.provideEndToEndLogger.2
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(OfflineDomain.Builder builder2, EndToEndScope endToEndScope) {
                invoke2(builder2, endToEndScope);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(OfflineDomain.Builder withScope, EndToEndScope it) {
                Intrinsics.checkNotNullParameter(withScope, "$this$withScope");
                Intrinsics.checkNotNullParameter(it, "it");
                withScope.end_to_end = it;
            }
        }).build();
    }

    @Provides
    @Singleton
    public final HealthLogger<OfflineDomain, OfflineDomain.Builder, StageScope, StageScope.Builder> provideOfflineStageLogger(HealthLoggerBuilder builder) {
        Intrinsics.checkNotNullParameter(builder, "builder");
        return new HealthLoggerBuilder.DomainedBuilder.ScopedBuilder(new HealthLoggerBuilder.DomainedBuilder(builder, OfflineDomain.class, OfflineDomain.Builder.class, new Function2<HealthMetric.Builder, OfflineDomain, Unit>() { // from class: com.stripe.offlinemode.dagger.OfflineLogModule.provideOfflineStageLogger.1
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(HealthMetric.Builder builder2, OfflineDomain offlineDomain) {
                invoke2(builder2, offlineDomain);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(HealthMetric.Builder withDomain, OfflineDomain it) {
                Intrinsics.checkNotNullParameter(withDomain, "$this$withDomain");
                Intrinsics.checkNotNullParameter(it, "it");
                withDomain.offline = it;
            }
        }), StageScope.class, StageScope.Builder.class, new Function2<OfflineDomain.Builder, StageScope, Unit>() { // from class: com.stripe.offlinemode.dagger.OfflineLogModule.provideOfflineStageLogger.2
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(OfflineDomain.Builder builder2, StageScope stageScope) {
                invoke2(builder2, stageScope);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(OfflineDomain.Builder withScope, StageScope it) {
                Intrinsics.checkNotNullParameter(withScope, "$this$withScope");
                Intrinsics.checkNotNullParameter(it, "it");
                withScope.stage = it;
            }
        }).build();
    }

    @Provides
    @Singleton
    public final HealthLogger<OfflineDomain, OfflineDomain.Builder, DiscreteScope, DiscreteScope.Builder> provideOfflineDiscreteLogger(HealthLoggerBuilder builder) {
        Intrinsics.checkNotNullParameter(builder, "builder");
        return new HealthLoggerBuilder.DomainedBuilder.ScopedBuilder(new HealthLoggerBuilder.DomainedBuilder(builder, OfflineDomain.class, OfflineDomain.Builder.class, new Function2<HealthMetric.Builder, OfflineDomain, Unit>() { // from class: com.stripe.offlinemode.dagger.OfflineLogModule.provideOfflineDiscreteLogger.1
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(HealthMetric.Builder builder2, OfflineDomain offlineDomain) {
                invoke2(builder2, offlineDomain);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(HealthMetric.Builder withDomain, OfflineDomain it) {
                Intrinsics.checkNotNullParameter(withDomain, "$this$withDomain");
                Intrinsics.checkNotNullParameter(it, "it");
                withDomain.offline = it;
            }
        }), DiscreteScope.class, DiscreteScope.Builder.class, new Function2<OfflineDomain.Builder, DiscreteScope, Unit>() { // from class: com.stripe.offlinemode.dagger.OfflineLogModule.provideOfflineDiscreteLogger.2
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(OfflineDomain.Builder builder2, DiscreteScope discreteScope) {
                invoke2(builder2, discreteScope);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(OfflineDomain.Builder withScope, DiscreteScope it) {
                Intrinsics.checkNotNullParameter(withScope, "$this$withScope");
                Intrinsics.checkNotNullParameter(it, "it");
                withScope.discrete = it;
            }
        }).build();
    }

    @Provides
    public final DefaultOfflineTraceManager provideOfflineTraceManager(Random random) {
        Intrinsics.checkNotNullParameter(random, "random");
        return new DefaultOfflineTraceManager(random);
    }

    @Provides
    public final OfflineTraceHelper provideOfflineTraceHelper() {
        return new OfflineTraceHelper();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Provides
    public final LogRepository<OfflineForwardingLogOperation> provideOfflineLogRepository() {
        return new DefaultLogRepository(null, 1, 0 == true ? 1 : 0);
    }

    @Provides
    @Singleton
    public final OfflineForwardingTraceLogger provideOfflineTraceLogger(TraceLogger traceLogger, Clock clock, LogWriter logWriter, OfflineForwardingTraceManager traceManager, OfflineTraceHelper helper, LogRepository<OfflineForwardingLogOperation> repository, Gson gson) {
        Intrinsics.checkNotNullParameter(traceLogger, "traceLogger");
        Intrinsics.checkNotNullParameter(clock, "clock");
        Intrinsics.checkNotNullParameter(logWriter, "logWriter");
        Intrinsics.checkNotNullParameter(traceManager, "traceManager");
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(repository, "repository");
        Intrinsics.checkNotNullParameter(gson, "gson");
        Intrinsics.checkNotNullExpressionValue("DefaultOfflineTraceManager", "getSimpleName(...)");
        return new DefaultOfflineForwardingTraceLogger(new DefaultLogger("DefaultOfflineTraceManager", logWriter, repository, clock, new OfflineForwardingLogOperationFactory(traceLogger, traceManager, gson), new OfflineForwardingLogOperationCollector(traceLogger, gson), helper), traceManager);
    }
}
