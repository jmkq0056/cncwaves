package com.stripe.jvmcore.logging;

import com.stripe.loggingmodels.Outcome;
import com.stripe.loggingmodels.Tag;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DefaultMetricLogger.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b2\u0018\u00002\u00020\u0001:\u0003\f\r\u000eB\u0007\b\u0004¢\u0006\u0002\u0010\u0002R\u0012\u0010\u0003\u001a\u00020\u0004X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006R\u0018\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bX¦\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000b\u0082\u0001\u0003\u000f\u0010\u0011¨\u0006\u0012"}, d2 = {"Lcom/stripe/jvmcore/logging/MetricResult;", "", "()V", "outcome", "Lcom/stripe/loggingmodels/Outcome;", "getOutcome", "()Lcom/stripe/loggingmodels/Outcome;", "tags", "", "Lcom/stripe/loggingmodels/Tag;", "getTags", "()Ljava/util/List;", "CounterMetricResult", "GaugeMetricResult", "TimedMetricResult", "Lcom/stripe/jvmcore/logging/MetricResult$CounterMetricResult;", "Lcom/stripe/jvmcore/logging/MetricResult$GaugeMetricResult;", "Lcom/stripe/jvmcore/logging/MetricResult$TimedMetricResult;", "logging"}, k = 1, mv = {1, 9, 0}, xi = 48)
abstract class MetricResult {
    public /* synthetic */ MetricResult(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public abstract Outcome getOutcome();

    public abstract List<Tag> getTags();

    private MetricResult() {
    }

    /* JADX INFO: compiled from: DefaultMetricLogger.kt */
    @Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\r\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\u000f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0003J\u000e\u0010\u0012\u001a\u00020\bHÀ\u0003¢\u0006\u0002\b\u0013J-\u0010\u0014\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\b\b\u0002\u0010\u0007\u001a\u00020\bHÆ\u0001J\u0013\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018HÖ\u0003J\t\u0010\u0019\u001a\u00020\u001aHÖ\u0001J\t\u0010\u001b\u001a\u00020\u001cHÖ\u0001R\u0014\u0010\u0007\u001a\u00020\bX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u001a\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u001d"}, d2 = {"Lcom/stripe/jvmcore/logging/MetricResult$TimedMetricResult;", "Lcom/stripe/jvmcore/logging/MetricResult;", "outcome", "Lcom/stripe/loggingmodels/Outcome;", "tags", "", "Lcom/stripe/loggingmodels/Tag;", "durationMillis", "", "(Lcom/stripe/loggingmodels/Outcome;Ljava/util/List;J)V", "getDurationMillis$logging", "()J", "getOutcome", "()Lcom/stripe/loggingmodels/Outcome;", "getTags", "()Ljava/util/List;", "component1", "component2", "component3", "component3$logging", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "logging"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class TimedMetricResult extends MetricResult {
        private final long durationMillis;
        private final Outcome outcome;
        private final List<Tag> tags;

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ TimedMetricResult copy$default(TimedMetricResult timedMetricResult, Outcome outcome, List list, long j, int i, Object obj) {
            if ((i & 1) != 0) {
                outcome = timedMetricResult.outcome;
            }
            if ((i & 2) != 0) {
                list = timedMetricResult.tags;
            }
            if ((i & 4) != 0) {
                j = timedMetricResult.durationMillis;
            }
            return timedMetricResult.copy(outcome, list, j);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final Outcome getOutcome() {
            return this.outcome;
        }

        public final List<Tag> component2() {
            return this.tags;
        }

        /* JADX INFO: renamed from: component3$logging, reason: from getter */
        public final long getDurationMillis() {
            return this.durationMillis;
        }

        public final TimedMetricResult copy(Outcome outcome, List<? extends Tag> tags, long durationMillis) {
            Intrinsics.checkNotNullParameter(outcome, "outcome");
            Intrinsics.checkNotNullParameter(tags, "tags");
            return new TimedMetricResult(outcome, tags, durationMillis);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof TimedMetricResult)) {
                return false;
            }
            TimedMetricResult timedMetricResult = (TimedMetricResult) other;
            return Intrinsics.areEqual(this.outcome, timedMetricResult.outcome) && Intrinsics.areEqual(this.tags, timedMetricResult.tags) && this.durationMillis == timedMetricResult.durationMillis;
        }

        public int hashCode() {
            return (((this.outcome.hashCode() * 31) + this.tags.hashCode()) * 31) + Long.hashCode(this.durationMillis);
        }

        public String toString() {
            return "TimedMetricResult(outcome=" + this.outcome + ", tags=" + this.tags + ", durationMillis=" + this.durationMillis + ')';
        }

        @Override // com.stripe.jvmcore.logging.MetricResult
        public Outcome getOutcome() {
            return this.outcome;
        }

        @Override // com.stripe.jvmcore.logging.MetricResult
        public List<Tag> getTags() {
            return this.tags;
        }

        public final long getDurationMillis$logging() {
            return this.durationMillis;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public TimedMetricResult(Outcome outcome, List<? extends Tag> tags, long j) {
            super(null);
            Intrinsics.checkNotNullParameter(outcome, "outcome");
            Intrinsics.checkNotNullParameter(tags, "tags");
            this.outcome = outcome;
            this.tags = tags;
            this.durationMillis = j;
        }
    }

    /* JADX INFO: compiled from: DefaultMetricLogger.kt */
    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0002\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\u000f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0003J#\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u001a\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0017"}, d2 = {"Lcom/stripe/jvmcore/logging/MetricResult$CounterMetricResult;", "Lcom/stripe/jvmcore/logging/MetricResult;", "outcome", "Lcom/stripe/loggingmodels/Outcome;", "tags", "", "Lcom/stripe/loggingmodels/Tag;", "(Lcom/stripe/loggingmodels/Outcome;Ljava/util/List;)V", "getOutcome", "()Lcom/stripe/loggingmodels/Outcome;", "getTags", "()Ljava/util/List;", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "logging"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class CounterMetricResult extends MetricResult {
        private final Outcome outcome;
        private final List<Tag> tags;

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ CounterMetricResult copy$default(CounterMetricResult counterMetricResult, Outcome outcome, List list, int i, Object obj) {
            if ((i & 1) != 0) {
                outcome = counterMetricResult.outcome;
            }
            if ((i & 2) != 0) {
                list = counterMetricResult.tags;
            }
            return counterMetricResult.copy(outcome, list);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final Outcome getOutcome() {
            return this.outcome;
        }

        public final List<Tag> component2() {
            return this.tags;
        }

        public final CounterMetricResult copy(Outcome outcome, List<? extends Tag> tags) {
            Intrinsics.checkNotNullParameter(outcome, "outcome");
            Intrinsics.checkNotNullParameter(tags, "tags");
            return new CounterMetricResult(outcome, tags);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof CounterMetricResult)) {
                return false;
            }
            CounterMetricResult counterMetricResult = (CounterMetricResult) other;
            return Intrinsics.areEqual(this.outcome, counterMetricResult.outcome) && Intrinsics.areEqual(this.tags, counterMetricResult.tags);
        }

        public int hashCode() {
            return (this.outcome.hashCode() * 31) + this.tags.hashCode();
        }

        public String toString() {
            return "CounterMetricResult(outcome=" + this.outcome + ", tags=" + this.tags + ')';
        }

        @Override // com.stripe.jvmcore.logging.MetricResult
        public Outcome getOutcome() {
            return this.outcome;
        }

        @Override // com.stripe.jvmcore.logging.MetricResult
        public List<Tag> getTags() {
            return this.tags;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public CounterMetricResult(Outcome outcome, List<? extends Tag> tags) {
            super(null);
            Intrinsics.checkNotNullParameter(outcome, "outcome");
            Intrinsics.checkNotNullParameter(tags, "tags");
            this.outcome = outcome;
            this.tags = tags;
        }
    }

    /* JADX INFO: compiled from: DefaultMetricLogger.kt */
    @Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\r\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\u000f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0003J\u000e\u0010\u0012\u001a\u00020\bHÀ\u0003¢\u0006\u0002\b\u0013J-\u0010\u0014\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\b\b\u0002\u0010\u0007\u001a\u00020\bHÆ\u0001J\u0013\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018HÖ\u0003J\t\u0010\u0019\u001a\u00020\u001aHÖ\u0001J\t\u0010\u001b\u001a\u00020\u001cHÖ\u0001R\u0014\u0010\u0007\u001a\u00020\bX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u001a\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u001d"}, d2 = {"Lcom/stripe/jvmcore/logging/MetricResult$GaugeMetricResult;", "Lcom/stripe/jvmcore/logging/MetricResult;", "outcome", "Lcom/stripe/loggingmodels/Outcome;", "tags", "", "Lcom/stripe/loggingmodels/Tag;", "measurement", "", "(Lcom/stripe/loggingmodels/Outcome;Ljava/util/List;J)V", "getMeasurement$logging", "()J", "getOutcome", "()Lcom/stripe/loggingmodels/Outcome;", "getTags", "()Ljava/util/List;", "component1", "component2", "component3", "component3$logging", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "logging"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class GaugeMetricResult extends MetricResult {
        private final long measurement;
        private final Outcome outcome;
        private final List<Tag> tags;

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ GaugeMetricResult copy$default(GaugeMetricResult gaugeMetricResult, Outcome outcome, List list, long j, int i, Object obj) {
            if ((i & 1) != 0) {
                outcome = gaugeMetricResult.outcome;
            }
            if ((i & 2) != 0) {
                list = gaugeMetricResult.tags;
            }
            if ((i & 4) != 0) {
                j = gaugeMetricResult.measurement;
            }
            return gaugeMetricResult.copy(outcome, list, j);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final Outcome getOutcome() {
            return this.outcome;
        }

        public final List<Tag> component2() {
            return this.tags;
        }

        /* JADX INFO: renamed from: component3$logging, reason: from getter */
        public final long getMeasurement() {
            return this.measurement;
        }

        public final GaugeMetricResult copy(Outcome outcome, List<? extends Tag> tags, long measurement) {
            Intrinsics.checkNotNullParameter(outcome, "outcome");
            Intrinsics.checkNotNullParameter(tags, "tags");
            return new GaugeMetricResult(outcome, tags, measurement);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof GaugeMetricResult)) {
                return false;
            }
            GaugeMetricResult gaugeMetricResult = (GaugeMetricResult) other;
            return Intrinsics.areEqual(this.outcome, gaugeMetricResult.outcome) && Intrinsics.areEqual(this.tags, gaugeMetricResult.tags) && this.measurement == gaugeMetricResult.measurement;
        }

        public int hashCode() {
            return (((this.outcome.hashCode() * 31) + this.tags.hashCode()) * 31) + Long.hashCode(this.measurement);
        }

        public String toString() {
            return "GaugeMetricResult(outcome=" + this.outcome + ", tags=" + this.tags + ", measurement=" + this.measurement + ')';
        }

        @Override // com.stripe.jvmcore.logging.MetricResult
        public Outcome getOutcome() {
            return this.outcome;
        }

        @Override // com.stripe.jvmcore.logging.MetricResult
        public List<Tag> getTags() {
            return this.tags;
        }

        public final long getMeasurement$logging() {
            return this.measurement;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public GaugeMetricResult(Outcome outcome, List<? extends Tag> tags, long j) {
            super(null);
            Intrinsics.checkNotNullParameter(outcome, "outcome");
            Intrinsics.checkNotNullParameter(tags, "tags");
            this.outcome = outcome;
            this.tags = tags;
            this.measurement = j;
        }
    }
}
