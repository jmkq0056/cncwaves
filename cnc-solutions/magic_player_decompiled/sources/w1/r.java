package w1;

import t1.x;
import t1.y;

/* JADX INFO: loaded from: classes2.dex */
public class r implements y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Class f3910a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Class f3911b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ x f3912c;

    public r(Class cls, Class cls2, x xVar) {
        this.f3910a = cls;
        this.f3911b = cls2;
        this.f3912c = xVar;
    }

    @Override // t1.y
    public <T> x<T> a(t1.i iVar, z1.a<T> aVar) {
        Class<? super T> cls = aVar.f4196a;
        if (cls == this.f3910a || cls == this.f3911b) {
            return this.f3912c;
        }
        return null;
    }

    public String toString() {
        StringBuilder sbA = android.support.v4.media.f.a("Factory[type=");
        sbA.append(this.f3910a.getName());
        sbA.append("+");
        sbA.append(this.f3911b.getName());
        sbA.append(",adapter=");
        sbA.append(this.f3912c);
        sbA.append("]");
        return sbA.toString();
    }
}
