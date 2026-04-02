package y2;

import b3.u;
import java.util.Enumeration;
import java.util.Objects;
import java.util.Timer;
import java.util.Vector;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import org.eclipse.jetty.http.HttpHeaderValues;
import x2.r;
import x2.s;
import x2.t;
import y2.d;

/* JADX INFO: loaded from: classes2.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f4013a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final c3.b f4014b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public x2.b f4015c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f4016d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public j[] f4017e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public d f4018f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public e f4019g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public c f4020h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public y2.b f4021i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public x2.k f4022j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public x2.j f4023k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public x2.q f4024l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public f f4025m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f4026n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public byte f4027o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final Object f4028p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f4029q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public ExecutorService f4030r;

    /* JADX INFO: renamed from: y2.a$a, reason: collision with other inner class name */
    public class RunnableC0058a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public a f4031a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public s f4032b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public b3.d f4033c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public String f4034d;

        public RunnableC0058a(a aVar, s sVar, b3.d dVar) {
            this.f4031a = null;
            this.f4031a = aVar;
            this.f4032b = sVar;
            this.f4033c = dVar;
            this.f4034d = "MQTT Con: " + a.this.f4015c.k();
        }

        @Override // java.lang.Runnable
        public void run() {
            Thread.currentThread().setName(this.f4034d);
            a aVar = a.this;
            aVar.f4014b.h(aVar.f4013a, "connectBG:run", "220");
            x2.m e4 = null;
            try {
                for (x2.l lVar : a.this.f4025m.b()) {
                    lVar.f3986a.c(null);
                }
                a.this.f4025m.h(this.f4032b, this.f4033c);
                a aVar2 = a.this;
                j jVar = aVar2.f4017e[aVar2.f4016d];
                jVar.start();
                a aVar3 = a.this;
                a aVar4 = this.f4031a;
                a aVar5 = a.this;
                aVar3.f4018f = new d(aVar4, aVar5.f4021i, aVar5.f4025m, jVar.getInputStream());
                a.this.f4018f.b("MQTT Rec: " + a.this.f4015c.k(), a.this.f4030r);
                a aVar6 = a.this;
                a aVar7 = this.f4031a;
                a aVar8 = a.this;
                aVar6.f4019g = new e(aVar7, aVar8.f4021i, aVar8.f4025m, jVar.getOutputStream());
                a.this.f4019g.c("MQTT Snd: " + a.this.f4015c.k(), a.this.f4030r);
                a.this.f4020h.j("MQTT Call: " + a.this.f4015c.k(), a.this.f4030r);
                a.this.e(this.f4033c, this.f4032b);
            } catch (x2.m e5) {
                e4 = e5;
                a aVar9 = a.this;
                aVar9.f4014b.b(aVar9.f4013a, "connectBG:run", "212", null, e4);
            } catch (Exception e6) {
                a aVar10 = a.this;
                aVar10.f4014b.b(aVar10.f4013a, "connectBG:run", "209", null, e6);
                e4 = e6.getClass().getName().equals("java.security.GeneralSecurityException") ? new r(e6) : new x2.m(e6);
            }
            if (e4 != null) {
                a.this.l(this.f4032b, e4);
            }
        }
    }

    public class b implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public b3.e f4036a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public long f4037b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public s f4038c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public String f4039d;

        public b(b3.e eVar, long j4, s sVar) {
            this.f4036a = eVar;
            this.f4037b = j4;
            this.f4038c = sVar;
        }

        public void a() {
            this.f4039d = "MQTT Disc: " + a.this.f4015c.k();
            ExecutorService executorService = a.this.f4030r;
            if (executorService == null) {
                new Thread(this).start();
            } else {
                executorService.execute(this);
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:63:0x0134  */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() {
            /*
                Method dump skipped, instruction units count: 323
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: y2.a.b.run():void");
        }
    }

    public a(x2.b bVar, x2.j jVar, x2.q qVar, ExecutorService executorService, d1.b bVar2) {
        String name = a.class.getName();
        this.f4013a = name;
        c3.b bVarA = c3.c.a("org.eclipse.paho.client.mqttv3.internal.nls.logcat", name);
        this.f4014b = bVarA;
        this.f4026n = false;
        this.f4027o = (byte) 3;
        this.f4028p = new Object();
        this.f4029q = false;
        this.f4027o = (byte) 3;
        this.f4015c = bVar;
        this.f4023k = jVar;
        this.f4024l = qVar;
        t tVar = (t) qVar;
        Objects.requireNonNull(tVar);
        tVar.f3989b = this;
        String strK = this.f4015c.k();
        tVar.f3991d = strK;
        tVar.f3988a.i(strK);
        this.f4030r = executorService;
        this.f4025m = new f(this.f4015c.k());
        this.f4020h = new c(this);
        y2.b bVar3 = new y2.b(jVar, this.f4025m, this.f4020h, this, qVar, bVar2);
        this.f4021i = bVar3;
        this.f4020h.f4083p = bVar3;
        bVarA.i(this.f4015c.k());
    }

    public void a(boolean z3) {
        synchronized (this.f4028p) {
            if (!f()) {
                if (!i() || z3) {
                    this.f4014b.h(this.f4013a, HttpHeaderValues.CLOSE, "224");
                    if (h()) {
                        throw new x2.m(32110);
                    }
                    if (g()) {
                        throw q0.a.e(32100);
                    }
                    if (j()) {
                        this.f4029q = true;
                        return;
                    }
                }
                this.f4027o = (byte) 4;
                this.f4021i.d();
                this.f4021i = null;
                this.f4020h = null;
                this.f4023k = null;
                this.f4019g = null;
                this.f4024l = null;
                this.f4018f = null;
                this.f4017e = null;
                this.f4022j = null;
                this.f4025m = null;
            }
        }
    }

    public void b(x2.k kVar, s sVar) {
        synchronized (this.f4028p) {
            if (!i() || this.f4029q) {
                this.f4014b.d(this.f4013a, "connect", "207", new Object[]{Byte.valueOf(this.f4027o)});
                if (f() || this.f4029q) {
                    throw new x2.m(32111);
                }
                if (h()) {
                    throw new x2.m(32110);
                }
                if (!j()) {
                    throw q0.a.e(32100);
                }
                throw new x2.m(32102);
            }
            this.f4014b.h(this.f4013a, "connect", "214");
            this.f4027o = (byte) 1;
            this.f4022j = kVar;
            String strK = this.f4015c.k();
            x2.k kVar2 = this.f4022j;
            int i4 = kVar2.f3979f;
            boolean z3 = kVar2.f3977d;
            int i5 = kVar2.f3974a;
            String str = kVar2.f3975b;
            char[] cArr = kVar2.f3976c;
            Objects.requireNonNull(kVar2);
            b3.d dVar = new b3.d(strK, i4, z3, i5, str, cArr, null, null);
            y2.b bVar = this.f4021i;
            long j4 = this.f4022j.f3974a;
            Objects.requireNonNull(bVar);
            bVar.f4049i = TimeUnit.SECONDS.toNanos(j4);
            y2.b bVar2 = this.f4021i;
            bVar2.f4050j = this.f4022j.f3977d;
            bVar2.f4053m = 10;
            bVar2.f4044d = new Vector(bVar2.f4053m);
            f fVar = this.f4025m;
            synchronized (fVar.f4118b) {
                fVar.f4117a.h("y2.f", "open", "310");
                fVar.f4120d = null;
            }
            RunnableC0058a runnableC0058a = new RunnableC0058a(this, sVar, dVar);
            ExecutorService executorService = this.f4030r;
            if (executorService == null) {
                new Thread(runnableC0058a).start();
            } else {
                executorService.execute(runnableC0058a);
            }
        }
    }

    public void c(b3.e eVar, long j4, s sVar) {
        synchronized (this.f4028p) {
            if (f()) {
                this.f4014b.h(this.f4013a, "disconnect", "223");
                throw q0.a.e(32111);
            }
            if (i()) {
                this.f4014b.h(this.f4013a, "disconnect", "211");
                throw q0.a.e(32101);
            }
            if (j()) {
                this.f4014b.h(this.f4013a, "disconnect", "219");
                throw q0.a.e(32102);
            }
            if (Thread.currentThread() == this.f4020h.f4078k) {
                this.f4014b.h(this.f4013a, "disconnect", "210");
                throw q0.a.e(32107);
            }
            this.f4014b.h(this.f4013a, "disconnect", "218");
            this.f4027o = (byte) 2;
            new b(eVar, j4, sVar).a();
        }
    }

    public final void d(Exception exc) {
        this.f4014b.b(this.f4013a, "handleRunException", "804", null, exc);
        l(null, !(exc instanceof x2.m) ? new x2.m(32109, exc) : (x2.m) exc);
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public void e(u uVar, s sVar) throws x2.m {
        this.f4014b.d(this.f4013a, "internalSend", "200", new Object[]{uVar.m(), uVar, sVar});
        q qVar = sVar.f3986a;
        if (qVar.f4165k != null) {
            this.f4014b.d(this.f4013a, "internalSend", "213", new Object[]{uVar.m(), uVar, sVar});
            throw new x2.m(32201);
        }
        qVar.f4165k = this.f4015c;
        try {
            this.f4021i.C(uVar, sVar);
        } catch (x2.m e4) {
            sVar.f3986a.f4165k = null;
            if (uVar instanceof b3.o) {
                y2.b bVar = this.f4021i;
                b3.o oVar = (b3.o) uVar;
                synchronized (bVar.f4056p) {
                    bVar.f4041a.d("y2.b", "undo", "618", new Object[]{Integer.valueOf(oVar.f295b), Integer.valueOf(oVar.f284g.f3983b)});
                    if (oVar.f284g.f3983b == 1) {
                        bVar.A.remove(Integer.valueOf(oVar.f295b));
                    } else {
                        bVar.f4066z.remove(Integer.valueOf(oVar.f295b));
                    }
                    bVar.f4044d.removeElement(oVar);
                    bVar.f4051k.remove(bVar.n(oVar));
                    bVar.f4046f.e(oVar);
                    if (oVar.f284g.f3983b > 0) {
                        bVar.y(oVar.f295b);
                        oVar.s(0);
                    }
                    bVar.b();
                }
            }
            throw e4;
        }
    }

    public boolean f() {
        boolean z3;
        synchronized (this.f4028p) {
            z3 = this.f4027o == 4;
        }
        return z3;
    }

    public boolean g() {
        boolean z3;
        synchronized (this.f4028p) {
            z3 = this.f4027o == 0;
        }
        return z3;
    }

    public boolean h() {
        boolean z3;
        synchronized (this.f4028p) {
            z3 = true;
            if (this.f4027o != 1) {
                z3 = false;
            }
        }
        return z3;
    }

    public boolean i() {
        boolean z3;
        synchronized (this.f4028p) {
            z3 = this.f4027o == 3;
        }
        return z3;
    }

    public boolean j() {
        boolean z3;
        synchronized (this.f4028p) {
            z3 = this.f4027o == 2;
        }
        return z3;
    }

    public void k(u uVar, s sVar) throws x2.m {
        if (g() || ((!g() && (uVar instanceof b3.d)) || (j() && (uVar instanceof b3.e)))) {
            e(uVar, sVar);
        } else {
            this.f4014b.h(this.f4013a, "sendNoWait", "208");
            throw q0.a.e(32104);
        }
    }

    public void l(s sVar, x2.m mVar) {
        s sVar2;
        c cVar;
        c cVar2;
        j jVar;
        synchronized (this.f4028p) {
            if (!this.f4026n && !this.f4029q && !f()) {
                this.f4026n = true;
                this.f4014b.h(this.f4013a, "shutdownConnection", "216");
                boolean z3 = g() || j();
                this.f4027o = (byte) 2;
                if (sVar != null && !sVar.f3986a.f4156b) {
                    sVar.f3986a.c(mVar);
                }
                c cVar3 = this.f4020h;
                if (cVar3 != null) {
                    cVar3.stop();
                }
                d dVar = this.f4018f;
                if (dVar != null) {
                    synchronized (dVar.f4092d) {
                        Future<?> future = dVar.f4094f;
                        if (future != null) {
                            future.cancel(true);
                        }
                        dVar.f4089a.h(d.f4088k, "stop", "850");
                        if (dVar.a()) {
                            dVar.f4091c = d.a.STOPPED;
                        }
                    }
                    while (dVar.a()) {
                        try {
                            Thread.sleep(100L);
                        } catch (Exception unused) {
                        }
                    }
                    dVar.f4089a.h(d.f4088k, "stop", "851");
                }
                try {
                    j[] jVarArr = this.f4017e;
                    if (jVarArr != null && (jVar = jVarArr[this.f4016d]) != null) {
                        jVar.stop();
                    }
                } catch (Exception unused2) {
                }
                this.f4025m.d(new x2.m(32102));
                this.f4014b.h(this.f4013a, "handleOldTokens", "222");
                if (sVar != null) {
                    try {
                        if (!sVar.f3986a.f4156b) {
                            if (((s) this.f4025m.f4118b.get(sVar.f3986a.f4164j)) == null) {
                                this.f4025m.i(sVar, sVar.f3986a.f4164j);
                            }
                        }
                    } catch (Exception unused3) {
                        sVar2 = null;
                    }
                }
                Enumeration enumerationElements = this.f4021i.z(mVar).elements();
                sVar2 = null;
                while (enumerationElements.hasMoreElements()) {
                    try {
                        s sVar3 = (s) enumerationElements.nextElement();
                        if (sVar3.f3986a.f4164j.equals("Disc") || sVar3.f3986a.f4164j.equals("Con")) {
                            sVar2 = sVar3;
                        } else {
                            this.f4020h.a(sVar3);
                        }
                    } catch (Exception unused4) {
                    }
                }
                try {
                    this.f4021i.g(mVar);
                    if (this.f4021i.f4050j) {
                        this.f4020h.f4071d.clear();
                    }
                } catch (Exception unused5) {
                }
                e eVar = this.f4019g;
                if (eVar != null) {
                    eVar.stop();
                }
                x2.q qVar = this.f4024l;
                if (qVar != null) {
                    t tVar = (t) qVar;
                    tVar.f3988a.d("x2.t", "stop", "661", null);
                    Timer timer = tVar.f3990c;
                    if (timer != null) {
                        timer.cancel();
                    }
                }
                try {
                    x2.j jVar2 = this.f4023k;
                    if (jVar2 != null) {
                        jVar2.close();
                    }
                } catch (Exception unused6) {
                }
                synchronized (this.f4028p) {
                    this.f4014b.h(this.f4013a, "shutdownConnection", "217");
                    this.f4027o = (byte) 3;
                    this.f4026n = false;
                }
                if (sVar2 != null && (cVar2 = this.f4020h) != null) {
                    cVar2.a(sVar2);
                }
                if (z3 && (cVar = this.f4020h) != null) {
                    Objects.requireNonNull(cVar);
                    try {
                        if (cVar.f4069b != null && mVar != null) {
                            cVar.f4068a.d(c.f4067q, "connectionLost", "708", new Object[]{mVar});
                            cVar.f4069b.b(mVar);
                        }
                        x2.h hVar = cVar.f4070c;
                        if (hVar != null && mVar != null) {
                            hVar.b(mVar);
                        }
                    } catch (Throwable th) {
                        cVar.f4068a.d(c.f4067q, "connectionLost", "720", new Object[]{th});
                    }
                }
                synchronized (this.f4028p) {
                    if (this.f4029q) {
                        try {
                            a(true);
                        } catch (Exception unused7) {
                        }
                    }
                }
            }
        }
    }
}
