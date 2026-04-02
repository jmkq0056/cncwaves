package l2;

/* JADX INFO: loaded from: classes2.dex */
public abstract class b implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f2436a;

    public b(String str, Object... objArr) {
        this.f2436a = c.n(str, objArr);
    }

    public abstract void a();

    @Override // java.lang.Runnable
    public final void run() {
        String name = Thread.currentThread().getName();
        Thread.currentThread().setName(this.f2436a);
        try {
            a();
        } finally {
            Thread.currentThread().setName(name);
        }
    }
}
