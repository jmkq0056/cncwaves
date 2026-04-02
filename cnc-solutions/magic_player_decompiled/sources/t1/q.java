package t1;

/* JADX INFO: loaded from: classes2.dex */
public final class q extends n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final v1.s<String, n> f3546a = new v1.s<>();

    public boolean equals(Object obj) {
        return obj == this || ((obj instanceof q) && ((q) obj).f3546a.equals(this.f3546a));
    }

    public int hashCode() {
        return this.f3546a.hashCode();
    }
}
