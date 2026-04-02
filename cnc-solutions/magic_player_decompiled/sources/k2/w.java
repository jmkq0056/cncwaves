package k2;

import androidx.core.app.NotificationCompat;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.ArrayList;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;
import k2.r;

/* JADX INFO: loaded from: classes.dex */
public final class w implements d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final u f2259a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final o2.i f2260b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final u2.c f2261c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Nullable
    public n f2262d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final x f2263e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f2264f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f2265g;

    /* JADX INFO: loaded from: classes2.dex */
    public class a extends u2.c {
        public a() {
        }

        @Override // u2.c
        public void m() {
            o2.c cVar;
            n2.c cVar2;
            o2.i iVar = w.this.f2260b;
            iVar.f2875d = true;
            n2.f fVar = iVar.f2873b;
            if (fVar != null) {
                synchronized (fVar.f2765d) {
                    fVar.f2774m = true;
                    cVar = fVar.f2775n;
                    cVar2 = fVar.f2771j;
                }
                if (cVar != null) {
                    cVar.cancel();
                } else if (cVar2 != null) {
                    l2.c.g(cVar2.f2739d);
                }
            }
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    public final class b extends l2.b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final e f2267b;

        public b(e eVar) {
            super("OkHttp %s", w.this.d());
            this.f2267b = eVar;
        }

        @Override // l2.b
        public void a() {
            boolean z3;
            a0 a0VarC;
            w.this.f2261c.i();
            try {
                try {
                    a0VarC = w.this.c();
                } catch (Throwable th) {
                    l lVar = w.this.f2259a.f2205a;
                    lVar.a(lVar.f2170c, this);
                    throw th;
                }
            } catch (IOException e4) {
                e = e4;
                z3 = false;
            }
            try {
                if (w.this.f2260b.f2875d) {
                    this.f2267b.b(w.this, new IOException("Canceled"));
                } else {
                    this.f2267b.a(w.this, a0VarC);
                }
            } catch (IOException e5) {
                e = e5;
                z3 = true;
                IOException iOExceptionE = w.this.e(e);
                if (z3) {
                    r2.f.f3385a.l(4, "Callback failure for " + w.this.f(), iOExceptionE);
                } else {
                    Objects.requireNonNull(w.this.f2262d);
                    this.f2267b.b(w.this, iOExceptionE);
                }
            }
            l lVar2 = w.this.f2259a.f2205a;
            lVar2.a(lVar2.f2170c, this);
        }
    }

    public w(u uVar, x xVar, boolean z3) {
        this.f2259a = uVar;
        this.f2263e = xVar;
        this.f2264f = z3;
        this.f2260b = new o2.i(uVar, z3);
        a aVar = new a();
        this.f2261c = aVar;
        Objects.requireNonNull(uVar);
        aVar.g(0, TimeUnit.MILLISECONDS);
    }

    public void a(e eVar) {
        synchronized (this) {
            if (this.f2265g) {
                throw new IllegalStateException("Already Executed");
            }
            this.f2265g = true;
        }
        this.f2260b.f2874c = r2.f.f3385a.j("response.body().close()");
        Objects.requireNonNull(this.f2262d);
        l lVar = this.f2259a.f2205a;
        b bVar = new b(eVar);
        synchronized (lVar) {
            lVar.f2169b.add(bVar);
        }
        lVar.b();
    }

    public a0 b() {
        synchronized (this) {
            if (this.f2265g) {
                throw new IllegalStateException("Already Executed");
            }
            this.f2265g = true;
        }
        this.f2260b.f2874c = r2.f.f3385a.j("response.body().close()");
        this.f2261c.i();
        Objects.requireNonNull(this.f2262d);
        try {
            try {
                l lVar = this.f2259a.f2205a;
                synchronized (lVar) {
                    lVar.f2171d.add(this);
                }
                return c();
            } catch (IOException e4) {
                IOException iOExceptionE = e(e4);
                Objects.requireNonNull(this.f2262d);
                throw iOExceptionE;
            }
        } finally {
            l lVar2 = this.f2259a.f2205a;
            lVar2.a(lVar2.f2171d, this);
        }
    }

    public a0 c() {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.f2259a.f2208d);
        arrayList.add(this.f2260b);
        arrayList.add(new o2.a(this.f2259a.f2212h));
        Objects.requireNonNull(this.f2259a);
        arrayList.add(new m2.a(null));
        arrayList.add(new n2.a(this.f2259a));
        if (!this.f2264f) {
            arrayList.addAll(this.f2259a.f2209e);
        }
        arrayList.add(new o2.b(this.f2264f));
        x xVar = this.f2263e;
        n nVar = this.f2262d;
        u uVar = this.f2259a;
        return new o2.f(arrayList, null, null, null, 0, xVar, this, nVar, uVar.f2225u, uVar.f2226v, uVar.f2227w).a(xVar);
    }

    public Object clone() {
        u uVar = this.f2259a;
        w wVar = new w(uVar, this.f2263e, this.f2264f);
        wVar.f2262d = ((o) uVar.f2210f).f2174a;
        return wVar;
    }

    public String d() {
        r.a aVar;
        r rVar = this.f2263e.f2269a;
        Objects.requireNonNull(rVar);
        try {
            aVar = new r.a();
            aVar.c(rVar, "/...");
        } catch (IllegalArgumentException unused) {
            aVar = null;
        }
        Objects.requireNonNull(aVar);
        aVar.f2192b = r.b("", " \"':;<=>@[]^`{}|/\\?#", false, false, false, true);
        aVar.f2193c = r.b("", " \"':;<=>@[]^`{}|/\\?#", false, false, false, true);
        return aVar.a().f2190i;
    }

    @Nullable
    public IOException e(@Nullable IOException iOException) {
        if (!this.f2261c.k()) {
            return iOException;
        }
        InterruptedIOException interruptedIOException = new InterruptedIOException("timeout");
        if (iOException != null) {
            interruptedIOException.initCause(iOException);
        }
        return interruptedIOException;
    }

    public String f() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f2260b.f2875d ? "canceled " : "");
        sb.append(this.f2264f ? "web socket" : NotificationCompat.CATEGORY_CALL);
        sb.append(" to ");
        sb.append(d());
        return sb.toString();
    }
}
