package com.stripe.core.logginginterceptors.dagger;

import com.stripe.core.logginginterceptors.TraceLoggingCrpcClientInterceptor;
import com.stripe.jvmcore.httptiming.HttpRequestTimingCache;
import com.stripe.jvmcore.httptiming.HttpTimingLoggerEventListener;
import com.stripe.loggingmodels.MetricLogger;
import com.stripe.loggingmodels.TraceLogger;
import com.stripe.time.Clock;
import dagger.Module;
import dagger.Provides;
import java.util.Optional;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.EventListener;

/* JADX INFO: compiled from: TraceLoggingCrpcClientInterceptorModule.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0007\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u001e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0007J\b\u0010\n\u001a\u00020\u0007H\u0007J \u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0006\u001a\u00020\u0007H\u0007¨\u0006\u0011"}, d2 = {"Lcom/stripe/core/logginginterceptors/dagger/TraceLoggingCrpcClientInterceptorModule;", "", "()V", "provideHttpEventListenerFactory", "Ljava/util/Optional;", "Lokhttp3/EventListener$Factory;", "requestTimingCache", "Lcom/stripe/jvmcore/httptiming/HttpRequestTimingCache;", "clock", "Lcom/stripe/time/Clock;", "provideHttpRequestTimingCache", "provideTraceLoggingCrpcClientInterceptor", "Lcom/stripe/core/logginginterceptors/TraceLoggingCrpcClientInterceptor;", "metricLogger", "Lcom/stripe/loggingmodels/MetricLogger;", "traceLogger", "Lcom/stripe/loggingmodels/TraceLogger;", "logging-interceptors_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module
public final class TraceLoggingCrpcClientInterceptorModule {
    @Provides
    @Singleton
    public final TraceLoggingCrpcClientInterceptor provideTraceLoggingCrpcClientInterceptor(MetricLogger metricLogger, TraceLogger traceLogger, HttpRequestTimingCache requestTimingCache) {
        Intrinsics.checkNotNullParameter(metricLogger, "metricLogger");
        Intrinsics.checkNotNullParameter(traceLogger, "traceLogger");
        Intrinsics.checkNotNullParameter(requestTimingCache, "requestTimingCache");
        return new TraceLoggingCrpcClientInterceptor(metricLogger, traceLogger, requestTimingCache);
    }

    @Provides
    @Singleton
    public final HttpRequestTimingCache provideHttpRequestTimingCache() {
        return new HttpRequestTimingCache(0, 1, null);
    }

    @Provides
    @Singleton
    public final Optional<EventListener.Factory> provideHttpEventListenerFactory(HttpRequestTimingCache requestTimingCache, Clock clock) {
        Intrinsics.checkNotNullParameter(requestTimingCache, "requestTimingCache");
        Intrinsics.checkNotNullParameter(clock, "clock");
        Optional<EventListener.Factory> optionalOf = Optional.of(new HttpTimingLoggerEventListener.HttpTimingLoggerEventListenerFactory(CollectionsKt.listOf(requestTimingCache), clock));
        Intrinsics.checkNotNullExpressionValue(optionalOf, "of(...)");
        return optionalOf;
    }
}
