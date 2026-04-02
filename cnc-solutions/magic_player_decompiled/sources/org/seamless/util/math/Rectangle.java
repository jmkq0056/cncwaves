package org.seamless.util.math;

import android.support.v4.media.e;
import android.support.v4.media.f;

/* JADX INFO: loaded from: classes2.dex */
public class Rectangle {
    private int height;
    private Point position;
    private int width;

    public Rectangle() {
    }

    public int getHeight() {
        return this.height;
    }

    public Point getPosition() {
        return this.position;
    }

    public int getWidth() {
        return this.width;
    }

    public Rectangle intersection(Rectangle rectangle) {
        int x3 = this.position.getX();
        int y3 = this.position.getY();
        int x4 = rectangle.position.getX();
        int y4 = rectangle.position.getY();
        long j4 = ((long) x3) + ((long) this.width);
        long j5 = ((long) y3) + ((long) this.height);
        long j6 = ((long) x4) + ((long) rectangle.width);
        long j7 = ((long) y4) + ((long) rectangle.height);
        if (x3 < x4) {
            x3 = x4;
        }
        if (y3 < y4) {
            y3 = y4;
        }
        if (j4 > j6) {
            j4 = j6;
        }
        if (j5 > j7) {
            j5 = j7;
        }
        long j8 = j4 - ((long) x3);
        long j9 = j5 - ((long) y3);
        if (j8 < -2147483648L) {
            j8 = -2147483648L;
        }
        if (j9 < -2147483648L) {
            j9 = -2147483648L;
        }
        return new Rectangle(new Point(x3, y3), (int) j8, (int) j9);
    }

    public boolean isOverlapping(Rectangle rectangle) {
        Rectangle rectangleIntersection = intersection(rectangle);
        return rectangleIntersection.getWidth() > 0 && rectangleIntersection.getHeight() > 0;
    }

    public void reset() {
        this.position = new Point(0, 0);
        this.width = 0;
        this.height = 0;
    }

    public void setHeight(int i4) {
        this.height = i4;
    }

    public void setPosition(Point point) {
        this.position = point;
    }

    public void setWidth(int i4) {
        this.width = i4;
    }

    public String toString() {
        StringBuilder sbA = f.a("Rectangle(");
        sbA.append(this.position);
        sbA.append(" - ");
        sbA.append(this.width);
        sbA.append("x");
        return e.a(sbA, this.height, ")");
    }

    public Rectangle(Point point, int i4, int i5) {
        this.position = point;
        this.width = i4;
        this.height = i5;
    }
}
