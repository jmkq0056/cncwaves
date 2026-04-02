package b2;

import android.os.Handler;
import android.os.Message;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import java.lang.ref.WeakReference;
import java.util.Objects;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: loaded from: classes2.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final b f233a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Lock f234b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @VisibleForTesting
    public final a f235c;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        @Nullable
        public a f236a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        @Nullable
        public a f237b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        @NonNull
        public final Runnable f238c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        @NonNull
        public final c f239d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        @NonNull
        public Lock f240e;

        public a(@NonNull Lock lock, @NonNull Runnable runnable) {
            this.f238c = runnable;
            this.f240e = lock;
            this.f239d = new c(new WeakReference(runnable), new WeakReference(this));
        }

        public c a() {
            this.f240e.lock();
            try {
                a aVar = this.f237b;
                if (aVar != null) {
                    aVar.f236a = this.f236a;
                }
                a aVar2 = this.f236a;
                if (aVar2 != null) {
                    aVar2.f237b = aVar;
                }
                this.f237b = null;
                this.f236a = null;
                this.f240e.unlock();
                return this.f239d;
            } catch (Throwable th) {
                this.f240e.unlock();
                throw th;
            }
        }
    }

    public static class b extends Handler {
        @Override // android.os.Handler
        public void handleMessage(@NonNull Message message) {
        }
    }

    public static class c implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final WeakReference<Runnable> f241a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final WeakReference<a> f242b;

        public c(WeakReference<Runnable> weakReference, WeakReference<a> weakReference2) {
            this.f241a = weakReference;
            this.f242b = weakReference2;
        }

        @Override // java.lang.Runnable
        public void run() {
            Runnable runnable = this.f241a.get();
            a aVar = this.f242b.get();
            if (aVar != null) {
                aVar.a();
            }
            if (runnable != null) {
                runnable.run();
            }
        }
    }

    public d() {
        ReentrantLock reentrantLock = new ReentrantLock();
        this.f234b = reentrantLock;
        this.f235c = new a(reentrantLock, null);
        this.f233a = new b();
    }

    public final boolean a(Runnable runnable, long j4) {
        b bVar = this.f233a;
        Objects.requireNonNull(runnable, "Runnable can't be null");
        a aVar = new a(this.f234b, runnable);
        a aVar2 = this.f235c;
        aVar2.f240e.lock();
        try {
            a aVar3 = aVar2.f236a;
            if (aVar3 != null) {
                aVar3.f237b = aVar;
            }
            aVar.f236a = aVar3;
            aVar2.f236a = aVar;
            aVar.f237b = aVar2;
            aVar2.f240e.unlock();
            return bVar.postDelayed(aVar.f239d, j4);
        } catch (Throwable th) {
            aVar2.f240e.unlock();
            throw th;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x000f, code lost:
    
        r4 = r1.a();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void b(java.lang.Runnable r4) {
        /*
            r3 = this;
            b2.d$a r0 = r3.f235c
            java.util.concurrent.locks.Lock r1 = r0.f240e
            r1.lock()
            b2.d$a r1 = r0.f236a     // Catch: java.lang.Throwable -> L2a
        L9:
            if (r1 == 0) goto L1c
            java.lang.Runnable r2 = r1.f238c     // Catch: java.lang.Throwable -> L2a
            if (r2 != r4) goto L19
            b2.d$c r4 = r1.a()     // Catch: java.lang.Throwable -> L2a
            java.util.concurrent.locks.Lock r0 = r0.f240e
            r0.unlock()
            goto L22
        L19:
            b2.d$a r1 = r1.f236a     // Catch: java.lang.Throwable -> L2a
            goto L9
        L1c:
            java.util.concurrent.locks.Lock r4 = r0.f240e
            r4.unlock()
            r4 = 0
        L22:
            if (r4 == 0) goto L29
            b2.d$b r0 = r3.f233a
            r0.removeCallbacks(r4)
        L29:
            return
        L2a:
            r4 = move-exception
            java.util.concurrent.locks.Lock r0 = r0.f240e
            r0.unlock()
            goto L32
        L31:
            throw r4
        L32:
            goto L31
        */
        throw new UnsupportedOperationException("Method not decompiled: b2.d.b(java.lang.Runnable):void");
    }
}
