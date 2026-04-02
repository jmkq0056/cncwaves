package k3;

import android.os.Handler;
import android.os.Message;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public class b implements Runnable, Handler.Callback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final BlockingQueue<a> f2285a = new LinkedBlockingQueue();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f2286b;

    static {
        Executors.newCachedThreadPool();
    }

    public final void a(a aVar) {
        System.currentTimeMillis();
        try {
            throw null;
        } catch (Throwable th) {
            aVar.f2284a = th;
            System.currentTimeMillis();
            b(aVar);
        }
    }

    public final void b(a aVar) {
        synchronized (aVar) {
            aVar.notifyAll();
        }
        synchronized (this) {
            int i4 = this.f2286b + 1;
            this.f2286b = i4;
            if (i4 == 0) {
                notifyAll();
            }
        }
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        return false;
    }

    @Override // java.lang.Runnable
    public void run() {
        a aVarPoll;
        while (true) {
            try {
                aVarPoll = this.f2285a.poll(1L, TimeUnit.SECONDS);
            } catch (InterruptedException e4) {
                q0.a.A(Thread.currentThread().getName() + " was interruppted", e4);
                return;
            }
            if (aVarPoll == null) {
                synchronized (this) {
                    aVarPoll = this.f2285a.poll();
                    if (aVarPoll == null) {
                        return;
                    }
                    q0.a.A(Thread.currentThread().getName() + " was interruppted", e4);
                    return;
                }
            }
            a(aVarPoll);
        }
    }
}
