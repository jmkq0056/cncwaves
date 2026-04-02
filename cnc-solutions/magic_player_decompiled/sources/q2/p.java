package q2;

import android.support.v4.media.session.PlaybackStateCompat;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketTimeoutException;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.Objects;
import javax.annotation.Nullable;
import u2.v;
import u2.w;
import u2.x;

/* JADX INFO: loaded from: classes.dex */
public final class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f3276a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f3277b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f3278c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final g f3279d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Deque<k2.q> f3280e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f3281f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final b f3282g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final a f3283h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final c f3284i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final c f3285j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public q2.b f3286k;

    /* JADX INFO: loaded from: classes2.dex */
    public final class a implements v {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final u2.e f3287a = new u2.e();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f3288b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f3289c;

        public a() {
        }

        public final void B(boolean z3) throws IOException {
            p pVar;
            long jMin;
            p pVar2;
            synchronized (p.this) {
                p.this.f3285j.i();
                while (true) {
                    try {
                        pVar = p.this;
                        if (pVar.f3277b > 0 || this.f3289c || this.f3288b || pVar.f3286k != null) {
                            break;
                        } else {
                            pVar.j();
                        }
                    } finally {
                    }
                }
                pVar.f3285j.n();
                p.this.b();
                jMin = Math.min(p.this.f3277b, this.f3287a.f3578b);
                pVar2 = p.this;
                pVar2.f3277b -= jMin;
            }
            pVar2.f3285j.i();
            try {
                p pVar3 = p.this;
                pVar3.f3279d.K(pVar3.f3278c, z3 && jMin == this.f3287a.f3578b, this.f3287a, jMin);
            } finally {
            }
        }

        @Override // u2.v
        public x a() {
            return p.this.f3285j;
        }

        @Override // u2.v, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            synchronized (p.this) {
                if (this.f3288b) {
                    return;
                }
                p pVar = p.this;
                if (!pVar.f3283h.f3289c) {
                    if (this.f3287a.f3578b > 0) {
                        while (this.f3287a.f3578b > 0) {
                            B(true);
                        }
                    } else {
                        pVar.f3279d.K(pVar.f3278c, true, null, 0L);
                    }
                }
                synchronized (p.this) {
                    this.f3288b = true;
                }
                p.this.f3279d.f3226r.flush();
                p.this.a();
            }
        }

        @Override // u2.v, java.io.Flushable
        public void flush() throws IOException {
            synchronized (p.this) {
                p.this.b();
            }
            while (this.f3287a.f3578b > 0) {
                B(false);
                p.this.f3279d.flush();
            }
        }

        @Override // u2.v
        public void o(u2.e eVar, long j4) throws IOException {
            this.f3287a.o(eVar, j4);
            while (this.f3287a.f3578b >= PlaybackStateCompat.ACTION_PREPARE) {
                B(false);
            }
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    public final class b implements w {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final u2.e f3291a = new u2.e();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final u2.e f3292b = new u2.e();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final long f3293c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public boolean f3294d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public boolean f3295e;

        public b(long j4) {
            this.f3293c = j4;
        }

        @Override // u2.w
        public x a() {
            return p.this.f3284i;
        }

        @Override // u2.w, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            long j4;
            synchronized (p.this) {
                this.f3294d = true;
                u2.e eVar = this.f3292b;
                j4 = eVar.f3578b;
                eVar.clear();
                if (!p.this.f3280e.isEmpty()) {
                    Objects.requireNonNull(p.this);
                }
                p.this.notifyAll();
            }
            if (j4 > 0) {
                p.this.f3279d.J(j4);
            }
            p.this.a();
        }

        /* JADX WARN: Removed duplicated region for block: B:34:0x0084  */
        /* JADX WARN: Removed duplicated region for block: B:36:0x008c  */
        @Override // u2.w
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public long s(u2.e r12, long r13) throws q2.u {
            /*
                r11 = this;
                r0 = 0
                int r2 = (r13 > r0 ? 1 : (r13 == r0 ? 0 : -1))
                if (r2 < 0) goto La9
            L6:
                r2 = 0
                q2.p r3 = q2.p.this
                monitor-enter(r3)
                q2.p r4 = q2.p.this     // Catch: java.lang.Throwable -> La6
                q2.p$c r4 = r4.f3284i     // Catch: java.lang.Throwable -> La6
                r4.i()     // Catch: java.lang.Throwable -> La6
                q2.p r4 = q2.p.this     // Catch: java.lang.Throwable -> L9d
                q2.b r5 = r4.f3286k     // Catch: java.lang.Throwable -> L9d
                if (r5 == 0) goto L18
                r2 = r5
            L18:
                boolean r5 = r11.f3294d     // Catch: java.lang.Throwable -> L9d
                if (r5 != 0) goto L95
                java.util.Deque<k2.q> r4 = r4.f3280e     // Catch: java.lang.Throwable -> L9d
                boolean r4 = r4.isEmpty()     // Catch: java.lang.Throwable -> L9d
                if (r4 != 0) goto L29
                q2.p r4 = q2.p.this     // Catch: java.lang.Throwable -> L9d
                java.util.Objects.requireNonNull(r4)     // Catch: java.lang.Throwable -> L9d
            L29:
                u2.e r4 = r11.f3292b     // Catch: java.lang.Throwable -> L9d
                long r5 = r4.f3578b     // Catch: java.lang.Throwable -> L9d
                r7 = -1
                int r9 = (r5 > r0 ? 1 : (r5 == r0 ? 0 : -1))
                if (r9 <= 0) goto L63
                long r13 = java.lang.Math.min(r13, r5)     // Catch: java.lang.Throwable -> L9d
                long r12 = r4.s(r12, r13)     // Catch: java.lang.Throwable -> L9d
                q2.p r14 = q2.p.this     // Catch: java.lang.Throwable -> L9d
                long r4 = r14.f3276a     // Catch: java.lang.Throwable -> L9d
                long r4 = r4 + r12
                r14.f3276a = r4     // Catch: java.lang.Throwable -> L9d
                if (r2 != 0) goto L78
                q2.g r14 = r14.f3279d     // Catch: java.lang.Throwable -> L9d
                q2.t r14 = r14.f3222n     // Catch: java.lang.Throwable -> L9d
                int r14 = r14.a()     // Catch: java.lang.Throwable -> L9d
                int r14 = r14 / 2
                long r9 = (long) r14     // Catch: java.lang.Throwable -> L9d
                int r14 = (r4 > r9 ? 1 : (r4 == r9 ? 0 : -1))
                if (r14 < 0) goto L78
                q2.p r14 = q2.p.this     // Catch: java.lang.Throwable -> L9d
                q2.g r4 = r14.f3279d     // Catch: java.lang.Throwable -> L9d
                int r5 = r14.f3278c     // Catch: java.lang.Throwable -> L9d
                long r9 = r14.f3276a     // Catch: java.lang.Throwable -> L9d
                r4.M(r5, r9)     // Catch: java.lang.Throwable -> L9d
                q2.p r14 = q2.p.this     // Catch: java.lang.Throwable -> L9d
                r14.f3276a = r0     // Catch: java.lang.Throwable -> L9d
                goto L78
            L63:
                boolean r4 = r11.f3295e     // Catch: java.lang.Throwable -> L9d
                if (r4 != 0) goto L77
                if (r2 != 0) goto L77
                q2.p r2 = q2.p.this     // Catch: java.lang.Throwable -> L9d
                r2.j()     // Catch: java.lang.Throwable -> L9d
                q2.p r2 = q2.p.this     // Catch: java.lang.Throwable -> La6
                q2.p$c r2 = r2.f3284i     // Catch: java.lang.Throwable -> La6
                r2.n()     // Catch: java.lang.Throwable -> La6
                monitor-exit(r3)     // Catch: java.lang.Throwable -> La6
                goto L6
            L77:
                r12 = r7
            L78:
                q2.p r14 = q2.p.this     // Catch: java.lang.Throwable -> La6
                q2.p$c r14 = r14.f3284i     // Catch: java.lang.Throwable -> La6
                r14.n()     // Catch: java.lang.Throwable -> La6
                monitor-exit(r3)     // Catch: java.lang.Throwable -> La6
                int r14 = (r12 > r7 ? 1 : (r12 == r7 ? 0 : -1))
                if (r14 == 0) goto L8c
                q2.p r14 = q2.p.this
                q2.g r14 = r14.f3279d
                r14.J(r12)
                return r12
            L8c:
                if (r2 != 0) goto L8f
                return r7
            L8f:
                q2.u r12 = new q2.u
                r12.<init>(r2)
                throw r12
            L95:
                java.io.IOException r12 = new java.io.IOException     // Catch: java.lang.Throwable -> L9d
                java.lang.String r13 = "stream closed"
                r12.<init>(r13)     // Catch: java.lang.Throwable -> L9d
                throw r12     // Catch: java.lang.Throwable -> L9d
            L9d:
                r12 = move-exception
                q2.p r13 = q2.p.this     // Catch: java.lang.Throwable -> La6
                q2.p$c r13 = r13.f3284i     // Catch: java.lang.Throwable -> La6
                r13.n()     // Catch: java.lang.Throwable -> La6
                throw r12     // Catch: java.lang.Throwable -> La6
            La6:
                r12 = move-exception
                monitor-exit(r3)     // Catch: java.lang.Throwable -> La6
                throw r12
            La9:
                java.lang.IllegalArgumentException r12 = new java.lang.IllegalArgumentException
                java.lang.String r0 = "byteCount < 0: "
                java.lang.String r13 = androidx.viewpager2.adapter.a.a(r0, r13)
                r12.<init>(r13)
                goto Lb6
            Lb5:
                throw r12
            Lb6:
                goto Lb5
            */
            throw new UnsupportedOperationException("Method not decompiled: q2.p.b.s(u2.e, long):long");
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    public class c extends u2.c {
        public c() {
        }

        @Override // u2.c
        public IOException l(IOException iOException) {
            SocketTimeoutException socketTimeoutException = new SocketTimeoutException("timeout");
            if (iOException != null) {
                socketTimeoutException.initCause(iOException);
            }
            return socketTimeoutException;
        }

        @Override // u2.c
        public void m() {
            p.this.e(q2.b.CANCEL);
        }

        public void n() throws IOException {
            if (k()) {
                throw l(null);
            }
        }
    }

    public p(int i4, g gVar, boolean z3, boolean z4, @Nullable k2.q qVar) {
        ArrayDeque arrayDeque = new ArrayDeque();
        this.f3280e = arrayDeque;
        this.f3284i = new c();
        this.f3285j = new c();
        this.f3286k = null;
        Objects.requireNonNull(gVar, "connection == null");
        this.f3278c = i4;
        this.f3279d = gVar;
        this.f3277b = gVar.f3223o.a();
        b bVar = new b(gVar.f3222n.a());
        this.f3282g = bVar;
        a aVar = new a();
        this.f3283h = aVar;
        bVar.f3295e = z4;
        aVar.f3289c = z3;
        if (qVar != null) {
            arrayDeque.add(qVar);
        }
        if (g() && qVar != null) {
            throw new IllegalStateException("locally-initiated streams shouldn't have headers yet");
        }
        if (!g() && qVar == null) {
            throw new IllegalStateException("remotely-initiated streams should have headers");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0017  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a() {
        /*
            r2 = this;
            monitor-enter(r2)
            q2.p$b r0 = r2.f3282g     // Catch: java.lang.Throwable -> L2f
            boolean r1 = r0.f3295e     // Catch: java.lang.Throwable -> L2f
            if (r1 != 0) goto L17
            boolean r0 = r0.f3294d     // Catch: java.lang.Throwable -> L2f
            if (r0 == 0) goto L17
            q2.p$a r0 = r2.f3283h     // Catch: java.lang.Throwable -> L2f
            boolean r1 = r0.f3289c     // Catch: java.lang.Throwable -> L2f
            if (r1 != 0) goto L15
            boolean r0 = r0.f3288b     // Catch: java.lang.Throwable -> L2f
            if (r0 == 0) goto L17
        L15:
            r0 = 1
            goto L18
        L17:
            r0 = 0
        L18:
            boolean r1 = r2.h()     // Catch: java.lang.Throwable -> L2f
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L2f
            if (r0 == 0) goto L25
            q2.b r0 = q2.b.CANCEL
            r2.c(r0)
            goto L2e
        L25:
            if (r1 != 0) goto L2e
            q2.g r0 = r2.f3279d
            int r1 = r2.f3278c
            r0.H(r1)
        L2e:
            return
        L2f:
            r0 = move-exception
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L2f
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: q2.p.a():void");
    }

    public void b() throws IOException {
        a aVar = this.f3283h;
        if (aVar.f3288b) {
            throw new IOException("stream closed");
        }
        if (aVar.f3289c) {
            throw new IOException("stream finished");
        }
        if (this.f3286k != null) {
            throw new u(this.f3286k);
        }
    }

    public void c(q2.b bVar) {
        if (d(bVar)) {
            g gVar = this.f3279d;
            gVar.f3226r.H(this.f3278c, bVar);
        }
    }

    public final boolean d(q2.b bVar) {
        synchronized (this) {
            if (this.f3286k != null) {
                return false;
            }
            if (this.f3282g.f3295e && this.f3283h.f3289c) {
                return false;
            }
            this.f3286k = bVar;
            notifyAll();
            this.f3279d.H(this.f3278c);
            return true;
        }
    }

    public void e(q2.b bVar) {
        if (d(bVar)) {
            this.f3279d.L(this.f3278c, bVar);
        }
    }

    public v f() {
        synchronized (this) {
            if (!this.f3281f && !g()) {
                throw new IllegalStateException("reply before requesting the sink");
            }
        }
        return this.f3283h;
    }

    public boolean g() {
        return this.f3279d.f3209a == ((this.f3278c & 1) == 1);
    }

    public synchronized boolean h() {
        if (this.f3286k != null) {
            return false;
        }
        b bVar = this.f3282g;
        if (bVar.f3295e || bVar.f3294d) {
            a aVar = this.f3283h;
            if (aVar.f3289c || aVar.f3288b) {
                if (this.f3281f) {
                    return false;
                }
            }
        }
        return true;
    }

    public void i() {
        boolean zH;
        synchronized (this) {
            this.f3282g.f3295e = true;
            zH = h();
            notifyAll();
        }
        if (zH) {
            return;
        }
        this.f3279d.H(this.f3278c);
    }

    public void j() throws InterruptedIOException {
        try {
            wait();
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
            throw new InterruptedIOException();
        }
    }
}
