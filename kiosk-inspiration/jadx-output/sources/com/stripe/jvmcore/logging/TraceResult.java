package com.stripe.jvmcore.logging;

import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DefaultTraceLogger.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0082\b\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\u0014\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0007¢\u0006\u0002\u0010\bJ\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0017\u0010\u0012\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0007HÆ\u0003JC\u0010\u0013\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\u0016\b\u0002\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0007HÆ\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001J\t\u0010\u0019\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u001f\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\nR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\n¨\u0006\u001a"}, d2 = {"Lcom/stripe/jvmcore/logging/TraceResult;", "", "response", "", "exception", "statusCode", DefaultTraceLogger.TAG_KEY_HTTP_RESPONSE_HEADERS, "", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V", "getException", "()Ljava/lang/String;", "getHttpResponseHeaders", "()Ljava/util/Map;", "getResponse", "getStatusCode", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "", "toString", "logging"}, k = 1, mv = {1, 9, 0}, xi = 48)
final /* data */ class TraceResult {
    private final String exception;
    private final Map<String, String> httpResponseHeaders;
    private final String response;
    private final String statusCode;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ TraceResult copy$default(TraceResult traceResult, String str, String str2, String str3, Map map, int i, Object obj) {
        if ((i & 1) != 0) {
            str = traceResult.response;
        }
        if ((i & 2) != 0) {
            str2 = traceResult.exception;
        }
        if ((i & 4) != 0) {
            str3 = traceResult.statusCode;
        }
        if ((i & 8) != 0) {
            map = traceResult.httpResponseHeaders;
        }
        return traceResult.copy(str, str2, str3, map);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getResponse() {
        return this.response;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getException() {
        return this.exception;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getStatusCode() {
        return this.statusCode;
    }

    public final Map<String, String> component4() {
        return this.httpResponseHeaders;
    }

    public final TraceResult copy(String response, String exception, String statusCode, Map<String, String> httpResponseHeaders) {
        Intrinsics.checkNotNullParameter(response, "response");
        return new TraceResult(response, exception, statusCode, httpResponseHeaders);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof TraceResult)) {
            return false;
        }
        TraceResult traceResult = (TraceResult) other;
        return Intrinsics.areEqual(this.response, traceResult.response) && Intrinsics.areEqual(this.exception, traceResult.exception) && Intrinsics.areEqual(this.statusCode, traceResult.statusCode) && Intrinsics.areEqual(this.httpResponseHeaders, traceResult.httpResponseHeaders);
    }

    public int hashCode() {
        int iHashCode = this.response.hashCode() * 31;
        String str = this.exception;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.statusCode;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        Map<String, String> map = this.httpResponseHeaders;
        return iHashCode3 + (map != null ? map.hashCode() : 0);
    }

    public String toString() {
        return "TraceResult(response=" + this.response + ", exception=" + this.exception + ", statusCode=" + this.statusCode + ", httpResponseHeaders=" + this.httpResponseHeaders + ')';
    }

    public TraceResult(String response, String str, String str2, Map<String, String> map) {
        Intrinsics.checkNotNullParameter(response, "response");
        this.response = response;
        this.exception = str;
        this.statusCode = str2;
        this.httpResponseHeaders = map;
    }

    public final String getResponse() {
        return this.response;
    }

    public final String getException() {
        return this.exception;
    }

    public final String getStatusCode() {
        return this.statusCode;
    }

    public final Map<String, String> getHttpResponseHeaders() {
        return this.httpResponseHeaders;
    }
}
