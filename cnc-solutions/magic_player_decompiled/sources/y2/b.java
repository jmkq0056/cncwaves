package y2;

import b3.r;
import b3.t;
import b3.u;
import b3.v;
import java.io.EOFException;
import java.nio.charset.Charset;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Objects;
import java.util.Timer;
import java.util.Vector;
import java.util.concurrent.TimeUnit;
import x2.s;
import x2.t.a;

/* JADX INFO: loaded from: classes2.dex */
public class b {
    public Hashtable A;
    public Hashtable B;
    public Hashtable C;
    public x2.q D;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public c3.b f4041a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f4042b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Hashtable f4043c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public volatile Vector f4044d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public volatile Vector f4045e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public f f4046f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public a f4047g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public c f4048h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public long f4049i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f4050j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public x2.j f4051k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public d1.b f4052l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f4053m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f4054n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f4055o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final Object f4056p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final Object f4057q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public boolean f4058r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public long f4059s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public long f4060t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public long f4061u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public u f4062v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final Object f4063w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f4064x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public boolean f4065y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public Hashtable f4066z;

    public b(x2.j jVar, f fVar, c cVar, a aVar, x2.q qVar, d1.b bVar) throws x2.m {
        c3.b bVarA = c3.c.a("org.eclipse.paho.client.mqttv3.internal.nls.logcat", "y2.b");
        this.f4041a = bVarA;
        this.f4042b = 0;
        this.f4047g = null;
        this.f4048h = null;
        this.f4053m = 0;
        this.f4054n = 0;
        this.f4055o = 0;
        this.f4056p = new Object();
        this.f4057q = new Object();
        this.f4058r = false;
        this.f4059s = 0L;
        this.f4060t = 0L;
        this.f4061u = 0L;
        this.f4063w = new Object();
        this.f4064x = 0;
        this.f4065y = false;
        this.f4066z = null;
        this.A = null;
        this.B = null;
        this.C = null;
        this.D = null;
        bVarA.i(aVar.f4015c.k());
        this.f4041a.a("y2.b", "<Init>", "");
        this.f4043c = new Hashtable();
        this.f4045e = new Vector();
        this.f4066z = new Hashtable();
        this.A = new Hashtable();
        this.B = new Hashtable();
        this.C = new Hashtable();
        this.f4062v = new b3.i();
        this.f4055o = 0;
        this.f4054n = 0;
        this.f4051k = jVar;
        this.f4048h = cVar;
        this.f4046f = fVar;
        this.f4047g = aVar;
        this.D = qVar;
        this.f4052l = bVar;
        Enumeration enumerationX = jVar.x();
        int iMax = this.f4042b;
        Vector vector = new Vector();
        this.f4041a.h("y2.b", "restoreState", "600");
        while (enumerationX.hasMoreElements()) {
            String str = (String) enumerationX.nextElement();
            u uVarB = B(str, this.f4051k.get(str));
            if (uVarB != null) {
                if (str.startsWith("r-")) {
                    this.f4041a.d("y2.b", "restoreState", "604", new Object[]{str, uVarB});
                    this.C.put(Integer.valueOf(uVarB.f295b), uVarB);
                } else if (str.startsWith("s-")) {
                    b3.o oVar = (b3.o) uVarB;
                    iMax = Math.max(oVar.f295b, iMax);
                    if (this.f4051k.v(m(oVar))) {
                        b3.n nVar = (b3.n) B(str, this.f4051k.get(m(oVar)));
                        if (nVar != null) {
                            this.f4041a.d("y2.b", "restoreState", "605", new Object[]{str, uVarB});
                            this.f4066z.put(Integer.valueOf(nVar.f295b), nVar);
                        } else {
                            this.f4041a.d("y2.b", "restoreState", "606", new Object[]{str, uVarB});
                        }
                    } else {
                        oVar.f296c = true;
                        if (oVar.f284g.f3983b == 2) {
                            this.f4041a.d("y2.b", "restoreState", "607", new Object[]{str, uVarB});
                            this.f4066z.put(Integer.valueOf(oVar.f295b), oVar);
                        } else {
                            this.f4041a.d("y2.b", "restoreState", "608", new Object[]{str, uVarB});
                            this.A.put(Integer.valueOf(oVar.f295b), oVar);
                        }
                    }
                    this.f4046f.g(oVar).f3986a.f4165k = this.f4047g.f4015c;
                    this.f4043c.put(Integer.valueOf(oVar.f295b), Integer.valueOf(oVar.f295b));
                } else if (str.startsWith("sb-")) {
                    b3.o oVar2 = (b3.o) uVarB;
                    iMax = Math.max(oVar2.f295b, iMax);
                    int i4 = oVar2.f284g.f3983b;
                    if (i4 == 2) {
                        this.f4041a.d("y2.b", "restoreState", "607", new Object[]{str, uVarB});
                        this.f4066z.put(Integer.valueOf(oVar2.f295b), oVar2);
                    } else if (i4 == 1) {
                        this.f4041a.d("y2.b", "restoreState", "608", new Object[]{str, uVarB});
                        this.A.put(Integer.valueOf(oVar2.f295b), oVar2);
                    } else {
                        this.f4041a.d("y2.b", "restoreState", "511", new Object[]{str, uVarB});
                        this.B.put(Integer.valueOf(oVar2.f295b), oVar2);
                        this.f4051k.remove(str);
                    }
                    this.f4046f.g(oVar2).f3986a.f4165k = this.f4047g.f4015c;
                    this.f4043c.put(Integer.valueOf(oVar2.f295b), Integer.valueOf(oVar2.f295b));
                } else if (str.startsWith("sc-") && !this.f4051k.v(n((b3.n) uVarB))) {
                    vector.addElement(str);
                }
            }
        }
        Enumeration enumerationElements = vector.elements();
        while (enumerationElements.hasMoreElements()) {
            String str2 = (String) enumerationElements.nextElement();
            this.f4041a.d("y2.b", "restoreState", "609", new Object[]{str2});
            this.f4051k.remove(str2);
        }
        this.f4042b = iMax;
    }

    public final void A() {
        this.f4044d = new Vector(this.f4053m);
        this.f4045e = new Vector();
        Enumeration enumerationKeys = this.f4066z.keys();
        while (enumerationKeys.hasMoreElements()) {
            Object objNextElement = enumerationKeys.nextElement();
            u uVar = (u) this.f4066z.get(objNextElement);
            if (uVar instanceof b3.o) {
                this.f4041a.d("y2.b", "restoreInflightMessages", "610", new Object[]{objNextElement});
                uVar.f296c = true;
                o(this.f4044d, (b3.o) uVar);
            } else if (uVar instanceof b3.n) {
                this.f4041a.d("y2.b", "restoreInflightMessages", "611", new Object[]{objNextElement});
                o(this.f4045e, (b3.n) uVar);
            }
        }
        Enumeration enumerationKeys2 = this.A.keys();
        while (enumerationKeys2.hasMoreElements()) {
            Object objNextElement2 = enumerationKeys2.nextElement();
            b3.o oVar = (b3.o) this.A.get(objNextElement2);
            oVar.f296c = true;
            this.f4041a.d("y2.b", "restoreInflightMessages", "612", new Object[]{objNextElement2});
            o(this.f4044d, oVar);
        }
        Enumeration enumerationKeys3 = this.B.keys();
        while (enumerationKeys3.hasMoreElements()) {
            Object objNextElement3 = enumerationKeys3.nextElement();
            b3.o oVar2 = (b3.o) this.B.get(objNextElement3);
            this.f4041a.d("y2.b", "restoreInflightMessages", "512", new Object[]{objNextElement3});
            o(this.f4044d, oVar2);
        }
        this.f4045e = x(this.f4045e);
        this.f4044d = x(this.f4044d);
    }

    public final u B(String str, x2.o oVar) throws x2.m {
        u uVarG;
        try {
            Charset charset = u.f292e;
            byte[] bArrC = oVar.c();
            if (bArrC == null) {
                bArrC = new byte[0];
            }
            uVarG = u.g(new v(oVar.e(), oVar.b(), oVar.f(), bArrC, oVar.d(), oVar.a()));
        } catch (x2.m e4) {
            this.f4041a.b("y2.b", "restoreMessage", "602", new Object[]{str}, e4);
            if (!(e4.f3981b instanceof EOFException)) {
                throw e4;
            }
            if (str != null) {
                this.f4051k.remove(str);
            }
            uVarG = null;
        }
        this.f4041a.d("y2.b", "restoreMessage", "601", new Object[]{str, uVarG});
        return uVarG;
    }

    public void C(u uVar, s sVar) {
        if (uVar.q() && uVar.f295b == 0 && (((uVar instanceof b3.o) && ((b3.o) uVar).f284g.f3983b != 0) || (uVar instanceof b3.k) || (uVar instanceof b3.m) || (uVar instanceof b3.n) || (uVar instanceof b3.l) || (uVar instanceof r) || (uVar instanceof b3.q) || (uVar instanceof t) || (uVar instanceof b3.s))) {
            uVar.s(j());
        }
        if (sVar != null) {
            uVar.f297d = sVar;
            try {
                Objects.requireNonNull(sVar.f3986a);
            } catch (Exception unused) {
            }
        }
        if (uVar instanceof b3.o) {
            synchronized (this.f4056p) {
                int i4 = this.f4054n;
                if (i4 >= this.f4053m) {
                    this.f4041a.d("y2.b", "send", "613", new Object[]{Integer.valueOf(i4)});
                    throw new x2.m(32202);
                }
                x2.n nVar = ((b3.o) uVar).f284g;
                this.f4041a.d("y2.b", "send", "628", new Object[]{Integer.valueOf(uVar.f295b), Integer.valueOf(nVar.f3983b), uVar});
                int i5 = nVar.f3983b;
                if (i5 == 1) {
                    this.A.put(Integer.valueOf(uVar.f295b), uVar);
                    this.f4051k.g(n(uVar), (b3.o) uVar);
                    this.f4046f.h(sVar, uVar);
                } else if (i5 == 2) {
                    this.f4066z.put(Integer.valueOf(uVar.f295b), uVar);
                    this.f4051k.g(n(uVar), (b3.o) uVar);
                    this.f4046f.h(sVar, uVar);
                }
                this.f4044d.addElement(uVar);
                this.f4056p.notifyAll();
            }
            return;
        }
        this.f4041a.d("y2.b", "send", "615", new Object[]{Integer.valueOf(uVar.f295b), uVar});
        if (uVar instanceof b3.d) {
            synchronized (this.f4056p) {
                this.f4046f.h(sVar, uVar);
                this.f4045e.insertElementAt(uVar, 0);
                this.f4056p.notifyAll();
            }
            return;
        }
        if (uVar instanceof b3.i) {
            this.f4062v = uVar;
        } else if (uVar instanceof b3.n) {
            this.f4066z.put(Integer.valueOf(uVar.f295b), uVar);
            this.f4051k.g(m(uVar), (b3.n) uVar);
        } else if (uVar instanceof b3.l) {
            this.f4051k.remove(k(uVar));
        }
        synchronized (this.f4056p) {
            if (!(uVar instanceof b3.b)) {
                this.f4046f.h(sVar, uVar);
            }
            this.f4045e.addElement(uVar);
            this.f4056p.notifyAll();
        }
    }

    public s a(x2.a aVar) {
        Object obj;
        long jMax;
        s sVar;
        this.f4041a.d("y2.b", "checkForActivity", "616", new Object[0]);
        synchronized (this.f4057q) {
            if (this.f4058r) {
                return null;
            }
            TimeUnit timeUnit = TimeUnit.NANOSECONDS;
            timeUnit.toMillis(this.f4049i);
            if (!this.f4065y || this.f4049i <= 0) {
                return null;
            }
            Objects.requireNonNull(this.f4052l);
            long jNanoTime = System.nanoTime();
            Object obj2 = this.f4063w;
            synchronized (obj2) {
                try {
                    try {
                        int i4 = this.f4064x;
                        if (i4 > 0) {
                            obj = obj2;
                            long j4 = jNanoTime - this.f4060t;
                            long j5 = this.f4049i;
                            if (j4 >= ((long) 100000) + j5) {
                                this.f4041a.c("y2.b", "checkForActivity", "619", new Object[]{Long.valueOf(j5), Long.valueOf(this.f4059s), Long.valueOf(this.f4060t), Long.valueOf(jNanoTime), Long.valueOf(this.f4061u)});
                                throw q0.a.e(32000);
                            }
                        } else {
                            obj = obj2;
                        }
                        if (i4 == 0) {
                            long j6 = jNanoTime - this.f4059s;
                            long j7 = this.f4049i;
                            if (j6 >= 2 * j7) {
                                this.f4041a.c("y2.b", "checkForActivity", "642", new Object[]{Long.valueOf(j7), Long.valueOf(this.f4059s), Long.valueOf(this.f4060t), Long.valueOf(jNanoTime), Long.valueOf(this.f4061u)});
                                throw q0.a.e(32002);
                            }
                        }
                        if ((i4 != 0 || jNanoTime - this.f4060t < this.f4049i - ((long) 100000)) && jNanoTime - this.f4059s < this.f4049i - ((long) 100000)) {
                            this.f4041a.d("y2.b", "checkForActivity", "634", null);
                            jMax = Math.max(1L, i() - timeUnit.toMillis(jNanoTime - this.f4059s));
                            sVar = null;
                        } else {
                            this.f4041a.d("y2.b", "checkForActivity", "620", new Object[]{Long.valueOf(this.f4049i), Long.valueOf(this.f4059s), Long.valueOf(this.f4060t)});
                            s sVar2 = new s(this.f4047g.f4015c.k());
                            if (aVar != null) {
                                sVar2.f3986a.f4166l = aVar;
                            }
                            this.f4046f.h(sVar2, this.f4062v);
                            this.f4045e.insertElementAt(this.f4062v, 0);
                            jMax = i();
                            q();
                            sVar = sVar2;
                        }
                        this.f4041a.d("y2.b", "checkForActivity", "624", new Object[]{Long.valueOf(jMax)});
                        x2.t tVar = (x2.t) this.D;
                        tVar.f3990c.schedule(tVar.new a(null), jMax);
                        return sVar;
                    } catch (Throwable th) {
                        th = th;
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            }
            throw th;
        }
    }

    public boolean b() {
        int size;
        f fVar = this.f4046f;
        synchronized (fVar.f4118b) {
            size = fVar.f4118b.size();
        }
        if (!this.f4058r || size != 0 || this.f4045e.size() != 0 || !this.f4048h.e()) {
            return false;
        }
        this.f4041a.d("y2.b", "checkQuiesceLock", "626", new Object[]{Boolean.valueOf(this.f4058r), Integer.valueOf(this.f4054n), Integer.valueOf(this.f4045e.size()), Integer.valueOf(this.f4055o), Boolean.valueOf(this.f4048h.e()), Integer.valueOf(size)});
        synchronized (this.f4057q) {
            this.f4057q.notifyAll();
        }
        return true;
    }

    public void c() {
        this.f4041a.h("y2.b", "clearState", ">");
        this.f4051k.clear();
        this.f4043c.clear();
        this.f4044d.clear();
        this.f4045e.clear();
        this.f4066z.clear();
        this.A.clear();
        this.B.clear();
        this.C.clear();
        this.f4046f.a();
    }

    public void d() {
        this.f4043c.clear();
        if (this.f4044d != null) {
            this.f4044d.clear();
        }
        this.f4045e.clear();
        this.f4066z.clear();
        this.A.clear();
        this.B.clear();
        this.C.clear();
        this.f4046f.a();
        this.f4043c = null;
        this.f4044d = null;
        this.f4045e = null;
        this.f4066z = null;
        this.A = null;
        this.B = null;
        this.C = null;
        this.f4046f = null;
        this.f4048h = null;
        this.f4047g = null;
        this.f4051k = null;
        this.f4062v = null;
        this.f4052l = null;
    }

    public void e() {
        this.f4041a.h("y2.b", "connected", "631");
        this.f4065y = true;
        x2.t tVar = (x2.t) this.D;
        tVar.f3988a.d("x2.t", "start", "659", new Object[]{tVar.f3991d});
        Timer timer = new Timer("MQTT Ping: " + tVar.f3991d);
        tVar.f3990c = timer;
        timer.schedule(tVar.new a(null), tVar.f3989b.f4021i.i());
    }

    public final void f() {
        synchronized (this.f4056p) {
            int i4 = this.f4054n - 1;
            this.f4054n = i4;
            this.f4041a.d("y2.b", "decrementInFlight", "646", new Object[]{Integer.valueOf(i4)});
            if (!b()) {
                this.f4056p.notifyAll();
            }
        }
    }

    public void g(x2.m mVar) {
        this.f4041a.d("y2.b", "disconnected", "633", new Object[]{mVar});
        this.f4065y = false;
        try {
            if (this.f4050j) {
                c();
            }
            this.f4044d.clear();
            this.f4045e.clear();
            synchronized (this.f4063w) {
                this.f4064x = 0;
            }
        } catch (x2.m unused) {
        }
    }

    public u h() {
        synchronized (this.f4056p) {
            u uVar = null;
            while (uVar == null) {
                if ((this.f4044d.isEmpty() && this.f4045e.isEmpty()) || (this.f4045e.isEmpty() && this.f4054n >= this.f4053m)) {
                    try {
                        this.f4041a.h("y2.b", "get", "644");
                        this.f4056p.wait();
                        this.f4041a.h("y2.b", "get", "647");
                    } catch (InterruptedException unused) {
                    }
                }
                if (this.f4045e != null && (this.f4065y || (!this.f4045e.isEmpty() && (((u) this.f4045e.elementAt(0)) instanceof b3.d)))) {
                    if (!this.f4045e.isEmpty()) {
                        uVar = (u) this.f4045e.remove(0);
                        if (uVar instanceof b3.n) {
                            int i4 = this.f4055o + 1;
                            this.f4055o = i4;
                            this.f4041a.d("y2.b", "get", "617", new Object[]{Integer.valueOf(i4)});
                        }
                        b();
                    } else if (!this.f4044d.isEmpty()) {
                        if (this.f4054n < this.f4053m) {
                            uVar = (u) this.f4044d.elementAt(0);
                            this.f4044d.removeElementAt(0);
                            int i5 = this.f4054n + 1;
                            this.f4054n = i5;
                            this.f4041a.d("y2.b", "get", "623", new Object[]{Integer.valueOf(i5)});
                        } else {
                            this.f4041a.h("y2.b", "get", "622");
                        }
                    }
                }
                this.f4041a.h("y2.b", "get", "621");
                return null;
            }
            return uVar;
        }
    }

    public long i() {
        return TimeUnit.NANOSECONDS.toMillis(this.f4049i);
    }

    public final synchronized int j() {
        int i4;
        int i5 = this.f4042b;
        int i6 = 0;
        do {
            int i7 = this.f4042b + 1;
            this.f4042b = i7;
            if (i7 > 65535) {
                this.f4042b = 1;
            }
            i4 = this.f4042b;
            if (i4 == i5 && (i6 = i6 + 1) == 2) {
                throw q0.a.e(32001);
            }
        } while (this.f4043c.containsKey(Integer.valueOf(i4)));
        Integer numValueOf = Integer.valueOf(this.f4042b);
        this.f4043c.put(numValueOf, numValueOf);
        return this.f4042b;
    }

    public final String k(u uVar) {
        return "r-" + uVar.f295b;
    }

    public final String l(u uVar) {
        return "sb-" + uVar.f295b;
    }

    public final String m(u uVar) {
        return "sc-" + uVar.f295b;
    }

    public final String n(u uVar) {
        return "s-" + uVar.f295b;
    }

    public final void o(Vector vector, u uVar) {
        int i4 = uVar.f295b;
        for (int i5 = 0; i5 < vector.size(); i5++) {
            if (((u) vector.elementAt(i5)).f295b > i4) {
                vector.insertElementAt(uVar, i5);
                return;
            }
        }
        vector.addElement(uVar);
    }

    public void p(s sVar) {
        u uVar = sVar.f3986a.f4161g;
        if (uVar == null || !(uVar instanceof b3.b)) {
            return;
        }
        this.f4041a.d("y2.b", "notifyComplete", "629", new Object[]{Integer.valueOf(uVar.f295b), sVar, uVar});
        b3.b bVar = (b3.b) uVar;
        if (bVar instanceof b3.k) {
            this.f4051k.remove(n(uVar));
            this.f4051k.remove(l(uVar));
            this.A.remove(Integer.valueOf(bVar.f295b));
            f();
            y(uVar.f295b);
            this.f4046f.e(uVar);
            this.f4041a.d("y2.b", "notifyComplete", "650", new Object[]{Integer.valueOf(bVar.f295b)});
        } else if (bVar instanceof b3.l) {
            this.f4051k.remove(n(uVar));
            this.f4051k.remove(m(uVar));
            this.f4051k.remove(l(uVar));
            this.f4066z.remove(Integer.valueOf(bVar.f295b));
            this.f4055o--;
            f();
            y(uVar.f295b);
            this.f4046f.e(uVar);
            this.f4041a.d("y2.b", "notifyComplete", "645", new Object[]{Integer.valueOf(bVar.f295b), Integer.valueOf(this.f4055o)});
        }
        b();
    }

    public void q() {
        synchronized (this.f4056p) {
            this.f4041a.h("y2.b", "notifyQueueLock", "638");
            this.f4056p.notifyAll();
        }
    }

    public void r(b3.b bVar) throws x2.m {
        Objects.requireNonNull(this.f4052l);
        this.f4060t = System.nanoTime();
        this.f4041a.d("y2.b", "notifyReceivedAck", "627", new Object[]{Integer.valueOf(bVar.f295b), bVar});
        s sVarC = this.f4046f.c(bVar);
        if (sVarC == null) {
            this.f4041a.d("y2.b", "notifyReceivedAck", "662", new Object[]{Integer.valueOf(bVar.f295b)});
        } else if (bVar instanceof b3.m) {
            C(new b3.n((b3.m) bVar), sVarC);
        } else if ((bVar instanceof b3.k) || (bVar instanceof b3.l)) {
            u(bVar, sVarC, null);
        } else if (bVar instanceof b3.j) {
            synchronized (this.f4063w) {
                this.f4064x = Math.max(0, this.f4064x - 1);
                u(bVar, sVarC, null);
                if (this.f4064x == 0) {
                    this.f4046f.e(bVar);
                }
            }
            this.f4041a.d("y2.b", "notifyReceivedAck", "636", new Object[]{Integer.valueOf(this.f4064x)});
        } else if (bVar instanceof b3.c) {
            b3.c cVar = (b3.c) bVar;
            int i4 = cVar.f262g;
            if (i4 != 0) {
                throw q0.a.e(i4);
            }
            synchronized (this.f4056p) {
                if (this.f4050j) {
                    c();
                    this.f4046f.h(sVarC, bVar);
                }
                this.f4055o = 0;
                this.f4054n = 0;
                A();
                e();
            }
            a aVar = this.f4047g;
            Objects.requireNonNull(aVar);
            int i5 = cVar.f262g;
            synchronized (aVar.f4028p) {
                if (i5 != 0) {
                    aVar.f4014b.d(aVar.f4013a, "connectComplete", "204", new Object[]{Integer.valueOf(i5)});
                    throw null;
                }
                aVar.f4014b.h(aVar.f4013a, "connectComplete", "215");
                aVar.f4027o = (byte) 0;
                u(bVar, sVarC, null);
                this.f4046f.e(bVar);
                synchronized (this.f4056p) {
                    this.f4056p.notifyAll();
                }
            }
        } else {
            u(bVar, sVarC, null);
            y(bVar.f295b);
            this.f4046f.e(bVar);
        }
        b();
    }

    public void s(int i4) {
        if (i4 > 0) {
            Objects.requireNonNull(this.f4052l);
            this.f4060t = System.nanoTime();
        }
        this.f4041a.d("y2.b", "notifyReceivedBytes", "630", new Object[]{Integer.valueOf(i4)});
    }

    public void t(u uVar) {
        Objects.requireNonNull(this.f4052l);
        this.f4060t = System.nanoTime();
        this.f4041a.d("y2.b", "notifyReceivedMsg", "651", new Object[]{Integer.valueOf(uVar.f295b), uVar});
        if (this.f4058r) {
            return;
        }
        if (!(uVar instanceof b3.o)) {
            if (uVar instanceof b3.n) {
                b3.o oVar = (b3.o) this.C.get(Integer.valueOf(uVar.f295b));
                if (oVar == null) {
                    C(new b3.l(uVar.f295b), null);
                    return;
                }
                c cVar = this.f4048h;
                if (cVar != null) {
                    cVar.h(oVar);
                    return;
                }
                return;
            }
            return;
        }
        b3.o oVar2 = (b3.o) uVar;
        int i4 = oVar2.f284g.f3983b;
        if (i4 == 0 || i4 == 1) {
            c cVar2 = this.f4048h;
            if (cVar2 != null) {
                cVar2.h(oVar2);
                return;
            }
            return;
        }
        if (i4 != 2) {
            return;
        }
        this.f4051k.g(k(uVar), oVar2);
        this.C.put(Integer.valueOf(oVar2.f295b), oVar2);
        C(new b3.m(oVar2), null);
    }

    public void u(u uVar, s sVar, x2.m mVar) {
        sVar.f3986a.a(uVar, null);
        sVar.f3986a.b();
        if (uVar instanceof b3.m) {
            return;
        }
        this.f4041a.d("y2.b", "notifyResult", "648", new Object[]{sVar.f3986a.f4164j, uVar, null});
        this.f4048h.a(sVar);
    }

    public void v(u uVar) {
        int i4;
        Objects.requireNonNull(this.f4052l);
        this.f4059s = System.nanoTime();
        this.f4041a.d("y2.b", "notifySent", "625", new Object[]{uVar.m()});
        s sVarC = uVar.f297d;
        if (sVarC == null && (sVarC = this.f4046f.c(uVar)) == null) {
            return;
        }
        q qVar = sVarC.f3986a;
        qVar.f4155a.d("y2.q", "notifySent", "403", new Object[]{qVar.f4164j});
        synchronized (qVar.f4159e) {
            qVar.f4161g = null;
            qVar.f4156b = false;
        }
        synchronized (qVar.f4160f) {
            qVar.f4158d = true;
            qVar.f4160f.notifyAll();
        }
        if (uVar instanceof b3.i) {
            synchronized (this.f4063w) {
                Objects.requireNonNull(this.f4052l);
                long jNanoTime = System.nanoTime();
                synchronized (this.f4063w) {
                    this.f4061u = jNanoTime;
                    i4 = this.f4064x + 1;
                    this.f4064x = i4;
                }
                this.f4041a.d("y2.b", "notifySent", "635", new Object[]{Integer.valueOf(i4)});
            }
            return;
        }
        if ((uVar instanceof b3.o) && ((b3.o) uVar).f284g.f3983b == 0) {
            sVarC.f3986a.a(null, null);
            this.f4048h.a(sVarC);
            f();
            y(uVar.f295b);
            this.f4046f.e(uVar);
            b();
        }
    }

    public void w(int i4) {
        if (i4 > 0) {
            Objects.requireNonNull(this.f4052l);
            this.f4059s = System.nanoTime();
        }
        this.f4041a.d("y2.b", "notifySentBytes", "643", new Object[]{Integer.valueOf(i4)});
    }

    public final Vector x(Vector vector) {
        Vector vector2 = new Vector();
        if (vector.size() == 0) {
            return vector2;
        }
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        while (i4 < vector.size()) {
            int i8 = ((u) vector.elementAt(i4)).f295b;
            int i9 = i8 - i5;
            if (i9 > i6) {
                i7 = i4;
                i6 = i9;
            }
            i4++;
            i5 = i8;
        }
        int i10 = (65535 - i5) + ((u) vector.elementAt(0)).f295b > i6 ? 0 : i7;
        for (int i11 = i10; i11 < vector.size(); i11++) {
            vector2.addElement(vector.elementAt(i11));
        }
        for (int i12 = 0; i12 < i10; i12++) {
            vector2.addElement(vector.elementAt(i12));
        }
        return vector2;
    }

    public final synchronized void y(int i4) {
        this.f4043c.remove(Integer.valueOf(i4));
    }

    public Vector z(x2.m mVar) {
        Vector vector;
        this.f4041a.d("y2.b", "resolveOldTokens", "632", new Object[]{mVar});
        if (mVar == null) {
            mVar = new x2.m(32102);
        }
        f fVar = this.f4046f;
        synchronized (fVar.f4118b) {
            fVar.f4117a.h("y2.f", "getOutstandingTokens", "312");
            vector = new Vector();
            Enumeration enumerationElements = fVar.f4118b.elements();
            while (enumerationElements.hasMoreElements()) {
                s sVar = (s) enumerationElements.nextElement();
                if (sVar != null) {
                    vector.addElement(sVar);
                }
            }
        }
        Enumeration enumerationElements2 = vector.elements();
        while (enumerationElements2.hasMoreElements()) {
            s sVar2 = (s) enumerationElements2.nextElement();
            synchronized (sVar2) {
                if (!sVar2.f3986a.f4156b) {
                    q qVar = sVar2.f3986a;
                    if (!qVar.f4157c && qVar.f4162h == null) {
                        qVar.c(mVar);
                    }
                }
            }
            if (!(sVar2 instanceof x2.l)) {
                this.f4046f.f(sVar2.f3986a.f4164j);
            }
        }
        return vector;
    }
}
