package o2;

import androidx.appcompat.widget.ActivityChooserView;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.SocketTimeoutException;
import java.security.cert.CertificateException;
import java.util.Objects;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSocketFactory;
import k2.a0;
import k2.d0;
import k2.n;
import k2.r;
import k2.s;
import k2.u;
import k2.x;
import n2.e;
import org.eclipse.jetty.http.HttpHeaders;
import org.eclipse.jetty.http.HttpMethods;
import org.eclipse.jetty.http.HttpStatus;

/* JADX INFO: loaded from: classes2.dex */
public final class i implements s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final u f2872a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public volatile n2.f f2873b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f2874c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public volatile boolean f2875d;

    public i(u uVar, boolean z3) {
        this.f2872a = uVar;
    }

    @Override // k2.s
    public a0 a(s.a aVar) throws IOException {
        a0 a0VarB;
        x xVarC;
        c cVar;
        f fVar = (f) aVar;
        x xVar = fVar.f2862f;
        k2.d dVar = fVar.f2863g;
        n nVar = fVar.f2864h;
        n2.f fVar2 = new n2.f(this.f2872a.f2220p, b(xVar.f2269a), dVar, nVar, this.f2874c);
        this.f2873b = fVar2;
        int i4 = 0;
        a0 a0Var = null;
        while (!this.f2875d) {
            try {
                try {
                    a0VarB = fVar.b(xVar, fVar2, null, null);
                    if (a0Var != null) {
                        a0.a aVar2 = new a0.a(a0VarB);
                        a0.a aVar3 = new a0.a(a0Var);
                        aVar3.f2076g = null;
                        a0 a0VarA = aVar3.a();
                        if (a0VarA.f2064g != null) {
                            throw new IllegalArgumentException("priorResponse.body != null");
                        }
                        aVar2.f2079j = a0VarA;
                        a0VarB = aVar2.a();
                    }
                    try {
                        xVarC = c(a0VarB, fVar2.f2764c);
                    } catch (IOException e4) {
                        fVar2.g();
                        throw e4;
                    }
                } catch (Throwable th) {
                    fVar2.h(null);
                    fVar2.g();
                    throw th;
                }
            } catch (IOException e5) {
                if (!d(e5, fVar2, !(e5 instanceof q2.a), xVar)) {
                    throw e5;
                }
            } catch (n2.d e6) {
                if (!d(e6.f2752b, fVar2, false, xVar)) {
                    throw e6.f2751a;
                }
            }
            if (xVarC == null) {
                fVar2.g();
                return a0VarB;
            }
            l2.c.f(a0VarB.f2064g);
            int i5 = i4 + 1;
            if (i5 > 20) {
                fVar2.g();
                throw new ProtocolException(android.support.v4.media.d.a("Too many follow-up requests: ", i5));
            }
            if (f(a0VarB, xVarC.f2269a)) {
                synchronized (fVar2.f2765d) {
                    cVar = fVar2.f2775n;
                }
                if (cVar != null) {
                    throw new IllegalStateException("Closing the body of " + a0VarB + " didn't close its backing stream. Bad interceptor?");
                }
            } else {
                fVar2.g();
                fVar2 = new n2.f(this.f2872a.f2220p, b(xVarC.f2269a), dVar, nVar, this.f2874c);
                this.f2873b = fVar2;
            }
            a0Var = a0VarB;
            xVar = xVarC;
            i4 = i5;
        }
        fVar2.g();
        throw new IOException("Canceled");
    }

    public final k2.a b(r rVar) {
        SSLSocketFactory sSLSocketFactory;
        HostnameVerifier hostnameVerifier;
        k2.f fVar;
        if (rVar.f2182a.equals("https")) {
            u uVar = this.f2872a;
            SSLSocketFactory sSLSocketFactory2 = uVar.f2214j;
            HostnameVerifier hostnameVerifier2 = uVar.f2216l;
            fVar = uVar.f2217m;
            sSLSocketFactory = sSLSocketFactory2;
            hostnameVerifier = hostnameVerifier2;
        } else {
            sSLSocketFactory = null;
            hostnameVerifier = null;
            fVar = null;
        }
        String str = rVar.f2185d;
        int i4 = rVar.f2186e;
        u uVar2 = this.f2872a;
        return new k2.a(str, i4, uVar2.f2221q, uVar2.f2213i, sSLSocketFactory, hostnameVerifier, fVar, uVar2.f2218n, null, uVar2.f2206b, uVar2.f2207c, uVar2.f2211g);
    }

    public final x c(a0 a0Var, d0 d0Var) throws ProtocolException {
        r.a aVar;
        Proxy proxy;
        if (a0Var == null) {
            throw new IllegalStateException();
        }
        int i4 = a0Var.f2060c;
        String str = a0Var.f2058a.f2270b;
        if (i4 == 307 || i4 == 308) {
            if (!str.equals(HttpMethods.GET) && !str.equals(HttpMethods.HEAD)) {
                return null;
            }
        } else {
            if (i4 == 401) {
                Objects.requireNonNull(this.f2872a.f2219o);
                return null;
            }
            if (i4 == 503) {
                a0 a0Var2 = a0Var.f2067j;
                if ((a0Var2 == null || a0Var2.f2060c != 503) && e(a0Var, ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED) == 0) {
                    return a0Var.f2058a;
                }
                return null;
            }
            if (i4 == 407) {
                if (d0Var != null) {
                    proxy = d0Var.f2103b;
                } else {
                    Objects.requireNonNull(this.f2872a);
                    proxy = null;
                }
                if (proxy.type() != Proxy.Type.HTTP) {
                    throw new ProtocolException("Received HTTP_PROXY_AUTH (407) code while not using proxy");
                }
                Objects.requireNonNull(this.f2872a.f2218n);
                return null;
            }
            if (i4 == 408) {
                if (!this.f2872a.f2224t) {
                    return null;
                }
                a0 a0Var3 = a0Var.f2067j;
                if ((a0Var3 == null || a0Var3.f2060c != 408) && e(a0Var, 0) <= 0) {
                    return a0Var.f2058a;
                }
                return null;
            }
            switch (i4) {
                case HttpStatus.MULTIPLE_CHOICES_300 /* 300 */:
                case HttpStatus.MOVED_PERMANENTLY_301 /* 301 */:
                case 302:
                case HttpStatus.SEE_OTHER_303 /* 303 */:
                    break;
                default:
                    return null;
            }
        }
        if (!this.f2872a.f2223s) {
            return null;
        }
        String strC = a0Var.f2063f.c(HttpHeaders.LOCATION);
        if (strC == null) {
            strC = null;
        }
        if (strC == null) {
            return null;
        }
        r rVar = a0Var.f2058a.f2269a;
        Objects.requireNonNull(rVar);
        try {
            aVar = new r.a();
            aVar.c(rVar, strC);
        } catch (IllegalArgumentException unused) {
            aVar = null;
        }
        r rVarA = aVar != null ? aVar.a() : null;
        if (rVarA == null) {
            return null;
        }
        if (!rVarA.f2182a.equals(a0Var.f2058a.f2269a.f2182a) && !this.f2872a.f2222r) {
            return null;
        }
        x xVar = a0Var.f2058a;
        Objects.requireNonNull(xVar);
        x.a aVar2 = new x.a(xVar);
        if (q0.a.u(str)) {
            boolean zEquals = str.equals("PROPFIND");
            if (!str.equals("PROPFIND")) {
                aVar2.d(HttpMethods.GET, null);
            } else {
                aVar2.d(str, zEquals ? a0Var.f2058a.f2272d : null);
            }
            if (!zEquals) {
                aVar2.f2277c.b(HttpHeaders.TRANSFER_ENCODING);
                aVar2.f2277c.b(HttpHeaders.CONTENT_LENGTH);
                aVar2.f2277c.b(HttpHeaders.CONTENT_TYPE);
            }
        }
        if (!f(a0Var, rVarA)) {
            aVar2.f2277c.b(HttpHeaders.AUTHORIZATION);
        }
        aVar2.f(rVarA);
        return aVar2.b();
    }

    public final boolean d(IOException iOException, n2.f fVar, boolean z3, x xVar) {
        e.a aVar;
        fVar.h(iOException);
        if (!this.f2872a.f2224t) {
            return false;
        }
        if (!(iOException instanceof ProtocolException) && (!(iOException instanceof InterruptedIOException) ? ((iOException instanceof SSLHandshakeException) && (iOException.getCause() instanceof CertificateException)) || (iOException instanceof SSLPeerUnverifiedException) : !((iOException instanceof SocketTimeoutException) && !z3))) {
            return fVar.f2764c != null || (((aVar = fVar.f2763b) != null && aVar.a()) || fVar.f2769h.b());
        }
        return false;
    }

    public final int e(a0 a0Var, int i4) {
        String strC = a0Var.f2063f.c(HttpHeaders.RETRY_AFTER);
        if (strC == null) {
            strC = null;
        }
        return strC == null ? i4 : strC.matches("\\d+") ? Integer.valueOf(strC).intValue() : ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
    }

    public final boolean f(a0 a0Var, r rVar) {
        r rVar2 = a0Var.f2058a.f2269a;
        return rVar2.f2185d.equals(rVar.f2185d) && rVar2.f2186e == rVar.f2186e && rVar2.f2182a.equals(rVar.f2182a);
    }
}
