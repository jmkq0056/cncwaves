package com.stripe.jvmcore.logging.dagger;

import com.stripe.jvmcore.batchdispatcher.Collector;
import com.stripe.loggingmodels.LoggerExceptionListener;
import com.stripe.logwriter.LogWriter;
import com.stripe.proto.api.gator.ProxyEventPb;
import dagger.Lazy;
import dagger.internal.DoubleCheck;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import java.io.File;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class MetricLoggerCollectorModule_ProvideCollectorFactory implements Factory<Collector<ProxyEventPb>> {
    private final Provider<File> filesDirProvider;
    private final Provider<LogWriter> logWriterProvider;
    private final Provider<LoggerExceptionListener> loggerExceptionListenerProvider;
    private final MetricLoggerCollectorModule module;

    public MetricLoggerCollectorModule_ProvideCollectorFactory(MetricLoggerCollectorModule metricLoggerCollectorModule, Provider<File> provider, Provider<LogWriter> provider2, Provider<LoggerExceptionListener> provider3) {
        this.module = metricLoggerCollectorModule;
        this.filesDirProvider = provider;
        this.logWriterProvider = provider2;
        this.loggerExceptionListenerProvider = provider3;
    }

    @Override // javax.inject.Provider
    public Collector<ProxyEventPb> get() {
        return provideCollector(this.module, DoubleCheck.lazy(this.filesDirProvider), this.logWriterProvider.get(), this.loggerExceptionListenerProvider.get());
    }

    public static MetricLoggerCollectorModule_ProvideCollectorFactory create(MetricLoggerCollectorModule metricLoggerCollectorModule, Provider<File> provider, Provider<LogWriter> provider2, Provider<LoggerExceptionListener> provider3) {
        return new MetricLoggerCollectorModule_ProvideCollectorFactory(metricLoggerCollectorModule, provider, provider2, provider3);
    }

    public static Collector<ProxyEventPb> provideCollector(MetricLoggerCollectorModule metricLoggerCollectorModule, Lazy<File> lazy, LogWriter logWriter, LoggerExceptionListener loggerExceptionListener) {
        return (Collector) Preconditions.checkNotNullFromProvides(metricLoggerCollectorModule.provideCollector(lazy, logWriter, loggerExceptionListener));
    }
}
