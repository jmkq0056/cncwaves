package w1;

import t1.x;
import t1.y;

/* JADX INFO: loaded from: classes2.dex */
public class q implements y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Class f3907a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Class f3908b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ x f3909c;

    public q(Class cls, Class cls2, x xVar) {
        this.f3907a = cls;
        this.f3908b = cls2;
        this.f3909c = xVar;
    }

    @Override // t1.y
    public <T> x<T> a(t1.i iVar, z1.a<T> aVar) {
        Class<? super T> cls = aVar.f4196a;
        if (cls == this.f3907a || cls == this.f3908b) {
            return this.f3909c;
        }
        return null;
    }

    public String toString() {
        StringBuilder sbA = android.support.v4.media.f.a("Factory[type=");
        sbA.append(this.f3908b.getName());
        sbA.append("+");
        sbA.append(this.f3907a.getName());
        sbA.append(",adapter=");
        sbA.append(this.f3909c);
        sbA.append("]");
        return sbA.toString();
    }
}
