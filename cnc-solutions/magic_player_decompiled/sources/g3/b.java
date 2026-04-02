package g3;

import java.util.logging.Level;

/* JADX INFO: loaded from: classes2.dex */
public final class b implements Runnable, k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final s0.d f1732a = new s0.d(1);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final c f1733b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile boolean f1734c;

    public b(c cVar) {
        this.f1733b = cVar;
    }

    @Override // g3.k
    public void a(o oVar, Object obj) {
        j jVarA = j.a(oVar, obj);
        synchronized (this) {
            this.f1732a.a(jVarA);
            if (!this.f1734c) {
                this.f1734c = true;
                this.f1733b.f1747j.execute(this);
            }
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        j jVarD;
        while (true) {
            try {
                jVarD = this.f1732a.d(1000);
            } catch (InterruptedException e4) {
                this.f1733b.f1753p.b(Level.WARNING, Thread.currentThread().getName() + " was interruppted", e4);
                return;
            } finally {
                this.f1734c = false;
            }
            if (jVarD == null) {
                synchronized (this) {
                    jVarD = this.f1732a.c();
                    if (jVarD == null) {
                        return;
                    }
                    this.f1734c = false;
                }
            }
            this.f1733b.c(jVarD);
        }
    }
}
