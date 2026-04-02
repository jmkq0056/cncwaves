package com.stripe.core.logginginterceptors.dagger;

import com.stripe.jvmcore.httptiming.HttpRequestTimingCache;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes3.dex */
public final class TraceLoggingCrpcClientInterceptorModule_ProvideHttpRequestTimingCacheFactory implements Factory<HttpRequestTimingCache> {
    private final TraceLoggingCrpcClientInterceptorModule module;

    public TraceLoggingCrpcClientInterceptorModule_ProvideHttpRequestTimingCacheFactory(TraceLoggingCrpcClientInterceptorModule traceLoggingCrpcClientInterceptorModule) {
        this.module = traceLoggingCrpcClientInterceptorModule;
    }

    @Override // javax.inject.Provider
    public HttpRequestTimingCache get() {
        return provideHttpRequestTimingCache(this.module);
    }

    public static TraceLoggingCrpcClientInterceptorModule_ProvideHttpRequestTimingCacheFactory create(TraceLoggingCrpcClientInterceptorModule traceLoggingCrpcClientInterceptorModule) {
        return new TraceLoggingCrpcClientInterceptorModule_ProvideHttpRequestTimingCacheFactory(traceLoggingCrpcClientInterceptorModule);
    }

    public static HttpRequestTimingCache provideHttpRequestTimingCache(TraceLoggingCrpcClientInterceptorModule traceLoggingCrpcClientInterceptorModule) {
        return (HttpRequestTimingCache) Preconditions.checkNotNullFromProvides(traceLoggingCrpcClientInterceptorModule.provideHttpRequestTimingCache());
    }
}
