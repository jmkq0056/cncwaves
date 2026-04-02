package s;

import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public class a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static volatile a f3387b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public ThreadPoolExecutor f3388a;

    public static a b() {
        if (f3387b == null) {
            synchronized (a.class) {
                if (f3387b == null) {
                    f3387b = new a();
                }
            }
        }
        return f3387b;
    }

    public synchronized void a(Runnable runnable) {
        ThreadPoolExecutor threadPoolExecutor = this.f3388a;
        if (threadPoolExecutor == null || threadPoolExecutor.isShutdown()) {
            this.f3388a = new ThreadPoolExecutor(1, 4, 3L, TimeUnit.SECONDS, new LinkedBlockingQueue());
        }
        try {
            this.f3388a.execute(runnable);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }
}
