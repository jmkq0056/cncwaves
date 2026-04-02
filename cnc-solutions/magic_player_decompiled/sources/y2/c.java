package y2;

import b3.u;
import java.util.Hashtable;
import java.util.Vector;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import x2.s;

/* JADX INFO: loaded from: classes2.dex */
public class c implements Runnable {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final String f4067q = c.class.getName();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final c3.b f4068a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public x2.g f4069b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public x2.h f4070c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Hashtable<String, x2.d> f4071d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public y2.a f4072e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Vector<u> f4073f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final Vector<s> f4074g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public a f4075h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public a f4076i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Object f4077j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Thread f4078k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public String f4079l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Future<?> f4080m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final Object f4081n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final Object f4082o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public b f4083p;

    public enum a {
        STOPPED,
        RUNNING,
        QUIESCING;

        /* JADX INFO: renamed from: values, reason: to resolve conflict with enum method */
        public static a[] valuesCustom() {
            a[] aVarArrValuesCustom = values();
            int length = aVarArrValuesCustom.length;
            a[] aVarArr = new a[length];
            System.arraycopy(aVarArrValuesCustom, 0, aVarArr, 0, length);
            return aVarArr;
        }
    }

    public c(y2.a aVar) {
        c3.b bVarA = c3.c.a("org.eclipse.paho.client.mqttv3.internal.nls.logcat", f4067q);
        this.f4068a = bVarA;
        a aVar2 = a.STOPPED;
        this.f4075h = aVar2;
        this.f4076i = aVar2;
        this.f4077j = new Object();
        this.f4081n = new Object();
        this.f4082o = new Object();
        this.f4072e = aVar;
        this.f4073f = new Vector<>(10);
        this.f4074g = new Vector<>(10);
        this.f4071d = new Hashtable<>();
        bVarA.i(aVar.f4015c.k());
    }

    public void a(s sVar) {
        if (g()) {
            this.f4074g.addElement(sVar);
            synchronized (this.f4081n) {
                this.f4068a.d(f4067q, "asyncOperationComplete", "715", new Object[]{sVar.f3986a.f4164j});
                this.f4081n.notifyAll();
            }
            return;
        }
        try {
            c(sVar);
        } catch (Throwable th) {
            this.f4068a.b(f4067q, "asyncOperationComplete", "719", null, th);
            this.f4072e.l(null, new x2.m(th));
        }
    }

    public void b(s sVar) {
        q qVar = sVar.f3986a;
        x2.a aVar = qVar.f4166l;
        if (aVar != null) {
            if (qVar.f4162h == null) {
                this.f4068a.d(f4067q, "fireActionEvent", "716", new Object[]{qVar.f4164j});
                aVar.b(sVar);
            } else {
                this.f4068a.d(f4067q, "fireActionEvent", "716", new Object[]{qVar.f4164j});
                aVar.a(sVar, sVar.f3986a.f4162h);
            }
        }
    }

    public final void c(s sVar) {
        synchronized (sVar) {
            this.f4068a.d(f4067q, "handleActionComplete", "705", new Object[]{sVar.f3986a.f4164j});
            if (sVar.f3986a.f4156b) {
                this.f4083p.p(sVar);
            }
            sVar.f3986a.b();
            q qVar = sVar.f3986a;
            if (!qVar.f4168n) {
                if (this.f4069b != null && (sVar instanceof x2.l) && qVar.f4156b) {
                    this.f4069b.c((x2.l) sVar);
                }
                b(sVar);
            }
            if (sVar.f3986a.f4156b && (sVar instanceof x2.l)) {
                sVar.f3986a.f4168n = true;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:60:0x013b  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0159  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0160 A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r7v12 */
    /* JADX WARN: Type inference failed for: r7v16 */
    /* JADX WARN: Type inference failed for: r7v18 */
    /* JADX WARN: Type inference failed for: r7v19 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v20 */
    /* JADX WARN: Type inference failed for: r7v21 */
    /* JADX WARN: Type inference failed for: r7v3, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r7v5 */
    /* JADX WARN: Type inference failed for: r7v6 */
    /* JADX WARN: Type inference failed for: r7v7 */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1, types: [boolean] */
    /* JADX WARN: Type inference failed for: r8v2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void d(b3.o r17) throws x2.m {
        /*
            Method dump skipped, instruction units count: 356
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: y2.c.d(b3.o):void");
    }

    public boolean e() {
        return f() && this.f4074g.size() == 0 && this.f4073f.size() == 0;
    }

    public boolean f() {
        boolean z3;
        synchronized (this.f4077j) {
            z3 = this.f4075h == a.QUIESCING;
        }
        return z3;
    }

    public boolean g() {
        boolean z3;
        synchronized (this.f4077j) {
            a aVar = this.f4075h;
            a aVar2 = a.RUNNING;
            z3 = (aVar == aVar2 || aVar == a.QUIESCING) && this.f4076i == aVar2;
        }
        return z3;
    }

    public void h(b3.o oVar) {
        if (this.f4069b != null || this.f4071d.size() > 0) {
            synchronized (this.f4082o) {
                while (g() && !f() && this.f4073f.size() >= 10) {
                    try {
                        this.f4068a.h(f4067q, "messageArrived", "709");
                        this.f4082o.wait(200L);
                    } catch (InterruptedException unused) {
                    }
                }
            }
            if (f()) {
                return;
            }
            this.f4073f.addElement(oVar);
            synchronized (this.f4081n) {
                this.f4068a.h(f4067q, "messageArrived", "710");
                this.f4081n.notifyAll();
            }
        }
    }

    public void i() {
        synchronized (this.f4077j) {
            if (this.f4075h == a.RUNNING) {
                this.f4075h = a.QUIESCING;
            }
        }
        synchronized (this.f4082o) {
            this.f4068a.h(f4067q, "quiesce", "711");
            this.f4082o.notifyAll();
        }
    }

    public void j(String str, ExecutorService executorService) {
        this.f4079l = str;
        synchronized (this.f4077j) {
            if (this.f4075h == a.STOPPED) {
                this.f4073f.clear();
                this.f4074g.clear();
                this.f4076i = a.RUNNING;
                if (executorService == null) {
                    new Thread(this).start();
                } else {
                    this.f4080m = executorService.submit(this);
                }
            }
        }
        while (!g()) {
            try {
                Thread.sleep(100L);
            } catch (Exception unused) {
            }
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        s sVarElementAt;
        b3.o oVar;
        Thread threadCurrentThread = Thread.currentThread();
        this.f4078k = threadCurrentThread;
        threadCurrentThread.setName(this.f4079l);
        synchronized (this.f4077j) {
            this.f4075h = a.RUNNING;
        }
        while (g()) {
            try {
                try {
                    synchronized (this.f4081n) {
                        if (g() && this.f4073f.isEmpty() && this.f4074g.isEmpty()) {
                            this.f4068a.h(f4067q, "run", "704");
                            this.f4081n.wait();
                        }
                    }
                } catch (Throwable th) {
                    try {
                        c3.b bVar = this.f4068a;
                        String str = f4067q;
                        bVar.b(str, "run", "714", null, th);
                        this.f4072e.l(null, new x2.m(th));
                        synchronized (this.f4082o) {
                            this.f4068a.h(str, "run", "706");
                            this.f4082o.notifyAll();
                        }
                    } catch (Throwable th2) {
                        synchronized (this.f4082o) {
                            this.f4068a.h(f4067q, "run", "706");
                            this.f4082o.notifyAll();
                            throw th2;
                        }
                    }
                }
            } catch (InterruptedException unused) {
            }
            if (g()) {
                synchronized (this.f4074g) {
                    if (this.f4074g.isEmpty()) {
                        sVarElementAt = null;
                    } else {
                        sVarElementAt = this.f4074g.elementAt(0);
                        this.f4074g.removeElementAt(0);
                    }
                }
                if (sVarElementAt != null) {
                    c(sVarElementAt);
                }
                synchronized (this.f4073f) {
                    if (this.f4073f.isEmpty()) {
                        oVar = null;
                    } else {
                        oVar = (b3.o) this.f4073f.elementAt(0);
                        this.f4073f.removeElementAt(0);
                    }
                }
                if (oVar != null) {
                    d(oVar);
                }
            }
            if (f()) {
                this.f4083p.b();
            }
            synchronized (this.f4082o) {
                this.f4068a.h(f4067q, "run", "706");
                this.f4082o.notifyAll();
            }
        }
        synchronized (this.f4077j) {
            this.f4075h = a.STOPPED;
        }
        this.f4078k = null;
    }

    public void stop() {
        synchronized (this.f4077j) {
            Future<?> future = this.f4080m;
            if (future != null) {
                future.cancel(true);
            }
        }
        if (g()) {
            c3.b bVar = this.f4068a;
            String str = f4067q;
            bVar.h(str, "stop", "700");
            synchronized (this.f4077j) {
                this.f4076i = a.STOPPED;
            }
            if (!Thread.currentThread().equals(this.f4078k)) {
                synchronized (this.f4081n) {
                    this.f4068a.h(str, "stop", "701");
                    this.f4081n.notifyAll();
                }
                while (g()) {
                    try {
                        Thread.sleep(100L);
                    } catch (Exception unused) {
                    }
                    this.f4083p.q();
                }
            }
            this.f4068a.h(f4067q, "stop", "703");
        }
    }
}
