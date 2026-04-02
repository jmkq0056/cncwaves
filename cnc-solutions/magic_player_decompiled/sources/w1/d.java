package w1;

import t1.u;
import t1.w;
import t1.x;
import t1.y;

/* JADX INFO: loaded from: classes2.dex */
public final class d implements y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final v1.g f3827a;

    public d(v1.g gVar) {
        this.f3827a = gVar;
    }

    @Override // t1.y
    public <T> x<T> a(t1.i iVar, z1.a<T> aVar) {
        u1.a aVar2 = (u1.a) aVar.f4196a.getAnnotation(u1.a.class);
        if (aVar2 == null) {
            return null;
        }
        return (x<T>) b(this.f3827a, iVar, aVar, aVar2);
    }

    public x<?> b(v1.g gVar, t1.i iVar, z1.a<?> aVar, u1.a aVar2) {
        x<?> mVar;
        Object objA = gVar.a(new z1.a(aVar2.value())).a();
        if (objA instanceof x) {
            mVar = (x) objA;
        } else if (objA instanceof y) {
            mVar = ((y) objA).a(iVar, aVar);
        } else {
            boolean z3 = objA instanceof u;
            if (!z3 && !(objA instanceof t1.m)) {
                StringBuilder sbA = android.support.v4.media.f.a("Invalid attempt to bind an instance of ");
                sbA.append(objA.getClass().getName());
                sbA.append(" as a @JsonAdapter for ");
                sbA.append(aVar.toString());
                sbA.append(". @JsonAdapter value must be a TypeAdapter, TypeAdapterFactory, JsonSerializer or JsonDeserializer.");
                throw new IllegalArgumentException(sbA.toString());
            }
            mVar = new m<>(z3 ? (u) objA : null, objA instanceof t1.m ? (t1.m) objA : null, iVar, aVar, null);
        }
        return (mVar == null || !aVar2.nullSafe()) ? mVar : new w(mVar);
    }
}
