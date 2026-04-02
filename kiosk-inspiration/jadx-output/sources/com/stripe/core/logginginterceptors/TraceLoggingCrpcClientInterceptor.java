package com.stripe.core.logginginterceptors;

import com.squareup.wire.Message;
import com.stripe.core.stripeterminal.log.AndroidLog;
import com.stripe.jvmcore.crpcclient.CrpcResponse;
import com.stripe.jvmcore.crpcclient.CustomCrpcInterceptor;
import com.stripe.jvmcore.httptiming.HttpRequestTimingCache;
import com.stripe.jvmcore.httptiming.HttpTimingLoggerEventListener;
import com.stripe.jvmcore.logginginterceptors.PartialPendingCall;
import com.stripe.loggingmodels.Metric;
import com.stripe.loggingmodels.MetricLogger;
import com.stripe.loggingmodels.Outcome;
import com.stripe.loggingmodels.Tag;
import com.stripe.loggingmodels.Trace;
import com.stripe.loggingmodels.TraceLogger;
import com.stripe.proto.net.rpc.base.RpcRequest;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import okhttp3.Request;

/* JADX INFO: compiled from: TraceLoggingCrpcClientInterceptor.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 *2\u00020\u0001:\u0001*B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\bJ\u001a\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0002J[\u0010\u0017\u001a\u00020\u0012\"\u0012\b\u0000\u0010\u0018*\f\u0012\u0004\u0012\u0002H\u0018\u0012\u0002\b\u00030\u0019\"\u0012\b\u0001\u0010\u001a*\f\u0012\u0004\u0012\u0002H\u001a\u0012\u0002\b\u00030\u00192\u0006\u0010\u001b\u001a\u00020\u000b2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u0002H\u001a2\f\u0010\u001f\u001a\b\u0012\u0004\u0012\u0002H\u00180 H\u0016¢\u0006\u0002\u0010!J9\u0010\"\u001a\u00020\u0012\"\u0012\b\u0000\u0010\u0018*\f\u0012\u0004\u0012\u0002H\u0018\u0012\u0002\b\u00030\u00192\u0006\u0010\u001b\u001a\u00020\u000b2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u0002H\u0018H\u0016¢\u0006\u0002\u0010#J2\u0010$\u001a\u00020\u00122\b\u0010\u0015\u001a\u0004\u0018\u00010\u00162\f\u0010%\u001a\b\u0012\u0004\u0012\u00020'0&2\u0006\u0010\u001c\u001a\u00020\u001d2\b\b\u0002\u0010(\u001a\u00020)H\u0002R\u001a\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u00020\u000eX\u0096D¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006+"}, d2 = {"Lcom/stripe/core/logginginterceptors/TraceLoggingCrpcClientInterceptor;", "Lcom/stripe/jvmcore/crpcclient/CustomCrpcInterceptor;", "metricLogger", "Lcom/stripe/loggingmodels/MetricLogger;", "traceLogger", "Lcom/stripe/loggingmodels/TraceLogger;", "requestTimingCache", "Lcom/stripe/jvmcore/httptiming/HttpRequestTimingCache;", "(Lcom/stripe/loggingmodels/MetricLogger;Lcom/stripe/loggingmodels/TraceLogger;Lcom/stripe/jvmcore/httptiming/HttpRequestTimingCache;)V", "callMap", "Ljava/util/concurrent/ConcurrentHashMap;", "Lokhttp3/Request;", "Lcom/stripe/jvmcore/logginginterceptors/PartialPendingCall;", "name", "", "getName", "()Ljava/lang/String;", "enrichTraceWithRequestMetrics", "", "trace", "Lcom/stripe/loggingmodels/Trace;", "requestMetrics", "Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$RequestMetrics;", "postCallAction", "M", "Lcom/squareup/wire/Message;", "RE", "okHttpRequest", "rpcRequest", "Lcom/stripe/proto/net/rpc/base/RpcRequest;", "apiRequest", "crpcResponse", "Lcom/stripe/jvmcore/crpcclient/CrpcResponse;", "(Lokhttp3/Request;Lcom/stripe/proto/net/rpc/base/RpcRequest;Lcom/squareup/wire/Message;Lcom/stripe/jvmcore/crpcclient/CrpcResponse;)V", "preCallAction", "(Lokhttp3/Request;Lcom/stripe/proto/net/rpc/base/RpcRequest;Lcom/squareup/wire/Message;)V", "publishRequestTimingMetrics", "metricTags", "", "Lcom/stripe/loggingmodels/Tag$HttpTimingTag;", "outcome", "Lcom/stripe/loggingmodels/Outcome;", "Companion", "logging-interceptors_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class TraceLoggingCrpcClientInterceptor extends CustomCrpcInterceptor {
    private static final String CUSTOM_INTERCEPTOR_NAME = "TraceLoggingCrpcInterceptor";
    private static final String METRIC_DOMAIN = "rpc_client";
    private final ConcurrentHashMap<Request, PartialPendingCall> callMap;
    private final MetricLogger metricLogger;
    private final String name;
    private final HttpRequestTimingCache requestTimingCache;
    private final TraceLogger traceLogger;
    private static final String TAG = "TraceLoggingCrpcClientInterceptor";

    public TraceLoggingCrpcClientInterceptor(MetricLogger metricLogger, TraceLogger traceLogger, HttpRequestTimingCache httpRequestTimingCache) {
        Intrinsics.checkNotNullParameter(metricLogger, "metricLogger");
        Intrinsics.checkNotNullParameter(traceLogger, "traceLogger");
        this.metricLogger = metricLogger;
        this.traceLogger = traceLogger;
        this.requestTimingCache = httpRequestTimingCache;
        this.name = CUSTOM_INTERCEPTOR_NAME;
        this.callMap = new ConcurrentHashMap<>();
    }

    @Override // com.stripe.jvmcore.crpcclient.CustomCrpcInterceptor
    public String getName() {
        return this.name;
    }

    @Override // com.stripe.jvmcore.crpcclient.CustomCrpcInterceptor
    public <M extends Message<M, ?>> void preCallAction(Request okHttpRequest, RpcRequest rpcRequest, M apiRequest) {
        Intrinsics.checkNotNullParameter(okHttpRequest, "okHttpRequest");
        Intrinsics.checkNotNullParameter(rpcRequest, "rpcRequest");
        Intrinsics.checkNotNullParameter(apiRequest, "apiRequest");
        this.callMap.put(okHttpRequest, new PartialPendingCall((CrpcLogLevelKt.getTraceLogLevel(rpcRequest) == CrpcLogLevel.NONE ? null : rpcRequest) != null ? TraceLogger.startTrace$default(this.traceLogger, rpcRequest.service, rpcRequest.method, apiRequest, (Long) null, (Long) null, (Long) null, (Trace.Context) null, (String) null, (String) null, (Map) null, (Map) null, 2040, (Object) null) : null, (CrpcLogLevelKt.getMetricLogLevel(rpcRequest) == CrpcLogLevel.NONE ? null : rpcRequest) != null ? MetricLogger.startTimedMetric$default(this.metricLogger, METRIC_DOMAIN, rpcRequest.service, rpcRequest.method, null, 8, null) : null));
    }

    @Override // com.stripe.jvmcore.crpcclient.CustomCrpcInterceptor
    public <M extends Message<M, ?>, RE extends Message<RE, ?>> void postCallAction(Request okHttpRequest, RpcRequest rpcRequest, RE apiRequest, CrpcResponse<M> crpcResponse) {
        ArrayList arrayListEmptyList;
        Metric metric;
        Unit unit;
        List<HttpTimingLoggerEventListener.Tag> tags;
        Intrinsics.checkNotNullParameter(okHttpRequest, "okHttpRequest");
        Intrinsics.checkNotNullParameter(rpcRequest, "rpcRequest");
        Intrinsics.checkNotNullParameter(apiRequest, "apiRequest");
        Intrinsics.checkNotNullParameter(crpcResponse, "crpcResponse");
        PartialPendingCall partialPendingCallRemove = this.callMap.remove(okHttpRequest);
        if (partialPendingCallRemove == null) {
            AndroidLog androidLog = AndroidLog.INSTANCE;
            String TAG2 = TAG;
            Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
            androidLog.e(TAG2, "Failed to find call for CRPC request.");
            return;
        }
        HttpRequestTimingCache httpRequestTimingCache = this.requestTimingCache;
        HttpTimingLoggerEventListener.RequestMetrics requestMetricsRemoveAndGetRequestMetrics = httpRequestTimingCache != null ? httpRequestTimingCache.removeAndGetRequestMetrics(okHttpRequest) : null;
        if (requestMetricsRemoveAndGetRequestMetrics != null) {
            enrichTraceWithRequestMetrics(partialPendingCallRemove.getTrace(), requestMetricsRemoveAndGetRequestMetrics);
        }
        if (requestMetricsRemoveAndGetRequestMetrics == null || (tags = requestMetricsRemoveAndGetRequestMetrics.getTags()) == null) {
            arrayListEmptyList = null;
        } else {
            List<HttpTimingLoggerEventListener.Tag> list = tags;
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(HttpTimingTagKt.toHttpTimingTag((HttpTimingLoggerEventListener.Tag) it.next()));
            }
            arrayListEmptyList = arrayList;
        }
        if (arrayListEmptyList == null) {
            arrayListEmptyList = CollectionsKt.emptyList();
        }
        if (crpcResponse instanceof CrpcResponse.Success) {
            Trace trace = CrpcLogLevelKt.getTraceLogLevel(rpcRequest) == CrpcLogLevel.VERBOSE ? partialPendingCallRemove.getTrace() : null;
            if (trace != null) {
                TraceLogger.endTraceWithSuccess$default(this.traceLogger, trace, ((CrpcResponse.Success) crpcResponse).getResponse(), (Map) null, 4, (Object) null);
            }
            metric = CrpcLogLevelKt.getMetricLogLevel(rpcRequest) == CrpcLogLevel.VERBOSE ? partialPendingCallRemove.getMetric() : null;
            if (metric != null) {
                this.metricLogger.endTimedMetric(metric, Outcome.Ok.INSTANCE, arrayListEmptyList);
                publishRequestTimingMetrics$default(this, requestMetricsRemoveAndGetRequestMetrics, arrayListEmptyList, rpcRequest, null, 8, null);
                return;
            }
            return;
        }
        if (crpcResponse instanceof CrpcResponse.ApplicationError) {
            Trace trace2 = CrpcLogLevelKt.getTraceLogLevel(rpcRequest).compareTo(CrpcLogLevel.ERROR) >= 0 ? partialPendingCallRemove.getTrace() : null;
            if (trace2 != null) {
                CrpcResponse.ApplicationError applicationError = (CrpcResponse.ApplicationError) crpcResponse;
                TraceLogger.endTraceWithErrorMessage$default(this.traceLogger, trace2, applicationError.getMessage(), String.valueOf(applicationError.getCode()), null, 8, null);
            }
            metric = CrpcLogLevelKt.getMetricLogLevel(rpcRequest).compareTo(CrpcLogLevel.ERROR) >= 0 ? partialPendingCallRemove.getMetric() : null;
            if (metric != null) {
                CrpcResponse.ApplicationError applicationError2 = (CrpcResponse.ApplicationError) crpcResponse;
                this.metricLogger.endTimedMetric(metric, Outcome.RpcApplicationError.INSTANCE.toOutcome(applicationError2.getCode()), arrayListEmptyList);
                publishRequestTimingMetrics(requestMetricsRemoveAndGetRequestMetrics, arrayListEmptyList, rpcRequest, Outcome.RpcApplicationError.INSTANCE.toOutcome(applicationError2.getCode()));
                return;
            }
            return;
        }
        if (crpcResponse instanceof CrpcResponse.RpcError) {
            Trace trace3 = CrpcLogLevelKt.getTraceLogLevel(rpcRequest).compareTo(CrpcLogLevel.ERROR) >= 0 ? partialPendingCallRemove.getTrace() : null;
            if (trace3 != null) {
                CrpcResponse.RpcError rpcError = (CrpcResponse.RpcError) crpcResponse;
                Throwable cause = rpcError.getCause();
                if (cause != null) {
                    TraceLogger.endTraceWithException$default(this.traceLogger, trace3, cause, String.valueOf(rpcError.getCode()), null, 8, null);
                    unit = Unit.INSTANCE;
                } else {
                    unit = null;
                }
                if (unit == null) {
                    TraceLogger.endTraceWithErrorMessage$default(this.traceLogger, trace3, rpcError.getMessage(), String.valueOf(rpcError.getCode()), null, 8, null);
                }
            }
            metric = CrpcLogLevelKt.getMetricLogLevel(rpcRequest).compareTo(CrpcLogLevel.ERROR) >= 0 ? partialPendingCallRemove.getMetric() : null;
            if (metric != null) {
                CrpcResponse.RpcError rpcError2 = (CrpcResponse.RpcError) crpcResponse;
                this.metricLogger.endTimedMetric(metric, Outcome.RpcTransportError.INSTANCE.toOutcome(rpcError2.getCode()), arrayListEmptyList);
                publishRequestTimingMetrics(requestMetricsRemoveAndGetRequestMetrics, arrayListEmptyList, rpcRequest, Outcome.RpcTransportError.INSTANCE.toOutcome(rpcError2.getCode()));
            }
        }
    }

    private final void enrichTraceWithRequestMetrics(Trace trace, HttpTimingLoggerEventListener.RequestMetrics requestMetrics) {
        if (trace == null) {
            return;
        }
        for (HttpTimingLoggerEventListener.Timing timing : CollectionsKt.sorted(requestMetrics.getTimings())) {
            String lowerCase = timing.getName().toString().toLowerCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
            trace.meter(lowerCase, (int) (timing.getTimeSinceCallStart().toMillis() + timing.getTimingDuration().toMillis()), timing.getTimingDuration().toMillis());
        }
        List<HttpTimingLoggerEventListener.Tag> tags = requestMetrics.getTags();
        LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(CollectionsKt.collectionSizeOrDefault(tags, 10)), 16));
        for (HttpTimingLoggerEventListener.Tag tag : tags) {
            String lowerCase2 = tag.getName().toString().toLowerCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(lowerCase2, "toLowerCase(...)");
            Pair pair = TuplesKt.to(lowerCase2, tag.getValue());
            linkedHashMap.put(pair.getFirst(), pair.getSecond());
        }
        trace.addTags(linkedHashMap);
    }

    static /* synthetic */ void publishRequestTimingMetrics$default(TraceLoggingCrpcClientInterceptor traceLoggingCrpcClientInterceptor, HttpTimingLoggerEventListener.RequestMetrics requestMetrics, List list, RpcRequest rpcRequest, Outcome outcome, int i, Object obj) {
        if ((i & 8) != 0) {
            outcome = Outcome.Ok.INSTANCE;
        }
        traceLoggingCrpcClientInterceptor.publishRequestTimingMetrics(requestMetrics, list, rpcRequest, outcome);
    }

    private final void publishRequestTimingMetrics(HttpTimingLoggerEventListener.RequestMetrics requestMetrics, List<Tag.HttpTimingTag> metricTags, RpcRequest rpcRequest, Outcome outcome) {
        if (requestMetrics != null) {
            for (HttpTimingLoggerEventListener.Metric metric : requestMetrics.getMetrics()) {
                MetricLogger metricLogger = this.metricLogger;
                String str = rpcRequest.service + '-' + rpcRequest.method;
                String lowerCase = metric.getName().toString().toLowerCase(Locale.ROOT);
                Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
                metricLogger.recordGaugeMetric(METRIC_DOMAIN, str, lowerCase, metric.getMeasurement(), metricTags, outcome);
            }
        }
    }
}
