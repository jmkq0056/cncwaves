package com.arcsoft.face.model;

/* JADX INFO: loaded from: classes.dex */
public class ArcSoftImageInfo {
    private int height;
    private int imageFormat;
    private byte[][] planes;
    private int[] strides;
    private int width;

    public ArcSoftImageInfo(int i4, int i5, int i6) {
        this.width = i4;
        this.height = i5;
        this.imageFormat = i6;
    }

    public int getHeight() {
        return this.height;
    }

    public int getImageFormat() {
        return this.imageFormat;
    }

    public byte[][] getPlanes() {
        return this.planes;
    }

    public int[] getStrides() {
        return this.strides;
    }

    public int getWidth() {
        return this.width;
    }

    public void setHeight(int i4) {
        this.height = i4;
    }

    public void setImageFormat(int i4) {
        this.imageFormat = i4;
    }

    public void setPlanes(byte[][] bArr) {
        this.planes = bArr;
    }

    public void setStrides(int[] iArr) {
        this.strides = iArr;
    }

    public void setWidth(int i4) {
        this.width = i4;
    }

    public ArcSoftImageInfo(int i4, int i5, int i6, byte[][] bArr, int[] iArr) {
        this.width = i4;
        this.height = i5;
        this.imageFormat = i6;
        this.planes = bArr;
        this.strides = iArr;
    }
}
