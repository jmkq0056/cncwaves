package com.stripe.jvmcore.logging.dagger;

import com.stripe.jvmcore.batchdispatcher.BatchDispatcher;
import com.stripe.jvmcore.batchdispatcher.Collector;
import com.stripe.jvmcore.batchdispatcher.Dispatcher;
import com.stripe.jvmcore.batchdispatcher.Scheduler;
import com.stripe.jvmcore.dagger.ClientLogger;
import com.stripe.jvmcore.dagger.Gator;
import com.stripe.jvmcore.logging.CompositeDispatcher;
import com.stripe.jvmcore.logging.ObservabilityFeatureFlags;
import com.stripe.logwriter.LogWriter;
import com.stripe.proto.api.gator.ProxyEventPb;
import dagger.Module;
import dagger.Provides;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: MetricLoggerModule.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002JT\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00072\u000e\b\u0001\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00050\t2\u000e\b\u0001\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00050\t2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0007¨\u0006\u0011"}, d2 = {"Lcom/stripe/jvmcore/logging/dagger/CompositeMetricLoggerBatchDispatcherModule;", "", "()V", "providesBatchDispatcher", "Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;", "Lcom/stripe/proto/api/gator/ProxyEventPb;", "collector", "Lcom/stripe/jvmcore/batchdispatcher/Collector;", "gator", "Lcom/stripe/jvmcore/batchdispatcher/Dispatcher;", "clientLogger", "scheduler", "Lcom/stripe/jvmcore/batchdispatcher/Scheduler;", "observabilityFeatureFlags", "Lcom/stripe/jvmcore/logging/ObservabilityFeatureFlags;", "logWriter", "Lcom/stripe/logwriter/LogWriter;", "logging"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module
public final class CompositeMetricLoggerBatchDispatcherModule {
    public static final CompositeMetricLoggerBatchDispatcherModule INSTANCE = new CompositeMetricLoggerBatchDispatcherModule();

    private CompositeMetricLoggerBatchDispatcherModule() {
    }

    @Provides
    @Singleton
    public final BatchDispatcher<ProxyEventPb> providesBatchDispatcher(Collector<ProxyEventPb> collector, @Gator Dispatcher<ProxyEventPb> gator, @ClientLogger Dispatcher<ProxyEventPb> clientLogger, Scheduler scheduler, ObservabilityFeatureFlags observabilityFeatureFlags, LogWriter logWriter) {
        Intrinsics.checkNotNullParameter(collector, "collector");
        Intrinsics.checkNotNullParameter(gator, "gator");
        Intrinsics.checkNotNullParameter(clientLogger, "clientLogger");
        Intrinsics.checkNotNullParameter(scheduler, "scheduler");
        Intrinsics.checkNotNullParameter(observabilityFeatureFlags, "observabilityFeatureFlags");
        Intrinsics.checkNotNullParameter(logWriter, "logWriter");
        return new BatchDispatcher<>(collector, new CompositeDispatcher(clientLogger, gator, observabilityFeatureFlags), scheduler, logWriter);
    }
}
