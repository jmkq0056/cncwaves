package p3;

import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadPoolExecutor;

/* JADX INFO: loaded from: classes2.dex */
public final class e extends ScheduledThreadPoolExecutor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f3048a = 0;

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final e f3049a = new e(null);
    }

    public e(a aVar) {
        super(1, new ThreadPoolExecutor.DiscardPolicy());
    }
}
