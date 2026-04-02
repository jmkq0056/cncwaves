package com.stripe.jvmcore.logginginterceptors;

import androidx.core.app.NotificationCompat;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.squareup.moshi.JsonAdapter;
import com.squareup.moshi.Moshi;
import com.squareup.wire.Message;
import com.squareup.wire.RedactingJsonAdapterKt;
import com.squareup.wire.WireJsonAdapterFactory;
import com.stripe.jvmcore.restclient.RestInterceptor;
import com.stripe.jvmcore.restclient.RestResponse;
import com.stripe.loggingmodels.MetricLogger;
import com.stripe.loggingmodels.Outcome;
import com.stripe.loggingmodels.Tag;
import com.stripe.loggingmodels.TagKt;
import com.stripe.loggingmodels.Trace;
import com.stripe.loggingmodels.TraceLogger;
import com.stripe.logwriter.LogWriter;
import com.stripe.proto.model.rest.ErrorWrapper;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Request;

/* JADX INFO: compiled from: TraceLoggingRestClientInterceptor.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u000f\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 02\u00020\u0001:\u00010B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u0088\u0001\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u0002H\u0016\u0012\u0004\u0012\u0002H\u00170\u0015\"\u001c\b\u0000\u0010\u0018*\u0016\u0012\u0004\u0012\u0002H\u0018\u0012\u0002\b\u00030\u0019j\b\u0012\u0004\u0012\u0002H\u0018`\u001a\"\u001c\b\u0001\u0010\u0016*\u0016\u0012\u0004\u0012\u0002H\u0016\u0012\u0002\b\u00030\u0019j\b\u0012\u0004\u0012\u0002H\u0016`\u001a\"\u001c\b\u0002\u0010\u0017*\u0016\u0012\u0004\u0012\u0002H\u0017\u0012\u0002\b\u00030\u0019j\b\u0012\u0004\u0012\u0002H\u0017`\u001a2\u0018\u0010\u001b\u001a\u0014\u0012\u0004\u0012\u0002H\u0018\u0012\u0004\u0012\u0002H\u0016\u0012\u0004\u0012\u0002H\u00170\u001cH\u0016J\u009d\u0001\u0010\u001d\u001a\u00020\u001e\"\u001c\b\u0000\u0010\u0018*\u0016\u0012\u0004\u0012\u0002H\u0018\u0012\u0002\b\u00030\u0019j\b\u0012\u0004\u0012\u0002H\u0018`\u001a\"\u001c\b\u0001\u0010\u0016*\u0016\u0012\u0004\u0012\u0002H\u0016\u0012\u0002\b\u00030\u0019j\b\u0012\u0004\u0012\u0002H\u0016`\u001a\"\u001c\b\u0002\u0010\u0017*\u0016\u0012\u0004\u0012\u0002H\u0017\u0012\u0002\b\u00030\u0019j\b\u0012\u0004\u0012\u0002H\u0017`\u001a2\u0006\u0010\u001f\u001a\u00020\u00112\u0006\u0010 \u001a\u00020\u00112\u0006\u0010!\u001a\u00020\u000b2\u0006\u0010\"\u001a\u0002H\u00182\u0012\u0010#\u001a\u000e\u0012\u0004\u0012\u0002H\u0016\u0012\u0004\u0012\u0002H\u00170\u0015H\u0001¢\u0006\u0004\b$\u0010%JM\u0010&\u001a\u00020\u001e\"\u001c\b\u0000\u0010\u0018*\u0016\u0012\u0004\u0012\u0002H\u0018\u0012\u0002\b\u00030\u0019j\b\u0012\u0004\u0012\u0002H\u0018`\u001a2\u0006\u0010\u001f\u001a\u00020\u00112\u0006\u0010 \u001a\u00020\u00112\u0006\u0010!\u001a\u00020\u000b2\u0006\u0010\"\u001a\u0002H\u0018H\u0001¢\u0006\u0004\b'\u0010(J3\u0010)\u001a\u00020\u0011\"\u001c\b\u0000\u0010**\u0016\u0012\u0004\u0012\u0002H*\u0012\u0002\b\u00030\u0019j\b\u0012\u0004\u0012\u0002H*`\u001a2\u0006\u0010+\u001a\u0002H*H\u0007¢\u0006\u0002\u0010,J\u001a\u0010-\u001a\b\u0012\u0004\u0012\u00020/0.*\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0019H\u0002R\u001a\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\r\u001a\n \u000f*\u0004\u0018\u00010\u000e0\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u00020\u0011X\u0096D¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u00061"}, d2 = {"Lcom/stripe/jvmcore/logginginterceptors/TraceLoggingRestClientInterceptor;", "Lcom/stripe/jvmcore/restclient/RestInterceptor;", "metricLogger", "Lcom/stripe/loggingmodels/MetricLogger;", "traceLogger", "Lcom/stripe/loggingmodels/TraceLogger;", "logWriter", "Lcom/stripe/logwriter/LogWriter;", "(Lcom/stripe/loggingmodels/MetricLogger;Lcom/stripe/loggingmodels/TraceLogger;Lcom/stripe/logwriter/LogWriter;)V", "callMap", "Ljava/util/concurrent/ConcurrentHashMap;", "Lokhttp3/Request;", "Lcom/stripe/jvmcore/logginginterceptors/PendingCall;", "moshi", "Lcom/squareup/moshi/Moshi;", "kotlin.jvm.PlatformType", "name", "", "getName", "()Ljava/lang/String;", "intercept", "Lcom/stripe/jvmcore/restclient/RestResponse;", "Rsp", "Err", "Rq", "Lcom/squareup/wire/Message;", "Lcom/stripe/jvmcore/restclient/Proto;", "chain", "Lcom/stripe/jvmcore/restclient/RestInterceptor$Chain;", "postCallAction", "", NotificationCompat.CATEGORY_SERVICE, FirebaseAnalytics.Param.METHOD, "okHttpRequest", "rpcRequest", "response", "postCallAction$logging_interceptors", "(Ljava/lang/String;Ljava/lang/String;Lokhttp3/Request;Lcom/squareup/wire/Message;Lcom/stripe/jvmcore/restclient/RestResponse;)V", "preCallAction", "preCallAction$logging_interceptors", "(Ljava/lang/String;Ljava/lang/String;Lokhttp3/Request;Lcom/squareup/wire/Message;)V", "protoToJson", "M", "message", "(Lcom/squareup/wire/Message;)Ljava/lang/String;", "toMetricTags", "", "Lcom/stripe/loggingmodels/Tag;", "Companion", "logging-interceptors"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class TraceLoggingRestClientInterceptor extends RestInterceptor {
    private static final String CUSTOM_INTERCEPTOR_NAME = "TraceLoggingRestInterceptor";
    public static final String FAILURE_TO_PARSE_MESSAGE = "Failed to parse REST response body.";
    private static final String METRIC_DOMAIN = "rest_client";
    private final ConcurrentHashMap<Request, PendingCall> callMap;
    private final LogWriter logWriter;
    private final MetricLogger metricLogger;
    private final Moshi moshi;
    private final String name;
    private final TraceLogger traceLogger;
    private static final String TAG = "TraceLoggingRestClientInterceptor";

    /* JADX WARN: Multi-variable type inference failed */
    public TraceLoggingRestClientInterceptor(MetricLogger metricLogger, TraceLogger traceLogger, LogWriter logWriter) {
        Intrinsics.checkNotNullParameter(metricLogger, "metricLogger");
        Intrinsics.checkNotNullParameter(traceLogger, "traceLogger");
        Intrinsics.checkNotNullParameter(logWriter, "logWriter");
        this.metricLogger = metricLogger;
        this.traceLogger = traceLogger;
        this.logWriter = logWriter;
        this.name = CUSTOM_INTERCEPTOR_NAME;
        this.callMap = new ConcurrentHashMap<>();
        this.moshi = new Moshi.Builder().add((JsonAdapter.Factory) new WireJsonAdapterFactory(null, false, 3, 0 == true ? 1 : 0)).build();
    }

    @Override // com.stripe.jvmcore.restclient.RestInterceptor
    public String getName() {
        return this.name;
    }

    public final <Rq extends Message<Rq, ?>> void preCallAction$logging_interceptors(String service, String method, Request okHttpRequest, Rq rpcRequest) {
        Intrinsics.checkNotNullParameter(service, "service");
        Intrinsics.checkNotNullParameter(method, "method");
        Intrinsics.checkNotNullParameter(okHttpRequest, "okHttpRequest");
        Intrinsics.checkNotNullParameter(rpcRequest, "rpcRequest");
        this.callMap.put(okHttpRequest, new PendingCall(TraceLogger.startTrace$default(this.traceLogger, service, method, rpcRequest, (Long) null, (Long) null, (Long) null, (Trace.Context) null, okHttpRequest.url().getUrl(), okHttpRequest.method(), MapsKt.toMap(okHttpRequest.headers()), (Map) null, 1144, (Object) null), MetricLogger.startTimedMetric$default(this.metricLogger, METRIC_DOMAIN, service, method, null, 8, null)));
    }

    public final <Rq extends Message<Rq, ?>, Rsp extends Message<Rsp, ?>, Err extends Message<Err, ?>> void postCallAction$logging_interceptors(String service, String method, Request okHttpRequest, Rq rpcRequest, RestResponse<Rsp, Err> response) {
        Intrinsics.checkNotNullParameter(service, "service");
        Intrinsics.checkNotNullParameter(method, "method");
        Intrinsics.checkNotNullParameter(okHttpRequest, "okHttpRequest");
        Intrinsics.checkNotNullParameter(rpcRequest, "rpcRequest");
        Intrinsics.checkNotNullParameter(response, "response");
        PendingCall pendingCallRemove = this.callMap.remove(okHttpRequest);
        if (pendingCallRemove == null) {
            LogWriter logWriter = this.logWriter;
            String TAG2 = TAG;
            Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
            logWriter.e(TAG2, "Failed to find call for REST request.");
            return;
        }
        if (response instanceof RestResponse.Success) {
            this.traceLogger.endTraceWithSuccess(pendingCallRemove.getTrace(), ((RestResponse.Success) response).getResponse(), response.getHeaders());
            MetricLogger.endTimedMetric$default(this.metricLogger, pendingCallRemove.getMetric(), Outcome.Ok.INSTANCE, null, 4, null);
        } else if (response instanceof RestResponse.ServerError) {
            RestResponse.ServerError serverError = (RestResponse.ServerError) response;
            TraceLogger.endTraceWithErrorMessage$default(this.traceLogger, pendingCallRemove.getTrace(), protoToJson(serverError.getResponse()), String.valueOf(response.getStatusCode()), null, 8, null);
            this.metricLogger.endTimedMetric(pendingCallRemove.getMetric(), Outcome.HttpError.INSTANCE.toOutcome(response.getStatusCode()), toMetricTags(serverError.getResponse()));
        } else if (response instanceof RestResponse.ParseError) {
            TraceLogger.endTraceWithErrorMessage$default(this.traceLogger, pendingCallRemove.getTrace(), FAILURE_TO_PARSE_MESSAGE, String.valueOf(response.getStatusCode()), null, 8, null);
            MetricLogger.endTimedMetric$default(this.metricLogger, pendingCallRemove.getMetric(), Outcome.HttpError.ParseError.INSTANCE, null, 4, null);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.stripe.jvmcore.restclient.RestInterceptor
    public <Rq extends Message<Rq, ?>, Rsp extends Message<Rsp, ?>, Err extends Message<Err, ?>> RestResponse<Rsp, Err> intercept(RestInterceptor.Chain<Rq, Rsp, Err> chain) {
        Intrinsics.checkNotNullParameter(chain, "chain");
        preCallAction$logging_interceptors(chain.getService(), chain.getMethod(), chain.getRequest(), chain.rpcRequest());
        RestResponse<Rsp, Err> restResponseProceed = chain.proceed(chain.getRequest());
        postCallAction$logging_interceptors(chain.getService(), chain.getMethod(), chain.getRequest(), chain.rpcRequest(), restResponseProceed);
        return restResponseProceed;
    }

    public final <M extends Message<M, ?>> String protoToJson(M message) {
        Intrinsics.checkNotNullParameter(message, "message");
        JsonAdapter jsonAdapterAdapter = this.moshi.adapter((Class) message.getClass());
        Intrinsics.checkNotNullExpressionValue(jsonAdapterAdapter, "adapter(...)");
        String json = RedactingJsonAdapterKt.redacting(jsonAdapterAdapter).toJson(message);
        Intrinsics.checkNotNullExpressionValue(json, "toJson(...)");
        return json;
    }

    private final List<Tag> toMetricTags(Message<?, ?> message) {
        return message instanceof ErrorWrapper ? TagKt.toTags((ErrorWrapper) message) : CollectionsKt.emptyList();
    }
}
