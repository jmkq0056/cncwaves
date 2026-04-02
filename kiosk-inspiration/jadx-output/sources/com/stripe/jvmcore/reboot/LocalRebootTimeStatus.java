package com.stripe.jvmcore.reboot;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: LocalRebootTimeStatus.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u000e\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0002\u0010\u0007J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000e\u001a\u00020\u0005HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0005HÆ\u0003J'\u0010\u0010\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0011\u001a\u00020\u00052\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\u0017"}, d2 = {"Lcom/stripe/jvmcore/reboot/LocalRebootTimeStatus;", "", "rebootTime", "Lcom/stripe/jvmcore/reboot/TimeInterval;", "canOverrideLocally", "", "canRemoveLocally", "(Lcom/stripe/jvmcore/reboot/TimeInterval;ZZ)V", "getCanOverrideLocally", "()Z", "getCanRemoveLocally", "getRebootTime", "()Lcom/stripe/jvmcore/reboot/TimeInterval;", "component1", "component2", "component3", "copy", "equals", "other", "hashCode", "", "toString", "", "reboot"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class LocalRebootTimeStatus {
    private final boolean canOverrideLocally;
    private final boolean canRemoveLocally;
    private final TimeInterval rebootTime;

    public static /* synthetic */ LocalRebootTimeStatus copy$default(LocalRebootTimeStatus localRebootTimeStatus, TimeInterval timeInterval, boolean z, boolean z2, int i, Object obj) {
        if ((i & 1) != 0) {
            timeInterval = localRebootTimeStatus.rebootTime;
        }
        if ((i & 2) != 0) {
            z = localRebootTimeStatus.canOverrideLocally;
        }
        if ((i & 4) != 0) {
            z2 = localRebootTimeStatus.canRemoveLocally;
        }
        return localRebootTimeStatus.copy(timeInterval, z, z2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final TimeInterval getRebootTime() {
        return this.rebootTime;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final boolean getCanOverrideLocally() {
        return this.canOverrideLocally;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final boolean getCanRemoveLocally() {
        return this.canRemoveLocally;
    }

    public final LocalRebootTimeStatus copy(TimeInterval rebootTime, boolean canOverrideLocally, boolean canRemoveLocally) {
        Intrinsics.checkNotNullParameter(rebootTime, "rebootTime");
        return new LocalRebootTimeStatus(rebootTime, canOverrideLocally, canRemoveLocally);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof LocalRebootTimeStatus)) {
            return false;
        }
        LocalRebootTimeStatus localRebootTimeStatus = (LocalRebootTimeStatus) other;
        return Intrinsics.areEqual(this.rebootTime, localRebootTimeStatus.rebootTime) && this.canOverrideLocally == localRebootTimeStatus.canOverrideLocally && this.canRemoveLocally == localRebootTimeStatus.canRemoveLocally;
    }

    public int hashCode() {
        return (((this.rebootTime.hashCode() * 31) + Boolean.hashCode(this.canOverrideLocally)) * 31) + Boolean.hashCode(this.canRemoveLocally);
    }

    public String toString() {
        return "LocalRebootTimeStatus(rebootTime=" + this.rebootTime + ", canOverrideLocally=" + this.canOverrideLocally + ", canRemoveLocally=" + this.canRemoveLocally + ')';
    }

    public LocalRebootTimeStatus(TimeInterval rebootTime, boolean z, boolean z2) {
        Intrinsics.checkNotNullParameter(rebootTime, "rebootTime");
        this.rebootTime = rebootTime;
        this.canOverrideLocally = z;
        this.canRemoveLocally = z2;
    }

    public final TimeInterval getRebootTime() {
        return this.rebootTime;
    }

    public final boolean getCanOverrideLocally() {
        return this.canOverrideLocally;
    }

    public final boolean getCanRemoveLocally() {
        return this.canRemoveLocally;
    }
}
