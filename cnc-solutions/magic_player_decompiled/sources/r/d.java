package r;

/* JADX INFO: loaded from: classes.dex */
public abstract class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f3336a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Thread f3337b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f3338c;

    public d(String str) {
        this.f3336a = str;
    }

    public abstract void a();

    public boolean b() {
        return this.f3338c && !Thread.interrupted();
    }

    public synchronized void c() {
        this.f3338c = true;
        Thread thread = this.f3337b;
        if (thread == null || !thread.isAlive()) {
            Thread thread2 = new Thread(new d.d(this));
            this.f3337b = thread2;
            thread2.setName(this.f3336a);
            this.f3337b.start();
        }
    }

    public synchronized void d() {
        this.f3338c = false;
        Thread thread = this.f3337b;
        if (thread != null && thread.isAlive()) {
            try {
                this.f3337b.interrupt();
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }
}
