package com.stripe.core.logginginterceptors.dagger;

import com.stripe.core.logginginterceptors.TraceLoggingCrpcClientInterceptor;
import com.stripe.jvmcore.httptiming.HttpRequestTimingCache;
import com.stripe.loggingmodels.MetricLogger;
import com.stripe.loggingmodels.TraceLogger;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class TraceLoggingCrpcClientInterceptorModule_ProvideTraceLoggingCrpcClientInterceptorFactory implements Factory<TraceLoggingCrpcClientInterceptor> {
    private final Provider<MetricLogger> metricLoggerProvider;
    private final TraceLoggingCrpcClientInterceptorModule module;
    private final Provider<HttpRequestTimingCache> requestTimingCacheProvider;
    private final Provider<TraceLogger> traceLoggerProvider;

    public TraceLoggingCrpcClientInterceptorModule_ProvideTraceLoggingCrpcClientInterceptorFactory(TraceLoggingCrpcClientInterceptorModule traceLoggingCrpcClientInterceptorModule, Provider<MetricLogger> provider, Provider<TraceLogger> provider2, Provider<HttpRequestTimingCache> provider3) {
        this.module = traceLoggingCrpcClientInterceptorModule;
        this.metricLoggerProvider = provider;
        this.traceLoggerProvider = provider2;
        this.requestTimingCacheProvider = provider3;
    }

    @Override // javax.inject.Provider
    public TraceLoggingCrpcClientInterceptor get() {
        return provideTraceLoggingCrpcClientInterceptor(this.module, this.metricLoggerProvider.get(), this.traceLoggerProvider.get(), this.requestTimingCacheProvider.get());
    }

    public static TraceLoggingCrpcClientInterceptorModule_ProvideTraceLoggingCrpcClientInterceptorFactory create(TraceLoggingCrpcClientInterceptorModule traceLoggingCrpcClientInterceptorModule, Provider<MetricLogger> provider, Provider<TraceLogger> provider2, Provider<HttpRequestTimingCache> provider3) {
        return new TraceLoggingCrpcClientInterceptorModule_ProvideTraceLoggingCrpcClientInterceptorFactory(traceLoggingCrpcClientInterceptorModule, provider, provider2, provider3);
    }

    public static TraceLoggingCrpcClientInterceptor provideTraceLoggingCrpcClientInterceptor(TraceLoggingCrpcClientInterceptorModule traceLoggingCrpcClientInterceptorModule, MetricLogger metricLogger, TraceLogger traceLogger, HttpRequestTimingCache httpRequestTimingCache) {
        return (TraceLoggingCrpcClientInterceptor) Preconditions.checkNotNullFromProvides(traceLoggingCrpcClientInterceptorModule.provideTraceLoggingCrpcClientInterceptor(metricLogger, traceLogger, httpRequestTimingCache));
    }
}
