package n2;

import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.ProxySelector;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import k2.d0;
import k2.n;
import k2.r;

/* JADX INFO: loaded from: classes2.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final k2.a f2753a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final t1.b f2754b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final n f2755c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public List<Proxy> f2756d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f2757e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public List<InetSocketAddress> f2758f = Collections.emptyList();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final List<d0> f2759g = new ArrayList();

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final List<d0> f2760a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f2761b = 0;

        public a(List<d0> list) {
            this.f2760a = list;
        }

        public boolean a() {
            return this.f2761b < this.f2760a.size();
        }
    }

    public e(k2.a aVar, t1.b bVar, k2.d dVar, n nVar) {
        this.f2756d = Collections.emptyList();
        this.f2753a = aVar;
        this.f2754b = bVar;
        this.f2755c = nVar;
        r rVar = aVar.f2047a;
        Proxy proxy = aVar.f2054h;
        if (proxy != null) {
            this.f2756d = Collections.singletonList(proxy);
        } else {
            List<Proxy> listSelect = aVar.f2053g.select(rVar.o());
            this.f2756d = (listSelect == null || listSelect.isEmpty()) ? l2.c.q(Proxy.NO_PROXY) : l2.c.p(listSelect);
        }
        this.f2757e = 0;
    }

    public void a(d0 d0Var, IOException iOException) {
        k2.a aVar;
        ProxySelector proxySelector;
        if (d0Var.f2103b.type() != Proxy.Type.DIRECT && (proxySelector = (aVar = this.f2753a).f2053g) != null) {
            proxySelector.connectFailed(aVar.f2047a.o(), d0Var.f2103b.address(), iOException);
        }
        t1.b bVar = this.f2754b;
        synchronized (bVar) {
            ((Set) bVar.f3529b).add(d0Var);
        }
    }

    public boolean b() {
        return c() || !this.f2759g.isEmpty();
    }

    public final boolean c() {
        return this.f2757e < this.f2756d.size();
    }
}
