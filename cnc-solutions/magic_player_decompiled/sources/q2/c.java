package q2;

/* JADX INFO: loaded from: classes2.dex */
public final class c {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final u2.h f3167d = u2.h.e(":");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final u2.h f3168e = u2.h.e(":status");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final u2.h f3169f = u2.h.e(":method");

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final u2.h f3170g = u2.h.e(":path");

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final u2.h f3171h = u2.h.e(":scheme");

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final u2.h f3172i = u2.h.e(":authority");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final u2.h f3173a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final u2.h f3174b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f3175c;

    public c(String str, String str2) {
        this(u2.h.e(str), u2.h.e(str2));
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return this.f3173a.equals(cVar.f3173a) && this.f3174b.equals(cVar.f3174b);
    }

    public int hashCode() {
        return this.f3174b.hashCode() + ((this.f3173a.hashCode() + 527) * 31);
    }

    public String toString() {
        return l2.c.n("%s: %s", this.f3173a.n(), this.f3174b.n());
    }

    public c(u2.h hVar, String str) {
        this(hVar, u2.h.e(str));
    }

    public c(u2.h hVar, u2.h hVar2) {
        this.f3173a = hVar;
        this.f3174b = hVar2;
        this.f3175c = hVar2.k() + hVar.k() + 32;
    }
}
