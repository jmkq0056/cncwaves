package g3;

/* JADX INFO: loaded from: classes2.dex */
public class a implements Runnable, k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final s0.d f1730a = new s0.d(1);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final c f1731b;

    public a(c cVar) {
        this.f1731b = cVar;
    }

    @Override // g3.k
    public void a(o oVar, Object obj) {
        this.f1730a.a(j.a(oVar, obj));
        this.f1731b.f1747j.execute(this);
    }

    @Override // java.lang.Runnable
    public void run() {
        j jVarC = this.f1730a.c();
        if (jVarC == null) {
            throw new IllegalStateException("No pending post available");
        }
        this.f1731b.c(jVarC);
    }
}
