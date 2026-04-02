package com.arcsoft.face;

/* JADX INFO: loaded from: classes.dex */
public class LivenessInfo {
    public static final int ALIVE = 1;
    public static final int FACE_ANGLE_TOO_LARGE = -4;
    public static final int FACE_BEYOND_BOUNDARY = -5;
    public static final int FACE_NUM_MORE_THAN_ONE = -2;
    public static final int FACE_TOO_SMALL = -3;
    public static final int NOT_ALIVE = 0;
    public static final int UNKNOWN = -1;
    public int liveness;

    public LivenessInfo() {
        this.liveness = -1;
    }

    public int getLiveness() {
        return this.liveness;
    }

    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public LivenessInfo m11clone() {
        return new LivenessInfo(this);
    }

    public LivenessInfo(LivenessInfo livenessInfo) {
        if (livenessInfo != null) {
            this.liveness = livenessInfo.getLiveness();
        } else {
            this.liveness = -1;
        }
    }
}
