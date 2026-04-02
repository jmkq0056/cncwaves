package com.stripe.loggingmodels;

import androidx.core.app.NotificationCompat;
import com.google.android.gms.measurement.AppMeasurement;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ApplicationTrace.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\b\b\b\u0016\u0018\u0000 \r2\u00020\u0001:\u0001\rB-\b\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0014\b\u0002\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u0006¢\u0006\u0002\u0010\u0007R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\tR\u001d\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\u000e"}, d2 = {"Lcom/stripe/loggingmodels/ApplicationTrace;", "", NotificationCompat.CATEGORY_SERVICE, "", FirebaseAnalytics.Param.METHOD, "tags", "", "(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V", "getMethod", "()Ljava/lang/String;", "getService", "getTags", "()Ljava/util/Map;", "Companion", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public class ApplicationTrace {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final String method;
    private final String service;
    private final Map<String, String> tags;

    protected ApplicationTrace(String service, String method, Map<String, String> tags) {
        Intrinsics.checkNotNullParameter(service, "service");
        Intrinsics.checkNotNullParameter(method, "method");
        Intrinsics.checkNotNullParameter(tags, "tags");
        this.service = service;
        this.method = method;
        this.tags = tags;
    }

    public final String getService() {
        return this.service;
    }

    public final String getMethod() {
        return this.method;
    }

    public /* synthetic */ ApplicationTrace(String str, String str2, Map map, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, (i & 4) != 0 ? MapsKt.emptyMap() : map);
    }

    public final Map<String, String> getTags() {
        return this.tags;
    }

    /* JADX INFO: compiled from: ApplicationTrace.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004J\u0006\u0010\u0005\u001a\u00020\u0004¨\u0006\u0006"}, d2 = {"Lcom/stripe/loggingmodels/ApplicationTrace$Companion;", "", "()V", AppMeasurement.CRASH_ORIGIN, "Lcom/stripe/loggingmodels/ApplicationTrace;", "flush", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final ApplicationTrace crash() {
            return new ApplicationTrace("ApplicationTrace", AppMeasurement.CRASH_ORIGIN, null, 4, null);
        }

        public final ApplicationTrace flush() {
            return new ApplicationTrace("ApplicationTrace", "flush", null, 4, null);
        }
    }
}
