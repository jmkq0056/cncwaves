package p3;

/* JADX INFO: loaded from: classes2.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public volatile boolean f3026a;

    public synchronized void a() {
        this.f3026a = false;
    }

    public synchronized void b() {
        boolean z3 = this.f3026a;
        this.f3026a = true;
        if (!z3) {
            notify();
        }
    }
}
