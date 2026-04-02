package y2;

import b3.u;

/* JADX INFO: loaded from: classes2.dex */
public class q {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public String f4164j;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public c3.b f4155a = c3.c.a("org.eclipse.paho.client.mqttv3.internal.nls.logcat", "y2.q");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public volatile boolean f4156b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f4157c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f4158d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Object f4159e = new Object();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Object f4160f = new Object();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public u f4161g = null;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public x2.m f4162h = null;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public String[] f4163i = null;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public x2.b f4165k = null;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public x2.a f4166l = null;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Object f4167m = null;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f4168n = false;

    public q(String str) {
        this.f4155a.i(str);
    }

    public void a(u uVar, x2.m mVar) {
        this.f4155a.d("y2.q", "markComplete", "404", new Object[]{this.f4164j, uVar, mVar});
        synchronized (this.f4159e) {
            boolean z3 = uVar instanceof b3.b;
            this.f4157c = true;
            this.f4161g = uVar;
            this.f4162h = mVar;
        }
    }

    public void b() {
        this.f4155a.d("y2.q", "notifyComplete", "404", new Object[]{this.f4164j, this.f4161g, this.f4162h});
        synchronized (this.f4159e) {
            if (this.f4162h == null && this.f4157c) {
                this.f4156b = true;
                this.f4157c = false;
            } else {
                this.f4157c = false;
            }
            this.f4159e.notifyAll();
        }
        synchronized (this.f4160f) {
            this.f4158d = true;
            this.f4160f.notifyAll();
        }
    }

    public void c(x2.m mVar) {
        synchronized (this.f4159e) {
            this.f4162h = mVar;
        }
    }

    public void d(long j4) throws x2.m {
        this.f4155a.d("y2.q", "waitForCompletion", "407", new Object[]{this.f4164j, Long.valueOf(j4), this});
        synchronized (this.f4159e) {
            c3.b bVar = this.f4155a;
            Object[] objArr = new Object[7];
            objArr[0] = this.f4164j;
            objArr[1] = Long.valueOf(j4);
            objArr[2] = Boolean.valueOf(this.f4158d);
            objArr[3] = Boolean.valueOf(this.f4156b);
            x2.m mVar = this.f4162h;
            objArr[4] = mVar == null ? "false" : "true";
            objArr[5] = this.f4161g;
            objArr[6] = this;
            bVar.b("y2.q", "waitForResponse", "400", objArr, mVar);
            while (!this.f4156b) {
                if (this.f4162h == null) {
                    try {
                        this.f4155a.d("y2.q", "waitForResponse", "408", new Object[]{this.f4164j, Long.valueOf(j4)});
                        if (j4 <= 0) {
                            this.f4159e.wait();
                        } else {
                            this.f4159e.wait(j4);
                        }
                    } catch (InterruptedException e4) {
                        this.f4162h = new x2.m(e4);
                    }
                }
                if (!this.f4156b) {
                    x2.m mVar2 = this.f4162h;
                    if (mVar2 != null) {
                        this.f4155a.b("y2.q", "waitForResponse", "401", null, mVar2);
                        throw this.f4162h;
                    }
                    if (j4 > 0) {
                        break;
                    }
                }
            }
        }
        this.f4155a.d("y2.q", "waitForResponse", "402", new Object[]{this.f4164j, this.f4161g});
        if (this.f4161g != null || this.f4156b) {
            x2.m mVar3 = this.f4162h;
            if (mVar3 != null) {
                throw mVar3;
            }
        } else {
            this.f4155a.d("y2.q", "waitForCompletion", "406", new Object[]{this.f4164j, this});
            x2.m mVar4 = new x2.m(32000);
            this.f4162h = mVar4;
            throw mVar4;
        }
    }

    public void e() {
        boolean z3;
        synchronized (this.f4160f) {
            synchronized (this.f4159e) {
                x2.m mVar = this.f4162h;
                if (mVar != null) {
                    throw mVar;
                }
            }
            while (true) {
                z3 = this.f4158d;
                if (z3) {
                    break;
                }
                try {
                    this.f4155a.d("y2.q", "waitUntilSent", "409", new Object[]{this.f4164j});
                    this.f4160f.wait();
                } catch (InterruptedException unused) {
                }
            }
            if (!z3) {
                x2.m mVar2 = this.f4162h;
                if (mVar2 != null) {
                    throw mVar2;
                }
                throw q0.a.e(6);
            }
        }
    }

    public String toString() {
        StringBuffer stringBufferA = v2.e.a("key=");
        stringBufferA.append(this.f4164j);
        stringBufferA.append(" ,topics=");
        if (this.f4163i != null) {
            int i4 = 0;
            while (true) {
                String[] strArr = this.f4163i;
                if (i4 >= strArr.length) {
                    break;
                }
                stringBufferA.append(strArr[i4]);
                stringBufferA.append(", ");
                i4++;
            }
        }
        stringBufferA.append(" ,usercontext=");
        stringBufferA.append(this.f4167m);
        stringBufferA.append(" ,isComplete=");
        stringBufferA.append(this.f4156b);
        stringBufferA.append(" ,isNotified=");
        stringBufferA.append(this.f4168n);
        stringBufferA.append(" ,exception=");
        stringBufferA.append(this.f4162h);
        stringBufferA.append(" ,actioncallback=");
        stringBufferA.append(this.f4166l);
        return stringBufferA.toString();
    }
}
