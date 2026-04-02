package com.google.android.material.transition.platform;

import androidx.annotation.RequiresApi;

/* JADX INFO: loaded from: classes2.dex */
@RequiresApi(21)
class FitModeResult {
    public final float currentEndHeight;
    public final float currentEndWidth;
    public final float currentStartHeight;
    public final float currentStartWidth;
    public final float endScale;
    public final float startScale;

    public FitModeResult(float f4, float f5, float f6, float f7, float f8, float f9) {
        this.startScale = f4;
        this.endScale = f5;
        this.currentStartWidth = f6;
        this.currentStartHeight = f7;
        this.currentEndWidth = f8;
        this.currentEndHeight = f9;
    }
}
