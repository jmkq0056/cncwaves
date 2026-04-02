package l;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class g implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2325a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ h f2326b;

    public /* synthetic */ g(h hVar, int i4) {
        this.f2325a = i4;
        this.f2326b = hVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f2325a) {
            case 0:
                this.f2326b.l();
                break;
            default:
                h hVar = this.f2326b;
                hVar.f2336i.setFixedSize(hVar.f2333f, hVar.f2334g);
                break;
        }
    }
}
