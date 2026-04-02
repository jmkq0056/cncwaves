package e0;

import android.graphics.Paint;
import android.graphics.Path;
import androidx.core.view.ViewCompat;
import java.util.Calendar;

/* JADX INFO: loaded from: classes.dex */
public class c implements d {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f1551f;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f1556k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f1557l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f1558m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f1559n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f1560o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f1561p;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Calendar f1546a = Calendar.getInstance();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Paint f1547b = new Paint();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Path f1548c = new Path();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Path f1549d = new Path();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final b f1550e = new b(null);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f1552g = -1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f1553h = ViewCompat.MEASURED_STATE_MASK;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f1554i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f1555j = 0;

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public byte f1562a;

        public b(a aVar) {
        }

        public boolean a(int i4) {
            return ((this.f1562a >> i4) & 1) != 0;
        }
    }

    public final void a(Path path, float f4, float f5, float f6, float f7) {
        float f8 = f7 / 2.0f;
        float f9 = f4 + f8;
        float f10 = f6 - f8;
        path.moveTo(f9, f10);
        path.lineTo(f5 - f8, f10);
        float f11 = f7 / 4.0f;
        float f12 = f6 + f11;
        path.lineTo(f5 + f11, f12);
        float f13 = f6 + f8;
        path.lineTo(f5, f13);
        path.lineTo(f4, f13);
        path.lineTo(f4 - f11, f12);
        path.lineTo(f9, f10);
        path.close();
    }

    public final float b(float f4, float f5, float f6, boolean z3) {
        float f7 = (0.13f * f6) / 2.0f;
        float f8 = f4 + f7;
        float f9 = (f6 / 3.0f) + f5;
        float f10 = ((f6 * 2.0f) / 3.0f) + f5;
        if (z3) {
            float f11 = f8 - f7;
            float f12 = f8 + f7;
            this.f1548c.addRect(f11, f9 - f7, f12, f9 + f7, Path.Direction.CCW);
            this.f1548c.addRect(f11, f10 - f7, f12, f10 + f7, Path.Direction.CCW);
        } else {
            float f13 = f8 - f7;
            float f14 = f8 + f7;
            this.f1549d.addRect(f13, f9 - f7, f14, f9 + f7, Path.Direction.CCW);
            this.f1549d.addRect(f13, f10 - f7, f14, f10 + f7, Path.Direction.CCW);
        }
        return f7 * 2.0f;
    }

    public final void c(Path path, float f4, float f5, float f6, float f7) {
        float f8 = f7 / 4.0f;
        float f9 = f6 - f8;
        path.moveTo(f9, f4);
        float f10 = f7 / 2.0f;
        float f11 = f6 + f10;
        path.lineTo(f11, f4 + f10);
        path.lineTo(f11, f5 - f10);
        path.lineTo(f9, f5 + f8);
        float f12 = f6 - f10;
        path.lineTo(f12, f5);
        path.lineTo(f12, f8 + f4);
        path.lineTo(f9, f4);
        path.close();
    }

    public final void d(Path path, float f4, float f5, float f6, float f7) {
        float f8 = f7 / 4.0f;
        float f9 = f6 - f8;
        float f10 = f4 - f8;
        path.moveTo(f9, f10);
        float f11 = f7 / 2.0f;
        float f12 = f6 + f11;
        path.lineTo(f12, f4 + f11);
        path.lineTo(f12, f5 - f11);
        path.lineTo(f9, f5);
        float f13 = f6 - f11;
        path.lineTo(f13, f5 - f8);
        path.lineTo(f13, f4);
        path.lineTo(f9, f10);
        path.close();
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00b8  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x011d  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0134  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x014b  */
    /* JADX WARN: Removed duplicated region for block: B:50:? A[RETURN, SYNTHETIC] */
    @Override // e0.d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void draw(android.graphics.Canvas r11) {
        /*
            Method dump skipped, instruction units count: 358
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: e0.c.draw(android.graphics.Canvas):void");
    }

    public final void e(Path path, float f4, float f5, float f6, float f7) {
        float f8 = f7 / 4.0f;
        float f9 = f4 - f8;
        path.moveTo(f9, f6);
        float f10 = f7 / 2.0f;
        float f11 = f4 + f10;
        float f12 = f6 - f10;
        path.lineTo(f11, f12);
        float f13 = f5 - f10;
        path.lineTo(f13, f12);
        path.lineTo(f5 + f8, f6);
        float f14 = f10 + f6;
        path.lineTo(f13, f14);
        path.lineTo(f11, f14);
        path.lineTo(f9, f6);
        path.close();
    }

    public final float f(float f4, float f5, float f6, int i4) {
        float f7;
        int i5;
        int i6;
        float f8 = f6 * 0.52f;
        float f9 = f6 * 0.13f;
        float f10 = f9 / 2.0f;
        float f11 = f4 + f10;
        float f12 = (f4 + f8) - f10;
        float f13 = f5 + f10;
        float f14 = (f5 + f6) - f10;
        float f15 = (f13 + f14) / 2.0f;
        b bVar = this.f1550e;
        bVar.f1562a = (byte) 0;
        if (i4 == 0) {
            byte b4 = (byte) 1;
            bVar.f1562a = b4;
            byte b5 = (byte) (b4 | 2);
            bVar.f1562a = b5;
            byte b6 = (byte) (b5 | 4);
            bVar.f1562a = b6;
            byte b7 = (byte) (b6 | 16);
            bVar.f1562a = b7;
            byte b8 = (byte) (b7 | 32);
            bVar.f1562a = b8;
            bVar.f1562a = (byte) (b8 | 64);
        } else if (i4 == 1) {
            byte b9 = (byte) 4;
            bVar.f1562a = b9;
            bVar.f1562a = (byte) (b9 | 32);
        } else if (i4 == 2) {
            byte b10 = (byte) 1;
            bVar.f1562a = b10;
            byte b11 = (byte) (b10 | 4);
            bVar.f1562a = b11;
            byte b12 = (byte) (b11 | 8);
            bVar.f1562a = b12;
            byte b13 = (byte) (b12 | 16);
            bVar.f1562a = b13;
            bVar.f1562a = (byte) (b13 | 64);
        } else if (i4 == 3) {
            byte b14 = (byte) 1;
            bVar.f1562a = b14;
            byte b15 = (byte) (b14 | 4);
            bVar.f1562a = b15;
            byte b16 = (byte) (b15 | 8);
            bVar.f1562a = b16;
            byte b17 = (byte) (b16 | 32);
            bVar.f1562a = b17;
            bVar.f1562a = (byte) (b17 | 64);
        } else if (i4 == 4) {
            byte b18 = (byte) 2;
            bVar.f1562a = b18;
            byte b19 = (byte) (b18 | 4);
            bVar.f1562a = b19;
            byte b20 = (byte) (b19 | 8);
            bVar.f1562a = b20;
            bVar.f1562a = (byte) (b20 | 32);
        } else if (i4 == 5) {
            byte b21 = (byte) 1;
            bVar.f1562a = b21;
            byte b22 = (byte) (b21 | 2);
            bVar.f1562a = b22;
            byte b23 = (byte) (b22 | 8);
            bVar.f1562a = b23;
            byte b24 = (byte) (b23 | 32);
            bVar.f1562a = b24;
            bVar.f1562a = (byte) (b24 | 64);
        } else if (i4 == 6) {
            byte b25 = (byte) 1;
            bVar.f1562a = b25;
            byte b26 = (byte) (b25 | 2);
            bVar.f1562a = b26;
            byte b27 = (byte) (b26 | 8);
            bVar.f1562a = b27;
            byte b28 = (byte) (b27 | 16);
            bVar.f1562a = b28;
            byte b29 = (byte) (b28 | 32);
            bVar.f1562a = b29;
            bVar.f1562a = (byte) (b29 | 64);
        } else if (i4 == 7) {
            byte b30 = (byte) 1;
            bVar.f1562a = b30;
            byte b31 = (byte) (b30 | 4);
            bVar.f1562a = b31;
            bVar.f1562a = (byte) (b31 | 32);
        } else if (i4 == 8) {
            byte b32 = (byte) 1;
            bVar.f1562a = b32;
            byte b33 = (byte) (b32 | 2);
            bVar.f1562a = b33;
            byte b34 = (byte) (b33 | 4);
            bVar.f1562a = b34;
            byte b35 = (byte) (b34 | 8);
            bVar.f1562a = b35;
            byte b36 = (byte) (b35 | 16);
            bVar.f1562a = b36;
            byte b37 = (byte) (b36 | 32);
            bVar.f1562a = b37;
            bVar.f1562a = (byte) (b37 | 64);
        } else if (i4 == 9) {
            byte b38 = (byte) 1;
            bVar.f1562a = b38;
            byte b39 = (byte) (b38 | 2);
            bVar.f1562a = b39;
            byte b40 = (byte) (b39 | 4);
            bVar.f1562a = b40;
            byte b41 = (byte) (b40 | 8);
            bVar.f1562a = b41;
            byte b42 = (byte) (b41 | 32);
            bVar.f1562a = b42;
            bVar.f1562a = (byte) (b42 | 64);
        }
        float f16 = 0.1f * f9;
        if (f16 < 1.0f) {
            i5 = 0;
            f7 = 1.0f;
        } else {
            f7 = f16;
            i5 = 0;
        }
        if (bVar.a(i5)) {
            i6 = 1;
            i(this.f1548c, f11 + f7, f12 - f7, f13, f9);
        } else {
            i6 = 1;
            i(this.f1549d, f11 + f7, f12 - f7, f13, f9);
        }
        if (this.f1550e.a(i6)) {
            d(this.f1548c, f13 + f7, f15 - f7, f11, f9);
        } else {
            d(this.f1549d, f13 + f7, f15 - f7, f11, f9);
        }
        if (this.f1550e.a(2)) {
            h(this.f1548c, f13 + f7, f15 - f7, f12, f9);
        } else {
            h(this.f1549d, f13 + f7, f15 - f7, f12, f9);
        }
        if (this.f1550e.a(3)) {
            e(this.f1548c, f11 + f7, f12 - f7, f15, f9);
        } else {
            e(this.f1549d, f11 + f7, f12 - f7, f15, f9);
        }
        if (this.f1550e.a(4)) {
            c(this.f1548c, f15 + f7, f14 - f7, f11, f9);
        } else {
            c(this.f1549d, f15 + f7, f14 - f7, f11, f9);
        }
        if (this.f1550e.a(5)) {
            g(this.f1548c, f15 + f7, f14 - f7, f12, f9);
        } else {
            g(this.f1549d, f15 + f7, f14 - f7, f12, f9);
        }
        if (this.f1550e.a(6)) {
            a(this.f1548c, f11 + f7, f12 - f7, f14, f9);
        } else {
            a(this.f1549d, f11 + f7, f12 - f7, f14, f9);
        }
        return f8;
    }

    public final void g(Path path, float f4, float f5, float f6, float f7) {
        float f8 = f7 / 4.0f;
        float f9 = f6 + f8;
        path.moveTo(f9, f4);
        float f10 = f7 / 2.0f;
        float f11 = f6 + f10;
        path.lineTo(f11, f4 + f8);
        path.lineTo(f11, f5);
        path.lineTo(f9, f8 + f5);
        float f12 = f6 - f10;
        path.lineTo(f12, f5 - f10);
        path.lineTo(f12, f10 + f4);
        path.lineTo(f9, f4);
        path.close();
    }

    public final void h(Path path, float f4, float f5, float f6, float f7) {
        float f8 = f7 / 4.0f;
        float f9 = f6 + f8;
        float f10 = f4 - f8;
        path.moveTo(f9, f10);
        float f11 = f7 / 2.0f;
        float f12 = f6 + f11;
        path.lineTo(f12, f4);
        path.lineTo(f12, f5 - f8);
        path.lineTo(f9, f5);
        float f13 = f6 - f11;
        path.lineTo(f13, f5 - f11);
        path.lineTo(f13, f4 + f11);
        path.lineTo(f9, f10);
        path.close();
    }

    public final void i(Path path, float f4, float f5, float f6, float f7) {
        float f8 = f7 / 2.0f;
        float f9 = f5 - f8;
        float f10 = f6 + f8;
        path.moveTo(f9, f10);
        path.lineTo(f4 + f8, f10);
        float f11 = f7 / 4.0f;
        float f12 = f6 - f11;
        path.lineTo(f4 - f11, f12);
        float f13 = f6 - f8;
        path.lineTo(f4, f13);
        path.lineTo(f5, f13);
        path.lineTo(f5 + f11, f12);
        path.lineTo(f9, f10);
        path.close();
    }

    public final float j() {
        return ((float) Math.abs(Math.tan(-0.08726646324990228d))) + (this.f1555j == 0 ? 2.9299998f : 4.6400003f);
    }
}
