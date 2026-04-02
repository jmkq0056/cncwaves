package e0;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import e0.f;
import e0.h;

/* JADX INFO: loaded from: classes.dex */
public class i extends h implements f.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public f f1595b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public z.d f1596c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public g f1597d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f1598e = 0;

    public i(g gVar) {
        f fVar = new f();
        this.f1595b = fVar;
        fVar.f1588z = this;
        this.f1597d = gVar;
    }

    @Override // e0.h
    public void a(z.d dVar) {
        this.f1596c = dVar;
    }

    public void b(int i4) {
        if (((z.a) this.f1596c).b() == 0) {
            return;
        }
        int iB = i4 % ((z.a) this.f1596c).b();
        this.f1598e = iB;
        this.f1595b.q(iB, this.f1597d);
    }

    @Override // e0.f.a
    public void c() {
        int i4 = this.f1598e + 1;
        if (i4 >= ((z.a) this.f1596c).b()) {
            i4 = 0;
        }
        ((z.a) this.f1596c).e(i4);
    }

    @Override // e0.f.a
    public void d() {
        int i4 = this.f1598e + 1;
        if (i4 < ((z.a) this.f1596c).b()) {
            ((z.a) this.f1596c).e(i4);
            this.f1598e = i4;
            this.f1595b.q(i4, this.f1597d);
        } else {
            h.a aVar = this.f1594a;
            if (aVar != null) {
                ((f0.k) aVar).A(0);
            }
        }
    }

    @Override // e0.d
    public void draw(Canvas canvas) {
        this.f1595b.draw(canvas);
    }

    @Override // e0.f.a
    public Bitmap e(int i4) {
        return ((z.a) this.f1596c).a(i4);
    }

    @Override // e0.e
    public void resume() {
        this.f1595b.f1581s = 0L;
    }

    @Override // e0.e
    public void seekTo(int i4) {
        int i5 = this.f1597d.f1593e;
        if (i5 > 0) {
            b(i4 / i5);
            this.f1595b.seekTo(i4 % i5);
        } else {
            b(0);
            this.f1595b.seekTo(0);
        }
    }
}
