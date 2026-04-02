package k2;

import java.io.IOException;
import java.lang.ref.Reference;
import java.net.ProxySelector;
import java.net.Socket;
import java.security.GeneralSecurityException;
import java.security.KeyStore;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;
import k2.n;
import k2.q;

/* JADX INFO: loaded from: classes2.dex */
public class u implements Cloneable {

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final List<v> f2203x = l2.c.q(v.HTTP_2, v.HTTP_1_1);

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final List<i> f2204y = l2.c.q(i.f2144e, i.f2145f);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final l f2205a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List<v> f2206b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List<i> f2207c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final List<s> f2208d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List<s> f2209e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final n.b f2210f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final ProxySelector f2211g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final k f2212h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final SocketFactory f2213i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final SSLSocketFactory f2214j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final v1.q f2215k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final HostnameVerifier f2216l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final f f2217m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final k2.b f2218n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final k2.b f2219o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final h f2220p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final m f2221q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final boolean f2222r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final boolean f2223s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final boolean f2224t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final int f2225u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final int f2226v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final int f2227w;

    /* JADX INFO: loaded from: classes.dex */
    public class a extends l2.a {
        @Override // l2.a
        public void a(q.a aVar, String str, String str2) {
            aVar.f2180a.add(str);
            aVar.f2180a.add(str2.trim());
        }

        @Override // l2.a
        public Socket b(h hVar, k2.a aVar, n2.f fVar) {
            for (n2.c cVar : hVar.f2140d) {
                if (cVar.g(aVar, null) && cVar.h() && cVar != fVar.b()) {
                    if (fVar.f2775n != null || fVar.f2771j.f2749n.size() != 1) {
                        throw new IllegalStateException();
                    }
                    Reference<n2.f> reference = fVar.f2771j.f2749n.get(0);
                    Socket socketC = fVar.c(true, false, false);
                    fVar.f2771j = cVar;
                    cVar.f2749n.add(reference);
                    return socketC;
                }
            }
            return null;
        }

        @Override // l2.a
        public n2.c c(h hVar, k2.a aVar, n2.f fVar, d0 d0Var) {
            for (n2.c cVar : hVar.f2140d) {
                if (cVar.g(aVar, d0Var)) {
                    fVar.a(cVar, true);
                    return cVar;
                }
            }
            return null;
        }

        @Override // l2.a
        @Nullable
        public IOException d(d dVar, @Nullable IOException iOException) {
            return ((w) dVar).e(iOException);
        }
    }

    /* JADX INFO: loaded from: classes.dex */
    public static final class b {

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public ProxySelector f2234g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public k f2235h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public SocketFactory f2236i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        @Nullable
        public SSLSocketFactory f2237j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        @Nullable
        public v1.q f2238k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public HostnameVerifier f2239l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public f f2240m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public k2.b f2241n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public k2.b f2242o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public h f2243p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public m f2244q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        public boolean f2245r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        public boolean f2246s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        public boolean f2247t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        public int f2248u;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        public int f2249v;

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        public int f2250w;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final List<s> f2231d = new ArrayList();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final List<s> f2232e = new ArrayList();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public l f2228a = new l();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public List<v> f2229b = u.f2203x;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public List<i> f2230c = u.f2204y;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public n.b f2233f = new o(n.f2173a);

        public b() {
            ProxySelector proxySelector = ProxySelector.getDefault();
            this.f2234g = proxySelector;
            if (proxySelector == null) {
                this.f2234g = new s2.a();
            }
            this.f2235h = k.f2167a;
            this.f2236i = SocketFactory.getDefault();
            this.f2239l = t2.c.f3551a;
            this.f2240m = f.f2112c;
            k2.b bVar = k2.b.f2082a;
            this.f2241n = bVar;
            this.f2242o = bVar;
            this.f2243p = new h();
            this.f2244q = m.f2172a;
            this.f2245r = true;
            this.f2246s = true;
            this.f2247t = true;
            this.f2248u = 10000;
            this.f2249v = 10000;
            this.f2250w = 10000;
        }

        public b a(long j4, TimeUnit timeUnit) {
            this.f2248u = l2.c.d("timeout", j4, timeUnit);
            return this;
        }

        public b b(long j4, TimeUnit timeUnit) {
            this.f2249v = l2.c.d("timeout", j4, timeUnit);
            return this;
        }

        public b c(long j4, TimeUnit timeUnit) {
            this.f2250w = l2.c.d("timeout", j4, timeUnit);
            return this;
        }
    }

    static {
        l2.a.f2435a = new a();
    }

    public u() {
        this(new b());
    }

    public d a(x xVar) {
        w wVar = new w(this, xVar, false);
        wVar.f2262d = ((o) this.f2210f).f2174a;
        return wVar;
    }

    public u(b bVar) {
        boolean z3;
        this.f2205a = bVar.f2228a;
        this.f2206b = bVar.f2229b;
        List<i> list = bVar.f2230c;
        this.f2207c = list;
        this.f2208d = l2.c.p(bVar.f2231d);
        this.f2209e = l2.c.p(bVar.f2232e);
        this.f2210f = bVar.f2233f;
        this.f2211g = bVar.f2234g;
        this.f2212h = bVar.f2235h;
        this.f2213i = bVar.f2236i;
        Iterator<i> it = list.iterator();
        loop0: while (true) {
            while (it.hasNext()) {
                z3 = z3 || it.next().f2146a;
            }
        }
        SSLSocketFactory sSLSocketFactory = bVar.f2237j;
        if (sSLSocketFactory == null && z3) {
            try {
                TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
                trustManagerFactory.init((KeyStore) null);
                TrustManager[] trustManagers = trustManagerFactory.getTrustManagers();
                if (trustManagers.length != 1 || !(trustManagers[0] instanceof X509TrustManager)) {
                    throw new IllegalStateException("Unexpected default trust managers:" + Arrays.toString(trustManagers));
                }
                X509TrustManager x509TrustManager = (X509TrustManager) trustManagers[0];
                try {
                    r2.f fVar = r2.f.f3385a;
                    SSLContext sSLContextH = fVar.h();
                    sSLContextH.init(null, new TrustManager[]{x509TrustManager}, null);
                    this.f2214j = sSLContextH.getSocketFactory();
                    this.f2215k = fVar.c(x509TrustManager);
                } catch (GeneralSecurityException e4) {
                    throw l2.c.a("No System TLS", e4);
                }
            } catch (GeneralSecurityException e5) {
                throw l2.c.a("No System TLS", e5);
            }
        } else {
            this.f2214j = sSLSocketFactory;
            this.f2215k = bVar.f2238k;
        }
        SSLSocketFactory sSLSocketFactory2 = this.f2214j;
        if (sSLSocketFactory2 != null) {
            r2.f.f3385a.e(sSLSocketFactory2);
        }
        this.f2216l = bVar.f2239l;
        f fVar2 = bVar.f2240m;
        v1.q qVar = this.f2215k;
        this.f2217m = l2.c.m(fVar2.f2114b, qVar) ? fVar2 : new f(fVar2.f2113a, qVar);
        this.f2218n = bVar.f2241n;
        this.f2219o = bVar.f2242o;
        this.f2220p = bVar.f2243p;
        this.f2221q = bVar.f2244q;
        this.f2222r = bVar.f2245r;
        this.f2223s = bVar.f2246s;
        this.f2224t = bVar.f2247t;
        this.f2225u = bVar.f2248u;
        this.f2226v = bVar.f2249v;
        this.f2227w = bVar.f2250w;
        if (this.f2208d.contains(null)) {
            StringBuilder sbA = android.support.v4.media.f.a("Null interceptor: ");
            sbA.append(this.f2208d);
            throw new IllegalStateException(sbA.toString());
        }
        if (this.f2209e.contains(null)) {
            StringBuilder sbA2 = android.support.v4.media.f.a("Null network interceptor: ");
            sbA2.append(this.f2209e);
            throw new IllegalStateException(sbA2.toString());
        }
    }
}
