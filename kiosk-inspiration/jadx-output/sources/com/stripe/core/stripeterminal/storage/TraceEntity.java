package com.stripe.core.stripeterminal.storage;

import androidx.core.app.NotificationCompat;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.stripe.jvmcore.logging.terminal.log.Span;
import com.stripe.loggingmodels.LogPoint;
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TraceEntity.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010$\n\u0002\b2\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0087\b\u0018\u0000 L2\u00020\u0001:\u0001LB\u0081\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\b\u001a\u00020\u0005\u0012\u0006\u0010\t\u001a\u00020\u0005\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0005\u0012\u0014\u0010\u000e\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u000f\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u0003¢\u0006\u0002\u0010\u0011J\t\u00103\u001a\u00020\u0003HÆ\u0003J\u000b\u00104\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0017\u00105\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u000fHÆ\u0003J\t\u00106\u001a\u00020\u0003HÆ\u0003J\t\u00107\u001a\u00020\u0005HÆ\u0003J\u000b\u00108\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u00109\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\t\u0010:\u001a\u00020\u0005HÆ\u0003J\t\u0010;\u001a\u00020\u0005HÆ\u0003J\u000b\u0010<\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0010\u0010=\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010-J\u000b\u0010>\u001a\u0004\u0018\u00010\u0005HÆ\u0003J \u0001\u0010?\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\b\u001a\u00020\u00052\b\b\u0002\u0010\t\u001a\u00020\u00052\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00052\u0016\b\u0002\u0010\u000e\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u000f2\b\b\u0002\u0010\u0010\u001a\u00020\u0003HÆ\u0001¢\u0006\u0002\u0010@J\u0013\u0010A\u001a\u00020B2\b\u0010C\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010D\u001a\u00020EHÖ\u0001J\u0014\u0010F\u001a\u00020G2\f\u0010H\u001a\b\u0012\u0004\u0012\u00020J0IJ\t\u0010K\u001a\u00020\u0005HÖ\u0001R \u0010\n\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u001e\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0013\"\u0004\b\u0017\u0010\u0015R\u001e\u0010\t\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0013\"\u0004\b\u0019\u0010\u0015R \u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u0013\"\u0004\b\u001b\u0010\u0015R \u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u0013\"\u0004\b\u001d\u0010\u0015R \u0010\r\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u0013\"\u0004\b\u001f\u0010\u0015R\u001e\u0010\b\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010\u0013\"\u0004\b!\u0010\u0015R \u0010\f\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\u0013\"\u0004\b#\u0010\u0015R\u001e\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'R,\u0010\u000e\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u000f8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010)\"\u0004\b*\u0010+R\"\u0010\u000b\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u00100\u001a\u0004\b,\u0010-\"\u0004\b.\u0010/R\u001e\u0010\u0010\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b1\u0010%\"\u0004\b2\u0010'¨\u0006M"}, d2 = {"Lcom/stripe/core/stripeterminal/storage/TraceEntity;", "", "startTimeMs", "", OfflineStorageConstantsKt.ID, "", "request", "response", NotificationCompat.CATEGORY_SERVICE, FirebaseAnalytics.Param.METHOD, "exception", "totalTimeMs", "sessionId", "serialNumber", "tags", "", "uid", "(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;J)V", "getException", "()Ljava/lang/String;", "setException", "(Ljava/lang/String;)V", "getId", "setId", "getMethod", "setMethod", "getRequest", "setRequest", "getResponse", "setResponse", "getSerialNumber", "setSerialNumber", "getService", "setService", "getSessionId", "setSessionId", "getStartTimeMs", "()J", "setStartTimeMs", "(J)V", "getTags", "()Ljava/util/Map;", "setTags", "(Ljava/util/Map;)V", "getTotalTimeMs", "()Ljava/lang/Long;", "setTotalTimeMs", "(Ljava/lang/Long;)V", "Ljava/lang/Long;", "getUid", "setUid", "component1", "component10", "component11", "component12", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;J)Lcom/stripe/core/stripeterminal/storage/TraceEntity;", "equals", "", "other", "hashCode", "", "toModel", "Lcom/stripe/jvmcore/logging/terminal/log/Span;", "logPoint", "", "Lcom/stripe/loggingmodels/LogPoint;", "toString", "Companion", "stripeterminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class TraceEntity {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private String exception;
    private String id;
    private String method;
    private String request;
    private String response;
    private String serialNumber;
    private String service;
    private String sessionId;
    private long startTimeMs;
    private Map<String, String> tags;
    private Long totalTimeMs;
    private long uid;

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final long getStartTimeMs() {
        return this.startTimeMs;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final String getSerialNumber() {
        return this.serialNumber;
    }

    public final Map<String, String> component11() {
        return this.tags;
    }

    /* JADX INFO: renamed from: component12, reason: from getter */
    public final long getUid() {
        return this.uid;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getId() {
        return this.id;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getRequest() {
        return this.request;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getResponse() {
        return this.response;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getService() {
        return this.service;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getMethod() {
        return this.method;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getException() {
        return this.exception;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final Long getTotalTimeMs() {
        return this.totalTimeMs;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final String getSessionId() {
        return this.sessionId;
    }

    public final TraceEntity copy(long startTimeMs, String id, String request, String response, String service, String method, String exception, Long totalTimeMs, String sessionId, String serialNumber, Map<String, String> tags, long uid) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(service, "service");
        Intrinsics.checkNotNullParameter(method, "method");
        return new TraceEntity(startTimeMs, id, request, response, service, method, exception, totalTimeMs, sessionId, serialNumber, tags, uid);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof TraceEntity)) {
            return false;
        }
        TraceEntity traceEntity = (TraceEntity) other;
        return this.startTimeMs == traceEntity.startTimeMs && Intrinsics.areEqual(this.id, traceEntity.id) && Intrinsics.areEqual(this.request, traceEntity.request) && Intrinsics.areEqual(this.response, traceEntity.response) && Intrinsics.areEqual(this.service, traceEntity.service) && Intrinsics.areEqual(this.method, traceEntity.method) && Intrinsics.areEqual(this.exception, traceEntity.exception) && Intrinsics.areEqual(this.totalTimeMs, traceEntity.totalTimeMs) && Intrinsics.areEqual(this.sessionId, traceEntity.sessionId) && Intrinsics.areEqual(this.serialNumber, traceEntity.serialNumber) && Intrinsics.areEqual(this.tags, traceEntity.tags) && this.uid == traceEntity.uid;
    }

    public int hashCode() {
        int iHashCode = ((Long.hashCode(this.startTimeMs) * 31) + this.id.hashCode()) * 31;
        String str = this.request;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.response;
        int iHashCode3 = (((((iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31) + this.service.hashCode()) * 31) + this.method.hashCode()) * 31;
        String str3 = this.exception;
        int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        Long l = this.totalTimeMs;
        int iHashCode5 = (iHashCode4 + (l == null ? 0 : l.hashCode())) * 31;
        String str4 = this.sessionId;
        int iHashCode6 = (iHashCode5 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.serialNumber;
        int iHashCode7 = (iHashCode6 + (str5 == null ? 0 : str5.hashCode())) * 31;
        Map<String, String> map = this.tags;
        return ((iHashCode7 + (map != null ? map.hashCode() : 0)) * 31) + Long.hashCode(this.uid);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("TraceEntity(startTimeMs=");
        sb.append(this.startTimeMs).append(", id=").append(this.id).append(", request=").append(this.request).append(", response=").append(this.response).append(", service=").append(this.service).append(", method=").append(this.method).append(", exception=").append(this.exception).append(", totalTimeMs=").append(this.totalTimeMs).append(", sessionId=").append(this.sessionId).append(", serialNumber=").append(this.serialNumber).append(", tags=").append(this.tags).append(", uid=");
        sb.append(this.uid).append(')');
        return sb.toString();
    }

    public TraceEntity(long j, String id, String str, String str2, String service, String method, String str3, Long l, String str4, String str5, Map<String, String> map, long j2) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(service, "service");
        Intrinsics.checkNotNullParameter(method, "method");
        this.startTimeMs = j;
        this.id = id;
        this.request = str;
        this.response = str2;
        this.service = service;
        this.method = method;
        this.exception = str3;
        this.totalTimeMs = l;
        this.sessionId = str4;
        this.serialNumber = str5;
        this.tags = map;
        this.uid = j2;
    }

    public /* synthetic */ TraceEntity(long j, String str, String str2, String str3, String str4, String str5, String str6, Long l, String str7, String str8, Map map, long j2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(j, str, str2, str3, str4, str5, str6, l, str7, str8, map, (i & 2048) != 0 ? 0L : j2);
    }

    public final long getStartTimeMs() {
        return this.startTimeMs;
    }

    public final void setStartTimeMs(long j) {
        this.startTimeMs = j;
    }

    public final String getId() {
        return this.id;
    }

    public final void setId(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.id = str;
    }

    public final String getRequest() {
        return this.request;
    }

    public final void setRequest(String str) {
        this.request = str;
    }

    public final String getResponse() {
        return this.response;
    }

    public final void setResponse(String str) {
        this.response = str;
    }

    public final String getService() {
        return this.service;
    }

    public final void setService(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.service = str;
    }

    public final String getMethod() {
        return this.method;
    }

    public final void setMethod(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.method = str;
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

    public final String getSessionId() {
        return this.sessionId;
    }

    public final void setSessionId(String str) {
        this.sessionId = str;
    }

    public final String getSerialNumber() {
        return this.serialNumber;
    }

    public final void setSerialNumber(String str) {
        this.serialNumber = str;
    }

    public final Map<String, String> getTags() {
        return this.tags;
    }

    public final void setTags(Map<String, String> map) {
        this.tags = map;
    }

    public final long getUid() {
        return this.uid;
    }

    public final void setUid(long j) {
        this.uid = j;
    }

    /* JADX INFO: compiled from: TraceEntity.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, d2 = {"Lcom/stripe/core/stripeterminal/storage/TraceEntity$Companion;", "", "()V", "fromModel", "Lcom/stripe/core/stripeterminal/storage/TraceEntity;", "model", "Lcom/stripe/jvmcore/logging/terminal/log/Span;", "stripeterminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final TraceEntity fromModel(Span model) {
            Intrinsics.checkNotNullParameter(model, "model");
            return new TraceEntity(model.getStartTimeMs(), model.getTraceId(), model.getRequest(), model.getResponse(), model.getService(), model.getMethod(), model.getException(), model.getTotalTimeMs(), model.getSessionId(), model.getSerialNumber(), model.getTags(), 0L, 2048, null);
        }
    }

    public final Span toModel(List<LogPoint> logPoint) {
        Intrinsics.checkNotNullParameter(logPoint, "logPoint");
        return Span.INSTANCE.recreateFromDb(this.startTimeMs, this.id, this.request, this.response, this.service, this.method, this.exception, this.totalTimeMs, this.sessionId, this.serialNumber, logPoint, this.tags);
    }
}
