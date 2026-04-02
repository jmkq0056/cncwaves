package l;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import java.io.File;
import java.io.IOException;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static volatile a f2287g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Handler f2288a = new HandlerC0028a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AtomicBoolean f2289b = new AtomicBoolean();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Thread f2290c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public long f2291d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f2292e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f2293f;

    /* JADX INFO: renamed from: l.a$a, reason: collision with other inner class name */
    public static class HandlerC0028a extends Handler {
        public HandlerC0028a() {
            super(Looper.getMainLooper());
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            a aVarA = a.a();
            Objects.requireNonNull(aVarA);
            aVarA.f2292e = SystemClock.elapsedRealtime();
        }
    }

    public static a a() {
        if (f2287g == null) {
            synchronized (a.class) {
                if (f2287g == null) {
                    f2287g = new a();
                }
            }
        }
        return f2287g;
    }

    public void b(boolean z3) {
        File fileL = e.l();
        if (z3) {
            if (!fileL.exists()) {
                try {
                    fileL.createNewFile();
                } catch (IOException e4) {
                    e4.printStackTrace();
                }
            }
        } else if (fileL.exists()) {
            fileL.delete();
        }
        this.f2289b.set(z3);
        if (!z3) {
            s.h.a("disable app monitor.");
            Thread thread = this.f2290c;
            if (thread != null) {
                thread.interrupt();
                this.f2290c = null;
                return;
            }
            return;
        }
        s.h.a("enable app monitor.");
        Thread thread2 = this.f2290c;
        if (thread2 == null || !thread2.isAlive()) {
            Thread thread3 = new Thread(new d.d(this));
            this.f2290c = thread3;
            thread3.setName("MainLoopMonitor");
            this.f2290c.start();
        }
    }
}
