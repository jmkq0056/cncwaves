package w1;

import t1.v;
import t1.x;
import t1.y;

/* JADX INFO: loaded from: classes2.dex */
public class s implements y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Class f3913a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ x f3914b;

    public class a extends x<Object> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Class f3915a;

        public a(Class cls) {
            this.f3915a = cls;
        }

        @Override // t1.x
        public Object a(a2.a aVar) {
            Object objA = s.this.f3914b.a(aVar);
            if (objA == null || this.f3915a.isInstance(objA)) {
                return objA;
            }
            StringBuilder sbA = android.support.v4.media.f.a("Expected a ");
            sbA.append(this.f3915a.getName());
            sbA.append(" but was ");
            sbA.append(objA.getClass().getName());
            throw new v(sbA.toString());
        }

        @Override // t1.x
        public void b(a2.c cVar, Object obj) {
            s.this.f3914b.b(cVar, obj);
        }
    }

    public s(Class cls, x xVar) {
        this.f3913a = cls;
        this.f3914b = xVar;
    }

    @Override // t1.y
    public <T2> x<T2> a(t1.i iVar, z1.a<T2> aVar) {
        Class<? super T2> cls = aVar.f4196a;
        if (this.f3913a.isAssignableFrom(cls)) {
            return new a(cls);
        }
        return null;
    }

    public String toString() {
        StringBuilder sbA = android.support.v4.media.f.a("Factory[typeHierarchy=");
        sbA.append(this.f3913a.getName());
        sbA.append(",adapter=");
        sbA.append(this.f3914b);
        sbA.append("]");
        return sbA.toString();
    }
}
