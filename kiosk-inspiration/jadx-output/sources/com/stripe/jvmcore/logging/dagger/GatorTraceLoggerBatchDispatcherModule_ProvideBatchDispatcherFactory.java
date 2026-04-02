package com.stripe.jvmcore.logging.dagger;

import com.stripe.jvmcore.batchdispatcher.BatchDispatcher;
import com.stripe.jvmcore.batchdispatcher.Collector;
import com.stripe.jvmcore.batchdispatcher.Dispatcher;
import com.stripe.jvmcore.batchdispatcher.Scheduler;
import com.stripe.logwriter.LogWriter;
import com.stripe.proto.api.gator.ProxySpanPb;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class GatorTraceLoggerBatchDispatcherModule_ProvideBatchDispatcherFactory implements Factory<BatchDispatcher<ProxySpanPb>> {
    private final Provider<Collector<ProxySpanPb>> collectorProvider;
    private final Provider<Dispatcher<ProxySpanPb>> dispatcherProvider;
    private final Provider<LogWriter> logWriterProvider;
    private final GatorTraceLoggerBatchDispatcherModule module;
    private final Provider<Scheduler> schedulerProvider;

    public GatorTraceLoggerBatchDispatcherModule_ProvideBatchDispatcherFactory(GatorTraceLoggerBatchDispatcherModule gatorTraceLoggerBatchDispatcherModule, Provider<Collector<ProxySpanPb>> provider, Provider<Dispatcher<ProxySpanPb>> provider2, Provider<Scheduler> provider3, Provider<LogWriter> provider4) {
        this.module = gatorTraceLoggerBatchDispatcherModule;
        this.collectorProvider = provider;
        this.dispatcherProvider = provider2;
        this.schedulerProvider = provider3;
        this.logWriterProvider = provider4;
    }

    @Override // javax.inject.Provider
    public BatchDispatcher<ProxySpanPb> get() {
        return provideBatchDispatcher(this.module, this.collectorProvider.get(), this.dispatcherProvider.get(), this.schedulerProvider.get(), this.logWriterProvider.get());
    }

    public static GatorTraceLoggerBatchDispatcherModule_ProvideBatchDispatcherFactory create(GatorTraceLoggerBatchDispatcherModule gatorTraceLoggerBatchDispatcherModule, Provider<Collector<ProxySpanPb>> provider, Provider<Dispatcher<ProxySpanPb>> provider2, Provider<Scheduler> provider3, Provider<LogWriter> provider4) {
        return new GatorTraceLoggerBatchDispatcherModule_ProvideBatchDispatcherFactory(gatorTraceLoggerBatchDispatcherModule, provider, provider2, provider3, provider4);
    }

    public static BatchDispatcher<ProxySpanPb> provideBatchDispatcher(GatorTraceLoggerBatchDispatcherModule gatorTraceLoggerBatchDispatcherModule, Collector<ProxySpanPb> collector, Dispatcher<ProxySpanPb> dispatcher, Scheduler scheduler, LogWriter logWriter) {
        return (BatchDispatcher) Preconditions.checkNotNullFromProvides(gatorTraceLoggerBatchDispatcherModule.provideBatchDispatcher(collector, dispatcher, scheduler, logWriter));
    }
}
