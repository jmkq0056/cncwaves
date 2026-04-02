package w1;

import t1.x;
import t1.y;

/* JADX INFO: loaded from: classes2.dex */
public class p implements y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Class f3905a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ x f3906b;

    public p(Class cls, x xVar) {
        this.f3905a = cls;
        this.f3906b = xVar;
    }

    @Override // t1.y
    public <T> x<T> a(t1.i iVar, z1.a<T> aVar) {
        if (aVar.f4196a == this.f3905a) {
            return this.f3906b;
        }
        return null;
    }

    public String toString() {
        StringBuilder sbA = android.support.v4.media.f.a("Factory[type=");
        sbA.append(this.f3905a.getName());
        sbA.append(",adapter=");
        sbA.append(this.f3906b);
        sbA.append("]");
        return sbA.toString();
    }
}
