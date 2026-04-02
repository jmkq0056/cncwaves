package com.google.zxing;

/* JADX INFO: loaded from: classes2.dex */
public final class Dimension {
    private final int height;
    private final int width;

    public Dimension(int i4, int i5) {
        if (i4 < 0 || i5 < 0) {
            throw new IllegalArgumentException();
        }
        this.width = i4;
        this.height = i5;
    }

    public boolean equals(Object obj) {
        if (obj instanceof Dimension) {
            Dimension dimension = (Dimension) obj;
            if (this.width == dimension.width && this.height == dimension.height) {
                return true;
            }
        }
        return false;
    }

    public int getHeight() {
        return this.height;
    }

    public int getWidth() {
        return this.width;
    }

    public int hashCode() {
        return (this.width * 32713) + this.height;
    }

    public String toString() {
        return this.width + "x" + this.height;
    }
}
