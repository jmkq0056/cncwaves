package n2;

import java.io.IOException;
import java.lang.ref.WeakReference;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.Socket;
import java.net.SocketAddress;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ThreadPoolExecutor;
import k2.d0;
import k2.h;
import k2.m;
import k2.n;
import k2.r;
import k2.u;
import n2.e;
import q2.g;

/* JADX INFO: loaded from: classes2.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final k2.a f2762a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public e.a f2763b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public d0 f2764c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final h f2765d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final k2.d f2766e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final n f2767f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final Object f2768g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final e f2769h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f2770i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public c f2771j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f2772k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f2773l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f2774m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public o2.c f2775n;

    public static final class a extends WeakReference<f> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Object f2776a;

        public a(f fVar, Object obj) {
            super(fVar);
            this.f2776a = obj;
        }
    }

    public f(h hVar, k2.a aVar, k2.d dVar, n nVar, Object obj) {
        this.f2765d = hVar;
        this.f2762a = aVar;
        this.f2766e = dVar;
        this.f2767f = nVar;
        Objects.requireNonNull((u.a) l2.a.f2435a);
        this.f2769h = new e(aVar, hVar.f2141e, dVar, nVar);
        this.f2768g = obj;
    }

    public void a(c cVar, boolean z3) {
        if (this.f2771j != null) {
            throw new IllegalStateException();
        }
        this.f2771j = cVar;
        this.f2772k = z3;
        cVar.f2749n.add(new a(this, this.f2768g));
    }

    public synchronized c b() {
        return this.f2771j;
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0075  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.net.Socket c(boolean r5, boolean r6, boolean r7) {
        /*
            r4 = this;
            r0 = 0
            if (r7 == 0) goto L5
            r4.f2775n = r0
        L5:
            r7 = 1
            if (r6 == 0) goto La
            r4.f2773l = r7
        La:
            n2.c r6 = r4.f2771j
            if (r6 == 0) goto L83
            if (r5 == 0) goto L12
            r6.f2746k = r7
        L12:
            o2.c r5 = r4.f2775n
            if (r5 != 0) goto L83
            boolean r5 = r4.f2773l
            if (r5 != 0) goto L1e
            boolean r5 = r6.f2746k
            if (r5 == 0) goto L83
        L1e:
            java.util.List<java.lang.ref.Reference<n2.f>> r5 = r6.f2749n
            int r5 = r5.size()
            r1 = 0
            r2 = 0
        L26:
            if (r2 >= r5) goto L7d
            java.util.List<java.lang.ref.Reference<n2.f>> r3 = r6.f2749n
            java.lang.Object r3 = r3.get(r2)
            java.lang.ref.Reference r3 = (java.lang.ref.Reference) r3
            java.lang.Object r3 = r3.get()
            if (r3 != r4) goto L7a
            java.util.List<java.lang.ref.Reference<n2.f>> r5 = r6.f2749n
            r5.remove(r2)
            n2.c r5 = r4.f2771j
            java.util.List<java.lang.ref.Reference<n2.f>> r5 = r5.f2749n
            boolean r5 = r5.isEmpty()
            if (r5 == 0) goto L75
            n2.c r5 = r4.f2771j
            long r2 = java.lang.System.nanoTime()
            r5.f2750o = r2
            l2.a r5 = l2.a.f2435a
            k2.h r6 = r4.f2765d
            n2.c r2 = r4.f2771j
            k2.u$a r5 = (k2.u.a) r5
            java.util.Objects.requireNonNull(r5)
            java.util.Objects.requireNonNull(r6)
            boolean r5 = r2.f2746k
            if (r5 != 0) goto L69
            int r5 = r6.f2137a
            if (r5 != 0) goto L64
            goto L69
        L64:
            r6.notifyAll()
            r7 = 0
            goto L6e
        L69:
            java.util.Deque<n2.c> r5 = r6.f2140d
            r5.remove(r2)
        L6e:
            if (r7 == 0) goto L75
            n2.c r5 = r4.f2771j
            java.net.Socket r5 = r5.f2740e
            goto L76
        L75:
            r5 = r0
        L76:
            r4.f2771j = r0
            r0 = r5
            goto L83
        L7a:
            int r2 = r2 + 1
            goto L26
        L7d:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            r5.<init>()
            throw r5
        L83:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: n2.f.c(boolean, boolean, boolean):java.net.Socket");
    }

    public final c d(int i4, int i5, int i6, int i7, boolean z3) throws Throwable {
        c cVar;
        d0 d0Var;
        Socket socketC;
        c cVar2;
        boolean z4;
        boolean z5;
        Socket socketB;
        e.a aVar;
        String hostName;
        int port;
        boolean zContains;
        synchronized (this.f2765d) {
            if (this.f2773l) {
                throw new IllegalStateException("released");
            }
            if (this.f2775n != null) {
                throw new IllegalStateException("codec != null");
            }
            if (this.f2774m) {
                throw new IOException("Canceled");
            }
            cVar = this.f2771j;
            d0Var = null;
            socketC = (cVar == null || !cVar.f2746k) ? null : c(false, false, true);
            c cVar3 = this.f2771j;
            if (cVar3 != null) {
                cVar = null;
            } else {
                cVar3 = null;
            }
            if (!this.f2772k) {
                cVar = null;
            }
            if (cVar3 == null) {
                l2.a.f2435a.c(this.f2765d, this.f2762a, this, null);
                cVar2 = this.f2771j;
                if (cVar2 != null) {
                    z4 = true;
                } else {
                    d0Var = this.f2764c;
                    cVar2 = cVar3;
                    z4 = false;
                }
            } else {
                cVar2 = cVar3;
                z4 = false;
            }
        }
        l2.c.g(socketC);
        if (cVar != null) {
            Objects.requireNonNull(this.f2767f);
        }
        if (z4) {
            Objects.requireNonNull(this.f2767f);
        }
        if (cVar2 != null) {
            return cVar2;
        }
        if (d0Var != null || ((aVar = this.f2763b) != null && aVar.a())) {
            z5 = false;
        } else {
            e eVar = this.f2769h;
            if (!eVar.b()) {
                throw new NoSuchElementException();
            }
            ArrayList arrayList = new ArrayList();
            while (eVar.c()) {
                if (!eVar.c()) {
                    StringBuilder sbA = android.support.v4.media.f.a("No route to ");
                    sbA.append(eVar.f2753a.f2047a.f2185d);
                    sbA.append("; exhausted proxy configurations: ");
                    sbA.append(eVar.f2756d);
                    throw new SocketException(sbA.toString());
                }
                List<Proxy> list = eVar.f2756d;
                int i8 = eVar.f2757e;
                eVar.f2757e = i8 + 1;
                Proxy proxy = list.get(i8);
                eVar.f2758f = new ArrayList();
                if (proxy.type() == Proxy.Type.DIRECT || proxy.type() == Proxy.Type.SOCKS) {
                    r rVar = eVar.f2753a.f2047a;
                    hostName = rVar.f2185d;
                    port = rVar.f2186e;
                } else {
                    SocketAddress socketAddressAddress = proxy.address();
                    if (!(socketAddressAddress instanceof InetSocketAddress)) {
                        StringBuilder sbA2 = android.support.v4.media.f.a("Proxy.address() is not an InetSocketAddress: ");
                        sbA2.append(socketAddressAddress.getClass());
                        throw new IllegalArgumentException(sbA2.toString());
                    }
                    InetSocketAddress inetSocketAddress = (InetSocketAddress) socketAddressAddress;
                    InetAddress address = inetSocketAddress.getAddress();
                    hostName = address == null ? inetSocketAddress.getHostName() : address.getHostAddress();
                    port = inetSocketAddress.getPort();
                }
                if (port < 1 || port > 65535) {
                    throw new SocketException("No route to " + hostName + ":" + port + "; port is out of range");
                }
                if (proxy.type() == Proxy.Type.SOCKS) {
                    eVar.f2758f.add(InetSocketAddress.createUnresolved(hostName, port));
                } else {
                    Objects.requireNonNull(eVar.f2755c);
                    Objects.requireNonNull((m.a) eVar.f2753a.f2048b);
                    if (hostName == null) {
                        throw new UnknownHostException("hostname == null");
                    }
                    try {
                        List listAsList = Arrays.asList(InetAddress.getAllByName(hostName));
                        if (listAsList.isEmpty()) {
                            throw new UnknownHostException(eVar.f2753a.f2048b + " returned no addresses for " + hostName);
                        }
                        Objects.requireNonNull(eVar.f2755c);
                        int size = listAsList.size();
                        for (int i9 = 0; i9 < size; i9++) {
                            eVar.f2758f.add(new InetSocketAddress((InetAddress) listAsList.get(i9), port));
                        }
                    } catch (NullPointerException e4) {
                        UnknownHostException unknownHostException = new UnknownHostException(androidx.appcompat.view.a.a("Broken system behaviour for dns lookup of ", hostName));
                        unknownHostException.initCause(e4);
                        throw unknownHostException;
                    }
                }
                int size2 = eVar.f2758f.size();
                for (int i10 = 0; i10 < size2; i10++) {
                    d0 d0Var2 = new d0(eVar.f2753a, proxy, eVar.f2758f.get(i10));
                    t1.b bVar = eVar.f2754b;
                    synchronized (bVar) {
                        zContains = ((Set) bVar.f3529b).contains(d0Var2);
                    }
                    if (zContains) {
                        eVar.f2759g.add(d0Var2);
                    } else {
                        arrayList.add(d0Var2);
                    }
                }
                if (!arrayList.isEmpty()) {
                    break;
                }
            }
            if (arrayList.isEmpty()) {
                arrayList.addAll(eVar.f2759g);
                eVar.f2759g.clear();
            }
            this.f2763b = new e.a(arrayList);
            z5 = true;
        }
        synchronized (this.f2765d) {
            if (this.f2774m) {
                throw new IOException("Canceled");
            }
            if (z5) {
                e.a aVar2 = this.f2763b;
                Objects.requireNonNull(aVar2);
                ArrayList arrayList2 = new ArrayList(aVar2.f2760a);
                int size3 = arrayList2.size();
                int i11 = 0;
                while (true) {
                    if (i11 >= size3) {
                        break;
                    }
                    d0 d0Var3 = (d0) arrayList2.get(i11);
                    l2.a.f2435a.c(this.f2765d, this.f2762a, this, d0Var3);
                    c cVar4 = this.f2771j;
                    if (cVar4 != null) {
                        this.f2764c = d0Var3;
                        z4 = true;
                        cVar2 = cVar4;
                        break;
                    }
                    i11++;
                }
            }
            if (!z4) {
                if (d0Var == null) {
                    e.a aVar3 = this.f2763b;
                    if (!aVar3.a()) {
                        throw new NoSuchElementException();
                    }
                    List<d0> list2 = aVar3.f2760a;
                    int i12 = aVar3.f2761b;
                    aVar3.f2761b = i12 + 1;
                    d0Var = list2.get(i12);
                }
                this.f2764c = d0Var;
                this.f2770i = 0;
                cVar2 = new c(this.f2765d, d0Var);
                a(cVar2, false);
            }
        }
        if (z4) {
            Objects.requireNonNull(this.f2767f);
            return cVar2;
        }
        cVar2.c(i4, i5, i6, i7, z3, this.f2766e, this.f2767f);
        l2.a aVar4 = l2.a.f2435a;
        h hVar = this.f2765d;
        Objects.requireNonNull((u.a) aVar4);
        hVar.f2141e.o(cVar2.f2738c);
        synchronized (this.f2765d) {
            this.f2772k = true;
            l2.a aVar5 = l2.a.f2435a;
            h hVar2 = this.f2765d;
            Objects.requireNonNull((u.a) aVar5);
            if (!hVar2.f2142f) {
                hVar2.f2142f = true;
                ((ThreadPoolExecutor) h.f2136g).execute(hVar2.f2139c);
            }
            hVar2.f2140d.add(cVar2);
            if (cVar2.h()) {
                socketB = l2.a.f2435a.b(this.f2765d, this.f2762a, this);
                cVar2 = this.f2771j;
            } else {
                socketB = null;
            }
        }
        l2.c.g(socketB);
        Objects.requireNonNull(this.f2767f);
        return cVar2;
    }

    public final c e(int i4, int i5, int i6, int i7, boolean z3, boolean z4) throws Throwable {
        int soTimeout;
        boolean z5;
        while (true) {
            c cVarD = d(i4, i5, i6, i7, z3);
            synchronized (this.f2765d) {
                if (cVarD.f2747l == 0) {
                    return cVarD;
                }
                boolean z6 = false;
                if (!cVarD.f2740e.isClosed() && !cVarD.f2740e.isInputShutdown() && !cVarD.f2740e.isOutputShutdown()) {
                    g gVar = cVarD.f2743h;
                    if (gVar != null) {
                        synchronized (gVar) {
                            z5 = gVar.f3215g;
                        }
                        z6 = !z5;
                    } else if (z4) {
                        try {
                            soTimeout = cVarD.f2740e.getSoTimeout();
                            try {
                                cVarD.f2740e.setSoTimeout(1);
                            } catch (Throwable th) {
                                cVarD.f2740e.setSoTimeout(soTimeout);
                                throw th;
                            }
                        } catch (SocketTimeoutException unused) {
                        } catch (IOException unused2) {
                        }
                        if (cVarD.f2744i.l()) {
                            cVarD.f2740e.setSoTimeout(soTimeout);
                        } else {
                            cVarD.f2740e.setSoTimeout(soTimeout);
                            z6 = true;
                        }
                    } else {
                        z6 = true;
                    }
                }
                if (z6) {
                    return cVarD;
                }
                f();
            }
        }
    }

    public void f() {
        c cVar;
        Socket socketC;
        synchronized (this.f2765d) {
            cVar = this.f2771j;
            socketC = c(true, false, false);
            if (this.f2771j != null) {
                cVar = null;
            }
        }
        l2.c.g(socketC);
        if (cVar != null) {
            Objects.requireNonNull(this.f2767f);
        }
    }

    public void g() {
        c cVar;
        Socket socketC;
        synchronized (this.f2765d) {
            cVar = this.f2771j;
            socketC = c(false, true, false);
            if (this.f2771j != null) {
                cVar = null;
            }
        }
        l2.c.g(socketC);
        if (cVar != null) {
            l2.a.f2435a.d(this.f2766e, null);
            Objects.requireNonNull(this.f2767f);
            Objects.requireNonNull(this.f2767f);
        }
    }

    public void h(IOException iOException) {
        c cVar;
        boolean z3;
        Socket socketC;
        synchronized (this.f2765d) {
            cVar = null;
            if (iOException instanceof q2.u) {
                q2.b bVar = ((q2.u) iOException).f3315a;
                if (bVar == q2.b.REFUSED_STREAM) {
                    int i4 = this.f2770i + 1;
                    this.f2770i = i4;
                    if (i4 > 1) {
                        this.f2764c = null;
                        z3 = true;
                    }
                    z3 = false;
                } else {
                    if (bVar != q2.b.CANCEL) {
                        this.f2764c = null;
                        z3 = true;
                    }
                    z3 = false;
                }
            } else {
                c cVar2 = this.f2771j;
                if (cVar2 != null && (!cVar2.h() || (iOException instanceof q2.a))) {
                    if (this.f2771j.f2747l == 0) {
                        d0 d0Var = this.f2764c;
                        if (d0Var != null && iOException != null) {
                            this.f2769h.a(d0Var, iOException);
                        }
                        this.f2764c = null;
                    }
                    z3 = true;
                }
                z3 = false;
            }
            c cVar3 = this.f2771j;
            socketC = c(z3, false, true);
            if (this.f2771j == null && this.f2772k) {
                cVar = cVar3;
            }
        }
        l2.c.g(socketC);
        if (cVar != null) {
            Objects.requireNonNull(this.f2767f);
        }
    }

    public void i(boolean z3, o2.c cVar, long j4, IOException iOException) {
        c cVar2;
        Socket socketC;
        boolean z4;
        Objects.requireNonNull(this.f2767f);
        synchronized (this.f2765d) {
            if (cVar != null) {
                if (cVar == this.f2775n) {
                    if (!z3) {
                        this.f2771j.f2747l++;
                    }
                    cVar2 = this.f2771j;
                    socketC = c(z3, false, true);
                    if (this.f2771j != null) {
                        cVar2 = null;
                    }
                    z4 = this.f2773l;
                }
            }
            throw new IllegalStateException("expected " + this.f2775n + " but was " + cVar);
        }
        l2.c.g(socketC);
        if (cVar2 != null) {
            Objects.requireNonNull(this.f2767f);
        }
        if (iOException != null) {
            l2.a.f2435a.d(this.f2766e, iOException);
            Objects.requireNonNull(this.f2767f);
        } else if (z4) {
            l2.a.f2435a.d(this.f2766e, null);
            Objects.requireNonNull(this.f2767f);
        }
    }

    public String toString() {
        c cVarB = b();
        return cVarB != null ? cVarB.toString() : this.f2762a.toString();
    }
}
