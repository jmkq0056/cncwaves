package y2;

import java.util.Objects;
import x2.s;

/* JADX INFO: loaded from: classes2.dex */
public class g implements x2.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public x2.j f4121a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public x2.f f4122b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public a f4123c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public x2.k f4124d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public s f4125e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Object f4126f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public x2.a f4127g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f4128h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public x2.h f4129i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f4130j;

    public g(x2.f fVar, x2.j jVar, a aVar, x2.k kVar, s sVar, Object obj, x2.a aVar2, boolean z3) {
        this.f4121a = jVar;
        this.f4122b = fVar;
        this.f4123c = aVar;
        this.f4124d = kVar;
        this.f4125e = sVar;
        this.f4126f = obj;
        this.f4127g = aVar2;
        this.f4128h = kVar.f3979f;
        this.f4130j = z3;
    }

    @Override // x2.a
    public void a(x2.e eVar, Throwable th) {
        int i4;
        a aVar = this.f4123c;
        int length = aVar.f4017e.length;
        int i5 = aVar.f4016d + 1;
        if (i5 < length || ((i4 = this.f4128h) == 0 && this.f4124d.f3979f == 4)) {
            if (this.f4128h == 0) {
                x2.k kVar = this.f4124d;
                if (kVar.f3979f == 4) {
                    kVar.a(3);
                } else {
                    kVar.a(4);
                    this.f4123c.f4016d = i5;
                }
            } else {
                aVar.f4016d = i5;
            }
            try {
                c();
                return;
            } catch (x2.p e4) {
                a(eVar, e4);
                return;
            }
        }
        if (i4 == 0) {
            this.f4124d.a(0);
        }
        this.f4125e.f3986a.a(null, th instanceof x2.m ? (x2.m) th : new x2.m(th));
        this.f4125e.f3986a.b();
        s sVar = this.f4125e;
        q qVar = sVar.f3986a;
        qVar.f4165k = this.f4122b;
        x2.a aVar2 = this.f4127g;
        if (aVar2 != null) {
            qVar.f4167m = this.f4126f;
            aVar2.a(sVar, th);
        }
    }

    @Override // x2.a
    public void b(x2.e eVar) {
        if (this.f4128h == 0) {
            this.f4124d.a(0);
        }
        this.f4125e.f3986a.a(((s) eVar).f3986a.f4161g, null);
        this.f4125e.f3986a.b();
        this.f4125e.f3986a.f4165k = this.f4122b;
        Objects.requireNonNull(this.f4123c);
        x2.a aVar = this.f4127g;
        if (aVar != null) {
            s sVar = this.f4125e;
            sVar.f3986a.f4167m = this.f4126f;
            aVar.b(sVar);
        }
        if (this.f4129i != null) {
            a aVar2 = this.f4123c;
            this.f4129i.d(this.f4130j, aVar2.f4017e[aVar2.f4016d].a());
        }
    }

    public void c() {
        s sVar = new s(this.f4122b.f3962b);
        q qVar = sVar.f3986a;
        qVar.f4166l = this;
        qVar.f4167m = this;
        x2.j jVar = this.f4121a;
        x2.f fVar = this.f4122b;
        jVar.i(fVar.f3962b, fVar.f3963c);
        if (this.f4124d.f3977d) {
            this.f4121a.clear();
        }
        x2.k kVar = this.f4124d;
        if (kVar.f3979f == 0) {
            kVar.a(4);
        }
        try {
            this.f4123c.b(this.f4124d, sVar);
        } catch (x2.m e4) {
            a(sVar, e4);
        }
    }
}
