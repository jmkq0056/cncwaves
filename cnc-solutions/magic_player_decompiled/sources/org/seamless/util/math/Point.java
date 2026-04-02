package org.seamless.util.math;

import android.support.v4.media.e;
import android.support.v4.media.f;

/* JADX INFO: loaded from: classes2.dex */
public class Point {

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private int f2900x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private int f2901y;

    public Point(int i4, int i5) {
        this.f2900x = i4;
        this.f2901y = i5;
    }

    public Point divide(double d4) {
        int i4;
        int i5 = this.f2900x;
        int i6 = 0;
        if (i5 != 0) {
            double d5 = i5;
            Double.isNaN(d5);
            i4 = (int) (d5 / d4);
        } else {
            i4 = 0;
        }
        int i7 = this.f2901y;
        if (i7 != 0) {
            double d6 = i7;
            Double.isNaN(d6);
            i6 = (int) (d6 / d4);
        }
        return new Point(i4, i6);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        Point point = (Point) obj;
        return this.f2900x == point.f2900x && this.f2901y == point.f2901y;
    }

    public int getX() {
        return this.f2900x;
    }

    public int getY() {
        return this.f2901y;
    }

    public int hashCode() {
        return (this.f2900x * 31) + this.f2901y;
    }

    public Point multiply(double d4) {
        int i4;
        int i5 = this.f2900x;
        int i6 = 0;
        if (i5 != 0) {
            double d5 = i5;
            Double.isNaN(d5);
            i4 = (int) (d5 * d4);
        } else {
            i4 = 0;
        }
        int i7 = this.f2901y;
        if (i7 != 0) {
            double d6 = i7;
            Double.isNaN(d6);
            i6 = (int) (d6 * d4);
        }
        return new Point(i4, i6);
    }

    public String toString() {
        StringBuilder sbA = f.a("Point(");
        sbA.append(this.f2900x);
        sbA.append("/");
        return e.a(sbA, this.f2901y, ")");
    }
}
