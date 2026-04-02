package androidx.constraintlayout.solver.widgets;

/* JADX INFO: loaded from: classes.dex */
public class Rectangle {
    public int height;
    public int width;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f142x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int f143y;

    public boolean contains(int i4, int i5) {
        int i6;
        int i7 = this.f142x;
        return i4 >= i7 && i4 < i7 + this.width && i5 >= (i6 = this.f143y) && i5 < i6 + this.height;
    }

    public int getCenterX() {
        return (this.f142x + this.width) / 2;
    }

    public int getCenterY() {
        return (this.f143y + this.height) / 2;
    }

    public void grow(int i4, int i5) {
        this.f142x -= i4;
        this.f143y -= i5;
        this.width = (i4 * 2) + this.width;
        this.height = (i5 * 2) + this.height;
    }

    public boolean intersects(Rectangle rectangle) {
        int i4;
        int i5;
        int i6 = this.f142x;
        int i7 = rectangle.f142x;
        return i6 >= i7 && i6 < i7 + rectangle.width && (i4 = this.f143y) >= (i5 = rectangle.f143y) && i4 < i5 + rectangle.height;
    }

    public void setBounds(int i4, int i5, int i6, int i7) {
        this.f142x = i4;
        this.f143y = i5;
        this.width = i6;
        this.height = i7;
    }
}
