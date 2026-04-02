package g3;

/* JADX INFO: loaded from: classes2.dex */
public final class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f1790a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final m f1791b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile boolean f1792c = true;

    public o(Object obj, m mVar) {
        this.f1790a = obj;
        this.f1791b = mVar;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof o)) {
            return false;
        }
        o oVar = (o) obj;
        return this.f1790a == oVar.f1790a && this.f1791b.equals(oVar.f1791b);
    }

    public int hashCode() {
        return this.f1791b.f1780f.hashCode() + this.f1790a.hashCode();
    }
}
