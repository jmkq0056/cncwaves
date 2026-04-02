package p;

import android.os.Handler;
import android.os.Looper;
import androidx.annotation.NonNull;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public class i<Params> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final ThreadPoolExecutor f2962c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AtomicBoolean f2963a = new AtomicBoolean();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List<Runnable> f2964b = new ArrayList(32);

    public class a implements ThreadFactory {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final AtomicInteger f2965a = new AtomicInteger(1);

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(@NonNull Runnable runnable) {
            StringBuilder sbA = android.support.v4.media.f.a("HuiduAsyncTask #");
            sbA.append(this.f2965a.getAndIncrement());
            return new Thread(runnable, sbA.toString());
        }
    }

    static {
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors();
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(Math.max(2, Math.min(iAvailableProcessors - 1, 4)), (iAvailableProcessors * 2) + 1, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue(128), new a());
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        f2962c = threadPoolExecutor;
    }

    public i() {
        new Handler(Looper.getMainLooper());
    }

    public final void a() {
        this.f2963a.set(true);
        synchronized (this.f2964b) {
            int size = this.f2964b.size();
            while (true) {
                size--;
                if (size >= 0) {
                    try {
                        if (f2962c.remove(this.f2964b.get(size))) {
                            this.f2964b.remove(size);
                        }
                    } catch (Exception e4) {
                        e4.printStackTrace();
                    }
                }
            }
        }
    }

    public void b(Params params) {
        throw null;
    }

    public void c(Params params) {
        try {
            this.f2963a.set(false);
            j jVar = new j(this, 0, params);
            synchronized (this.f2964b) {
                this.f2964b.add(jVar);
            }
            f2962c.execute(jVar);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }
}
