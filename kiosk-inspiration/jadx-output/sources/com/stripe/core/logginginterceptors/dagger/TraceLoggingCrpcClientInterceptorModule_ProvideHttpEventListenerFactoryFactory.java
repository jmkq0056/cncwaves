package com.stripe.core.logginginterceptors.dagger;

import com.stripe.jvmcore.httptiming.HttpRequestTimingCache;
import com.stripe.time.Clock;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import java.util.Optional;
import javax.inject.Provider;
import okhttp3.EventListener;

/* JADX INFO: loaded from: classes3.dex */
public final class TraceLoggingCrpcClientInterceptorModule_ProvideHttpEventListenerFactoryFactory implements Factory<Optional<EventListener.Factory>> {
    private final Provider<Clock> clockProvider;
    private final TraceLoggingCrpcClientInterceptorModule module;
    private final Provider<HttpRequestTimingCache> requestTimingCacheProvider;

    public TraceLoggingCrpcClientInterceptorModule_ProvideHttpEventListenerFactoryFactory(TraceLoggingCrpcClientInterceptorModule traceLoggingCrpcClientInterceptorModule, Provider<HttpRequestTimingCache> provider, Provider<Clock> provider2) {
        this.module = traceLoggingCrpcClientInterceptorModule;
        this.requestTimingCacheProvider = provider;
        this.clockProvider = provider2;
    }

    @Override // javax.inject.Provider
    public Optional<EventListener.Factory> get() {
        return provideHttpEventListenerFactory(this.module, this.requestTimingCacheProvider.get(), this.clockProvider.get());
    }

    public static TraceLoggingCrpcClientInterceptorModule_ProvideHttpEventListenerFactoryFactory create(TraceLoggingCrpcClientInterceptorModule traceLoggingCrpcClientInterceptorModule, Provider<HttpRequestTimingCache> provider, Provider<Clock> provider2) {
        return new TraceLoggingCrpcClientInterceptorModule_ProvideHttpEventListenerFactoryFactory(traceLoggingCrpcClientInterceptorModule, provider, provider2);
    }

    public static Optional<EventListener.Factory> provideHttpEventListenerFactory(TraceLoggingCrpcClientInterceptorModule traceLoggingCrpcClientInterceptorModule, HttpRequestTimingCache httpRequestTimingCache, Clock clock) {
        return (Optional) Preconditions.checkNotNullFromProvides(traceLoggingCrpcClientInterceptorModule.provideHttpEventListenerFactory(httpRequestTimingCache, clock));
    }
}
