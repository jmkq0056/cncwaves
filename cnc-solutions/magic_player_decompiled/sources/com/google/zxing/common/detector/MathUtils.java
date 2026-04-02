package com.google.zxing.common.detector;

/* JADX INFO: loaded from: classes2.dex */
public final class MathUtils {
    private MathUtils() {
    }

    public static float distance(float f4, float f5, float f6, float f7) {
        double d4 = f4 - f6;
        double d5 = f5 - f7;
        Double.isNaN(d4);
        Double.isNaN(d4);
        Double.isNaN(d5);
        Double.isNaN(d5);
        return (float) Math.sqrt((d5 * d5) + (d4 * d4));
    }

    public static int round(float f4) {
        return (int) (f4 + (f4 < 0.0f ? -0.5f : 0.5f));
    }

    public static int sum(int[] iArr) {
        int i4 = 0;
        for (int i5 : iArr) {
            i4 += i5;
        }
        return i4;
    }

    public static float distance(int i4, int i5, int i6, int i7) {
        double d4 = i4 - i6;
        double d5 = i5 - i7;
        Double.isNaN(d4);
        Double.isNaN(d4);
        Double.isNaN(d5);
        Double.isNaN(d5);
        return (float) Math.sqrt((d5 * d5) + (d4 * d4));
    }
}
