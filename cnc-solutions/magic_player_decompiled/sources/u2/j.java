package u2;

/* JADX INFO: loaded from: classes2.dex */
public abstract class j implements w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final w f3586a;

    public j(w wVar) {
        if (wVar == null) {
            throw new IllegalArgumentException("delegate == null");
        }
        this.f3586a = wVar;
    }

    @Override // u2.w
    public x a() {
        return this.f3586a.a();
    }

    public String toString() {
        return getClass().getSimpleName() + "(" + this.f3586a.toString() + ")";
    }
}
