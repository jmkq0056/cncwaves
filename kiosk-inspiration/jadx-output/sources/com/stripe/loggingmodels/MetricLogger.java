package com.stripe.loggingmodels;

import androidx.core.app.NotificationCompat;
import com.stripe.loggingmodels.Outcome;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;

/* JADX INFO: compiled from: MetricLogger.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\bf\u0018\u00002\u00020\u0001J*\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tH&J\b\u0010\u000b\u001a\u00020\fH&J:\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u000f2\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t2\b\b\u0002\u0010\u0006\u001a\u00020\u0007H&JB\u0010\u0012\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u00032\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t2\b\b\u0002\u0010\u0006\u001a\u00020\u0007H&JB\u0010\u0014\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\u00032\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t2\b\b\u0002\u0010\u0006\u001a\u00020\u0007H&J0\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u000f2\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tH&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0017À\u0006\u0001"}, d2 = {"Lcom/stripe/loggingmodels/MetricLogger;", "", "endTimedMetric", "", "metric", "Lcom/stripe/loggingmodels/Metric;", "outcome", "Lcom/stripe/loggingmodels/Outcome;", "tags", "", "Lcom/stripe/loggingmodels/Tag;", "init", "", "recordCounterMetric", "domain", "", "scope", NotificationCompat.CATEGORY_EVENT, "recordGaugeMetric", "measurement", "recordTimedMetric", "durationMillis", "startTimedMetric", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface MetricLogger {
    long endTimedMetric(Metric metric, Outcome outcome, List<? extends Tag> tags);

    void init();

    void recordCounterMetric(String domain, String scope, String event, List<? extends Tag> tags, Outcome outcome);

    void recordGaugeMetric(String domain, String scope, String event, long measurement, List<? extends Tag> tags, Outcome outcome);

    void recordTimedMetric(String domain, String scope, String event, long durationMillis, List<? extends Tag> tags, Outcome outcome);

    Metric startTimedMetric(String domain, String scope, String event, List<? extends Tag> tags);

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ Metric startTimedMetric$default(MetricLogger metricLogger, String str, String str2, String str3, List list, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: startTimedMetric");
        }
        if ((i & 8) != 0) {
            list = CollectionsKt.emptyList();
        }
        return metricLogger.startTimedMetric(str, str2, str3, list);
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ long endTimedMetric$default(MetricLogger metricLogger, Metric metric, Outcome outcome, List list, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: endTimedMetric");
        }
        if ((i & 2) != 0) {
            outcome = Outcome.Ok.INSTANCE;
        }
        if ((i & 4) != 0) {
            list = CollectionsKt.emptyList();
        }
        return metricLogger.endTimedMetric(metric, outcome, list);
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ void recordTimedMetric$default(MetricLogger metricLogger, String str, String str2, String str3, long j, List list, Outcome outcome, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: recordTimedMetric");
        }
        if ((i & 16) != 0) {
            list = CollectionsKt.emptyList();
        }
        metricLogger.recordTimedMetric(str, str2, str3, j, list, (i & 32) != 0 ? Outcome.Ok.INSTANCE : outcome);
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ void recordCounterMetric$default(MetricLogger metricLogger, String str, String str2, String str3, List list, Outcome outcome, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: recordCounterMetric");
        }
        if ((i & 8) != 0) {
            list = CollectionsKt.emptyList();
        }
        List list2 = list;
        if ((i & 16) != 0) {
            outcome = Outcome.Ok.INSTANCE;
        }
        metricLogger.recordCounterMetric(str, str2, str3, list2, outcome);
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ void recordGaugeMetric$default(MetricLogger metricLogger, String str, String str2, String str3, long j, List list, Outcome outcome, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: recordGaugeMetric");
        }
        if ((i & 16) != 0) {
            list = CollectionsKt.emptyList();
        }
        metricLogger.recordGaugeMetric(str, str2, str3, j, list, (i & 32) != 0 ? Outcome.Ok.INSTANCE : outcome);
    }
}
