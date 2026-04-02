package com.stripe.jvmcore.logging;

import androidx.core.app.NotificationCompat;
import com.stripe.jvmcore.batchdispatcher.BatchDispatcher;
import com.stripe.jvmcore.logging.MetricResult;
import com.stripe.loggingmodels.Metric;
import com.stripe.loggingmodels.MetricLogger;
import com.stripe.loggingmodels.Outcome;
import com.stripe.loggingmodels.Tag;
import com.stripe.proto.api.gator.EventResultPb;
import com.stripe.proto.api.gator.ProxyEventPb;
import com.stripe.time.Clock;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* JADX INFO: compiled from: DefaultMetricLogger.kt */
/* JADX INFO: loaded from: classes3.dex */
@Singleton
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u000b\b\u0007\u0018\u00002\u00020\u0001B\u001d\b\u0007\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u0018\u0010\b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0002J\"\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u000f0\u000e2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00120\u0011H\u0002J&\u0010\u0013\u001a\u00020\u00142\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0015\u001a\u00020\u00162\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00120\u0011H\u0016J\b\u0010\u0017\u001a\u00020\u0018H\u0016J6\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u000f2\u0006\u0010\u001b\u001a\u00020\u000f2\u0006\u0010\u001c\u001a\u00020\u000f2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00120\u00112\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J>\u0010\u001d\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u000f2\u0006\u0010\u001b\u001a\u00020\u000f2\u0006\u0010\u001c\u001a\u00020\u000f2\u0006\u0010\u001e\u001a\u00020\u00142\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00120\u00112\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J>\u0010\u001f\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u000f2\u0006\u0010\u001b\u001a\u00020\u000f2\u0006\u0010\u001c\u001a\u00020\u000f2\u0006\u0010 \u001a\u00020\u00142\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00120\u00112\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J.\u0010!\u001a\u00020\n2\u0006\u0010\u001a\u001a\u00020\u000f2\u0006\u0010\u001b\u001a\u00020\u000f2\u0006\u0010\u001c\u001a\u00020\u000f2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00120\u0011H\u0016J\u0018\u0010\"\u001a\u00020\u00182\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0002R\u0014\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006#"}, d2 = {"Lcom/stripe/jvmcore/logging/DefaultMetricLogger;", "Lcom/stripe/loggingmodels/MetricLogger;", "batchDispatcher", "Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;", "Lcom/stripe/proto/api/gator/ProxyEventPb;", "clock", "Lcom/stripe/time/Clock;", "(Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;Lcom/stripe/time/Clock;)V", "buildProxyEventPb", "metric", "Lcom/stripe/loggingmodels/Metric;", "metricResult", "Lcom/stripe/jvmcore/logging/MetricResult;", "buildTagStringsMap", "", "", "tags", "", "Lcom/stripe/loggingmodels/Tag;", "endTimedMetric", "", "outcome", "Lcom/stripe/loggingmodels/Outcome;", "init", "", "recordCounterMetric", "domain", "scope", NotificationCompat.CATEGORY_EVENT, "recordGaugeMetric", "measurement", "recordTimedMetric", "durationMillis", "startTimedMetric", "submitMetric", "logging"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DefaultMetricLogger implements MetricLogger {
    private final BatchDispatcher<ProxyEventPb> batchDispatcher;
    private final Clock clock;

    @Inject
    public DefaultMetricLogger(BatchDispatcher<ProxyEventPb> batchDispatcher, Clock clock) {
        Intrinsics.checkNotNullParameter(batchDispatcher, "batchDispatcher");
        Intrinsics.checkNotNullParameter(clock, "clock");
        this.batchDispatcher = batchDispatcher;
        this.clock = clock;
    }

    @Override // com.stripe.loggingmodels.MetricLogger
    public void init() {
        this.batchDispatcher.init();
    }

    @Override // com.stripe.loggingmodels.MetricLogger
    public Metric startTimedMetric(String domain, String scope, String event, List<? extends Tag> tags) {
        Intrinsics.checkNotNullParameter(domain, "domain");
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(event, "event");
        Intrinsics.checkNotNullParameter(tags, "tags");
        return new Metric(domain, scope, event, tags, this.clock.currentTimeMillis());
    }

    @Override // com.stripe.loggingmodels.MetricLogger
    public long endTimedMetric(Metric metric, Outcome outcome, List<? extends Tag> tags) {
        Intrinsics.checkNotNullParameter(metric, "metric");
        Intrinsics.checkNotNullParameter(outcome, "outcome");
        Intrinsics.checkNotNullParameter(tags, "tags");
        long jCurrentTimeMillis = this.clock.currentTimeMillis() - metric.getStartTimeMillis();
        submitMetric(metric, new MetricResult.TimedMetricResult(outcome, tags, jCurrentTimeMillis));
        return jCurrentTimeMillis;
    }

    @Override // com.stripe.loggingmodels.MetricLogger
    public void recordTimedMetric(String domain, String scope, String event, long durationMillis, List<? extends Tag> tags, Outcome outcome) {
        Intrinsics.checkNotNullParameter(domain, "domain");
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(event, "event");
        Intrinsics.checkNotNullParameter(tags, "tags");
        Intrinsics.checkNotNullParameter(outcome, "outcome");
        submitMetric(new Metric(domain, scope, event, tags, this.clock.currentTimeMillis() - durationMillis), new MetricResult.TimedMetricResult(outcome, CollectionsKt.emptyList(), durationMillis));
    }

    @Override // com.stripe.loggingmodels.MetricLogger
    public void recordCounterMetric(String domain, String scope, String event, List<? extends Tag> tags, Outcome outcome) {
        Intrinsics.checkNotNullParameter(domain, "domain");
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(event, "event");
        Intrinsics.checkNotNullParameter(tags, "tags");
        Intrinsics.checkNotNullParameter(outcome, "outcome");
        submitMetric(new Metric(domain, scope, event, tags, this.clock.currentTimeMillis()), new MetricResult.CounterMetricResult(outcome, CollectionsKt.emptyList()));
    }

    @Override // com.stripe.loggingmodels.MetricLogger
    public void recordGaugeMetric(String domain, String scope, String event, long measurement, List<? extends Tag> tags, Outcome outcome) {
        Intrinsics.checkNotNullParameter(domain, "domain");
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(event, "event");
        Intrinsics.checkNotNullParameter(tags, "tags");
        Intrinsics.checkNotNullParameter(outcome, "outcome");
        submitMetric(new Metric(domain, scope, event, tags, this.clock.currentTimeMillis()), new MetricResult.GaugeMetricResult(outcome, CollectionsKt.emptyList(), measurement));
    }

    private final void submitMetric(Metric metric, MetricResult metricResult) {
        this.batchDispatcher.add(buildProxyEventPb(metric, metricResult));
    }

    private final ProxyEventPb buildProxyEventPb(Metric metric, MetricResult metricResult) {
        String domain = metric.getDomain();
        String scope = metric.getScope();
        String event = metric.getEvent();
        Map<String, String> mapBuildTagStringsMap = buildTagStringsMap(CollectionsKt.plus((Collection) metric.getTags(), (Iterable) metricResult.getTags()));
        EventResultPb.Result result = metricResult.getOutcome() instanceof Outcome.Success ? EventResultPb.Result.OK : EventResultPb.Result.ERROR;
        Outcome outcome = metricResult.getOutcome();
        return new ProxyEventPb(null, null, null, new EventResultPb(domain, scope, event, mapBuildTagStringsMap, result, outcome instanceof Outcome.Ok ? "" : outcome.getOutcome(), metricResult instanceof MetricResult.TimedMetricResult ? Long.valueOf(((MetricResult.TimedMetricResult) metricResult).getDurationMillis$logging()) : null, metricResult instanceof MetricResult.GaugeMetricResult ? Long.valueOf(((MetricResult.GaugeMetricResult) metricResult).getMeasurement$logging()) : null, null, 256, null), null, 23, null);
    }

    private final Map<String, String> buildTagStringsMap(List<? extends Tag> tags) {
        List<? extends Tag> list = tags;
        LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(CollectionsKt.collectionSizeOrDefault(list, 10)), 16));
        for (Tag tag : list) {
            Pair pair = TuplesKt.to(tag.getKey(), tag.getValue());
            linkedHashMap.put(pair.getFirst(), pair.getSecond());
        }
        return linkedHashMap;
    }
}
