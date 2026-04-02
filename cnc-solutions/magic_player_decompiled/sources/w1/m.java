package w1;

import java.io.EOFException;
import java.io.IOException;
import t1.t;
import t1.u;
import t1.v;
import t1.x;
import t1.y;
import w1.o;

/* JADX INFO: loaded from: classes2.dex */
public final class m<T> extends x<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final u<T> f3867a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final t1.m<T> f3868b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final t1.i f3869c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final z1.a<T> f3870d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final m<T>.b f3871e = new b(this, null);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public x<T> f3872f;

    public final class b implements t, t1.l {
        public b(m mVar, a aVar) {
        }
    }

    public m(u<T> uVar, t1.m<T> mVar, t1.i iVar, z1.a<T> aVar, y yVar) {
        this.f3867a = uVar;
        this.f3868b = mVar;
        this.f3869c = iVar;
        this.f3870d = aVar;
    }

    @Override // t1.x
    public T a(a2.a aVar) {
        boolean z3;
        t1.n nVarA;
        if (this.f3868b == null) {
            x<T> xVarF = this.f3872f;
            if (xVarF == null) {
                xVarF = this.f3869c.f(null, this.f3870d);
                this.f3872f = xVarF;
            }
            return xVarF.a(aVar);
        }
        try {
            try {
                aVar.W();
                z3 = false;
            } catch (EOFException e4) {
                e = e4;
                z3 = true;
            }
            try {
                nVarA = ((o.u) o.C).a(aVar);
            } catch (EOFException e5) {
                e = e5;
                if (!z3) {
                    throw new v(e);
                }
                nVarA = t1.p.f3545a;
            }
            if (nVarA instanceof t1.p) {
                return null;
            }
            return this.f3868b.a(nVarA, this.f3870d.f4197b, this.f3871e);
        } catch (a2.d e6) {
            throw new v(e6);
        } catch (IOException e7) {
            throw new t1.o(e7);
        } catch (NumberFormatException e8) {
            throw new v(e8);
        }
    }

    @Override // t1.x
    public void b(a2.c cVar, T t3) throws IOException {
        u<T> uVar = this.f3867a;
        if (uVar == null) {
            x<T> xVarF = this.f3872f;
            if (xVarF == null) {
                xVarF = this.f3869c.f(null, this.f3870d);
                this.f3872f = xVarF;
            }
            xVarF.b(cVar, t3);
            return;
        }
        if (t3 == null) {
            cVar.J();
        } else {
            ((o.u) o.C).b(cVar, uVar.a(t3, this.f3870d.f4197b, this.f3871e));
        }
    }
}
