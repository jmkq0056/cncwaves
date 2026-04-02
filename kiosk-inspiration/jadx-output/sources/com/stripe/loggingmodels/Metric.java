package com.stripe.loggingmodels;

import androidx.core.app.NotificationCompat;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Metric.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0010\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B3\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007\u0012\u0006\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0003HÆ\u0003J\u000f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\b0\u0007HÆ\u0003J\t\u0010\u0018\u001a\u00020\nHÆ\u0003JA\u0010\u0019\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\b\b\u0002\u0010\t\u001a\u00020\nHÆ\u0001J\u0013\u0010\u001a\u001a\u00020\u001b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001d\u001a\u00020\u001eHÖ\u0001J\t\u0010\u001f\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\rR\u0011\u0010\t\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0017\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013¨\u0006 "}, d2 = {"Lcom/stripe/loggingmodels/Metric;", "", "domain", "", "scope", NotificationCompat.CATEGORY_EVENT, "tags", "", "Lcom/stripe/loggingmodels/Tag;", "startTimeMillis", "", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;J)V", "getDomain", "()Ljava/lang/String;", "getEvent", "getScope", "getStartTimeMillis", "()J", "getTags", "()Ljava/util/List;", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", "other", "hashCode", "", "toString", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class Metric {
    private final String domain;
    private final String event;
    private final String scope;
    private final long startTimeMillis;
    private final List<Tag> tags;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Metric copy$default(Metric metric, String str, String str2, String str3, List list, long j, int i, Object obj) {
        if ((i & 1) != 0) {
            str = metric.domain;
        }
        if ((i & 2) != 0) {
            str2 = metric.scope;
        }
        if ((i & 4) != 0) {
            str3 = metric.event;
        }
        if ((i & 8) != 0) {
            list = metric.tags;
        }
        if ((i & 16) != 0) {
            j = metric.startTimeMillis;
        }
        long j2 = j;
        return metric.copy(str, str2, str3, list, j2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getDomain() {
        return this.domain;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getScope() {
        return this.scope;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getEvent() {
        return this.event;
    }

    public final List<Tag> component4() {
        return this.tags;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final long getStartTimeMillis() {
        return this.startTimeMillis;
    }

    public final Metric copy(String domain, String scope, String event, List<? extends Tag> tags, long startTimeMillis) {
        Intrinsics.checkNotNullParameter(domain, "domain");
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(event, "event");
        Intrinsics.checkNotNullParameter(tags, "tags");
        return new Metric(domain, scope, event, tags, startTimeMillis);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Metric)) {
            return false;
        }
        Metric metric = (Metric) other;
        return Intrinsics.areEqual(this.domain, metric.domain) && Intrinsics.areEqual(this.scope, metric.scope) && Intrinsics.areEqual(this.event, metric.event) && Intrinsics.areEqual(this.tags, metric.tags) && this.startTimeMillis == metric.startTimeMillis;
    }

    public int hashCode() {
        return (((((((this.domain.hashCode() * 31) + this.scope.hashCode()) * 31) + this.event.hashCode()) * 31) + this.tags.hashCode()) * 31) + Long.hashCode(this.startTimeMillis);
    }

    public String toString() {
        return "Metric(domain=" + this.domain + ", scope=" + this.scope + ", event=" + this.event + ", tags=" + this.tags + ", startTimeMillis=" + this.startTimeMillis + ')';
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Metric(String domain, String scope, String event, List<? extends Tag> tags, long j) {
        Intrinsics.checkNotNullParameter(domain, "domain");
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(event, "event");
        Intrinsics.checkNotNullParameter(tags, "tags");
        this.domain = domain;
        this.scope = scope;
        this.event = event;
        this.tags = tags;
        this.startTimeMillis = j;
    }

    public final String getDomain() {
        return this.domain;
    }

    public final String getScope() {
        return this.scope;
    }

    public final String getEvent() {
        return this.event;
    }

    public final List<Tag> getTags() {
        return this.tags;
    }

    public final long getStartTimeMillis() {
        return this.startTimeMillis;
    }
}
