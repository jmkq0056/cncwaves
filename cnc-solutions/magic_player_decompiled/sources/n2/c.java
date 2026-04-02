package n2;

import androidx.appcompat.widget.ActivityChooserView;
import androidx.recyclerview.widget.RecyclerView;
import java.io.IOException;
import java.lang.ref.Reference;
import java.net.ConnectException;
import java.net.Proxy;
import java.net.Socket;
import java.net.SocketException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.Nullable;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import k2.a0;
import k2.d0;
import k2.h;
import k2.i;
import k2.n;
import k2.p;
import k2.q;
import k2.s;
import k2.u;
import k2.v;
import k2.x;
import org.eclipse.jetty.http.HttpHeaders;
import org.eclipse.jetty.http.HttpMethods;
import org.eclipse.jetty.http.HttpStatus;
import org.slf4j.helpers.MessageFormatter;
import p2.a;
import q2.g;
import q2.t;
import u2.o;
import u2.q;
import u2.r;
import u2.w;

/* JADX INFO: loaded from: classes.dex */
public final class c extends g.d {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final h f2737b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final d0 f2738c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Socket f2739d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Socket f2740e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public p f2741f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public v f2742g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public g f2743h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public u2.g f2744i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public u2.f f2745j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f2746k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f2747l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f2748m = 1;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final List<Reference<f>> f2749n = new ArrayList();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public long f2750o = RecyclerView.FOREVER_NS;

    public c(h hVar, d0 d0Var) {
        this.f2737b = hVar;
        this.f2738c = d0Var;
    }

    @Override // q2.g.d
    public void a(g gVar) {
        synchronized (this.f2737b) {
            this.f2748m = gVar.E();
        }
    }

    @Override // q2.g.d
    public void b(q2.p pVar) {
        pVar.c(q2.b.REFUSED_STREAM);
    }

    /* JADX WARN: Removed duplicated region for block: B:106:0x0145 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00b4  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00c4 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00fa  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0111  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void c(int r16, int r17, int r18, int r19, boolean r20, k2.d r21, k2.n r22) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 349
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: n2.c.c(int, int, int, int, boolean, k2.d, k2.n):void");
    }

    public final void d(int i4, int i5, k2.d dVar, n nVar) throws IOException {
        d0 d0Var = this.f2738c;
        Proxy proxy = d0Var.f2103b;
        this.f2739d = (proxy.type() == Proxy.Type.DIRECT || proxy.type() == Proxy.Type.HTTP) ? d0Var.f2102a.f2049c.createSocket() : new Socket(proxy);
        Objects.requireNonNull(this.f2738c);
        Objects.requireNonNull(nVar);
        this.f2739d.setSoTimeout(i5);
        try {
            r2.f.f3385a.g(this.f2739d, this.f2738c.f2104c, i4);
            try {
                this.f2744i = new r(o.d(this.f2739d));
                this.f2745j = new q(o.b(this.f2739d));
            } catch (NullPointerException e4) {
                if ("throw with null exception".equals(e4.getMessage())) {
                    throw new IOException(e4);
                }
            }
        } catch (ConnectException e5) {
            StringBuilder sbA = android.support.v4.media.f.a("Failed to connect to ");
            sbA.append(this.f2738c.f2104c);
            ConnectException connectException = new ConnectException(sbA.toString());
            connectException.initCause(e5);
            throw connectException;
        }
    }

    public final void e(int i4, int i5, int i6, k2.d dVar, n nVar) throws IOException {
        x.a aVar = new x.a();
        aVar.f(this.f2738c.f2102a.f2047a);
        aVar.d(HttpMethods.CONNECT, null);
        aVar.c(HttpHeaders.HOST, l2.c.o(this.f2738c.f2102a.f2047a, true));
        aVar.c(HttpHeaders.PROXY_CONNECTION, HttpHeaders.KEEP_ALIVE);
        aVar.c(HttpHeaders.USER_AGENT, "okhttp/3.12.1");
        x xVarB = aVar.b();
        a0.a aVar2 = new a0.a();
        aVar2.f2070a = xVarB;
        aVar2.f2071b = v.HTTP_1_1;
        aVar2.f2072c = HttpStatus.PROXY_AUTHENTICATION_REQUIRED_407;
        aVar2.f2073d = "Preemptive Authenticate";
        aVar2.f2076g = l2.c.f2439c;
        aVar2.f2080k = -1L;
        aVar2.f2081l = -1L;
        q.a aVar3 = aVar2.f2075f;
        Objects.requireNonNull(aVar3);
        k2.q.a(HttpHeaders.PROXY_AUTHENTICATE);
        k2.q.b("OkHttp-Preemptive", HttpHeaders.PROXY_AUTHENTICATE);
        aVar3.b(HttpHeaders.PROXY_AUTHENTICATE);
        aVar3.f2180a.add(HttpHeaders.PROXY_AUTHENTICATE);
        aVar3.f2180a.add("OkHttp-Preemptive");
        aVar2.a();
        Objects.requireNonNull(this.f2738c.f2102a.f2050d);
        k2.r rVar = xVarB.f2269a;
        d(i4, i5, dVar, nVar);
        String str = "CONNECT " + l2.c.o(rVar, true) + " HTTP/1.1";
        u2.g gVar = this.f2744i;
        u2.f fVar = this.f2745j;
        p2.a aVar4 = new p2.a(null, null, gVar, fVar);
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        gVar.a().g(i5, timeUnit);
        this.f2745j.a().g(i6, timeUnit);
        aVar4.k(xVarB.f2271c, str);
        fVar.flush();
        a0.a aVarE = aVar4.e(false);
        aVarE.f2070a = xVarB;
        a0 a0VarA = aVarE.a();
        long jA = o2.e.a(a0VarA);
        if (jA == -1) {
            jA = 0;
        }
        w wVarH = aVar4.h(jA);
        l2.c.v(wVarH, ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED, timeUnit);
        ((a.f) wVarH).close();
        int i7 = a0VarA.f2060c;
        if (i7 == 200) {
            if (!this.f2744i.buffer().l() || !this.f2745j.buffer().l()) {
                throw new IOException("TLS tunnel buffered too many bytes!");
            }
        } else {
            if (i7 == 407) {
                Objects.requireNonNull(this.f2738c.f2102a.f2050d);
                throw new IOException("Failed to authenticate with proxy");
            }
            StringBuilder sbA = android.support.v4.media.f.a("Unexpected response code for CONNECT: ");
            sbA.append(a0VarA.f2060c);
            throw new IOException(sbA.toString());
        }
    }

    public final void f(b bVar, int i4, k2.d dVar, n nVar) throws Throwable {
        SSLSocket sSLSocket;
        v vVarA = v.HTTP_1_1;
        k2.a aVar = this.f2738c.f2102a;
        if (aVar.f2055i == null) {
            List<v> list = aVar.f2051e;
            v vVar = v.H2_PRIOR_KNOWLEDGE;
            if (!list.contains(vVar)) {
                this.f2740e = this.f2739d;
                this.f2742g = vVarA;
                return;
            } else {
                this.f2740e = this.f2739d;
                this.f2742g = vVar;
                j(i4);
                return;
            }
        }
        Objects.requireNonNull(nVar);
        k2.a aVar2 = this.f2738c.f2102a;
        SSLSocketFactory sSLSocketFactory = aVar2.f2055i;
        try {
            try {
                Socket socket = this.f2739d;
                k2.r rVar = aVar2.f2047a;
                sSLSocket = (SSLSocket) sSLSocketFactory.createSocket(socket, rVar.f2185d, rVar.f2186e, true);
            } catch (Throwable th) {
                th = th;
                sSLSocket = null;
            }
        } catch (AssertionError e4) {
            e = e4;
        }
        try {
            i iVarA = bVar.a(sSLSocket);
            if (iVarA.f2147b) {
                r2.f.f3385a.f(sSLSocket, aVar2.f2047a.f2185d, aVar2.f2051e);
            }
            sSLSocket.startHandshake();
            SSLSession session = sSLSocket.getSession();
            p pVarA = p.a(session);
            if (!aVar2.f2056j.verify(aVar2.f2047a.f2185d, session)) {
                X509Certificate x509Certificate = (X509Certificate) pVarA.f2177c.get(0);
                throw new SSLPeerUnverifiedException("Hostname " + aVar2.f2047a.f2185d + " not verified:\n    certificate: " + k2.f.b(x509Certificate) + "\n    DN: " + x509Certificate.getSubjectDN().getName() + "\n    subjectAltNames: " + t2.c.a(x509Certificate));
            }
            aVar2.f2057k.a(aVar2.f2047a.f2185d, pVarA.f2177c);
            String strI = iVarA.f2147b ? r2.f.f3385a.i(sSLSocket) : null;
            this.f2740e = sSLSocket;
            this.f2744i = new r(o.d(sSLSocket));
            this.f2745j = new u2.q(o.b(this.f2740e));
            this.f2741f = pVarA;
            if (strI != null) {
                vVarA = v.a(strI);
            }
            this.f2742g = vVarA;
            r2.f.f3385a.a(sSLSocket);
            if (this.f2742g == v.HTTP_2) {
                j(i4);
            }
        } catch (AssertionError e5) {
            e = e5;
            if (!l2.c.t(e)) {
                throw e;
            }
            throw new IOException(e);
        } catch (Throwable th2) {
            th = th2;
            if (sSLSocket != null) {
                r2.f.f3385a.a(sSLSocket);
            }
            l2.c.g(sSLSocket);
            throw th;
        }
    }

    public boolean g(k2.a aVar, @Nullable d0 d0Var) {
        if (this.f2749n.size() < this.f2748m && !this.f2746k) {
            l2.a aVar2 = l2.a.f2435a;
            k2.a aVar3 = this.f2738c.f2102a;
            Objects.requireNonNull((u.a) aVar2);
            if (!aVar3.a(aVar)) {
                return false;
            }
            if (aVar.f2047a.f2185d.equals(this.f2738c.f2102a.f2047a.f2185d)) {
                return true;
            }
            if (this.f2743h == null || d0Var == null || d0Var.f2103b.type() != Proxy.Type.DIRECT || this.f2738c.f2103b.type() != Proxy.Type.DIRECT || !this.f2738c.f2104c.equals(d0Var.f2104c) || d0Var.f2102a.f2056j != t2.c.f3551a || !k(aVar.f2047a)) {
                return false;
            }
            try {
                aVar.f2057k.a(aVar.f2047a.f2185d, this.f2741f.f2177c);
                return true;
            } catch (SSLPeerUnverifiedException unused) {
            }
        }
        return false;
    }

    public boolean h() {
        return this.f2743h != null;
    }

    public o2.c i(u uVar, s.a aVar, f fVar) throws SocketException {
        if (this.f2743h != null) {
            return new q2.f(uVar, aVar, fVar, this.f2743h);
        }
        o2.f fVar2 = (o2.f) aVar;
        this.f2740e.setSoTimeout(fVar2.f2866j);
        u2.x xVarA = this.f2744i.a();
        long j4 = fVar2.f2866j;
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        xVarA.g(j4, timeUnit);
        this.f2745j.a().g(fVar2.f2867k, timeUnit);
        return new p2.a(uVar, fVar, this.f2744i, this.f2745j);
    }

    public final void j(int i4) throws SocketException {
        this.f2740e.setSoTimeout(0);
        g.c cVar = new g.c(true);
        Socket socket = this.f2740e;
        String str = this.f2738c.f2102a.f2047a.f2185d;
        u2.g gVar = this.f2744i;
        u2.f fVar = this.f2745j;
        cVar.f3235a = socket;
        cVar.f3236b = str;
        cVar.f3237c = gVar;
        cVar.f3238d = fVar;
        cVar.f3239e = this;
        cVar.f3240f = i4;
        g gVar2 = new g(cVar);
        this.f2743h = gVar2;
        q2.q qVar = gVar2.f3226r;
        synchronized (qVar) {
            if (qVar.f3303e) {
                throw new IOException("closed");
            }
            if (qVar.f3300b) {
                Logger logger = q2.q.f3298g;
                if (logger.isLoggable(Level.FINE)) {
                    logger.fine(l2.c.n(">> CONNECTION %s", q2.e.f3194a.g()));
                }
                qVar.f3299a.p((byte[]) q2.e.f3194a.f3582a.clone());
                qVar.f3299a.flush();
            }
        }
        q2.q qVar2 = gVar2.f3226r;
        t tVar = gVar2.f3222n;
        synchronized (qVar2) {
            if (qVar2.f3303e) {
                throw new IOException("closed");
            }
            qVar2.D(0, Integer.bitCount(tVar.f3313a) * 6, (byte) 4, (byte) 0);
            int i5 = 0;
            while (i5 < 10) {
                if (((1 << i5) & tVar.f3313a) != 0) {
                    qVar2.f3299a.e(i5 == 4 ? 3 : i5 == 7 ? 4 : i5);
                    qVar2.f3299a.f(tVar.f3314b[i5]);
                }
                i5++;
            }
            qVar2.f3299a.flush();
        }
        if (gVar2.f3222n.a() != 65535) {
            gVar2.f3226r.I(0, r0 - 65535);
        }
        new Thread(gVar2.f3227s).start();
    }

    public boolean k(k2.r rVar) {
        int i4 = rVar.f2186e;
        k2.r rVar2 = this.f2738c.f2102a.f2047a;
        if (i4 != rVar2.f2186e) {
            return false;
        }
        if (rVar.f2185d.equals(rVar2.f2185d)) {
            return true;
        }
        p pVar = this.f2741f;
        return pVar != null && t2.c.f3551a.c(rVar.f2185d, (X509Certificate) pVar.f2177c.get(0));
    }

    public String toString() {
        StringBuilder sbA = android.support.v4.media.f.a("Connection{");
        sbA.append(this.f2738c.f2102a.f2047a.f2185d);
        sbA.append(":");
        sbA.append(this.f2738c.f2102a.f2047a.f2186e);
        sbA.append(", proxy=");
        sbA.append(this.f2738c.f2103b);
        sbA.append(" hostAddress=");
        sbA.append(this.f2738c.f2104c);
        sbA.append(" cipherSuite=");
        p pVar = this.f2741f;
        sbA.append(pVar != null ? pVar.f2176b : "none");
        sbA.append(" protocol=");
        sbA.append(this.f2742g);
        sbA.append(MessageFormatter.DELIM_STOP);
        return sbA.toString();
    }
}
