package cn.huidu.lcd.setting.keyboard;

import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.support.v4.media.e;
import android.support.v4.media.f;

/* JADX INFO: loaded from: classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Drawable f538a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Drawable f539b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f540c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f541d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public float f542e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public float f543f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public float f544g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public float f545h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public float f546i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f547j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f548k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f549l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public C0011a f550m = new C0011a(this);

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public C0011a f551n = new C0011a(this);

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public C0011a f552o = new C0011a(this);

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public C0011a f553p = new C0011a(this);

    /* JADX INFO: renamed from: cn.huidu.lcd.setting.keyboard.a$a, reason: collision with other inner class name */
    public class C0011a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public a f554a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f555b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f556c;

        public C0011a(a aVar) {
        }
    }

    public float a() {
        return this.f545h - this.f544g;
    }

    public Rect b() {
        return new Rect((int) this.f542e, (int) this.f544g, (int) this.f543f, (int) this.f545h);
    }

    public float c() {
        return this.f543f - this.f542e;
    }

    public String toString() {
        StringBuilder sbA = f.a("SoftKey [mKeyIcon=");
        sbA.append(this.f539b);
        sbA.append(", mKeyLabel=");
        sbA.append(this.f540c);
        sbA.append(", mKeyCode=");
        return e.a(sbA, this.f541d, "]");
    }
}
