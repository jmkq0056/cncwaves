package com.stripe.jvmcore.reboot;

import java.time.LocalTime;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TimeWindow.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0015"}, d2 = {"Lcom/stripe/jvmcore/reboot/TimeWindow;", "", "startTime", "Ljava/time/LocalTime;", "durationInSeconds", "", "(Ljava/time/LocalTime;J)V", "getDurationInSeconds", "()J", "getStartTime", "()Ljava/time/LocalTime;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "", "reboot"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class TimeWindow {
    private final long durationInSeconds;
    private final LocalTime startTime;

    public static /* synthetic */ TimeWindow copy$default(TimeWindow timeWindow, LocalTime localTime, long j, int i, Object obj) {
        if ((i & 1) != 0) {
            localTime = timeWindow.startTime;
        }
        if ((i & 2) != 0) {
            j = timeWindow.durationInSeconds;
        }
        return timeWindow.copy(localTime, j);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final LocalTime getStartTime() {
        return this.startTime;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final long getDurationInSeconds() {
        return this.durationInSeconds;
    }

    public final TimeWindow copy(LocalTime startTime, long durationInSeconds) {
        Intrinsics.checkNotNullParameter(startTime, "startTime");
        return new TimeWindow(startTime, durationInSeconds);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof TimeWindow)) {
            return false;
        }
        TimeWindow timeWindow = (TimeWindow) other;
        return Intrinsics.areEqual(this.startTime, timeWindow.startTime) && this.durationInSeconds == timeWindow.durationInSeconds;
    }

    public int hashCode() {
        return (this.startTime.hashCode() * 31) + Long.hashCode(this.durationInSeconds);
    }

    public String toString() {
        return "TimeWindow(startTime=" + this.startTime + ", durationInSeconds=" + this.durationInSeconds + ')';
    }

    public TimeWindow(LocalTime startTime, long j) {
        Intrinsics.checkNotNullParameter(startTime, "startTime");
        this.startTime = startTime;
        this.durationInSeconds = j;
    }

    public final long getDurationInSeconds() {
        return this.durationInSeconds;
    }

    public final LocalTime getStartTime() {
        return this.startTime;
    }
}
