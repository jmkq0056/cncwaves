package k2;

import androidx.appcompat.widget.ActivityChooserView;
import java.lang.ref.Reference;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import n2.f;

/* JADX INFO: loaded from: classes2.dex */
public final class h {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final Executor f2136g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f2137a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f2138b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Runnable f2139c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Deque<n2.c> f2140d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final t1.b f2141e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f2142f;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            long j4;
            while (true) {
                h hVar = h.this;
                long jNanoTime = System.nanoTime();
                synchronized (hVar) {
                    n2.c cVar = null;
                    long j5 = Long.MIN_VALUE;
                    int i4 = 0;
                    int i5 = 0;
                    for (n2.c cVar2 : hVar.f2140d) {
                        if (hVar.a(cVar2, jNanoTime) > 0) {
                            i5++;
                        } else {
                            i4++;
                            long j6 = jNanoTime - cVar2.f2750o;
                            if (j6 > j5) {
                                cVar = cVar2;
                                j5 = j6;
                            }
                        }
                    }
                    j4 = hVar.f2138b;
                    if (j5 >= j4 || i4 > hVar.f2137a) {
                        hVar.f2140d.remove(cVar);
                        l2.c.g(cVar.f2740e);
                        j4 = 0;
                    } else if (i4 > 0) {
                        j4 -= j5;
                    } else if (i5 <= 0) {
                        hVar.f2142f = false;
                        j4 = -1;
                    }
                }
                if (j4 == -1) {
                    return;
                }
                if (j4 > 0) {
                    long j7 = j4 / 1000000;
                    long j8 = j4 - (1000000 * j7);
                    synchronized (h.this) {
                        try {
                            h.this.wait(j7, (int) j8);
                        } catch (InterruptedException unused) {
                        }
                    }
                }
            }
        }
    }

    static {
        TimeUnit timeUnit = TimeUnit.SECONDS;
        SynchronousQueue synchronousQueue = new SynchronousQueue();
        byte[] bArr = l2.c.f2437a;
        f2136g = new ThreadPoolExecutor(0, ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED, 60L, timeUnit, synchronousQueue, new l2.d("OkHttp ConnectionPool", true));
    }

    public h() {
        TimeUnit timeUnit = TimeUnit.MINUTES;
        this.f2139c = new a();
        this.f2140d = new ArrayDeque();
        this.f2141e = new t1.b(2);
        this.f2137a = 5;
        this.f2138b = timeUnit.toNanos(5L);
    }

    public final int a(n2.c cVar, long j4) {
        List<Reference<n2.f>> list = cVar.f2749n;
        int i4 = 0;
        while (i4 < list.size()) {
            Reference<n2.f> reference = list.get(i4);
            if (reference.get() != null) {
                i4++;
            } else {
                StringBuilder sbA = android.support.v4.media.f.a("A connection to ");
                sbA.append(cVar.f2738c.f2102a.f2047a);
                sbA.append(" was leaked. Did you forget to close a response body?");
                r2.f.f3385a.m(sbA.toString(), ((f.a) reference).f2776a);
                list.remove(i4);
                cVar.f2746k = true;
                if (list.isEmpty()) {
                    cVar.f2750o = j4 - this.f2138b;
                    return 0;
                }
            }
        }
        return list.size();
    }
}
