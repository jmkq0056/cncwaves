package q2;

import androidx.appcompat.widget.ActivityChooserView;
import java.io.Closeable;
import java.io.IOException;
import java.net.Socket;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import q2.o;

/* JADX INFO: loaded from: classes2.dex */
public final class g implements Closeable {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final ExecutorService f3208u;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f3209a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final d f3210b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f3212d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f3213e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f3214f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f3215g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ScheduledExecutorService f3216h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final ExecutorService f3217i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final s f3218j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f3219k;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public long f3221m;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final t f3223o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f3224p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final Socket f3225q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final q f3226r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final f f3227s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final Set<Integer> f3228t;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Map<Integer, p> f3211c = new LinkedHashMap();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public long f3220l = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public t f3222n = new t();

    public class a extends l2.b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ int f3229b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ q2.b f3230c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(String str, Object[] objArr, int i4, q2.b bVar) {
            super(str, objArr);
            this.f3229b = i4;
            this.f3230c = bVar;
        }

        @Override // l2.b
        public void a() {
            try {
                g gVar = g.this;
                gVar.f3226r.H(this.f3229b, this.f3230c);
            } catch (IOException unused) {
                g.B(g.this);
            }
        }
    }

    public class b extends l2.b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ int f3232b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ long f3233c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(String str, Object[] objArr, int i4, long j4) {
            super(str, objArr);
            this.f3232b = i4;
            this.f3233c = j4;
        }

        @Override // l2.b
        public void a() {
            try {
                g.this.f3226r.I(this.f3232b, this.f3233c);
            } catch (IOException unused) {
                g.B(g.this);
            }
        }
    }

    public static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Socket f3235a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f3236b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public u2.g f3237c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public u2.f f3238d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public d f3239e = d.f3241a;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f3240f;

        public c(boolean z3) {
        }
    }

    public static abstract class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final d f3241a = new a();

        public class a extends d {
            @Override // q2.g.d
            public void b(p pVar) {
                pVar.c(q2.b.REFUSED_STREAM);
            }
        }

        public void a(g gVar) {
        }

        public abstract void b(p pVar);
    }

    public final class e extends l2.b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f3242b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f3243c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f3244d;

        public e(boolean z3, int i4, int i5) {
            super("OkHttp %s ping %08x%08x", g.this.f3212d, Integer.valueOf(i4), Integer.valueOf(i5));
            this.f3242b = z3;
            this.f3243c = i4;
            this.f3244d = i5;
        }

        /* JADX WARN: Removed duplicated region for block: B:21:0x001f A[EXC_TOP_SPLITTER, SYNTHETIC] */
        @Override // l2.b
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void a() {
            /*
                r7 = this;
                q2.g r0 = q2.g.this
                boolean r1 = r7.f3242b
                int r2 = r7.f3243c
                int r3 = r7.f3244d
                java.util.Objects.requireNonNull(r0)
                q2.b r4 = q2.b.PROTOCOL_ERROR
                if (r1 != 0) goto L1f
                monitor-enter(r0)
                boolean r5 = r0.f3219k     // Catch: java.lang.Throwable -> L1c
                r6 = 1
                r0.f3219k = r6     // Catch: java.lang.Throwable -> L1c
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L1c
                if (r5 == 0) goto L1f
                r0.C(r4, r4)     // Catch: java.io.IOException -> L28
                goto L28
            L1c:
                r1 = move-exception
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L1c
                throw r1
            L1f:
                q2.q r5 = r0.f3226r     // Catch: java.io.IOException -> L25
                r5.G(r1, r2, r3)     // Catch: java.io.IOException -> L25
                goto L28
            L25:
                r0.C(r4, r4)     // Catch: java.io.IOException -> L28
            L28:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: q2.g.e.a():void");
        }
    }

    public class f extends l2.b implements o.b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final o f3246b;

        public f(o oVar) {
            super("OkHttp %s", g.this.f3212d);
            this.f3246b = oVar;
        }

        @Override // l2.b
        public void a() throws Throwable {
            q2.b bVar;
            q2.b bVar2 = q2.b.INTERNAL_ERROR;
            try {
                try {
                    this.f3246b.D(this);
                    while (this.f3246b.C(false, this)) {
                    }
                    bVar = q2.b.NO_ERROR;
                    try {
                        try {
                            g.this.C(bVar, q2.b.CANCEL);
                        } catch (IOException unused) {
                            q2.b bVar3 = q2.b.PROTOCOL_ERROR;
                            g.this.C(bVar3, bVar3);
                        }
                    } catch (Throwable th) {
                        th = th;
                        try {
                            g.this.C(bVar, bVar2);
                        } catch (IOException unused2) {
                        }
                        l2.c.f(this.f3246b);
                        throw th;
                    }
                } catch (IOException unused3) {
                }
            } catch (IOException unused4) {
                bVar = bVar2;
            } catch (Throwable th2) {
                th = th2;
                bVar = bVar2;
                g.this.C(bVar, bVar2);
                l2.c.f(this.f3246b);
                throw th;
            }
            l2.c.f(this.f3246b);
        }
    }

    static {
        TimeUnit timeUnit = TimeUnit.SECONDS;
        SynchronousQueue synchronousQueue = new SynchronousQueue();
        byte[] bArr = l2.c.f2437a;
        f3208u = new ThreadPoolExecutor(0, ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED, 60L, timeUnit, synchronousQueue, new l2.d("OkHttp Http2Connection", true));
    }

    public g(c cVar) {
        t tVar = new t();
        this.f3223o = tVar;
        this.f3224p = false;
        this.f3228t = new LinkedHashSet();
        this.f3218j = s.f3312a;
        this.f3209a = true;
        this.f3210b = cVar.f3239e;
        this.f3214f = 1;
        this.f3214f = 3;
        this.f3222n.b(7, 16777216);
        String str = cVar.f3236b;
        this.f3212d = str;
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = new ScheduledThreadPoolExecutor(1, new l2.d(l2.c.n("OkHttp %s Writer", str), false));
        this.f3216h = scheduledThreadPoolExecutor;
        if (cVar.f3240f != 0) {
            e eVar = new e(false, 0, 0);
            long j4 = cVar.f3240f;
            scheduledThreadPoolExecutor.scheduleAtFixedRate(eVar, j4, j4, TimeUnit.MILLISECONDS);
        }
        this.f3217i = new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new l2.d(l2.c.n("OkHttp %s Push Observer", str), true));
        tVar.b(7, 65535);
        tVar.b(5, 16384);
        this.f3221m = tVar.a();
        this.f3225q = cVar.f3235a;
        this.f3226r = new q(cVar.f3238d, true);
        this.f3227s = new f(new o(cVar.f3237c, true));
    }

    public static void B(g gVar) {
        Objects.requireNonNull(gVar);
        try {
            q2.b bVar = q2.b.PROTOCOL_ERROR;
            gVar.C(bVar, bVar);
        } catch (IOException unused) {
        }
    }

    public void C(q2.b bVar, q2.b bVar2) throws IOException {
        p[] pVarArr = null;
        try {
            I(bVar);
            e = null;
        } catch (IOException e4) {
            e = e4;
        }
        synchronized (this) {
            if (!this.f3211c.isEmpty()) {
                pVarArr = (p[]) this.f3211c.values().toArray(new p[this.f3211c.size()]);
                this.f3211c.clear();
            }
        }
        if (pVarArr != null) {
            for (p pVar : pVarArr) {
                try {
                    pVar.c(bVar2);
                } catch (IOException e5) {
                    if (e != null) {
                        e = e5;
                    }
                }
            }
        }
        try {
            this.f3226r.close();
        } catch (IOException e6) {
            if (e == null) {
                e = e6;
            }
        }
        try {
            this.f3225q.close();
        } catch (IOException e7) {
            e = e7;
        }
        this.f3216h.shutdown();
        this.f3217i.shutdown();
        if (e != null) {
            throw e;
        }
    }

    public synchronized p D(int i4) {
        return this.f3211c.get(Integer.valueOf(i4));
    }

    public synchronized int E() {
        int i4;
        t tVar = this.f3223o;
        i4 = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        if ((tVar.f3313a & 16) != 0) {
            i4 = tVar.f3314b[4];
        }
        return i4;
    }

    public final synchronized void F(l2.b bVar) {
        synchronized (this) {
        }
        if (!this.f3215g) {
            this.f3217i.execute(bVar);
        }
    }

    public boolean G(int i4) {
        return i4 != 0 && (i4 & 1) == 0;
    }

    public synchronized p H(int i4) {
        p pVarRemove;
        pVarRemove = this.f3211c.remove(Integer.valueOf(i4));
        notifyAll();
        return pVarRemove;
    }

    public void I(q2.b bVar) {
        synchronized (this.f3226r) {
            synchronized (this) {
                if (this.f3215g) {
                    return;
                }
                this.f3215g = true;
                this.f3226r.E(this.f3213e, bVar, l2.c.f2437a);
            }
        }
    }

    public synchronized void J(long j4) {
        long j5 = this.f3220l + j4;
        this.f3220l = j5;
        if (j5 >= this.f3222n.a() / 2) {
            M(0, this.f3220l);
            this.f3220l = 0L;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0030, code lost:
    
        r3 = java.lang.Math.min((int) java.lang.Math.min(r12, r3), r8.f3226r.f3302d);
        r6 = r3;
        r8.f3221m -= r6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void K(int r9, boolean r10, u2.e r11, long r12) {
        /*
            r8 = this;
            r0 = 0
            r1 = 0
            int r3 = (r12 > r1 ? 1 : (r12 == r1 ? 0 : -1))
            if (r3 != 0) goto Ld
            q2.q r12 = r8.f3226r
            r12.C(r10, r9, r11, r0)
            return
        Ld:
            int r3 = (r12 > r1 ? 1 : (r12 == r1 ? 0 : -1))
            if (r3 <= 0) goto L65
            monitor-enter(r8)
        L12:
            long r3 = r8.f3221m     // Catch: java.lang.Throwable -> L54 java.lang.InterruptedException -> L56
            int r5 = (r3 > r1 ? 1 : (r3 == r1 ? 0 : -1))
            if (r5 > 0) goto L30
            java.util.Map<java.lang.Integer, q2.p> r3 = r8.f3211c     // Catch: java.lang.Throwable -> L54 java.lang.InterruptedException -> L56
            java.lang.Integer r4 = java.lang.Integer.valueOf(r9)     // Catch: java.lang.Throwable -> L54 java.lang.InterruptedException -> L56
            boolean r3 = r3.containsKey(r4)     // Catch: java.lang.Throwable -> L54 java.lang.InterruptedException -> L56
            if (r3 == 0) goto L28
            r8.wait()     // Catch: java.lang.Throwable -> L54 java.lang.InterruptedException -> L56
            goto L12
        L28:
            java.io.IOException r9 = new java.io.IOException     // Catch: java.lang.Throwable -> L54 java.lang.InterruptedException -> L56
            java.lang.String r10 = "stream closed"
            r9.<init>(r10)     // Catch: java.lang.Throwable -> L54 java.lang.InterruptedException -> L56
            throw r9     // Catch: java.lang.Throwable -> L54 java.lang.InterruptedException -> L56
        L30:
            long r3 = java.lang.Math.min(r12, r3)     // Catch: java.lang.Throwable -> L54
            int r4 = (int) r3     // Catch: java.lang.Throwable -> L54
            q2.q r3 = r8.f3226r     // Catch: java.lang.Throwable -> L54
            int r3 = r3.f3302d     // Catch: java.lang.Throwable -> L54
            int r3 = java.lang.Math.min(r4, r3)     // Catch: java.lang.Throwable -> L54
            long r4 = r8.f3221m     // Catch: java.lang.Throwable -> L54
            long r6 = (long) r3     // Catch: java.lang.Throwable -> L54
            long r4 = r4 - r6
            r8.f3221m = r4     // Catch: java.lang.Throwable -> L54
            monitor-exit(r8)     // Catch: java.lang.Throwable -> L54
            long r12 = r12 - r6
            q2.q r4 = r8.f3226r
            if (r10 == 0) goto L4f
            int r5 = (r12 > r1 ? 1 : (r12 == r1 ? 0 : -1))
            if (r5 != 0) goto L4f
            r5 = 1
            goto L50
        L4f:
            r5 = 0
        L50:
            r4.C(r5, r9, r11, r3)
            goto Ld
        L54:
            r9 = move-exception
            goto L63
        L56:
            java.lang.Thread r9 = java.lang.Thread.currentThread()     // Catch: java.lang.Throwable -> L54
            r9.interrupt()     // Catch: java.lang.Throwable -> L54
            java.io.InterruptedIOException r9 = new java.io.InterruptedIOException     // Catch: java.lang.Throwable -> L54
            r9.<init>()     // Catch: java.lang.Throwable -> L54
            throw r9     // Catch: java.lang.Throwable -> L54
        L63:
            monitor-exit(r8)     // Catch: java.lang.Throwable -> L54
            throw r9
        L65:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: q2.g.K(int, boolean, u2.e, long):void");
    }

    public void L(int i4, q2.b bVar) {
        try {
            this.f3216h.execute(new a("OkHttp %s stream %d", new Object[]{this.f3212d, Integer.valueOf(i4)}, i4, bVar));
        } catch (RejectedExecutionException unused) {
        }
    }

    public void M(int i4, long j4) {
        try {
            this.f3216h.execute(new b("OkHttp Window Update %s stream %d", new Object[]{this.f3212d, Integer.valueOf(i4)}, i4, j4));
        } catch (RejectedExecutionException unused) {
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        C(q2.b.NO_ERROR, q2.b.CANCEL);
    }

    public void flush() {
        this.f3226r.flush();
    }
}
