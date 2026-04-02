package y2;

import b3.u;
import java.io.IOException;
import java.io.OutputStream;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import x2.s;

/* JADX INFO: loaded from: classes2.dex */
public class e implements Runnable {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final String f4103k = e.class.getName();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public c3.b f4104a = c3.c.a("org.eclipse.paho.client.mqttv3.internal.nls.logcat", f4103k);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public a f4105b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public a f4106c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Object f4107d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f4108e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Future<?> f4109f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public b f4110g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public b3.g f4111h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public y2.a f4112i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public f f4113j;

    public enum a {
        STOPPED,
        RUNNING,
        /* JADX INFO: Fake field, exist only in values array */
        STARTING;

        /* JADX INFO: renamed from: values, reason: to resolve conflict with enum method */
        public static a[] valuesCustom() {
            a[] aVarArrValuesCustom = values();
            int length = aVarArrValuesCustom.length;
            a[] aVarArr = new a[length];
            System.arraycopy(aVarArrValuesCustom, 0, aVarArr, 0, length);
            return aVarArr;
        }
    }

    public e(y2.a aVar, b bVar, f fVar, OutputStream outputStream) {
        a aVar2 = a.STOPPED;
        this.f4105b = aVar2;
        this.f4106c = aVar2;
        this.f4107d = new Object();
        this.f4110g = null;
        this.f4112i = null;
        this.f4113j = null;
        this.f4111h = new b3.g(bVar, outputStream);
        this.f4112i = aVar;
        this.f4110g = bVar;
        this.f4113j = fVar;
        this.f4104a.i(aVar.f4015c.k());
    }

    public final void a(Exception exc) {
        this.f4104a.b(f4103k, "handleRunException", "804", null, exc);
        x2.m mVar = !(exc instanceof x2.m) ? new x2.m(32109, exc) : (x2.m) exc;
        synchronized (this.f4107d) {
            this.f4106c = a.STOPPED;
        }
        this.f4112i.l(null, mVar);
    }

    public boolean b() {
        boolean z3;
        synchronized (this.f4107d) {
            a aVar = this.f4105b;
            a aVar2 = a.RUNNING;
            z3 = aVar == aVar2 && this.f4106c == aVar2;
        }
        return z3;
    }

    public void c(String str, ExecutorService executorService) {
        this.f4108e = str;
        synchronized (this.f4107d) {
            a aVar = this.f4105b;
            a aVar2 = a.STOPPED;
            if (aVar == aVar2 && this.f4106c == aVar2) {
                this.f4106c = a.RUNNING;
                if (executorService == null) {
                    new Thread(this).start();
                } else {
                    this.f4109f = executorService.submit(this);
                }
            }
        }
        while (!b()) {
            try {
                Thread.sleep(100L);
            } catch (Exception unused) {
            }
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        a aVar;
        a aVar2 = a.RUNNING;
        a aVar3 = a.STOPPED;
        Thread.currentThread().setName(this.f4108e);
        synchronized (this.f4107d) {
            this.f4105b = aVar2;
        }
        try {
            synchronized (this.f4107d) {
                aVar = this.f4106c;
            }
            while (aVar == aVar2 && this.f4111h != null) {
                try {
                    u uVarH = this.f4110g.h();
                    if (uVarH != null) {
                        this.f4104a.d(f4103k, "run", "802", new Object[]{uVarH.m(), uVarH});
                        if (uVarH instanceof b3.b) {
                            this.f4111h.B(uVarH);
                            this.f4111h.f283c.flush();
                        } else {
                            s sVarC = uVarH.f297d;
                            if (sVarC == null) {
                                sVarC = this.f4113j.c(uVarH);
                            }
                            if (sVarC != null) {
                                synchronized (sVarC) {
                                    this.f4111h.B(uVarH);
                                    try {
                                        this.f4111h.f283c.flush();
                                    } catch (IOException e4) {
                                        if (!(uVarH instanceof b3.e)) {
                                            throw e4;
                                        }
                                    }
                                    this.f4110g.v(uVarH);
                                }
                            }
                        }
                    } else {
                        this.f4104a.h(f4103k, "run", "803");
                        synchronized (this.f4107d) {
                            this.f4106c = aVar3;
                        }
                    }
                } catch (x2.m e5) {
                    a(e5);
                } catch (Exception e6) {
                    a(e6);
                }
                synchronized (this.f4107d) {
                    aVar = this.f4106c;
                }
            }
            synchronized (this.f4107d) {
                this.f4105b = aVar3;
            }
            this.f4104a.h(f4103k, "run", "805");
        } catch (Throwable th) {
            synchronized (this.f4107d) {
                this.f4105b = aVar3;
                throw th;
            }
        }
    }

    public void stop() {
        if (b()) {
            synchronized (this.f4107d) {
                Future<?> future = this.f4109f;
                if (future != null) {
                    future.cancel(true);
                }
                this.f4104a.h(f4103k, "stop", "800");
                if (b()) {
                    this.f4106c = a.STOPPED;
                    this.f4110g.q();
                }
            }
            while (b()) {
                try {
                    Thread.sleep(100L);
                } catch (Exception unused) {
                }
                this.f4110g.q();
            }
            this.f4104a.h(f4103k, "stop", "801");
        }
    }
}
