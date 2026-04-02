package w1;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Objects;
import t1.x;
import t1.y;

/* JADX INFO: loaded from: classes2.dex */
public final class h extends x<Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final y f3845b = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final t1.i f3846a;

    public class a implements y {
        @Override // t1.y
        public <T> x<T> a(t1.i iVar, z1.a<T> aVar) {
            if (aVar.f4196a == Object.class) {
                return new h(iVar);
            }
            return null;
        }
    }

    public h(t1.i iVar) {
        this.f3846a = iVar;
    }

    @Override // t1.x
    public Object a(a2.a aVar) throws IOException {
        int iOrdinal = aVar.W().ordinal();
        if (iOrdinal == 0) {
            ArrayList arrayList = new ArrayList();
            aVar.B();
            while (aVar.J()) {
                arrayList.add(a(aVar));
            }
            aVar.F();
            return arrayList;
        }
        if (iOrdinal == 2) {
            v1.s sVar = new v1.s();
            aVar.C();
            while (aVar.J()) {
                sVar.put(aVar.Q(), a(aVar));
            }
            aVar.G();
            return sVar;
        }
        if (iOrdinal == 5) {
            return aVar.U();
        }
        if (iOrdinal == 6) {
            return Double.valueOf(aVar.N());
        }
        if (iOrdinal == 7) {
            return Boolean.valueOf(aVar.M());
        }
        if (iOrdinal != 8) {
            throw new IllegalStateException();
        }
        aVar.S();
        return null;
    }

    @Override // t1.x
    public void b(a2.c cVar, Object obj) throws IOException {
        if (obj == null) {
            cVar.J();
            return;
        }
        t1.i iVar = this.f3846a;
        Class<?> cls = obj.getClass();
        Objects.requireNonNull(iVar);
        x xVarE = iVar.e(new z1.a(cls));
        if (!(xVarE instanceof h)) {
            xVarE.b(cVar, obj);
        } else {
            cVar.D();
            cVar.G();
        }
    }
}
