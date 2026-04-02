package com.stripe.jvmcore.logging.terminal.log;

import androidx.core.app.NotificationCompat;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.perf.metrics.resource.ResourceType;
import com.stripe.loggingmodels.ApplicationTrace;
import com.stripe.loggingmodels.ApplicationTraceResult;
import com.stripe.loggingmodels.LogLevel;
import com.stripe.loggingmodels.LogPoint;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.Deprecated;
import kotlin.ExceptionsKt;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Span.kt */
/* JADX INFO: loaded from: classes3.dex */
@Deprecated(message = "Deprecated logging model type, migrated to Trace.", replaceWith = @ReplaceWith(expression = ResourceType.TRACE, imports = {"com.stripe.loggingmodels.Trace"}))
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\b\u0006\n\u0002\u0010!\n\u0002\b\u0012\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u0000 62\u00020\u0001:\u00016B\u0093\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0005\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0005\u0012\u0010\b\u0002\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\r\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0005\u0012\u0014\b\u0002\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0012¢\u0006\u0002\u0010\u0013J\u0016\u0010+\u001a\u00020,2\u0006\u0010\u000b\u001a\u00020-2\u0006\u0010.\u001a\u00020\u0003J\f\u0010/\u001a\b\u0012\u0004\u0012\u00020\u000e0\rJ*\u00100\u001a\u00020,2\b\u00101\u001a\u0004\u0018\u00010\u00052\b\u00102\u001a\u0004\u0018\u0001032\u0006\u00104\u001a\u0002052\u0006\u0010.\u001a\u00020\u0003R\u001c\u0010\t\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u0014\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u000e0\u0019X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\b\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0015R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0015R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u0015\"\u0004\b\u001d\u0010\u0017R\u0013\u0010\u0010\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u0015R\u0011\u0010\u0007\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010\u0015R\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b \u0010\u0015R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\"R\u001d\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0012¢\u0006\b\n\u0000\u001a\u0004\b#\u0010$R\u001e\u0010\n\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0002\u0010)\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b*\u0010\u0015¨\u00067"}, d2 = {"Lcom/stripe/jvmcore/logging/terminal/log/Span;", "", "startTimeMs", "", "traceId", "", "request", NotificationCompat.CATEGORY_SERVICE, FirebaseAnalytics.Param.METHOD, "exception", "totalTimeMs", "response", "traces", "", "Lcom/stripe/loggingmodels/LogPoint;", "sessionId", "serialNumber", "tags", "", "(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V", "getException", "()Ljava/lang/String;", "setException", "(Ljava/lang/String;)V", "logPointsList", "", "getMethod", "getRequest", "getResponse", "setResponse", "getSerialNumber", "getService", "getSessionId", "getStartTimeMs", "()J", "getTags", "()Ljava/util/Map;", "getTotalTimeMs", "()Ljava/lang/Long;", "setTotalTimeMs", "(Ljava/lang/Long;)V", "Ljava/lang/Long;", "getTraceId", "close", "", "Lcom/stripe/loggingmodels/ApplicationTraceResult;", "currentTimeMillis", "getLogPoints", "log", "message", "throwable", "", "logLevel", "Lcom/stripe/loggingmodels/LogLevel;", "Companion", "impl_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class Span {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private String exception;
    private final List<LogPoint> logPointsList;
    private final String method;
    private final String request;
    private String response;
    private final String serialNumber;
    private final String service;
    private final String sessionId;
    private final long startTimeMs;
    private final Map<String, String> tags;
    private Long totalTimeMs;
    private final String traceId;

    public Span(long j, String traceId, String str, String service, String method, String str2, Long l, String str3, List<LogPoint> list, String str4, String str5, Map<String, String> tags) {
        Intrinsics.checkNotNullParameter(traceId, "traceId");
        Intrinsics.checkNotNullParameter(service, "service");
        Intrinsics.checkNotNullParameter(method, "method");
        Intrinsics.checkNotNullParameter(tags, "tags");
        this.startTimeMs = j;
        this.traceId = traceId;
        this.request = str;
        this.service = service;
        this.method = method;
        this.exception = str2;
        this.totalTimeMs = l;
        this.response = str3;
        this.sessionId = str4;
        this.serialNumber = str5;
        this.tags = tags;
        ArrayList arrayList = new ArrayList();
        this.logPointsList = arrayList;
        if (list != null) {
            arrayList.addAll(list);
        }
    }

    public final long getStartTimeMs() {
        return this.startTimeMs;
    }

    public final String getTraceId() {
        return this.traceId;
    }

    public final String getRequest() {
        return this.request;
    }

    public final String getService() {
        return this.service;
    }

    public final String getMethod() {
        return this.method;
    }

    public final String getException() {
        return this.exception;
    }

    public final void setException(String str) {
        this.exception = str;
    }

    public final Long getTotalTimeMs() {
        return this.totalTimeMs;
    }

    public final void setTotalTimeMs(Long l) {
        this.totalTimeMs = l;
    }

    public final String getResponse() {
        return this.response;
    }

    public final void setResponse(String str) {
        this.response = str;
    }

    public final String getSessionId() {
        return this.sessionId;
    }

    public final String getSerialNumber() {
        return this.serialNumber;
    }

    public /* synthetic */ Span(long j, String str, String str2, String str3, String str4, String str5, Long l, String str6, List list, String str7, String str8, Map map, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(j, str, str2, str3, str4, (i & 32) != 0 ? null : str5, (i & 64) != 0 ? null : l, (i & 128) != 0 ? null : str6, (i & 256) != 0 ? null : list, (i & 512) != 0 ? null : str7, (i & 1024) != 0 ? null : str8, (i & 2048) != 0 ? MapsKt.emptyMap() : map);
    }

    public final Map<String, String> getTags() {
        return this.tags;
    }

    public final void log(String message, Throwable throwable, LogLevel logLevel, long currentTimeMillis) {
        Intrinsics.checkNotNullParameter(logLevel, "logLevel");
        this.logPointsList.add(new LogPoint(message, throwable != null ? ExceptionsKt.stackTraceToString(throwable) : null, logLevel, (int) (currentTimeMillis - this.startTimeMs)));
    }

    public final void close(ApplicationTraceResult response, long currentTimeMillis) {
        Intrinsics.checkNotNullParameter(response, "response");
        this.exception = response.getErrorMessage();
        this.response = GsonProvider.INSTANCE.getInstance().toJson(response);
        this.totalTimeMs = Long.valueOf(currentTimeMillis - this.startTimeMs);
    }

    public final List<LogPoint> getLogPoints() {
        return this.logPointsList;
    }

    /* JADX INFO: compiled from: Span.kt */
    @Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\b\n\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002JL\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\n2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\n2\u0014\b\u0002\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0\u000eJ\u0016\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0004J\u008b\u0001\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\n2\b\u0010\u0007\u001a\u0004\u0018\u00010\n2\b\u0010\u0013\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0014\u001a\u00020\n2\u0006\u0010\u0015\u001a\u00020\n2\b\u0010\u0016\u001a\u0004\u0018\u00010\n2\b\u0010\u0017\u001a\u0004\u0018\u00010\u00062\b\u0010\t\u001a\u0004\u0018\u00010\n2\b\u0010\f\u001a\u0004\u0018\u00010\n2\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u001a0\u00192\u0014\u0010\r\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u000e¢\u0006\u0002\u0010\u001b¨\u0006\u001c"}, d2 = {"Lcom/stripe/jvmcore/logging/terminal/log/Span$Companion;", "", "()V", "create", "Lcom/stripe/jvmcore/logging/terminal/log/Span;", "currentTimeMillis", "", "request", "Lcom/stripe/loggingmodels/ApplicationTrace;", "sessionId", "", "traceId", "serialNumber", "tags", "", "createNewFromExisting", "startTimeMillis", "span", "recreateFromDb", "response", NotificationCompat.CATEGORY_SERVICE, FirebaseAnalytics.Param.METHOD, "exception", "totalTimeMs", "logPoints", "", "Lcom/stripe/loggingmodels/LogPoint;", "(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)Lcom/stripe/jvmcore/logging/terminal/log/Span;", "impl_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ Span create$default(Companion companion, long j, ApplicationTrace applicationTrace, String str, String str2, String str3, Map map, int i, Object obj) {
            if ((i & 4) != 0) {
                str = null;
            }
            if ((i & 16) != 0) {
                str3 = null;
            }
            if ((i & 32) != 0) {
                map = MapsKt.emptyMap();
            }
            return companion.create(j, applicationTrace, str, str2, str3, map);
        }

        public final Span create(long currentTimeMillis, ApplicationTrace request, String sessionId, String traceId, String serialNumber, Map<String, String> tags) {
            Intrinsics.checkNotNullParameter(request, "request");
            Intrinsics.checkNotNullParameter(traceId, "traceId");
            Intrinsics.checkNotNullParameter(tags, "tags");
            return new Span(currentTimeMillis, traceId, GsonProvider.INSTANCE.getInstance().toJson(request), request.getService(), request.getMethod(), null, null, null, null, sessionId, serialNumber, tags, 480, null);
        }

        public final Span createNewFromExisting(long startTimeMillis, Span span) {
            Intrinsics.checkNotNullParameter(span, "span");
            return new Span(startTimeMillis, span.getTraceId(), span.getRequest(), span.getService(), span.getMethod(), null, null, null, null, span.getSessionId(), span.getSerialNumber(), span.getTags(), 480, null);
        }

        public final Span recreateFromDb(long startTimeMillis, String traceId, String request, String response, String service, String method, String exception, Long totalTimeMs, String sessionId, String serialNumber, List<LogPoint> logPoints, Map<String, String> tags) {
            Intrinsics.checkNotNullParameter(traceId, "traceId");
            Intrinsics.checkNotNullParameter(service, "service");
            Intrinsics.checkNotNullParameter(method, "method");
            Intrinsics.checkNotNullParameter(logPoints, "logPoints");
            return new Span(startTimeMillis, traceId, request, service, method, exception, totalTimeMs, response, logPoints, sessionId, serialNumber, tags == null ? MapsKt.emptyMap() : tags);
        }
    }
}
