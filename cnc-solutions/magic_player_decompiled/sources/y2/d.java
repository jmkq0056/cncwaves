package y2;

import b3.u;
import java.io.IOException;
import java.io.InputStream;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import x2.s;

/* JADX INFO: loaded from: classes2.dex */
public class d implements Runnable {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final String f4088k = d.class.getName();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public c3.b f4089a = c3.c.a("org.eclipse.paho.client.mqttv3.internal.nls.logcat", f4088k);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public a f4090b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public a f4091c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Object f4092d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f4093e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Future<?> f4094f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public b f4095g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public y2.a f4096h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public b3.f f4097i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public f f4098j;

    public enum a {
        STOPPED,
        RUNNING,
        /* JADX INFO: Fake field, exist only in values array */
        STARTING,
        RECEIVING;

        /* JADX INFO: renamed from: values, reason: to resolve conflict with enum method */
        public static a[] valuesCustom() {
            a[] aVarArrValuesCustom = values();
            int length = aVarArrValuesCustom.length;
            a[] aVarArr = new a[length];
            System.arraycopy(aVarArrValuesCustom, 0, aVarArr, 0, length);
            return aVarArr;
        }
    }

    public d(y2.a aVar, b bVar, f fVar, InputStream inputStream) {
        a aVar2 = a.STOPPED;
        this.f4090b = aVar2;
        this.f4091c = aVar2;
        this.f4092d = new Object();
        this.f4095g = null;
        this.f4096h = null;
        this.f4098j = null;
        this.f4097i = new b3.f(bVar, inputStream);
        this.f4096h = aVar;
        this.f4095g = bVar;
        this.f4098j = fVar;
        this.f4089a.i(aVar.f4015c.k());
    }

    public boolean a() {
        boolean z3;
        synchronized (this.f4092d) {
            a aVar = this.f4090b;
            a aVar2 = a.RUNNING;
            z3 = (aVar == aVar2 || aVar == a.RECEIVING) && this.f4091c == aVar2;
        }
        return z3;
    }

    public void b(String str, ExecutorService executorService) {
        this.f4093e = str;
        this.f4089a.h(f4088k, "start", "855");
        synchronized (this.f4092d) {
            a aVar = this.f4090b;
            a aVar2 = a.STOPPED;
            if (aVar == aVar2 && this.f4091c == aVar2) {
                this.f4091c = a.RUNNING;
                if (executorService == null) {
                    new Thread(this).start();
                } else {
                    this.f4094f = executorService.submit(this);
                }
            }
        }
        while (!a()) {
            try {
                Thread.sleep(100L);
            } catch (Exception unused) {
            }
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        a aVar;
        a aVar2;
        a aVar3 = a.STOPPED;
        a aVar4 = a.RUNNING;
        Thread.currentThread().setName(this.f4093e);
        synchronized (this.f4092d) {
            this.f4090b = aVar4;
        }
        try {
            synchronized (this.f4092d) {
                aVar = this.f4091c;
            }
            s sVarC = null;
            while (aVar == aVar4 && this.f4097i != null) {
                try {
                    try {
                        try {
                            c3.b bVar = this.f4089a;
                            String str = f4088k;
                            bVar.h(str, "run", "852");
                            if (this.f4097i.available() > 0) {
                                synchronized (this.f4092d) {
                                    this.f4090b = a.RECEIVING;
                                }
                            }
                            u uVarC = this.f4097i.C();
                            synchronized (this.f4092d) {
                                this.f4090b = aVar4;
                            }
                            if (uVarC instanceof b3.b) {
                                sVarC = this.f4098j.c(uVarC);
                                if (sVarC != null) {
                                    synchronized (sVarC) {
                                        this.f4095g.r((b3.b) uVarC);
                                    }
                                } else {
                                    if (!(uVarC instanceof b3.m) && !(uVarC instanceof b3.l) && !(uVarC instanceof b3.k)) {
                                        throw new x2.m(6);
                                    }
                                    this.f4089a.h(str, "run", "857");
                                }
                            } else if (uVarC != null) {
                                this.f4095g.t(uVarC);
                            } else if (!this.f4096h.g() && !this.f4096h.h()) {
                                throw new IOException("Connection is lost.");
                            }
                            synchronized (this.f4092d) {
                                this.f4090b = aVar4;
                            }
                        } catch (x2.m e4) {
                            this.f4089a.b(f4088k, "run", "856", null, e4);
                            synchronized (this.f4092d) {
                                this.f4091c = aVar3;
                                this.f4096h.l(sVarC, e4);
                                synchronized (this.f4092d) {
                                    this.f4090b = aVar4;
                                }
                            }
                        }
                    } catch (IOException e5) {
                        this.f4089a.h(f4088k, "run", "853");
                        if (this.f4091c != aVar3) {
                            synchronized (this.f4092d) {
                                this.f4091c = aVar3;
                                if (!this.f4096h.j()) {
                                    this.f4096h.l(sVarC, new x2.m(32109, e5));
                                }
                            }
                        }
                        synchronized (this.f4092d) {
                            this.f4090b = aVar4;
                        }
                    }
                    synchronized (this.f4092d) {
                        aVar2 = this.f4091c;
                    }
                    aVar = aVar2;
                } catch (Throwable th) {
                    synchronized (this.f4092d) {
                        this.f4090b = aVar4;
                        throw th;
                    }
                }
            }
            synchronized (this.f4092d) {
                this.f4090b = aVar3;
            }
            this.f4089a.h(f4088k, "run", "854");
        } catch (Throwable th2) {
            synchronized (this.f4092d) {
                this.f4090b = aVar3;
                throw th2;
            }
        }
    }
}
