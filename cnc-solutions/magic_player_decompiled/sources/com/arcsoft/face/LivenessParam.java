package com.arcsoft.face;

/* JADX INFO: loaded from: classes.dex */
public class LivenessParam {
    private float irThreshold;
    private float rgbThreshold;

    public LivenessParam(float f4, float f5) {
        this.rgbThreshold = f4;
        this.irThreshold = f5;
    }

    public float getIrThreshold() {
        return this.irThreshold;
    }

    public float getRgbThreshold() {
        return this.rgbThreshold;
    }

    public void setIrThreshold(float f4) {
        this.irThreshold = f4;
    }

    public void setRgbThreshold(float f4) {
        this.rgbThreshold = f4;
    }
}
