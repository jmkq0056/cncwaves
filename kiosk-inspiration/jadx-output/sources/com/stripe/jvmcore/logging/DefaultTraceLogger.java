package com.stripe.jvmcore.logging;

import androidx.core.app.NotificationCompat;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.squareup.moshi.JsonAdapter;
import com.squareup.moshi.Moshi;
import com.squareup.wire.WireJsonAdapterFactory;
import com.stripe.jvmcore.batchdispatcher.BatchDispatcher;
import com.stripe.loggingmodels.SpanPoint;
import com.stripe.loggingmodels.Trace;
import com.stripe.loggingmodels.TraceLogger;
import com.stripe.proto.api.gator.ProxySpanPb;
import com.stripe.proto.api.gator.ReportedSpanPb;
import com.stripe.proto.terminal.clientlogger.pub.AdditionalContext;
import com.stripe.proto.terminal.clientlogger.pub.SearchIndices;
import com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.LegacyTraceData;
import com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.ObservabilityData;
import com.stripe.time.Clock;
import com.sun.jna.platform.win32.WinError;
import com.sun.jna.platform.win32.WinUser;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.ExceptionsKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import okio.ByteString;

/* JADX INFO: compiled from: DefaultTraceLogger.kt */
/* JADX INFO: loaded from: classes3.dex */
@Singleton
@Metadata(d1 = {"\u0000|\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\b\u0007\u0018\u0000 92\u00020\u0001:\u00019B3\b\u0007\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00060\u0003\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ\u0018\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0002J\u0018\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0002J\u0018\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0002J\u0012\u0010\u0017\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J$\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u001b0\u001a2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0002J:\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u0011\u001a\u00020\u00122\b\u0010\u001e\u001a\u0004\u0018\u00010\u001b2\b\u0010\u001f\u001a\u0004\u0018\u00010\u001b2\u0014\u0010 \u001a\u0010\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u001b\u0018\u00010\u001aH\u0016J8\u0010!\u001a\u00020\u001d2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\"\u001a\u00020#2\b\u0010\u001f\u001a\u0004\u0018\u00010\u001b2\u0014\u0010 \u001a\u0010\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u001b\u0018\u00010\u001aH\u0016J8\u0010$\u001a\u00020\u001d2\u0006\u0010\u0011\u001a\u00020\u00122\u0010\u0010%\u001a\f\u0012\u0002\b\u0003\u0012\u0002\b\u0003\u0018\u00010&2\u0014\u0010 \u001a\u0010\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u001b\u0018\u00010\u001aH\u0016J.\u0010$\u001a\u00020\u001d2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010%\u001a\u00020\u001b2\u0014\u0010 \u001a\u0010\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u001b\u0018\u00010\u001aH\u0016J\b\u0010'\u001a\u00020\u001dH\u0016J\u0095\u0001\u0010(\u001a\u00020\u00122\u0006\u0010)\u001a\u00020\u001b2\u0006\u0010*\u001a\u00020\u001b2\u0010\u0010+\u001a\f\u0012\u0002\b\u0003\u0012\u0002\b\u0003\u0018\u00010&2\b\u0010,\u001a\u0004\u0018\u00010-2\b\u0010.\u001a\u0004\u0018\u00010-2\b\u0010/\u001a\u0004\u0018\u00010-2\b\u00100\u001a\u0004\u0018\u0001012\b\u00102\u001a\u0004\u0018\u00010\u001b2\b\u00103\u001a\u0004\u0018\u00010\u001b2\u0014\u00104\u001a\u0010\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u001b\u0018\u00010\u001a2\u0012\u00105\u001a\u000e\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u001b0\u001aH\u0016¢\u0006\u0002\u00106J\u008b\u0001\u0010(\u001a\u00020\u00122\u0006\u0010)\u001a\u00020\u001b2\u0006\u0010*\u001a\u00020\u001b2\u0006\u0010+\u001a\u00020\u001b2\b\u0010,\u001a\u0004\u0018\u00010-2\b\u0010.\u001a\u0004\u0018\u00010-2\b\u0010/\u001a\u0004\u0018\u00010-2\b\u00100\u001a\u0004\u0018\u0001012\b\u00102\u001a\u0004\u0018\u00010\u001b2\b\u00103\u001a\u0004\u0018\u00010\u001b2\u0014\u00104\u001a\u0010\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u001b\u0018\u00010\u001a2\u0012\u00105\u001a\u000e\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u001b0\u001aH\u0016¢\u0006\u0002\u00107J\u0018\u00108\u001a\u00020\u001d2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0002R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\f\u001a\n \u000e*\u0004\u0018\u00010\r0\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00060\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006:"}, d2 = {"Lcom/stripe/jvmcore/logging/DefaultTraceLogger;", "Lcom/stripe/loggingmodels/TraceLogger;", "proxySpanPbBatchDispatcher", "Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;", "Lcom/stripe/proto/api/gator/ProxySpanPb;", "observabilityDataBatchDispatcher", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/ObservabilityData;", "observabilityFeatureFlags", "Lcom/stripe/jvmcore/logging/ObservabilityFeatureFlags;", "clock", "Lcom/stripe/time/Clock;", "(Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;Lcom/stripe/jvmcore/logging/ObservabilityFeatureFlags;Lcom/stripe/time/Clock;)V", "moshi", "Lcom/squareup/moshi/Moshi;", "kotlin.jvm.PlatformType", "buildLegacyTraceData", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData;", "trace", "Lcom/stripe/loggingmodels/Trace;", "traceResult", "Lcom/stripe/jvmcore/logging/TraceResult;", "buildObservabilityData", "buildProxySpanPb", "buildSearchIndices", "Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;", "buildTags", "", "", "endTraceWithErrorMessage", "", "message", "statusCode", DefaultTraceLogger.TAG_KEY_HTTP_RESPONSE_HEADERS, "endTraceWithException", "t", "", "endTraceWithSuccess", "response", "Lcom/squareup/wire/Message;", "init", "startTrace", NotificationCompat.CATEGORY_SERVICE, FirebaseAnalytics.Param.METHOD, "request", "rootId", "", "parentId", "currentId", "context", "Lcom/stripe/loggingmodels/Trace$Context;", DefaultTraceLogger.TAG_KEY_HTTP_URL, DefaultTraceLogger.TAG_KEY_HTTP_METHOD, DefaultTraceLogger.TAG_KEY_HTTP_REQUEST_HEADERS, "tags", "(Ljava/lang/String;Ljava/lang/String;Lcom/squareup/wire/Message;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lcom/stripe/loggingmodels/Trace$Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/stripe/loggingmodels/Trace;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lcom/stripe/loggingmodels/Trace$Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/stripe/loggingmodels/Trace;", "submitTrace", "Companion", "logging"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DefaultTraceLogger implements TraceLogger {
    public static final String TAG_KEY_HTTP_METHOD = "httpMethod";
    public static final String TAG_KEY_HTTP_REQUEST_HEADERS = "httpRequestHeaders";
    public static final String TAG_KEY_HTTP_RESPONSE_HEADERS = "httpResponseHeaders";
    public static final String TAG_KEY_HTTP_URL = "httpUrl";
    private final Clock clock;
    private final Moshi moshi;
    private final BatchDispatcher<ObservabilityData> observabilityDataBatchDispatcher;
    private final ObservabilityFeatureFlags observabilityFeatureFlags;
    private final BatchDispatcher<ProxySpanPb> proxySpanPbBatchDispatcher;

    /* JADX WARN: Multi-variable type inference failed */
    @Inject
    public DefaultTraceLogger(BatchDispatcher<ProxySpanPb> proxySpanPbBatchDispatcher, BatchDispatcher<ObservabilityData> observabilityDataBatchDispatcher, ObservabilityFeatureFlags observabilityFeatureFlags, Clock clock) {
        Intrinsics.checkNotNullParameter(proxySpanPbBatchDispatcher, "proxySpanPbBatchDispatcher");
        Intrinsics.checkNotNullParameter(observabilityDataBatchDispatcher, "observabilityDataBatchDispatcher");
        Intrinsics.checkNotNullParameter(observabilityFeatureFlags, "observabilityFeatureFlags");
        Intrinsics.checkNotNullParameter(clock, "clock");
        this.proxySpanPbBatchDispatcher = proxySpanPbBatchDispatcher;
        this.observabilityDataBatchDispatcher = observabilityDataBatchDispatcher;
        this.observabilityFeatureFlags = observabilityFeatureFlags;
        this.clock = clock;
        this.moshi = new Moshi.Builder().add((JsonAdapter.Factory) new WireJsonAdapterFactory(null, false, 3, 0 == true ? 1 : 0)).build();
    }

    @Override // com.stripe.loggingmodels.TraceLogger
    public void init() {
        this.proxySpanPbBatchDispatcher.init();
        this.observabilityDataBatchDispatcher.init();
    }

    /* JADX WARN: Removed duplicated region for block: B:6:0x0024  */
    @Override // com.stripe.loggingmodels.TraceLogger
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.stripe.loggingmodels.Trace startTrace(java.lang.String r15, java.lang.String r16, com.squareup.wire.Message<?, ?> r17, java.lang.Long r18, java.lang.Long r19, java.lang.Long r20, com.stripe.loggingmodels.Trace.Context r21, java.lang.String r22, java.lang.String r23, java.util.Map<java.lang.String, java.lang.String> r24, java.util.Map<java.lang.String, java.lang.String> r25) {
        /*
            r14 = this;
            r0 = r17
            java.lang.String r1 = "service"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r15, r1)
            java.lang.String r1 = "method"
            r4 = r16
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r1)
            java.lang.String r1 = "tags"
            r13 = r25
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r13, r1)
            if (r0 == 0) goto L24
            com.squareup.moshi.Moshi r1 = r14.moshi
            java.lang.String r2 = "moshi"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r1, r2)
            java.lang.String r0 = com.stripe.jvmcore.logging.DefaultTraceLoggerKt.toTraceJson(r0, r1)
            if (r0 != 0) goto L26
        L24:
            java.lang.String r0 = ""
        L26:
            r2 = r14
            r3 = r15
            r6 = r18
            r7 = r19
            r8 = r20
            r9 = r21
            r10 = r22
            r11 = r23
            r12 = r24
            r5 = r0
            com.stripe.loggingmodels.Trace r15 = r2.startTrace(r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13)
            return r15
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.jvmcore.logging.DefaultTraceLogger.startTrace(java.lang.String, java.lang.String, com.squareup.wire.Message, java.lang.Long, java.lang.Long, java.lang.Long, com.stripe.loggingmodels.Trace$Context, java.lang.String, java.lang.String, java.util.Map, java.util.Map):com.stripe.loggingmodels.Trace");
    }

    @Override // com.stripe.loggingmodels.TraceLogger
    public Trace startTrace(String service, String method, String request, Long rootId, Long parentId, Long currentId, Trace.Context context, String httpUrl, String httpMethod, Map<String, String> httpRequestHeaders, Map<String, String> tags) {
        Intrinsics.checkNotNullParameter(service, "service");
        Intrinsics.checkNotNullParameter(method, "method");
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(tags, "tags");
        return new Trace(this.clock.currentTimeMillis(), service, method, request, rootId, parentId, currentId, context, httpUrl, httpMethod, httpRequestHeaders, this.clock, tags);
    }

    /* JADX WARN: Removed duplicated region for block: B:6:0x0014  */
    @Override // com.stripe.loggingmodels.TraceLogger
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void endTraceWithSuccess(com.stripe.loggingmodels.Trace r3, com.squareup.wire.Message<?, ?> r4, java.util.Map<java.lang.String, java.lang.String> r5) {
        /*
            r2 = this;
            java.lang.String r0 = "trace"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r0)
            if (r4 == 0) goto L14
            com.squareup.moshi.Moshi r0 = r2.moshi
            java.lang.String r1 = "moshi"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            java.lang.String r4 = com.stripe.jvmcore.logging.DefaultTraceLoggerKt.toTraceJson(r4, r0)
            if (r4 != 0) goto L16
        L14:
            java.lang.String r4 = ""
        L16:
            r2.endTraceWithSuccess(r3, r4, r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.jvmcore.logging.DefaultTraceLogger.endTraceWithSuccess(com.stripe.loggingmodels.Trace, com.squareup.wire.Message, java.util.Map):void");
    }

    @Override // com.stripe.loggingmodels.TraceLogger
    public void endTraceWithSuccess(Trace trace, String response, Map<String, String> httpResponseHeaders) {
        Intrinsics.checkNotNullParameter(trace, "trace");
        Intrinsics.checkNotNullParameter(response, "response");
        submitTrace(trace, new TraceResult(response, null, null, httpResponseHeaders));
    }

    @Override // com.stripe.loggingmodels.TraceLogger
    public void endTraceWithException(Trace trace, Throwable t, String statusCode, Map<String, String> httpResponseHeaders) {
        Intrinsics.checkNotNullParameter(trace, "trace");
        Intrinsics.checkNotNullParameter(t, "t");
        endTraceWithErrorMessage(trace, ExceptionsKt.stackTraceToString(t), statusCode, httpResponseHeaders);
    }

    @Override // com.stripe.loggingmodels.TraceLogger
    public void endTraceWithErrorMessage(Trace trace, String message, String statusCode, Map<String, String> httpResponseHeaders) {
        Intrinsics.checkNotNullParameter(trace, "trace");
        submitTrace(trace, new TraceResult("", message, statusCode, httpResponseHeaders));
    }

    private final void submitTrace(Trace trace, TraceResult traceResult) {
        if (this.observabilityFeatureFlags.getEnableTracesToObservabilityDataEndpoint()) {
            this.observabilityDataBatchDispatcher.add(buildObservabilityData(trace, traceResult));
        } else {
            this.proxySpanPbBatchDispatcher.add(buildProxySpanPb(trace, traceResult));
        }
    }

    private final ProxySpanPb buildProxySpanPb(Trace trace, TraceResult traceResult) {
        AdditionalContext additionalContext;
        Trace.Context context = trace.getContext();
        if (context != null) {
            String serialNumber = context.getSerialNumber();
            String str = serialNumber == null ? "" : serialNumber;
            String sessionId = context.getSessionId();
            String str2 = sessionId == null ? "" : sessionId;
            String actionId = context.getActionId();
            additionalContext = new AdditionalContext(actionId == null ? "" : actionId, str, str2, null, null, 24, null);
        } else {
            additionalContext = null;
        }
        AdditionalContext additionalContext2 = additionalContext;
        long startTimeMillis = trace.getStartTimeMillis();
        long jCurrentTimeMillis = this.clock.currentTimeMillis() - trace.getStartTimeMillis();
        String service = trace.getService();
        String method = trace.getMethod();
        String request = trace.getRequest();
        Long rootId = trace.getRootId();
        long jLongValue = rootId != null ? rootId.longValue() : 0L;
        Long parentId = trace.getParentId();
        long jLongValue2 = parentId != null ? parentId.longValue() : 0L;
        Long currentId = trace.getCurrentId();
        long jLongValue3 = currentId != null ? currentId.longValue() : 0L;
        String response = traceResult.getResponse();
        String exception = traceResult.getException();
        String str3 = exception == null ? "" : exception;
        String statusCode = traceResult.getStatusCode();
        String str4 = statusCode == null ? "" : statusCode;
        Map<String, String> mapBuildTags = buildTags(trace, traceResult);
        List<SpanPoint> listSpanPoints = trace.spanPoints();
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(listSpanPoints, 10));
        Iterator<T> it = listSpanPoints.iterator();
        while (it.hasNext()) {
            arrayList.add(((SpanPoint) it.next()).toGatorProto());
        }
        return new ProxySpanPb(null, null, null, new ReportedSpanPb(jLongValue, jLongValue2, jLongValue3, null, null, null, null, null, startTimeMillis, jCurrentTimeMillis, service, method, request, null, response, null, str3, str4, null, mapBuildTags, additionalContext2, null, arrayList, null, 10789112, null), null, null, 55, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final ObservabilityData buildObservabilityData(Trace trace, TraceResult traceResult) {
        com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.Metadata metadata = new com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.Metadata(this.clock.currentTimeMillis(), null, null, null, 14, null);
        LegacyTraceData legacyTraceDataBuildLegacyTraceData = buildLegacyTraceData(trace, traceResult);
        ByteString byteString = null;
        Object[] objArr = 0 == true ? 1 : 0;
        return new ObservabilityData(metadata, buildSearchIndices(trace), 0 == true ? 1 : 0, 0 == true ? 1 : 0, 0 == true ? 1 : 0, legacyTraceDataBuildLegacyTraceData, objArr, byteString, WinError.ERROR_FILE_CHECKED_OUT, null);
    }

    private final LegacyTraceData buildLegacyTraceData(Trace trace, TraceResult traceResult) {
        LegacyTraceData.Builder builderTags = new LegacyTraceData.Builder().start_time_ms(trace.getStartTimeMillis()).total_time_ms(this.clock.currentTimeMillis() - trace.getStartTimeMillis()).service(trace.getService()).method(trace.getMethod()).tags(buildTags(trace, traceResult));
        List<SpanPoint> listSpanPoints = trace.spanPoints();
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(listSpanPoints, 10));
        Iterator<T> it = listSpanPoints.iterator();
        while (it.hasNext()) {
            arrayList.add(((SpanPoint) it.next()).toLegacyTraceProto());
        }
        LegacyTraceData.Builder builderResponse = builderTags.traces(arrayList).request(trace.getRequest()).response(traceResult.getResponse());
        Long rootId = trace.getRootId();
        if (rootId != null) {
            builderResponse.root_span_id(rootId.longValue());
        }
        Long parentId = trace.getParentId();
        if (parentId != null) {
            builderResponse.parent_span_id(parentId.longValue());
        }
        Long currentId = trace.getCurrentId();
        if (currentId != null) {
            builderResponse.current_span_id(currentId.longValue());
        }
        String exception = traceResult.getException();
        if (exception != null) {
            builderResponse.exception(exception);
        }
        String statusCode = traceResult.getStatusCode();
        if (statusCode != null) {
            builderResponse.status_code(statusCode);
        }
        return builderResponse.build();
    }

    private final SearchIndices buildSearchIndices(Trace trace) {
        String sessionId;
        String serialNumber;
        String actionId;
        SearchIndices.Builder builder = new SearchIndices.Builder();
        Trace.Context context = trace.getContext();
        if (context != null && (actionId = context.getActionId()) != null) {
            builder.action_id(actionId);
        }
        Trace.Context context2 = trace.getContext();
        if (context2 != null && (serialNumber = context2.getSerialNumber()) != null) {
            builder.serial_number(serialNumber);
        }
        Trace.Context context3 = trace.getContext();
        if (context3 != null && (sessionId = context3.getSessionId()) != null) {
            builder.session_id(sessionId);
        }
        Long rootId = trace.getRootId();
        if (rootId != null) {
            builder.trace_id(rootId.longValue());
        }
        Long parentId = trace.getParentId();
        if (parentId != null) {
            builder.parent_span_id(parentId.longValue());
        }
        Long currentId = trace.getCurrentId();
        if (currentId != null) {
            builder.current_span_id(currentId.longValue());
        }
        SearchIndices searchIndicesBuild = builder.build();
        if (Intrinsics.areEqual(searchIndicesBuild, new SearchIndices(null, null, null, 0L, 0L, 0L, null, null, null, null, WinUser.CF_GDIOBJLAST, null))) {
            return null;
        }
        return searchIndicesBuild;
    }

    private final Map<String, String> buildTags(Trace trace, TraceResult traceResult) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        String httpUrl = trace.getHttpUrl();
        if (httpUrl != null) {
        }
        String httpMethod = trace.getHttpMethod();
        if (httpMethod != null) {
        }
        Map<String, String> httpRequestHeaders = trace.getHttpRequestHeaders();
        if (httpRequestHeaders != null) {
        }
        Map<String, String> httpResponseHeaders = traceResult.getHttpResponseHeaders();
        if (httpResponseHeaders != null) {
            linkedHashMap.put(TAG_KEY_HTTP_RESPONSE_HEADERS, DefaultTraceLoggerKt.toKeyValuePairsString(httpResponseHeaders));
        }
        return MapsKt.plus(linkedHashMap, trace.getTags());
    }
}
