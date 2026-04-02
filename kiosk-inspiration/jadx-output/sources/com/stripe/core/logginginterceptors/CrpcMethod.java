package com.stripe.core.logginginterceptors;

import androidx.core.app.NotificationCompat;
import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CrpcLogLevel.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0081\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0006HÆ\u0003J'\u0010\u0010\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0006HÆ\u0001J\u0013\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001J\t\u0010\u0016\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u000b¨\u0006\u0017"}, d2 = {"Lcom/stripe/core/logginginterceptors/CrpcMethod;", "", NotificationCompat.CATEGORY_SERVICE, "", FirebaseAnalytics.Param.METHOD, "logLevel", "Lcom/stripe/core/logginginterceptors/CrpcLogLevel;", "(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/core/logginginterceptors/CrpcLogLevel;)V", "getLogLevel", "()Lcom/stripe/core/logginginterceptors/CrpcLogLevel;", "getMethod", "()Ljava/lang/String;", "getService", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "logging-interceptors_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class CrpcMethod {
    private final CrpcLogLevel logLevel;
    private final String method;
    private final String service;

    public static /* synthetic */ CrpcMethod copy$default(CrpcMethod crpcMethod, String str, String str2, CrpcLogLevel crpcLogLevel, int i, Object obj) {
        if ((i & 1) != 0) {
            str = crpcMethod.service;
        }
        if ((i & 2) != 0) {
            str2 = crpcMethod.method;
        }
        if ((i & 4) != 0) {
            crpcLogLevel = crpcMethod.logLevel;
        }
        return crpcMethod.copy(str, str2, crpcLogLevel);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getService() {
        return this.service;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getMethod() {
        return this.method;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final CrpcLogLevel getLogLevel() {
        return this.logLevel;
    }

    public final CrpcMethod copy(String service, String method, CrpcLogLevel logLevel) {
        Intrinsics.checkNotNullParameter(service, "service");
        Intrinsics.checkNotNullParameter(method, "method");
        Intrinsics.checkNotNullParameter(logLevel, "logLevel");
        return new CrpcMethod(service, method, logLevel);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CrpcMethod)) {
            return false;
        }
        CrpcMethod crpcMethod = (CrpcMethod) other;
        return Intrinsics.areEqual(this.service, crpcMethod.service) && Intrinsics.areEqual(this.method, crpcMethod.method) && this.logLevel == crpcMethod.logLevel;
    }

    public int hashCode() {
        return (((this.service.hashCode() * 31) + this.method.hashCode()) * 31) + this.logLevel.hashCode();
    }

    public String toString() {
        return "CrpcMethod(service=" + this.service + ", method=" + this.method + ", logLevel=" + this.logLevel + ')';
    }

    public CrpcMethod(String service, String method, CrpcLogLevel logLevel) {
        Intrinsics.checkNotNullParameter(service, "service");
        Intrinsics.checkNotNullParameter(method, "method");
        Intrinsics.checkNotNullParameter(logLevel, "logLevel");
        this.service = service;
        this.method = method;
        this.logLevel = logLevel;
    }

    public final String getService() {
        return this.service;
    }

    public final String getMethod() {
        return this.method;
    }

    public /* synthetic */ CrpcMethod(String str, String str2, CrpcLogLevel crpcLogLevel, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, (i & 4) != 0 ? CrpcLogLevel.VERBOSE : crpcLogLevel);
    }

    public final CrpcLogLevel getLogLevel() {
        return this.logLevel;
    }
}
