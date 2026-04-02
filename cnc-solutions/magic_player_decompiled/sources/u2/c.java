package u2;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class c extends x {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final long f3569h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final long f3570i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @Nullable
    public static c f3571j;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f3572e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Nullable
    public c f3573f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public long f3574g;

    /* JADX INFO: loaded from: classes2.dex */
    public static final class a extends Thread {
        public a() {
            super("Okio Watchdog");
            setDaemon(true);
        }

        /* JADX WARN: Code restructure failed: missing block: B:14:0x0015, code lost:
        
            r1.m();
         */
        @Override // java.lang.Thread, java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() {
            /*
                r3 = this;
            L0:
                java.lang.Class<u2.c> r0 = u2.c.class
                monitor-enter(r0)     // Catch: java.lang.InterruptedException -> L0
                u2.c r1 = u2.c.h()     // Catch: java.lang.Throwable -> L19
                if (r1 != 0) goto Lb
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L19
                goto L0
            Lb:
                u2.c r2 = u2.c.f3571j     // Catch: java.lang.Throwable -> L19
                if (r1 != r2) goto L14
                r1 = 0
                u2.c.f3571j = r1     // Catch: java.lang.Throwable -> L19
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L19
                return
            L14:
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L19
                r1.m()     // Catch: java.lang.InterruptedException -> L0
                goto L0
            L19:
                r1 = move-exception
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L19
                goto L1d
            L1c:
                throw r1
            L1d:
                goto L1c
            */
            throw new UnsupportedOperationException("Method not decompiled: u2.c.a.run():void");
        }
    }

    static {
        long millis = TimeUnit.SECONDS.toMillis(60L);
        f3569h = millis;
        f3570i = TimeUnit.MILLISECONDS.toNanos(millis);
    }

    @Nullable
    public static c h() throws InterruptedException {
        c cVar = f3571j.f3573f;
        if (cVar == null) {
            long jNanoTime = System.nanoTime();
            c.class.wait(f3569h);
            if (f3571j.f3573f != null || System.nanoTime() - jNanoTime < f3570i) {
                return null;
            }
            return f3571j;
        }
        long jNanoTime2 = cVar.f3574g - System.nanoTime();
        if (jNanoTime2 > 0) {
            long j4 = jNanoTime2 / 1000000;
            c.class.wait(j4, (int) (jNanoTime2 - (1000000 * j4)));
            return null;
        }
        f3571j.f3573f = cVar.f3573f;
        cVar.f3573f = null;
        return cVar;
    }

    public final void i() {
        c cVar;
        if (this.f3572e) {
            throw new IllegalStateException("Unbalanced enter/exit");
        }
        long j4 = this.f3624c;
        boolean z3 = this.f3622a;
        if (j4 != 0 || z3) {
            this.f3572e = true;
            synchronized (c.class) {
                if (f3571j == null) {
                    f3571j = new c();
                    new a().start();
                }
                long jNanoTime = System.nanoTime();
                if (j4 != 0 && z3) {
                    this.f3574g = Math.min(j4, c() - jNanoTime) + jNanoTime;
                } else if (j4 != 0) {
                    this.f3574g = j4 + jNanoTime;
                } else {
                    if (!z3) {
                        throw new AssertionError();
                    }
                    this.f3574g = c();
                }
                long j5 = this.f3574g - jNanoTime;
                c cVar2 = f3571j;
                while (true) {
                    cVar = cVar2.f3573f;
                    if (cVar == null || j5 < cVar.f3574g - jNanoTime) {
                        break;
                    } else {
                        cVar2 = cVar;
                    }
                }
                this.f3573f = cVar;
                cVar2.f3573f = this;
                if (cVar2 == f3571j) {
                    c.class.notify();
                }
            }
        }
    }

    public final void j(boolean z3) throws IOException {
        if (k() && z3) {
            throw l(null);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0013, code lost:
    
        r2.f3573f = r4.f3573f;
        r4.f3573f = null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean k() {
        /*
            r4 = this;
            boolean r0 = r4.f3572e
            r1 = 0
            if (r0 != 0) goto L6
            return r1
        L6:
            r4.f3572e = r1
            java.lang.Class<u2.c> r0 = u2.c.class
            monitor-enter(r0)
            u2.c r2 = u2.c.f3571j     // Catch: java.lang.Throwable -> L21
        Ld:
            if (r2 == 0) goto L1e
            u2.c r3 = r2.f3573f     // Catch: java.lang.Throwable -> L21
            if (r3 != r4) goto L1c
            u2.c r3 = r4.f3573f     // Catch: java.lang.Throwable -> L21
            r2.f3573f = r3     // Catch: java.lang.Throwable -> L21
            r2 = 0
            r4.f3573f = r2     // Catch: java.lang.Throwable -> L21
            monitor-exit(r0)
            goto L20
        L1c:
            r2 = r3
            goto Ld
        L1e:
            r1 = 1
            monitor-exit(r0)
        L20:
            return r1
        L21:
            r1 = move-exception
            monitor-exit(r0)
            goto L25
        L24:
            throw r1
        L25:
            goto L24
        */
        throw new UnsupportedOperationException("Method not decompiled: u2.c.k():boolean");
    }

    public IOException l(@Nullable IOException iOException) {
        InterruptedIOException interruptedIOException = new InterruptedIOException("timeout");
        if (iOException != null) {
            interruptedIOException.initCause(iOException);
        }
        return interruptedIOException;
    }

    public void m() {
    }
}
