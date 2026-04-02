package p2;

import android.support.v4.media.session.PlaybackStateCompat;
import java.io.EOFException;
import java.io.IOException;
import java.net.ProtocolException;
import java.net.Proxy;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import java.util.logging.Logger;
import k2.a0;
import k2.c0;
import k2.q;
import k2.r;
import k2.u;
import o2.h;
import o2.j;
import org.eclipse.jetty.http.HttpHeaderValues;
import org.eclipse.jetty.http.HttpHeaders;
import u2.k;
import u2.o;
import u2.v;
import u2.w;
import u2.x;

/* JADX INFO: loaded from: classes2.dex */
public final class a implements o2.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final u f3003a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final n2.f f3004b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final u2.g f3005c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final u2.f f3006d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f3007e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f3008f = PlaybackStateCompat.ACTION_SET_REPEAT_MODE;

    public abstract class b implements w {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final k f3009a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f3010b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public long f3011c = 0;

        public b(C0037a c0037a) {
            this.f3009a = new k(a.this.f3005c.a());
        }

        public final void B(boolean z3, IOException iOException) {
            a aVar = a.this;
            int i4 = aVar.f3007e;
            if (i4 == 6) {
                return;
            }
            if (i4 != 5) {
                StringBuilder sbA = android.support.v4.media.f.a("state: ");
                sbA.append(a.this.f3007e);
                throw new IllegalStateException(sbA.toString());
            }
            aVar.g(this.f3009a);
            a aVar2 = a.this;
            aVar2.f3007e = 6;
            n2.f fVar = aVar2.f3004b;
            if (fVar != null) {
                fVar.i(!z3, aVar2, this.f3011c, iOException);
            }
        }

        @Override // u2.w
        public x a() {
            return this.f3009a;
        }

        @Override // u2.w
        public long s(u2.e eVar, long j4) throws IOException {
            try {
                long jS = a.this.f3005c.s(eVar, j4);
                if (jS > 0) {
                    this.f3011c += jS;
                }
                return jS;
            } catch (IOException e4) {
                B(false, e4);
                throw e4;
            }
        }
    }

    public final class c implements v {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final k f3013a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f3014b;

        public c() {
            this.f3013a = new k(a.this.f3006d.a());
        }

        @Override // u2.v
        public x a() {
            return this.f3013a;
        }

        @Override // u2.v, java.io.Closeable, java.lang.AutoCloseable
        public synchronized void close() {
            if (this.f3014b) {
                return;
            }
            this.f3014b = true;
            a.this.f3006d.u("0\r\n\r\n");
            a.this.g(this.f3013a);
            a.this.f3007e = 3;
        }

        @Override // u2.v, java.io.Flushable
        public synchronized void flush() {
            if (this.f3014b) {
                return;
            }
            a.this.f3006d.flush();
        }

        @Override // u2.v
        public void o(u2.e eVar, long j4) {
            if (this.f3014b) {
                throw new IllegalStateException("closed");
            }
            if (j4 == 0) {
                return;
            }
            a.this.f3006d.b(j4);
            a.this.f3006d.u("\r\n");
            a.this.f3006d.o(eVar, j4);
            a.this.f3006d.u("\r\n");
        }
    }

    public class d extends b {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final r f3016e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public long f3017f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public boolean f3018g;

        public d(r rVar) {
            super(null);
            this.f3017f = -1L;
            this.f3018g = true;
            this.f3016e = rVar;
        }

        @Override // u2.w, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (this.f3010b) {
                return;
            }
            if (this.f3018g && !l2.c.l(this, 100, TimeUnit.MILLISECONDS)) {
                B(false, null);
            }
            this.f3010b = true;
        }

        @Override // p2.a.b, u2.w
        public long s(u2.e eVar, long j4) throws IOException {
            if (j4 < 0) {
                throw new IllegalArgumentException(androidx.viewpager2.adapter.a.a("byteCount < 0: ", j4));
            }
            if (this.f3010b) {
                throw new IllegalStateException("closed");
            }
            if (!this.f3018g) {
                return -1L;
            }
            long j5 = this.f3017f;
            if (j5 == 0 || j5 == -1) {
                if (j5 != -1) {
                    a.this.f3005c.h();
                }
                try {
                    this.f3017f = a.this.f3005c.y();
                    String strTrim = a.this.f3005c.h().trim();
                    if (this.f3017f < 0 || !(strTrim.isEmpty() || strTrim.startsWith(";"))) {
                        throw new ProtocolException("expected chunk size and optional extensions but was \"" + this.f3017f + strTrim + "\"");
                    }
                    if (this.f3017f == 0) {
                        this.f3018g = false;
                        a aVar = a.this;
                        o2.e.d(aVar.f3003a.f2212h, this.f3016e, aVar.j());
                        B(true, null);
                    }
                    if (!this.f3018g) {
                        return -1L;
                    }
                } catch (NumberFormatException e4) {
                    throw new ProtocolException(e4.getMessage());
                }
            }
            long jS = super.s(eVar, Math.min(j4, this.f3017f));
            if (jS != -1) {
                this.f3017f -= jS;
                return jS;
            }
            ProtocolException protocolException = new ProtocolException("unexpected end of stream");
            B(false, protocolException);
            throw protocolException;
        }
    }

    public final class e implements v {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final k f3020a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f3021b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public long f3022c;

        public e(long j4) {
            this.f3020a = new k(a.this.f3006d.a());
            this.f3022c = j4;
        }

        @Override // u2.v
        public x a() {
            return this.f3020a;
        }

        @Override // u2.v, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws ProtocolException {
            if (this.f3021b) {
                return;
            }
            this.f3021b = true;
            if (this.f3022c > 0) {
                throw new ProtocolException("unexpected end of stream");
            }
            a.this.g(this.f3020a);
            a.this.f3007e = 3;
        }

        @Override // u2.v, java.io.Flushable
        public void flush() {
            if (this.f3021b) {
                return;
            }
            a.this.f3006d.flush();
        }

        @Override // u2.v
        public void o(u2.e eVar, long j4) throws ProtocolException {
            if (this.f3021b) {
                throw new IllegalStateException("closed");
            }
            l2.c.e(eVar.f3578b, 0L, j4);
            if (j4 <= this.f3022c) {
                a.this.f3006d.o(eVar, j4);
                this.f3022c -= j4;
            } else {
                StringBuilder sbA = android.support.v4.media.f.a("expected ");
                sbA.append(this.f3022c);
                sbA.append(" bytes but received ");
                sbA.append(j4);
                throw new ProtocolException(sbA.toString());
            }
        }
    }

    public class f extends b {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public long f3024e;

        public f(a aVar, long j4) {
            super(null);
            this.f3024e = j4;
            if (j4 == 0) {
                B(true, null);
            }
        }

        @Override // u2.w, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (this.f3010b) {
                return;
            }
            if (this.f3024e != 0 && !l2.c.l(this, 100, TimeUnit.MILLISECONDS)) {
                B(false, null);
            }
            this.f3010b = true;
        }

        @Override // p2.a.b, u2.w
        public long s(u2.e eVar, long j4) throws IOException {
            if (j4 < 0) {
                throw new IllegalArgumentException(androidx.viewpager2.adapter.a.a("byteCount < 0: ", j4));
            }
            if (this.f3010b) {
                throw new IllegalStateException("closed");
            }
            long j5 = this.f3024e;
            if (j5 == 0) {
                return -1L;
            }
            long jS = super.s(eVar, Math.min(j5, j4));
            if (jS == -1) {
                ProtocolException protocolException = new ProtocolException("unexpected end of stream");
                B(false, protocolException);
                throw protocolException;
            }
            long j6 = this.f3024e - jS;
            this.f3024e = j6;
            if (j6 == 0) {
                B(true, null);
            }
            return jS;
        }
    }

    public class g extends b {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public boolean f3025e;

        public g(a aVar) {
            super(null);
        }

        @Override // u2.w, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (this.f3010b) {
                return;
            }
            if (!this.f3025e) {
                B(false, null);
            }
            this.f3010b = true;
        }

        @Override // p2.a.b, u2.w
        public long s(u2.e eVar, long j4) throws IOException {
            if (j4 < 0) {
                throw new IllegalArgumentException(androidx.viewpager2.adapter.a.a("byteCount < 0: ", j4));
            }
            if (this.f3010b) {
                throw new IllegalStateException("closed");
            }
            if (this.f3025e) {
                return -1L;
            }
            long jS = super.s(eVar, j4);
            if (jS != -1) {
                return jS;
            }
            this.f3025e = true;
            B(true, null);
            return -1L;
        }
    }

    public a(u uVar, n2.f fVar, u2.g gVar, u2.f fVar2) {
        this.f3003a = uVar;
        this.f3004b = fVar;
        this.f3005c = gVar;
        this.f3006d = fVar2;
    }

    @Override // o2.c
    public void a() {
        this.f3006d.flush();
    }

    @Override // o2.c
    public void b() {
        this.f3006d.flush();
    }

    @Override // o2.c
    public v c(k2.x xVar, long j4) {
        if (HttpHeaderValues.CHUNKED.equalsIgnoreCase(xVar.f2271c.c(HttpHeaders.TRANSFER_ENCODING))) {
            if (this.f3007e == 1) {
                this.f3007e = 2;
                return new c();
            }
            StringBuilder sbA = android.support.v4.media.f.a("state: ");
            sbA.append(this.f3007e);
            throw new IllegalStateException(sbA.toString());
        }
        if (j4 == -1) {
            throw new IllegalStateException("Cannot stream a request body without chunked encoding or a known content length!");
        }
        if (this.f3007e == 1) {
            this.f3007e = 2;
            return new e(j4);
        }
        StringBuilder sbA2 = android.support.v4.media.f.a("state: ");
        sbA2.append(this.f3007e);
        throw new IllegalStateException(sbA2.toString());
    }

    @Override // o2.c
    public void cancel() {
        n2.c cVarB = this.f3004b.b();
        if (cVarB != null) {
            l2.c.g(cVarB.f2739d);
        }
    }

    @Override // o2.c
    public void d(k2.x xVar) {
        Proxy.Type type = this.f3004b.b().f2738c.f2103b.type();
        StringBuilder sb = new StringBuilder();
        sb.append(xVar.f2270b);
        sb.append(' ');
        if (!xVar.f2269a.f2182a.equals("https") && type == Proxy.Type.HTTP) {
            sb.append(xVar.f2269a);
        } else {
            sb.append(h.a(xVar.f2269a));
        }
        sb.append(" HTTP/1.1");
        k(xVar.f2271c, sb.toString());
    }

    @Override // o2.c
    public a0.a e(boolean z3) {
        int i4 = this.f3007e;
        if (i4 != 1 && i4 != 3) {
            StringBuilder sbA = android.support.v4.media.f.a("state: ");
            sbA.append(this.f3007e);
            throw new IllegalStateException(sbA.toString());
        }
        try {
            j jVarA = j.a(i());
            a0.a aVar = new a0.a();
            aVar.f2071b = jVarA.f2876a;
            aVar.f2072c = jVarA.f2877b;
            aVar.f2073d = jVarA.f2878c;
            aVar.d(j());
            if (z3 && jVarA.f2877b == 100) {
                return null;
            }
            if (jVarA.f2877b == 100) {
                this.f3007e = 3;
                return aVar;
            }
            this.f3007e = 4;
            return aVar;
        } catch (EOFException e4) {
            StringBuilder sbA2 = android.support.v4.media.f.a("unexpected end of stream on ");
            sbA2.append(this.f3004b);
            IOException iOException = new IOException(sbA2.toString());
            iOException.initCause(e4);
            throw iOException;
        }
    }

    @Override // o2.c
    public c0 f(a0 a0Var) {
        Objects.requireNonNull(this.f3004b.f2767f);
        String strC = a0Var.f2063f.c(HttpHeaders.CONTENT_TYPE);
        if (strC == null) {
            strC = null;
        }
        if (!o2.e.b(a0Var)) {
            w wVarH = h(0L);
            Logger logger = o.f3599a;
            return new o2.g(strC, 0L, new u2.r(wVarH));
        }
        String strC2 = a0Var.f2063f.c(HttpHeaders.TRANSFER_ENCODING);
        if (HttpHeaderValues.CHUNKED.equalsIgnoreCase(strC2 != null ? strC2 : null)) {
            r rVar = a0Var.f2058a.f2269a;
            if (this.f3007e != 4) {
                StringBuilder sbA = android.support.v4.media.f.a("state: ");
                sbA.append(this.f3007e);
                throw new IllegalStateException(sbA.toString());
            }
            this.f3007e = 5;
            d dVar = new d(rVar);
            Logger logger2 = o.f3599a;
            return new o2.g(strC, -1L, new u2.r(dVar));
        }
        long jA = o2.e.a(a0Var);
        if (jA != -1) {
            w wVarH2 = h(jA);
            Logger logger3 = o.f3599a;
            return new o2.g(strC, jA, new u2.r(wVarH2));
        }
        if (this.f3007e != 4) {
            StringBuilder sbA2 = android.support.v4.media.f.a("state: ");
            sbA2.append(this.f3007e);
            throw new IllegalStateException(sbA2.toString());
        }
        n2.f fVar = this.f3004b;
        if (fVar == null) {
            throw new IllegalStateException("streamAllocation == null");
        }
        this.f3007e = 5;
        fVar.f();
        g gVar = new g(this);
        Logger logger4 = o.f3599a;
        return new o2.g(strC, -1L, new u2.r(gVar));
    }

    public void g(k kVar) {
        x xVar = kVar.f3587e;
        kVar.f3587e = x.f3621d;
        xVar.a();
        xVar.b();
    }

    public w h(long j4) {
        if (this.f3007e == 4) {
            this.f3007e = 5;
            return new f(this, j4);
        }
        StringBuilder sbA = android.support.v4.media.f.a("state: ");
        sbA.append(this.f3007e);
        throw new IllegalStateException(sbA.toString());
    }

    public final String i() {
        String strR = this.f3005c.r(this.f3008f);
        this.f3008f -= (long) strR.length();
        return strR;
    }

    public q j() {
        q.a aVar = new q.a();
        while (true) {
            String strI = i();
            if (strI.length() == 0) {
                return new q(aVar);
            }
            Objects.requireNonNull((u.a) l2.a.f2435a);
            int iIndexOf = strI.indexOf(":", 1);
            if (iIndexOf != -1) {
                aVar.a(strI.substring(0, iIndexOf), strI.substring(iIndexOf + 1));
            } else if (strI.startsWith(":")) {
                String strSubstring = strI.substring(1);
                aVar.f2180a.add("");
                aVar.f2180a.add(strSubstring.trim());
            } else {
                aVar.f2180a.add("");
                aVar.f2180a.add(strI.trim());
            }
        }
    }

    public void k(q qVar, String str) {
        if (this.f3007e != 0) {
            StringBuilder sbA = android.support.v4.media.f.a("state: ");
            sbA.append(this.f3007e);
            throw new IllegalStateException(sbA.toString());
        }
        this.f3006d.u(str).u("\r\n");
        int iF = qVar.f();
        for (int i4 = 0; i4 < iF; i4++) {
            this.f3006d.u(qVar.d(i4)).u(": ").u(qVar.g(i4)).u("\r\n");
        }
        this.f3006d.u("\r\n");
        this.f3007e = 1;
    }
}
