package com.arcsoft.face;

/* JADX INFO: loaded from: classes.dex */
public class FaceFeature {
    public static final int FEATURE_SIZE = 1032;
    public byte[] featureData;

    public FaceFeature(FaceFeature faceFeature) {
        if (faceFeature == null) {
            this.featureData = new byte[FEATURE_SIZE];
        } else {
            this.featureData = (byte[]) faceFeature.getFeatureData().clone();
        }
    }

    public byte[] getFeatureData() {
        return this.featureData;
    }

    public void setFeatureData(byte[] bArr) {
        this.featureData = bArr;
    }

    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public FaceFeature m8clone() {
        return new FaceFeature(this);
    }

    public FaceFeature() {
        this.featureData = new byte[FEATURE_SIZE];
    }

    public FaceFeature(byte[] bArr) {
        this.featureData = bArr;
    }
}
