package com.stripe.jvmcore.reboot;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: RebootTimeStatus.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\r\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0007HÆ\u0003J'\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0007HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00072\b\u0010\u0013\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u000bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\r¨\u0006\u0018"}, d2 = {"Lcom/stripe/jvmcore/reboot/RebootTimeStatus;", "", "timeWindow", "Lcom/stripe/jvmcore/reboot/TimeWindow;", "approach", "Lcom/stripe/jvmcore/reboot/RebootTimeSettingApproach;", "isEnforced", "", "(Lcom/stripe/jvmcore/reboot/TimeWindow;Lcom/stripe/jvmcore/reboot/RebootTimeSettingApproach;Z)V", "getApproach", "()Lcom/stripe/jvmcore/reboot/RebootTimeSettingApproach;", "()Z", "getTimeWindow", "()Lcom/stripe/jvmcore/reboot/TimeWindow;", "component1", "component2", "component3", "copy", "equals", "other", "hashCode", "", "toString", "", "reboot"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class RebootTimeStatus {
    private final RebootTimeSettingApproach approach;
    private final boolean isEnforced;
    private final TimeWindow timeWindow;

    public static /* synthetic */ RebootTimeStatus copy$default(RebootTimeStatus rebootTimeStatus, TimeWindow timeWindow, RebootTimeSettingApproach rebootTimeSettingApproach, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            timeWindow = rebootTimeStatus.timeWindow;
        }
        if ((i & 2) != 0) {
            rebootTimeSettingApproach = rebootTimeStatus.approach;
        }
        if ((i & 4) != 0) {
            z = rebootTimeStatus.isEnforced;
        }
        return rebootTimeStatus.copy(timeWindow, rebootTimeSettingApproach, z);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final TimeWindow getTimeWindow() {
        return this.timeWindow;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final RebootTimeSettingApproach getApproach() {
        return this.approach;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final boolean getIsEnforced() {
        return this.isEnforced;
    }

    public final RebootTimeStatus copy(TimeWindow timeWindow, RebootTimeSettingApproach approach, boolean isEnforced) {
        Intrinsics.checkNotNullParameter(timeWindow, "timeWindow");
        Intrinsics.checkNotNullParameter(approach, "approach");
        return new RebootTimeStatus(timeWindow, approach, isEnforced);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof RebootTimeStatus)) {
            return false;
        }
        RebootTimeStatus rebootTimeStatus = (RebootTimeStatus) other;
        return Intrinsics.areEqual(this.timeWindow, rebootTimeStatus.timeWindow) && this.approach == rebootTimeStatus.approach && this.isEnforced == rebootTimeStatus.isEnforced;
    }

    public int hashCode() {
        return (((this.timeWindow.hashCode() * 31) + this.approach.hashCode()) * 31) + Boolean.hashCode(this.isEnforced);
    }

    public String toString() {
        return "RebootTimeStatus(timeWindow=" + this.timeWindow + ", approach=" + this.approach + ", isEnforced=" + this.isEnforced + ')';
    }

    public RebootTimeStatus(TimeWindow timeWindow, RebootTimeSettingApproach approach, boolean z) {
        Intrinsics.checkNotNullParameter(timeWindow, "timeWindow");
        Intrinsics.checkNotNullParameter(approach, "approach");
        this.timeWindow = timeWindow;
        this.approach = approach;
        this.isEnforced = z;
    }

    public /* synthetic */ RebootTimeStatus(TimeWindow timeWindow, RebootTimeSettingApproach rebootTimeSettingApproach, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(timeWindow, rebootTimeSettingApproach, (i & 4) != 0 ? false : z);
    }

    public final TimeWindow getTimeWindow() {
        return this.timeWindow;
    }

    public final RebootTimeSettingApproach getApproach() {
        return this.approach;
    }

    public final boolean isEnforced() {
        return this.isEnforced;
    }
}
