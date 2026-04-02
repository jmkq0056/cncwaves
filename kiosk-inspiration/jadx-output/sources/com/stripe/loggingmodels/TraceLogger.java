package com.stripe.loggingmodels;

import androidx.core.app.NotificationCompat;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.squareup.wire.Message;
import com.stripe.jvmcore.logging.DefaultTraceLogger;
import com.stripe.loggingmodels.Trace;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.MapsKt;

/* JADX INFO: compiled from: TraceLogger.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\bf\u0018\u00002\u00020\u0001J@\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00072\u0016\b\u0002\u0010\t\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0007\u0018\u00010\nH&J<\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\r2\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00072\u0016\b\u0002\u0010\t\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0007\u0018\u00010\nH&J:\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0010\u0010\u000f\u001a\f\u0012\u0002\b\u0003\u0012\u0002\b\u0003\u0018\u00010\u00102\u0016\b\u0002\u0010\t\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0007\u0018\u00010\nH&J0\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u00072\u0016\b\u0002\u0010\t\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0007\u0018\u00010\nH&J\b\u0010\u0011\u001a\u00020\u0003H&J¥\u0001\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u00072\u0010\u0010\u0015\u001a\f\u0012\u0002\b\u0003\u0012\u0002\b\u0003\u0018\u00010\u00102\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00172\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00172\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00172\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u00072\u0016\b\u0002\u0010\u001e\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0007\u0018\u00010\n2\u0014\b\u0002\u0010\u001f\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\nH&¢\u0006\u0002\u0010 J\u009b\u0001\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u00072\u0006\u0010\u0015\u001a\u00020\u00072\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00172\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00172\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00172\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u00072\u0016\b\u0002\u0010\u001e\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0007\u0018\u00010\n2\u0014\b\u0002\u0010\u001f\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\nH&¢\u0006\u0002\u0010!ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\"À\u0006\u0001"}, d2 = {"Lcom/stripe/loggingmodels/TraceLogger;", "", "endTraceWithErrorMessage", "", "trace", "Lcom/stripe/loggingmodels/Trace;", "message", "", "statusCode", DefaultTraceLogger.TAG_KEY_HTTP_RESPONSE_HEADERS, "", "endTraceWithException", "t", "", "endTraceWithSuccess", "response", "Lcom/squareup/wire/Message;", "init", "startTrace", NotificationCompat.CATEGORY_SERVICE, FirebaseAnalytics.Param.METHOD, "request", "rootId", "", "parentId", "currentId", "context", "Lcom/stripe/loggingmodels/Trace$Context;", DefaultTraceLogger.TAG_KEY_HTTP_URL, DefaultTraceLogger.TAG_KEY_HTTP_METHOD, DefaultTraceLogger.TAG_KEY_HTTP_REQUEST_HEADERS, "tags", "(Ljava/lang/String;Ljava/lang/String;Lcom/squareup/wire/Message;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lcom/stripe/loggingmodels/Trace$Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/stripe/loggingmodels/Trace;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lcom/stripe/loggingmodels/Trace$Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/stripe/loggingmodels/Trace;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface TraceLogger {
    void endTraceWithErrorMessage(Trace trace, String message, String statusCode, Map<String, String> httpResponseHeaders);

    void endTraceWithException(Trace trace, Throwable t, String statusCode, Map<String, String> httpResponseHeaders);

    void endTraceWithSuccess(Trace trace, Message<?, ?> response, Map<String, String> httpResponseHeaders);

    void endTraceWithSuccess(Trace trace, String response, Map<String, String> httpResponseHeaders);

    void init();

    Trace startTrace(String service, String method, Message<?, ?> request, Long rootId, Long parentId, Long currentId, Trace.Context context, String httpUrl, String httpMethod, Map<String, String> httpRequestHeaders, Map<String, String> tags);

    Trace startTrace(String service, String method, String request, Long rootId, Long parentId, Long currentId, Trace.Context context, String httpUrl, String httpMethod, Map<String, String> httpRequestHeaders, Map<String, String> tags);

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ Trace startTrace$default(TraceLogger traceLogger, String str, String str2, Message message, Long l, Long l2, Long l3, Trace.Context context, String str3, String str4, Map map, Map map2, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: startTrace");
        }
        if ((i & 8) != 0) {
            l = null;
        }
        if ((i & 16) != 0) {
            l2 = null;
        }
        if ((i & 32) != 0) {
            l3 = null;
        }
        if ((i & 64) != 0) {
            context = null;
        }
        if ((i & 128) != 0) {
            str3 = null;
        }
        if ((i & 256) != 0) {
            str4 = null;
        }
        if ((i & 512) != 0) {
            map = null;
        }
        if ((i & 1024) != 0) {
            map2 = MapsKt.emptyMap();
        }
        return traceLogger.startTrace(str, str2, (Message<?, ?>) message, l, l2, l3, context, str3, str4, (Map<String, String>) map, (Map<String, String>) map2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ Trace startTrace$default(TraceLogger traceLogger, String str, String str2, String str3, Long l, Long l2, Long l3, Trace.Context context, String str4, String str5, Map map, Map map2, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: startTrace");
        }
        if ((i & 8) != 0) {
            l = null;
        }
        if ((i & 16) != 0) {
            l2 = null;
        }
        if ((i & 32) != 0) {
            l3 = null;
        }
        if ((i & 64) != 0) {
            context = null;
        }
        if ((i & 128) != 0) {
            str4 = null;
        }
        if ((i & 256) != 0) {
            str5 = null;
        }
        if ((i & 512) != 0) {
            map = null;
        }
        if ((i & 1024) != 0) {
            map2 = MapsKt.emptyMap();
        }
        return traceLogger.startTrace(str, str2, str3, l, l2, l3, context, str4, str5, (Map<String, String>) map, (Map<String, String>) map2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ void endTraceWithSuccess$default(TraceLogger traceLogger, Trace trace, Message message, Map map, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: endTraceWithSuccess");
        }
        if ((i & 4) != 0) {
            map = null;
        }
        traceLogger.endTraceWithSuccess(trace, (Message<?, ?>) message, (Map<String, String>) map);
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ void endTraceWithSuccess$default(TraceLogger traceLogger, Trace trace, String str, Map map, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: endTraceWithSuccess");
        }
        if ((i & 4) != 0) {
            map = null;
        }
        traceLogger.endTraceWithSuccess(trace, str, (Map<String, String>) map);
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ void endTraceWithException$default(TraceLogger traceLogger, Trace trace, Throwable th, String str, Map map, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: endTraceWithException");
        }
        if ((i & 4) != 0) {
            str = null;
        }
        if ((i & 8) != 0) {
            map = null;
        }
        traceLogger.endTraceWithException(trace, th, str, map);
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ void endTraceWithErrorMessage$default(TraceLogger traceLogger, Trace trace, String str, String str2, Map map, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: endTraceWithErrorMessage");
        }
        if ((i & 2) != 0) {
            str = null;
        }
        if ((i & 4) != 0) {
            str2 = null;
        }
        if ((i & 8) != 0) {
            map = null;
        }
        traceLogger.endTraceWithErrorMessage(trace, str, str2, map);
    }
}
