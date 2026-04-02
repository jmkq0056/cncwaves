package com.stripe.loggingmodels;

import androidx.core.app.NotificationCompat;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.stripe.jvmcore.logging.DefaultTraceLogger;
import com.stripe.time.Clock;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import kotlin.ExceptionsKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Trace.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000v\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010 \n\u0002\b\u0012\n\u0002\u0010\u0002\n\u0002\b\u0010\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001:\u0001]B\u0093\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u0005\u0012\u0014\u0010\u000f\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0010\u0012\u0006\u0010\u0011\u001a\u00020\u0012\u0012\u0012\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0010¢\u0006\u0002\u0010\u0014J\u001a\u00109\u001a\u00020:2\u0012\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0010J\t\u0010;\u001a\u00020\u0003HÆ\u0003J\u000b\u0010<\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0017\u0010=\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0010HÆ\u0003J\t\u0010>\u001a\u00020\u0012HÆ\u0003J\u0015\u0010?\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0010HÆ\u0003J\t\u0010@\u001a\u00020\u0005HÆ\u0003J\t\u0010A\u001a\u00020\u0005HÆ\u0003J\t\u0010B\u001a\u00020\u0005HÆ\u0003J\u0010\u0010C\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u001fJ\u0010\u0010D\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u001fJ\u0010\u0010E\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u001fJ\u000b\u0010F\u001a\u0004\u0018\u00010\fHÆ\u0003J\u000b\u0010G\u001a\u0004\u0018\u00010\u0005HÆ\u0003J¶\u0001\u0010H\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u00052\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00052\u0016\b\u0002\u0010\u000f\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00102\b\b\u0002\u0010\u0011\u001a\u00020\u00122\u0014\b\u0002\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0010HÆ\u0001¢\u0006\u0002\u0010IJ\u0013\u0010J\u001a\u00020K2\b\u0010L\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010M\u001a\u00020NHÖ\u0001J,\u0010O\u001a\u00020:2\b\u0010P\u001a\u0004\u0018\u00010\u00052\b\u0010Q\u001a\u0004\u0018\u00010R2\u0006\u0010S\u001a\u00020T2\b\b\u0002\u0010U\u001a\u00020\u0003J\u001e\u0010V\u001a\u00020:2\u0006\u0010W\u001a\u00020\u00052\u0006\u0010X\u001a\u00020N2\u0006\u0010Y\u001a\u00020\u0003J\u0016\u0010V\u001a\u00020:2\u0006\u0010W\u001a\u00020\u00052\u0006\u0010Y\u001a\u00020\u0003J\f\u0010Z\u001a\b\u0012\u0004\u0012\u00020[0'J\t\u0010\\\u001a\u00020\u0005HÖ\u0001R\u0014\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00170\u0016X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00190\u0016X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0011\u001a\u00020\u0012¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001bR\u0013\u0010\u000b\u001a\u0004\u0018\u00010\f¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001dR\u0015\u0010\n\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010 \u001a\u0004\b\u001e\u0010\u001fR\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\"R\u001f\u0010\u000f\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0010¢\u0006\b\n\u0000\u001a\u0004\b#\u0010$R\u0013\u0010\r\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b%\u0010\"R!\u0010&\u001a\b\u0012\u0004\u0012\u00020\u00170'8FX\u0086\u0084\u0002¢\u0006\f\u001a\u0004\b*\u0010+*\u0004\b(\u0010)R!\u0010,\u001a\b\u0012\u0004\u0012\u00020\u00190'8FX\u0086\u0084\u0002¢\u0006\f\u001a\u0004\b.\u0010+*\u0004\b-\u0010)R\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b/\u0010\"R\u0015\u0010\t\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010 \u001a\u0004\b0\u0010\u001fR\u0011\u0010\u0007\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b1\u0010\"R\u0015\u0010\b\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010 \u001a\u0004\b2\u0010\u001fR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b3\u0010\"R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b4\u00105R&\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b6\u0010$\"\u0004\b7\u00108¨\u0006^"}, d2 = {"Lcom/stripe/loggingmodels/Trace;", "", "startTimeMillis", "", NotificationCompat.CATEGORY_SERVICE, "", FirebaseAnalytics.Param.METHOD, "request", "rootId", "parentId", "currentId", "context", "Lcom/stripe/loggingmodels/Trace$Context;", DefaultTraceLogger.TAG_KEY_HTTP_URL, DefaultTraceLogger.TAG_KEY_HTTP_METHOD, DefaultTraceLogger.TAG_KEY_HTTP_REQUEST_HEADERS, "", "clock", "Lcom/stripe/time/Clock;", "tags", "(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lcom/stripe/loggingmodels/Trace$Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/stripe/time/Clock;Ljava/util/Map;)V", "_logPoints", "", "Lcom/stripe/loggingmodels/LogPoint;", "_meterPoints", "Lcom/stripe/loggingmodels/MeterPoint;", "getClock", "()Lcom/stripe/time/Clock;", "getContext", "()Lcom/stripe/loggingmodels/Trace$Context;", "getCurrentId", "()Ljava/lang/Long;", "Ljava/lang/Long;", "getHttpMethod", "()Ljava/lang/String;", "getHttpRequestHeaders", "()Ljava/util/Map;", "getHttpUrl", "logPoints", "", "getLogPoints$delegate", "(Lcom/stripe/loggingmodels/Trace;)Ljava/lang/Object;", "getLogPoints", "()Ljava/util/List;", "meterPoints", "getMeterPoints$delegate", "getMeterPoints", "getMethod", "getParentId", "getRequest", "getRootId", "getService", "getStartTimeMillis", "()J", "getTags", "setTags", "(Ljava/util/Map;)V", "addTags", "", "component1", "component10", "component11", "component12", "component13", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lcom/stripe/loggingmodels/Trace$Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/stripe/time/Clock;Ljava/util/Map;)Lcom/stripe/loggingmodels/Trace;", "equals", "", "other", "hashCode", "", "log", "message", "throwable", "", "logLevel", "Lcom/stripe/loggingmodels/LogLevel;", "currentTimeMillis", "meter", "eventName", "offsetMs", "elapsedMs", "spanPoints", "Lcom/stripe/loggingmodels/SpanPoint;", "toString", "Context", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class Trace {
    private final List<LogPoint> _logPoints;
    private final List<MeterPoint> _meterPoints;
    private final Clock clock;
    private final Context context;
    private final Long currentId;
    private final String httpMethod;
    private final Map<String, String> httpRequestHeaders;
    private final String httpUrl;
    private final String method;
    private final Long parentId;
    private final String request;
    private final Long rootId;
    private final String service;
    private final long startTimeMillis;
    private Map<String, String> tags;

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final long getStartTimeMillis() {
        return this.startTimeMillis;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final String getHttpMethod() {
        return this.httpMethod;
    }

    public final Map<String, String> component11() {
        return this.httpRequestHeaders;
    }

    /* JADX INFO: renamed from: component12, reason: from getter */
    public final Clock getClock() {
        return this.clock;
    }

    public final Map<String, String> component13() {
        return this.tags;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getService() {
        return this.service;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getMethod() {
        return this.method;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getRequest() {
        return this.request;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final Long getRootId() {
        return this.rootId;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final Long getParentId() {
        return this.parentId;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final Long getCurrentId() {
        return this.currentId;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final Context getContext() {
        return this.context;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final String getHttpUrl() {
        return this.httpUrl;
    }

    public final Trace copy(long startTimeMillis, String service, String method, String request, Long rootId, Long parentId, Long currentId, Context context, String httpUrl, String httpMethod, Map<String, String> httpRequestHeaders, Clock clock, Map<String, String> tags) {
        Intrinsics.checkNotNullParameter(service, "service");
        Intrinsics.checkNotNullParameter(method, "method");
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(clock, "clock");
        Intrinsics.checkNotNullParameter(tags, "tags");
        return new Trace(startTimeMillis, service, method, request, rootId, parentId, currentId, context, httpUrl, httpMethod, httpRequestHeaders, clock, tags);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Trace)) {
            return false;
        }
        Trace trace = (Trace) other;
        return this.startTimeMillis == trace.startTimeMillis && Intrinsics.areEqual(this.service, trace.service) && Intrinsics.areEqual(this.method, trace.method) && Intrinsics.areEqual(this.request, trace.request) && Intrinsics.areEqual(this.rootId, trace.rootId) && Intrinsics.areEqual(this.parentId, trace.parentId) && Intrinsics.areEqual(this.currentId, trace.currentId) && Intrinsics.areEqual(this.context, trace.context) && Intrinsics.areEqual(this.httpUrl, trace.httpUrl) && Intrinsics.areEqual(this.httpMethod, trace.httpMethod) && Intrinsics.areEqual(this.httpRequestHeaders, trace.httpRequestHeaders) && Intrinsics.areEqual(this.clock, trace.clock) && Intrinsics.areEqual(this.tags, trace.tags);
    }

    public int hashCode() {
        int iHashCode = ((((((Long.hashCode(this.startTimeMillis) * 31) + this.service.hashCode()) * 31) + this.method.hashCode()) * 31) + this.request.hashCode()) * 31;
        Long l = this.rootId;
        int iHashCode2 = (iHashCode + (l == null ? 0 : l.hashCode())) * 31;
        Long l2 = this.parentId;
        int iHashCode3 = (iHashCode2 + (l2 == null ? 0 : l2.hashCode())) * 31;
        Long l3 = this.currentId;
        int iHashCode4 = (iHashCode3 + (l3 == null ? 0 : l3.hashCode())) * 31;
        Context context = this.context;
        int iHashCode5 = (iHashCode4 + (context == null ? 0 : context.hashCode())) * 31;
        String str = this.httpUrl;
        int iHashCode6 = (iHashCode5 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.httpMethod;
        int iHashCode7 = (iHashCode6 + (str2 == null ? 0 : str2.hashCode())) * 31;
        Map<String, String> map = this.httpRequestHeaders;
        return ((((iHashCode7 + (map != null ? map.hashCode() : 0)) * 31) + this.clock.hashCode()) * 31) + this.tags.hashCode();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Trace(startTimeMillis=");
        sb.append(this.startTimeMillis).append(", service=").append(this.service).append(", method=").append(this.method).append(", request=").append(this.request).append(", rootId=").append(this.rootId).append(", parentId=").append(this.parentId).append(", currentId=").append(this.currentId).append(", context=").append(this.context).append(", httpUrl=").append(this.httpUrl).append(", httpMethod=").append(this.httpMethod).append(", httpRequestHeaders=").append(this.httpRequestHeaders).append(", clock=");
        sb.append(this.clock).append(", tags=").append(this.tags).append(')');
        return sb.toString();
    }

    public Trace(long j, String service, String method, String request, Long l, Long l2, Long l3, Context context, String str, String str2, Map<String, String> map, Clock clock, Map<String, String> tags) {
        Intrinsics.checkNotNullParameter(service, "service");
        Intrinsics.checkNotNullParameter(method, "method");
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(clock, "clock");
        Intrinsics.checkNotNullParameter(tags, "tags");
        this.startTimeMillis = j;
        this.service = service;
        this.method = method;
        this.request = request;
        this.rootId = l;
        this.parentId = l2;
        this.currentId = l3;
        this.context = context;
        this.httpUrl = str;
        this.httpMethod = str2;
        this.httpRequestHeaders = map;
        this.clock = clock;
        this.tags = tags;
        this._logPoints = new ArrayList();
        this._meterPoints = new ArrayList();
    }

    public final long getStartTimeMillis() {
        return this.startTimeMillis;
    }

    public final String getService() {
        return this.service;
    }

    public final String getMethod() {
        return this.method;
    }

    public final String getRequest() {
        return this.request;
    }

    public final Long getRootId() {
        return this.rootId;
    }

    public final Long getParentId() {
        return this.parentId;
    }

    public final Long getCurrentId() {
        return this.currentId;
    }

    public final Context getContext() {
        return this.context;
    }

    public final String getHttpUrl() {
        return this.httpUrl;
    }

    public final String getHttpMethod() {
        return this.httpMethod;
    }

    public final Map<String, String> getHttpRequestHeaders() {
        return this.httpRequestHeaders;
    }

    public final Clock getClock() {
        return this.clock;
    }

    public final Map<String, String> getTags() {
        return this.tags;
    }

    public final void setTags(Map<String, String> map) {
        Intrinsics.checkNotNullParameter(map, "<set-?>");
        this.tags = map;
    }

    public final List<LogPoint> getLogPoints() {
        return this._logPoints;
    }

    public final List<MeterPoint> getMeterPoints() {
        return this._meterPoints;
    }

    public final List<SpanPoint> spanPoints() {
        return CollectionsKt.sorted(CollectionsKt.plus((Collection) getLogPoints(), (Iterable) getMeterPoints()));
    }

    /* JADX INFO: compiled from: Trace.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B#\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0006J\u000b\u0010\u000b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\r\u001a\u0004\u0018\u00010\u0003HÆ\u0003J-\u0010\u000e\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\bR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\b¨\u0006\u0015"}, d2 = {"Lcom/stripe/loggingmodels/Trace$Context;", "", "serialNumber", "", "sessionId", "actionId", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getActionId", "()Ljava/lang/String;", "getSerialNumber", "getSessionId", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class Context {
        private final String actionId;
        private final String serialNumber;
        private final String sessionId;

        public static /* synthetic */ Context copy$default(Context context, String str, String str2, String str3, int i, Object obj) {
            if ((i & 1) != 0) {
                str = context.serialNumber;
            }
            if ((i & 2) != 0) {
                str2 = context.sessionId;
            }
            if ((i & 4) != 0) {
                str3 = context.actionId;
            }
            return context.copy(str, str2, str3);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getSerialNumber() {
            return this.serialNumber;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String getSessionId() {
            return this.sessionId;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final String getActionId() {
            return this.actionId;
        }

        public final Context copy(String serialNumber, String sessionId, String actionId) {
            return new Context(serialNumber, sessionId, actionId);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Context)) {
                return false;
            }
            Context context = (Context) other;
            return Intrinsics.areEqual(this.serialNumber, context.serialNumber) && Intrinsics.areEqual(this.sessionId, context.sessionId) && Intrinsics.areEqual(this.actionId, context.actionId);
        }

        public int hashCode() {
            String str = this.serialNumber;
            int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
            String str2 = this.sessionId;
            int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
            String str3 = this.actionId;
            return iHashCode2 + (str3 != null ? str3.hashCode() : 0);
        }

        public String toString() {
            return "Context(serialNumber=" + this.serialNumber + ", sessionId=" + this.sessionId + ", actionId=" + this.actionId + ')';
        }

        public Context(String str, String str2, String str3) {
            this.serialNumber = str;
            this.sessionId = str2;
            this.actionId = str3;
        }

        public final String getSerialNumber() {
            return this.serialNumber;
        }

        public final String getSessionId() {
            return this.sessionId;
        }

        public final String getActionId() {
            return this.actionId;
        }
    }

    public static /* synthetic */ void log$default(Trace trace, String str, Throwable th, LogLevel logLevel, long j, int i, Object obj) {
        if ((i & 8) != 0) {
            j = trace.clock.currentTimeMillis();
        }
        trace.log(str, th, logLevel, j);
    }

    public final void log(String message, Throwable throwable, LogLevel logLevel, long currentTimeMillis) {
        Intrinsics.checkNotNullParameter(logLevel, "logLevel");
        this._logPoints.add(new LogPoint(message, throwable != null ? ExceptionsKt.stackTraceToString(throwable) : null, logLevel, (int) (currentTimeMillis - this.startTimeMillis)));
    }

    public final void meter(String eventName, int offsetMs, long elapsedMs) {
        Intrinsics.checkNotNullParameter(eventName, "eventName");
        this._meterPoints.add(new MeterPoint(eventName, offsetMs, elapsedMs));
    }

    public final void meter(String eventName, long elapsedMs) {
        Intrinsics.checkNotNullParameter(eventName, "eventName");
        meter(eventName, (int) (this.clock.currentTimeMillis() - this.startTimeMillis), elapsedMs);
    }

    public final void addTags(Map<String, String> tags) {
        Intrinsics.checkNotNullParameter(tags, "tags");
        this.tags = MapsKt.plus(this.tags, tags);
    }
}
