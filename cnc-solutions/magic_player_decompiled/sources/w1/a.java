package w1;

import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import t1.x;
import t1.y;

/* JADX INFO: loaded from: classes2.dex */
public final class a<E> extends x<Object> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final y f3819c = new C0051a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Class<E> f3820a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final x<E> f3821b;

    /* JADX INFO: renamed from: w1.a$a, reason: collision with other inner class name */
    public class C0051a implements y {
        @Override // t1.y
        public <T> x<T> a(t1.i iVar, z1.a<T> aVar) {
            Type type = aVar.f4197b;
            boolean z3 = type instanceof GenericArrayType;
            if (!z3 && (!(type instanceof Class) || !((Class) type).isArray())) {
                return null;
            }
            Type genericComponentType = z3 ? ((GenericArrayType) type).getGenericComponentType() : ((Class) type).getComponentType();
            return new a(iVar, iVar.e(new z1.a<>(genericComponentType)), v1.a.e(genericComponentType));
        }
    }

    public a(t1.i iVar, x<E> xVar, Class<E> cls) {
        this.f3821b = new n(iVar, xVar, cls);
        this.f3820a = cls;
    }

    @Override // t1.x
    public Object a(a2.a aVar) throws IOException {
        if (aVar.W() == a2.b.NULL) {
            aVar.S();
            return null;
        }
        ArrayList arrayList = new ArrayList();
        aVar.B();
        while (aVar.J()) {
            arrayList.add(this.f3821b.a(aVar));
        }
        aVar.F();
        int size = arrayList.size();
        Object objNewInstance = Array.newInstance((Class<?>) this.f3820a, size);
        for (int i4 = 0; i4 < size; i4++) {
            Array.set(objNewInstance, i4, arrayList.get(i4));
        }
        return objNewInstance;
    }

    @Override // t1.x
    public void b(a2.c cVar, Object obj) throws IOException {
        if (obj == null) {
            cVar.J();
            return;
        }
        cVar.C();
        int length = Array.getLength(obj);
        for (int i4 = 0; i4 < length; i4++) {
            this.f3821b.b(cVar, (E) Array.get(obj, i4));
        }
        cVar.F();
    }
}
