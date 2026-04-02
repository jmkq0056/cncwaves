package com.stripe.jvmcore.logging;

import androidx.core.app.NotificationCompat;
import com.stripe.loggingmodels.Outcome;
import java.util.Map;
import kotlin.Metadata;

/* JADX INFO: compiled from: HealthLogger.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J]\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0012\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\r2\u0006\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H&¢\u0006\u0002\u0010\u0012ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0013À\u0006\u0001"}, d2 = {"Lcom/stripe/jvmcore/logging/HealthMetricListener;", "", "onHealthMetricLogged", "", "domain", "", "scope", NotificationCompat.CATEGORY_EVENT, "type", "Lcom/stripe/jvmcore/logging/MetricType;", "value", "", "tags", "", "outcome", "Lcom/stripe/loggingmodels/Outcome;", "cause", "", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/jvmcore/logging/MetricType;Ljava/lang/Long;Ljava/util/Map;Lcom/stripe/loggingmodels/Outcome;Ljava/lang/Throwable;)V", "logging"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface HealthMetricListener {
    void onHealthMetricLogged(String domain, String scope, String event, MetricType type, Long value, Map<String, String> tags, Outcome outcome, Throwable cause);
}
