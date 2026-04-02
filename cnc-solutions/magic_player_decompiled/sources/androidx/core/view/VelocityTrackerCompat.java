package androidx.core.view;

import android.view.VelocityTracker;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public final class VelocityTrackerCompat {
    private VelocityTrackerCompat() {
    }

    @Deprecated
    public static float getXVelocity(VelocityTracker velocityTracker, int i4) {
        return velocityTracker.getXVelocity(i4);
    }

    @Deprecated
    public static float getYVelocity(VelocityTracker velocityTracker, int i4) {
        return velocityTracker.getYVelocity(i4);
    }
}
