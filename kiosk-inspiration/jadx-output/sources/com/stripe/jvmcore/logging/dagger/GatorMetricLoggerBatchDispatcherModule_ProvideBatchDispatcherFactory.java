package com.stripe.jvmcore.logging.dagger;

import com.stripe.jvmcore.batchdispatcher.BatchDispatcher;
import com.stripe.jvmcore.batchdispatcher.Collector;
import com.stripe.jvmcore.batchdispatcher.Dispatcher;
import com.stripe.jvmcore.batchdispatcher.Scheduler;
import com.stripe.logwriter.LogWriter;
import com.stripe.proto.api.gator.ProxyEventPb;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class GatorMetricLoggerBatchDispatcherModule_ProvideBatchDispatcherFactory implements Factory<BatchDispatcher<ProxyEventPb>> {
    private final Provider<Collector<ProxyEventPb>> collectorProvider;
    private final Provider<Dispatcher<ProxyEventPb>> dispatcherProvider;
    private final Provider<LogWriter> logWriterProvider;
    private final GatorMetricLoggerBatchDispatcherModule module;
    private final Provider<Scheduler> schedulerProvider;

    public GatorMetricLoggerBatchDispatcherModule_ProvideBatchDispatcherFactory(GatorMetricLoggerBatchDispatcherModule gatorMetricLoggerBatchDispatcherModule, Provider<Collector<ProxyEventPb>> provider, Provider<Dispatcher<ProxyEventPb>> provider2, Provider<Scheduler> provider3, Provider<LogWriter> provider4) {
        this.module = gatorMetricLoggerBatchDispatcherModule;
        this.collectorProvider = provider;
        this.dispatcherProvider = provider2;
        this.schedulerProvider = provider3;
        this.logWriterProvider = provider4;
    }

    @Override // javax.inject.Provider
    public BatchDispatcher<ProxyEventPb> get() {
        return provideBatchDispatcher(this.module, this.collectorProvider.get(), this.dispatcherProvider.get(), this.schedulerProvider.get(), this.logWriterProvider.get());
    }

    public static GatorMetricLoggerBatchDispatcherModule_ProvideBatchDispatcherFactory create(GatorMetricLoggerBatchDispatcherModule gatorMetricLoggerBatchDispatcherModule, Provider<Collector<ProxyEventPb>> provider, Provider<Dispatcher<ProxyEventPb>> provider2, Provider<Scheduler> provider3, Provider<LogWriter> provider4) {
        return new GatorMetricLoggerBatchDispatcherModule_ProvideBatchDispatcherFactory(gatorMetricLoggerBatchDispatcherModule, provider, provider2, provider3, provider4);
    }

    public static BatchDispatcher<ProxyEventPb> provideBatchDispatcher(GatorMetricLoggerBatchDispatcherModule gatorMetricLoggerBatchDispatcherModule, Collector<ProxyEventPb> collector, Dispatcher<ProxyEventPb> dispatcher, Scheduler scheduler, LogWriter logWriter) {
        return (BatchDispatcher) Preconditions.checkNotNullFromProvides(gatorMetricLoggerBatchDispatcherModule.provideBatchDispatcher(collector, dispatcher, scheduler, logWriter));
    }
}
