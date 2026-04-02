package w1;

import java.io.IOException;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.WildcardType;
import java.util.Collection;
import java.util.Iterator;
import t1.x;
import t1.y;
import v1.t;

/* JADX INFO: loaded from: classes2.dex */
public final class b implements y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final v1.g f3822a;

    public static final class a<E> extends x<Collection<E>> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final x<E> f3823a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final t<? extends Collection<E>> f3824b;

        public a(t1.i iVar, Type type, x<E> xVar, t<? extends Collection<E>> tVar) {
            this.f3823a = new n(iVar, xVar, type);
            this.f3824b = tVar;
        }

        @Override // t1.x
        public Object a(a2.a aVar) throws IOException {
            if (aVar.W() == a2.b.NULL) {
                aVar.S();
                return null;
            }
            Collection<E> collectionA = this.f3824b.a();
            aVar.B();
            while (aVar.J()) {
                collectionA.add(this.f3823a.a(aVar));
            }
            aVar.F();
            return collectionA;
        }

        @Override // t1.x
        public void b(a2.c cVar, Object obj) throws IOException {
            Collection collection = (Collection) obj;
            if (collection == null) {
                cVar.J();
                return;
            }
            cVar.C();
            Iterator<E> it = collection.iterator();
            while (it.hasNext()) {
                this.f3823a.b(cVar, it.next());
            }
            cVar.F();
        }
    }

    public b(v1.g gVar) {
        this.f3822a = gVar;
    }

    @Override // t1.y
    public <T> x<T> a(t1.i iVar, z1.a<T> aVar) {
        Type type = aVar.f4197b;
        Class<? super T> cls = aVar.f4196a;
        if (!Collection.class.isAssignableFrom(cls)) {
            return null;
        }
        Type typeF = v1.a.f(type, cls, Collection.class);
        if (typeF instanceof WildcardType) {
            typeF = ((WildcardType) typeF).getUpperBounds()[0];
        }
        Class cls2 = typeF instanceof ParameterizedType ? ((ParameterizedType) typeF).getActualTypeArguments()[0] : Object.class;
        return new a(iVar, cls2, iVar.e(new z1.a<>(cls2)), this.f3822a.a(aVar));
    }
}
