package com.stripe.jvmcore.traffictype;

import androidx.core.app.NotificationCompat;
import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TrafficType.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0002\u0003\u0004B\u0007\b\u0004¢\u0006\u0002\u0010\u0002\u0082\u0001\u0002\u0005\u0006¨\u0006\u0007"}, d2 = {"Lcom/stripe/jvmcore/traffictype/TrafficType;", "", "()V", "Crpc", "Rest", "Lcom/stripe/jvmcore/traffictype/TrafficType$Crpc;", "Lcom/stripe/jvmcore/traffictype/TrafficType$Rest;", "traffic-type"}, k = 1, mv = {1, 9, 0}, xi = 48)
public abstract class TrafficType {
    public /* synthetic */ TrafficType(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private TrafficType() {
    }

    /* JADX INFO: compiled from: TrafficType.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lcom/stripe/jvmcore/traffictype/TrafficType$Rest;", "Lcom/stripe/jvmcore/traffictype/TrafficType;", "()V", "traffic-type"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Rest extends TrafficType {
        public static final Rest INSTANCE = new Rest();

        private Rest() {
            super(null);
        }
    }

    /* JADX INFO: compiled from: TrafficType.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005J\t\u0010\t\u001a\u00020\u0003HÆ\u0003J\t\u0010\n\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\u000b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fHÖ\u0003J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0007¨\u0006\u0013"}, d2 = {"Lcom/stripe/jvmcore/traffictype/TrafficType$Crpc;", "Lcom/stripe/jvmcore/traffictype/TrafficType;", NotificationCompat.CATEGORY_SERVICE, "", FirebaseAnalytics.Param.METHOD, "(Ljava/lang/String;Ljava/lang/String;)V", "getMethod", "()Ljava/lang/String;", "getService", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "", "toString", "traffic-type"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class Crpc extends TrafficType {
        private final String method;
        private final String service;

        public static /* synthetic */ Crpc copy$default(Crpc crpc, String str, String str2, int i, Object obj) {
            if ((i & 1) != 0) {
                str = crpc.service;
            }
            if ((i & 2) != 0) {
                str2 = crpc.method;
            }
            return crpc.copy(str, str2);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getService() {
            return this.service;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String getMethod() {
            return this.method;
        }

        public final Crpc copy(String service, String method) {
            Intrinsics.checkNotNullParameter(service, "service");
            Intrinsics.checkNotNullParameter(method, "method");
            return new Crpc(service, method);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Crpc)) {
                return false;
            }
            Crpc crpc = (Crpc) other;
            return Intrinsics.areEqual(this.service, crpc.service) && Intrinsics.areEqual(this.method, crpc.method);
        }

        public int hashCode() {
            return (this.service.hashCode() * 31) + this.method.hashCode();
        }

        public String toString() {
            return "Crpc(service=" + this.service + ", method=" + this.method + ')';
        }

        public final String getService() {
            return this.service;
        }

        public final String getMethod() {
            return this.method;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Crpc(String service, String method) {
            super(null);
            Intrinsics.checkNotNullParameter(service, "service");
            Intrinsics.checkNotNullParameter(method, "method");
            this.service = service;
            this.method = method;
        }
    }
}
