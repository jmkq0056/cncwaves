package com.stripe.stripeterminal.dagger;

import com.stripe.jvmcore.logginginterceptors.TraceLoggingRestClientInterceptor;
import com.stripe.loggingmodels.MetricLogger;
import com.stripe.loggingmodels.TraceLogger;
import com.stripe.logwriter.LogWriter;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes4.dex */
public final class MainlandModule_Companion_ProvideTraceLoggingRestClientInterceptorFactory implements Factory<TraceLoggingRestClientInterceptor> {
    private final Provider<LogWriter> logWriterProvider;
    private final Provider<MetricLogger> metricLoggerProvider;
    private final Provider<TraceLogger> traceLoggerProvider;

    public MainlandModule_Companion_ProvideTraceLoggingRestClientInterceptorFactory(Provider<MetricLogger> provider, Provider<TraceLogger> provider2, Provider<LogWriter> provider3) {
        this.metricLoggerProvider = provider;
        this.traceLoggerProvider = provider2;
        this.logWriterProvider = provider3;
    }

    @Override // javax.inject.Provider
    public TraceLoggingRestClientInterceptor get() {
        return provideTraceLoggingRestClientInterceptor(this.metricLoggerProvider.get(), this.traceLoggerProvider.get(), this.logWriterProvider.get());
    }

    public static MainlandModule_Companion_ProvideTraceLoggingRestClientInterceptorFactory create(Provider<MetricLogger> provider, Provider<TraceLogger> provider2, Provider<LogWriter> provider3) {
        return new MainlandModule_Companion_ProvideTraceLoggingRestClientInterceptorFactory(provider, provider2, provider3);
    }

    public static TraceLoggingRestClientInterceptor provideTraceLoggingRestClientInterceptor(MetricLogger metricLogger, TraceLogger traceLogger, LogWriter logWriter) {
        return (TraceLoggingRestClientInterceptor) Preconditions.checkNotNullFromProvides(MainlandModule.INSTANCE.provideTraceLoggingRestClientInterceptor(metricLogger, traceLogger, logWriter));
    }
}
