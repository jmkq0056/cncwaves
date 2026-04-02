package com.arcsoft.imageutil;

import com.google.android.material.snackbar.BaseTransientBottomBar;

/* JADX INFO: loaded from: classes.dex */
public enum ArcSoftRotateDegree {
    DEGREE_90(90),
    DEGREE_180(BaseTransientBottomBar.ANIMATION_FADE_DURATION),
    DEGREE_270(270);

    public int degree;

    ArcSoftRotateDegree(int i4) {
        this.degree = i4;
    }
}
