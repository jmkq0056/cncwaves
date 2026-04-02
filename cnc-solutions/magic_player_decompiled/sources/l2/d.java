package l2;

import java.util.concurrent.ThreadFactory;

/* JADX INFO: loaded from: classes2.dex */
public class d implements ThreadFactory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f2454a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ boolean f2455b;

    public d(String str, boolean z3) {
        this.f2454a = str;
        this.f2455b = z3;
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        Thread thread = new Thread(runnable, this.f2454a);
        thread.setDaemon(this.f2455b);
        return thread;
    }
}
