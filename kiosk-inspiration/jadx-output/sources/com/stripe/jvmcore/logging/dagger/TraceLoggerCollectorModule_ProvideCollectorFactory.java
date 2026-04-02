package com.stripe.jvmcore.logging.dagger;

import com.stripe.jvmcore.batchdispatcher.Collector;
import com.stripe.loggingmodels.LoggerExceptionListener;
import com.stripe.logwriter.LogWriter;
import com.stripe.proto.api.gator.ProxySpanPb;
import dagger.Lazy;
import dagger.internal.DoubleCheck;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import java.io.File;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class TraceLoggerCollectorModule_ProvideCollectorFactory implements Factory<Collector<ProxySpanPb>> {
    private final Provider<File> filesDirProvider;
    private final Provider<LogWriter> logWriterProvider;
    private final Provider<LoggerExceptionListener> loggerExceptionListenerProvider;
    private final TraceLoggerCollectorModule module;

    public TraceLoggerCollectorModule_ProvideCollectorFactory(TraceLoggerCollectorModule traceLoggerCollectorModule, Provider<LogWriter> provider, Provider<File> provider2, Provider<LoggerExceptionListener> provider3) {
        this.module = traceLoggerCollectorModule;
        this.logWriterProvider = provider;
        this.filesDirProvider = provider2;
        this.loggerExceptionListenerProvider = provider3;
    }

    @Override // javax.inject.Provider
    public Collector<ProxySpanPb> get() {
        return provideCollector(this.module, this.logWriterProvider.get(), DoubleCheck.lazy(this.filesDirProvider), this.loggerExceptionListenerProvider.get());
    }

    public static TraceLoggerCollectorModule_ProvideCollectorFactory create(TraceLoggerCollectorModule traceLoggerCollectorModule, Provider<LogWriter> provider, Provider<File> provider2, Provider<LoggerExceptionListener> provider3) {
        return new TraceLoggerCollectorModule_ProvideCollectorFactory(traceLoggerCollectorModule, provider, provider2, provider3);
    }

    public static Collector<ProxySpanPb> provideCollector(TraceLoggerCollectorModule traceLoggerCollectorModule, LogWriter logWriter, Lazy<File> lazy, LoggerExceptionListener loggerExceptionListener) {
        return (Collector) Preconditions.checkNotNullFromProvides(traceLoggerCollectorModule.provideCollector(logWriter, lazy, loggerExceptionListener));
    }
}
