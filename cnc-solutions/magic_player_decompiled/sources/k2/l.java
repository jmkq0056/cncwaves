package k2;

import java.util.ArrayDeque;
import java.util.Deque;
import java.util.Iterator;
import java.util.concurrent.ExecutorService;
import javax.annotation.Nullable;
import k2.w;

/* JADX INFO: loaded from: classes.dex */
public final class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @Nullable
    public ExecutorService f2168a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Deque<w.b> f2169b = new ArrayDeque();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Deque<w.b> f2170c = new ArrayDeque();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Deque<w> f2171d = new ArrayDeque();

    public final <T> void a(Deque<T> deque, T t3) {
        synchronized (this) {
            if (!deque.remove(t3)) {
                throw new AssertionError("Call wasn't in-flight!");
            }
        }
        b();
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0054  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean b() {
        /*
            r15 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            monitor-enter(r15)
            java.util.Deque<k2.w$b> r1 = r15.f2169b     // Catch: java.lang.Throwable -> Lc3
            java.util.Iterator r1 = r1.iterator()     // Catch: java.lang.Throwable -> Lc3
        Lc:
            boolean r2 = r1.hasNext()     // Catch: java.lang.Throwable -> Lc3
            if (r2 == 0) goto L37
            java.lang.Object r2 = r1.next()     // Catch: java.lang.Throwable -> Lc3
            k2.w$b r2 = (k2.w.b) r2     // Catch: java.lang.Throwable -> Lc3
            java.util.Deque<k2.w$b> r3 = r15.f2170c     // Catch: java.lang.Throwable -> Lc3
            int r3 = r3.size()     // Catch: java.lang.Throwable -> Lc3
            r4 = 64
            if (r3 < r4) goto L23
            goto L37
        L23:
            int r3 = r15.c(r2)     // Catch: java.lang.Throwable -> Lc3
            r4 = 5
            if (r3 < r4) goto L2b
            goto Lc
        L2b:
            r1.remove()     // Catch: java.lang.Throwable -> Lc3
            r0.add(r2)     // Catch: java.lang.Throwable -> Lc3
            java.util.Deque<k2.w$b> r3 = r15.f2170c     // Catch: java.lang.Throwable -> Lc3
            r3.add(r2)     // Catch: java.lang.Throwable -> Lc3
            goto Lc
        L37:
            monitor-enter(r15)     // Catch: java.lang.Throwable -> Lc3
            java.util.Deque<k2.w$b> r1 = r15.f2170c     // Catch: java.lang.Throwable -> Lc0
            int r1 = r1.size()     // Catch: java.lang.Throwable -> Lc0
            java.util.Deque<k2.w> r2 = r15.f2171d     // Catch: java.lang.Throwable -> Lc0
            int r2 = r2.size()     // Catch: java.lang.Throwable -> Lc0
            int r1 = r1 + r2
            monitor-exit(r15)     // Catch: java.lang.Throwable -> Lc3
            r2 = 0
            if (r1 <= 0) goto L4b
            r1 = 1
            goto L4c
        L4b:
            r1 = 0
        L4c:
            monitor-exit(r15)     // Catch: java.lang.Throwable -> Lc3
            int r3 = r0.size()
            r4 = 0
        L52:
            if (r4 >= r3) goto Lbf
            java.lang.Object r5 = r0.get(r4)
            k2.w$b r5 = (k2.w.b) r5
            monitor-enter(r15)
            java.util.concurrent.ExecutorService r6 = r15.f2168a     // Catch: java.lang.Throwable -> Lbc
            if (r6 != 0) goto L7d
            java.util.concurrent.ThreadPoolExecutor r6 = new java.util.concurrent.ThreadPoolExecutor     // Catch: java.lang.Throwable -> Lbc
            r8 = 0
            r9 = 2147483647(0x7fffffff, float:NaN)
            r10 = 60
            java.util.concurrent.TimeUnit r12 = java.util.concurrent.TimeUnit.SECONDS     // Catch: java.lang.Throwable -> Lbc
            java.util.concurrent.SynchronousQueue r13 = new java.util.concurrent.SynchronousQueue     // Catch: java.lang.Throwable -> Lbc
            r13.<init>()     // Catch: java.lang.Throwable -> Lbc
            java.lang.String r7 = "OkHttp Dispatcher"
            byte[] r14 = l2.c.f2437a     // Catch: java.lang.Throwable -> Lbc
            l2.d r14 = new l2.d     // Catch: java.lang.Throwable -> Lbc
            r14.<init>(r7, r2)     // Catch: java.lang.Throwable -> Lbc
            r7 = r6
            r7.<init>(r8, r9, r10, r12, r13, r14)     // Catch: java.lang.Throwable -> Lbc
            r15.f2168a = r6     // Catch: java.lang.Throwable -> Lbc
        L7d:
            java.util.concurrent.ExecutorService r6 = r15.f2168a     // Catch: java.lang.Throwable -> Lbc
            monitor-exit(r15)
            java.util.Objects.requireNonNull(r5)
            r6.execute(r5)     // Catch: java.lang.Throwable -> L87 java.util.concurrent.RejectedExecutionException -> L89
            goto Lad
        L87:
            r0 = move-exception
            goto Lb0
        L89:
            r6 = move-exception
            java.io.InterruptedIOException r7 = new java.io.InterruptedIOException     // Catch: java.lang.Throwable -> L87
            java.lang.String r8 = "executor rejected"
            r7.<init>(r8)     // Catch: java.lang.Throwable -> L87
            r7.initCause(r6)     // Catch: java.lang.Throwable -> L87
            k2.w r6 = k2.w.this     // Catch: java.lang.Throwable -> L87
            k2.n r6 = r6.f2262d     // Catch: java.lang.Throwable -> L87
            java.util.Objects.requireNonNull(r6)     // Catch: java.lang.Throwable -> L87
            k2.e r6 = r5.f2267b     // Catch: java.lang.Throwable -> L87
            k2.w r8 = k2.w.this     // Catch: java.lang.Throwable -> L87
            r6.b(r8, r7)     // Catch: java.lang.Throwable -> L87
            k2.w r6 = k2.w.this
            k2.u r6 = r6.f2259a
            k2.l r6 = r6.f2205a
            java.util.Deque<k2.w$b> r7 = r6.f2170c
            r6.a(r7, r5)
        Lad:
            int r4 = r4 + 1
            goto L52
        Lb0:
            k2.w r1 = k2.w.this
            k2.u r1 = r1.f2259a
            k2.l r1 = r1.f2205a
            java.util.Deque<k2.w$b> r2 = r1.f2170c
            r1.a(r2, r5)
            throw r0
        Lbc:
            r0 = move-exception
            monitor-exit(r15)
            throw r0
        Lbf:
            return r1
        Lc0:
            r0 = move-exception
            monitor-exit(r15)     // Catch: java.lang.Throwable -> Lc3
            throw r0     // Catch: java.lang.Throwable -> Lc3
        Lc3:
            r0 = move-exception
            monitor-exit(r15)     // Catch: java.lang.Throwable -> Lc3
            goto Lc7
        Lc6:
            throw r0
        Lc7:
            goto Lc6
        */
        throw new UnsupportedOperationException("Method not decompiled: k2.l.b():boolean");
    }

    public final int c(w.b bVar) {
        Iterator<w.b> it = this.f2170c.iterator();
        int i4 = 0;
        while (it.hasNext()) {
            w wVar = w.this;
            if (!wVar.f2264f && wVar.f2263e.f2269a.f2185d.equals(w.this.f2263e.f2269a.f2185d)) {
                i4++;
            }
        }
        return i4;
    }
}
