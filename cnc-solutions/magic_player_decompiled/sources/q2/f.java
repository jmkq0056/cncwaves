package q2;

import java.io.IOException;
import java.net.ProtocolException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import java.util.logging.Logger;
import k2.a0;
import k2.c0;
import k2.q;
import k2.s;
import k2.u;
import k2.v;
import k2.x;
import org.eclipse.jetty.http.HttpHeaderValues;
import org.eclipse.jetty.http.HttpHeaders;
import q2.p;
import u2.w;

/* JADX INFO: loaded from: classes2.dex */
public final class f implements o2.c {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final List<String> f3198f = l2.c.q("connection", "host", HttpHeaderValues.KEEP_ALIVE, "proxy-connection", "te", "transfer-encoding", "encoding", "upgrade", ":method", ":path", ":scheme", ":authority");

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final List<String> f3199g = l2.c.q("connection", "host", HttpHeaderValues.KEEP_ALIVE, "proxy-connection", "te", "transfer-encoding", "encoding", "upgrade");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final s.a f3200a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final n2.f f3201b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final g f3202c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public p f3203d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final v f3204e;

    public class a extends u2.j {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f3205b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public long f3206c;

        public a(w wVar) {
            super(wVar);
            this.f3205b = false;
            this.f3206c = 0L;
        }

        public final void B(IOException iOException) {
            if (this.f3205b) {
                return;
            }
            this.f3205b = true;
            f fVar = f.this;
            fVar.f3201b.i(false, fVar, this.f3206c, iOException);
        }

        @Override // u2.w, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            this.f3586a.close();
            B(null);
        }

        @Override // u2.w
        public long s(u2.e eVar, long j4) throws IOException {
            try {
                long jS = this.f3586a.s(eVar, j4);
                if (jS > 0) {
                    this.f3206c += jS;
                }
                return jS;
            } catch (IOException e4) {
                B(e4);
                throw e4;
            }
        }
    }

    public f(k2.u uVar, s.a aVar, n2.f fVar, g gVar) {
        this.f3200a = aVar;
        this.f3201b = fVar;
        this.f3202c = gVar;
        List<v> list = uVar.f2206b;
        v vVar = v.H2_PRIOR_KNOWLEDGE;
        this.f3204e = list.contains(vVar) ? vVar : v.HTTP_2;
    }

    @Override // o2.c
    public void a() throws IOException {
        ((p.a) this.f3203d.f()).close();
    }

    @Override // o2.c
    public void b() {
        this.f3202c.f3226r.flush();
    }

    @Override // o2.c
    public u2.v c(x xVar, long j4) {
        return this.f3203d.f();
    }

    @Override // o2.c
    public void cancel() {
        p pVar = this.f3203d;
        if (pVar != null) {
            pVar.e(b.CANCEL);
        }
    }

    @Override // o2.c
    public void d(x xVar) {
        int i4;
        p pVar;
        boolean z3;
        if (this.f3203d != null) {
            return;
        }
        boolean z4 = xVar.f2272d != null;
        k2.q qVar = xVar.f2271c;
        ArrayList arrayList = new ArrayList(qVar.f() + 4);
        arrayList.add(new c(c.f3169f, xVar.f2270b));
        arrayList.add(new c(c.f3170g, o2.h.a(xVar.f2269a)));
        String strC = xVar.f2271c.c(HttpHeaders.HOST);
        if (strC != null) {
            arrayList.add(new c(c.f3172i, strC));
        }
        arrayList.add(new c(c.f3171h, xVar.f2269a.f2182a));
        int iF = qVar.f();
        for (int i5 = 0; i5 < iF; i5++) {
            u2.h hVarE = u2.h.e(qVar.d(i5).toLowerCase(Locale.US));
            if (!f3198f.contains(hVarE.n())) {
                arrayList.add(new c(hVarE, qVar.g(i5)));
            }
        }
        g gVar = this.f3202c;
        boolean z5 = !z4;
        synchronized (gVar.f3226r) {
            synchronized (gVar) {
                if (gVar.f3214f > 1073741823) {
                    gVar.I(b.REFUSED_STREAM);
                }
                if (gVar.f3215g) {
                    throw new q2.a();
                }
                i4 = gVar.f3214f;
                gVar.f3214f = i4 + 2;
                pVar = new p(i4, gVar, z5, false, null);
                z3 = !z4 || gVar.f3221m == 0 || pVar.f3277b == 0;
                if (pVar.h()) {
                    gVar.f3211c.put(Integer.valueOf(i4), pVar);
                }
            }
            q qVar2 = gVar.f3226r;
            synchronized (qVar2) {
                if (qVar2.f3303e) {
                    throw new IOException("closed");
                }
                qVar2.F(z5, i4, arrayList);
            }
        }
        if (z3) {
            gVar.f3226r.flush();
        }
        this.f3203d = pVar;
        p.c cVar = pVar.f3284i;
        long j4 = ((o2.f) this.f3200a).f2866j;
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        cVar.g(j4, timeUnit);
        this.f3203d.f3285j.g(((o2.f) this.f3200a).f2867k, timeUnit);
    }

    @Override // o2.c
    public a0.a e(boolean z3) throws ProtocolException {
        k2.q qVarRemoveFirst;
        p pVar = this.f3203d;
        synchronized (pVar) {
            pVar.f3284i.i();
            while (pVar.f3280e.isEmpty() && pVar.f3286k == null) {
                try {
                    pVar.j();
                } catch (Throwable th) {
                    pVar.f3284i.n();
                    throw th;
                }
            }
            pVar.f3284i.n();
            if (pVar.f3280e.isEmpty()) {
                throw new u(pVar.f3286k);
            }
            qVarRemoveFirst = pVar.f3280e.removeFirst();
        }
        v vVar = this.f3204e;
        ArrayList arrayList = new ArrayList(20);
        int iF = qVarRemoveFirst.f();
        o2.j jVarA = null;
        for (int i4 = 0; i4 < iF; i4++) {
            String strD = qVarRemoveFirst.d(i4);
            String strG = qVarRemoveFirst.g(i4);
            if (strD.equals(":status")) {
                jVarA = o2.j.a("HTTP/1.1 " + strG);
            } else if (!f3199g.contains(strD)) {
                Objects.requireNonNull((u.a) l2.a.f2435a);
                arrayList.add(strD);
                arrayList.add(strG.trim());
            }
        }
        if (jVarA == null) {
            throw new ProtocolException("Expected ':status' header not present");
        }
        a0.a aVar = new a0.a();
        aVar.f2071b = vVar;
        aVar.f2072c = jVarA.f2877b;
        aVar.f2073d = jVarA.f2878c;
        String[] strArr = (String[]) arrayList.toArray(new String[arrayList.size()]);
        q.a aVar2 = new q.a();
        Collections.addAll(aVar2.f2180a, strArr);
        aVar.f2075f = aVar2;
        if (z3) {
            Objects.requireNonNull((u.a) l2.a.f2435a);
            if (aVar.f2072c == 100) {
                return null;
            }
        }
        return aVar;
    }

    @Override // o2.c
    public c0 f(a0 a0Var) {
        Objects.requireNonNull(this.f3201b.f2767f);
        String strC = a0Var.f2063f.c(HttpHeaders.CONTENT_TYPE);
        if (strC == null) {
            strC = null;
        }
        long jA = o2.e.a(a0Var);
        a aVar = new a(this.f3203d.f3282g);
        Logger logger = u2.o.f3599a;
        return new o2.g(strC, jA, new u2.r(aVar));
    }
}
