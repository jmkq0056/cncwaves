package w1;

import java.io.IOException;
import java.io.Writer;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class f extends a2.c {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final Writer f3834o = new a();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final t1.s f3835p = new t1.s("closed");

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final List<t1.n> f3836l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public String f3837m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public t1.n f3838n;

    public class a extends Writer {
        @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            throw new AssertionError();
        }

        @Override // java.io.Writer, java.io.Flushable
        public void flush() {
            throw new AssertionError();
        }

        @Override // java.io.Writer
        public void write(char[] cArr, int i4, int i5) {
            throw new AssertionError();
        }
    }

    public f() {
        super(f3834o);
        this.f3836l = new ArrayList();
        this.f3838n = t1.p.f3545a;
    }

    @Override // a2.c
    public a2.c C() {
        t1.k kVar = new t1.k();
        W(kVar);
        this.f3836l.add(kVar);
        return this;
    }

    @Override // a2.c
    public a2.c D() {
        t1.q qVar = new t1.q();
        W(qVar);
        this.f3836l.add(qVar);
        return this;
    }

    @Override // a2.c
    public a2.c F() {
        if (this.f3836l.isEmpty() || this.f3837m != null) {
            throw new IllegalStateException();
        }
        if (!(V() instanceof t1.k)) {
            throw new IllegalStateException();
        }
        this.f3836l.remove(r0.size() - 1);
        return this;
    }

    @Override // a2.c
    public a2.c G() {
        if (this.f3836l.isEmpty() || this.f3837m != null) {
            throw new IllegalStateException();
        }
        if (!(V() instanceof t1.q)) {
            throw new IllegalStateException();
        }
        this.f3836l.remove(r0.size() - 1);
        return this;
    }

    @Override // a2.c
    public a2.c H(String str) {
        if (this.f3836l.isEmpty() || this.f3837m != null) {
            throw new IllegalStateException();
        }
        if (!(V() instanceof t1.q)) {
            throw new IllegalStateException();
        }
        this.f3837m = str;
        return this;
    }

    @Override // a2.c
    public a2.c J() {
        W(t1.p.f3545a);
        return this;
    }

    @Override // a2.c
    public a2.c O(long j4) {
        W(new t1.s(Long.valueOf(j4)));
        return this;
    }

    @Override // a2.c
    public a2.c P(Boolean bool) {
        if (bool == null) {
            W(t1.p.f3545a);
            return this;
        }
        W(new t1.s(bool));
        return this;
    }

    @Override // a2.c
    public a2.c Q(Number number) {
        if (number == null) {
            W(t1.p.f3545a);
            return this;
        }
        if (!this.f90f) {
            double dDoubleValue = number.doubleValue();
            if (Double.isNaN(dDoubleValue) || Double.isInfinite(dDoubleValue)) {
                throw new IllegalArgumentException("JSON forbids NaN and infinities: " + number);
            }
        }
        W(new t1.s(number));
        return this;
    }

    @Override // a2.c
    public a2.c R(String str) {
        if (str == null) {
            W(t1.p.f3545a);
            return this;
        }
        W(new t1.s(str));
        return this;
    }

    @Override // a2.c
    public a2.c S(boolean z3) {
        W(new t1.s(Boolean.valueOf(z3)));
        return this;
    }

    public t1.n U() {
        if (this.f3836l.isEmpty()) {
            return this.f3838n;
        }
        StringBuilder sbA = android.support.v4.media.f.a("Expected one JSON element but was ");
        sbA.append(this.f3836l);
        throw new IllegalStateException(sbA.toString());
    }

    public final t1.n V() {
        return this.f3836l.get(r0.size() - 1);
    }

    public final void W(t1.n nVar) {
        if (this.f3837m != null) {
            if (!(nVar instanceof t1.p) || this.f93i) {
                t1.q qVar = (t1.q) V();
                qVar.f3546a.put(this.f3837m, nVar);
            }
            this.f3837m = null;
            return;
        }
        if (this.f3836l.isEmpty()) {
            this.f3838n = nVar;
            return;
        }
        t1.n nVarV = V();
        if (!(nVarV instanceof t1.k)) {
            throw new IllegalStateException();
        }
        ((t1.k) nVarV).f3544a.add(nVar);
    }

    @Override // a2.c, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (!this.f3836l.isEmpty()) {
            throw new IOException("Incomplete document");
        }
        this.f3836l.add(f3835p);
    }

    @Override // a2.c, java.io.Flushable
    public void flush() {
    }
}
