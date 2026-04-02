package g3;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;

/* JADX INFO: loaded from: classes2.dex */
public class f extends Handler implements k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final s0.d f1761a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f1762b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final c f1763c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f1764d;

    public f(c cVar, Looper looper, int i4) {
        super(looper);
        this.f1763c = cVar;
        this.f1762b = i4;
        this.f1761a = new s0.d(1);
    }

    @Override // g3.k
    public void a(o oVar, Object obj) {
        j jVarA = j.a(oVar, obj);
        synchronized (this) {
            this.f1761a.a(jVarA);
            if (!this.f1764d) {
                this.f1764d = true;
                if (!sendMessage(obtainMessage())) {
                    throw new e("Could not send handler message");
                }
            }
        }
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        try {
            long jUptimeMillis = SystemClock.uptimeMillis();
            do {
                j jVarC = this.f1761a.c();
                if (jVarC == null) {
                    synchronized (this) {
                        jVarC = this.f1761a.c();
                        if (jVarC == null) {
                            this.f1764d = false;
                            return;
                        }
                    }
                }
                this.f1763c.c(jVarC);
            } while (SystemClock.uptimeMillis() - jUptimeMillis < this.f1762b);
            if (!sendMessage(obtainMessage())) {
                throw new e("Could not send handler message");
            }
            this.f1764d = true;
        } finally {
            this.f1764d = false;
        }
    }
}
