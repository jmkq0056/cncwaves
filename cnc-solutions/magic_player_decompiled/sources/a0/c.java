package a0;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class c implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f0a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ f f1b;

    public /* synthetic */ c(f fVar, int i4) {
        this.f0a = i4;
        if (i4 != 1) {
        }
        this.f1b = fVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f0a) {
            case 0:
                this.f1b.h();
                break;
            case 1:
                this.f1b.g();
                break;
            case 2:
                this.f1b.i();
                break;
            default:
                this.f1b.g();
                break;
        }
    }
}
