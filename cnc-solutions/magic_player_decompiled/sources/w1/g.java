package w1;

import java.io.IOException;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Map;
import java.util.Objects;
import java.util.Properties;
import t1.v;
import t1.x;
import t1.y;
import v1.t;

/* JADX INFO: loaded from: classes2.dex */
public final class g implements y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final v1.g f3839a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f3840b;

    public final class a<K, V> extends x<Map<K, V>> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final x<K> f3841a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final x<V> f3842b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final t<? extends Map<K, V>> f3843c;

        public a(t1.i iVar, Type type, x<K> xVar, Type type2, x<V> xVar2, t<? extends Map<K, V>> tVar) {
            this.f3841a = new n(iVar, xVar, type);
            this.f3842b = new n(iVar, xVar2, type2);
            this.f3843c = tVar;
        }

        @Override // t1.x
        public Object a(a2.a aVar) throws IOException {
            a2.b bVarW = aVar.W();
            if (bVarW == a2.b.NULL) {
                aVar.S();
                return null;
            }
            Map<K, V> mapA = this.f3843c.a();
            if (bVarW == a2.b.BEGIN_ARRAY) {
                aVar.B();
                while (aVar.J()) {
                    aVar.B();
                    K kA = this.f3841a.a(aVar);
                    if (mapA.put(kA, this.f3842b.a(aVar)) != null) {
                        throw new v("duplicate key: " + kA);
                    }
                    aVar.F();
                }
                aVar.F();
            } else {
                aVar.C();
                while (aVar.J()) {
                    v1.q.f3685a.b(aVar);
                    K kA2 = this.f3841a.a(aVar);
                    if (mapA.put(kA2, this.f3842b.a(aVar)) != null) {
                        throw new v("duplicate key: " + kA2);
                    }
                }
                aVar.G();
            }
            return mapA;
        }

        @Override // t1.x
        public void b(a2.c cVar, Object obj) throws IOException {
            String strD;
            Map map = (Map) obj;
            if (map == null) {
                cVar.J();
                return;
            }
            if (!g.this.f3840b) {
                cVar.D();
                for (Map.Entry<K, V> entry : map.entrySet()) {
                    cVar.H(String.valueOf(entry.getKey()));
                    this.f3842b.b(cVar, entry.getValue());
                }
                cVar.G();
                return;
            }
            ArrayList arrayList = new ArrayList(map.size());
            ArrayList arrayList2 = new ArrayList(map.size());
            int i4 = 0;
            boolean z3 = false;
            for (Map.Entry<K, V> entry2 : map.entrySet()) {
                x<K> xVar = this.f3841a;
                K key = entry2.getKey();
                Objects.requireNonNull(xVar);
                try {
                    f fVar = new f();
                    xVar.b(fVar, key);
                    t1.n nVarU = fVar.U();
                    arrayList.add(nVarU);
                    arrayList2.add(entry2.getValue());
                    Objects.requireNonNull(nVarU);
                    z3 |= (nVarU instanceof t1.k) || (nVarU instanceof t1.q);
                } catch (IOException e4) {
                    throw new t1.o(e4);
                }
            }
            if (z3) {
                cVar.C();
                int size = arrayList.size();
                while (i4 < size) {
                    cVar.C();
                    o.C.b(cVar, (t1.n) arrayList.get(i4));
                    this.f3842b.b(cVar, (V) arrayList2.get(i4));
                    cVar.F();
                    i4++;
                }
                cVar.F();
                return;
            }
            cVar.D();
            int size2 = arrayList.size();
            while (i4 < size2) {
                t1.n nVar = (t1.n) arrayList.get(i4);
                Objects.requireNonNull(nVar);
                if (nVar instanceof t1.s) {
                    t1.s sVarA = nVar.a();
                    Object obj2 = sVarA.f3547a;
                    if (obj2 instanceof Number) {
                        strD = String.valueOf(sVarA.c());
                    } else if (obj2 instanceof Boolean) {
                        strD = Boolean.toString(sVarA.b());
                    } else {
                        if (!(obj2 instanceof String)) {
                            throw new AssertionError();
                        }
                        strD = sVarA.d();
                    }
                } else {
                    if (!(nVar instanceof t1.p)) {
                        throw new AssertionError();
                    }
                    strD = "null";
                }
                cVar.H(strD);
                this.f3842b.b(cVar, (V) arrayList2.get(i4));
                i4++;
            }
            cVar.G();
        }
    }

    public g(v1.g gVar, boolean z3) {
        this.f3839a = gVar;
        this.f3840b = z3;
    }

    @Override // t1.y
    public <T> x<T> a(t1.i iVar, z1.a<T> aVar) {
        Type[] actualTypeArguments;
        Type type = aVar.f4197b;
        if (!Map.class.isAssignableFrom(aVar.f4196a)) {
            return null;
        }
        Class<?> clsE = v1.a.e(type);
        if (type == Properties.class) {
            actualTypeArguments = new Type[]{String.class, String.class};
        } else {
            Type typeF = v1.a.f(type, clsE, Map.class);
            actualTypeArguments = typeF instanceof ParameterizedType ? ((ParameterizedType) typeF).getActualTypeArguments() : new Type[]{Object.class, Object.class};
        }
        Type type2 = actualTypeArguments[0];
        return new a(iVar, actualTypeArguments[0], (type2 == Boolean.TYPE || type2 == Boolean.class) ? o.f3878c : iVar.e(new z1.a<>(type2)), actualTypeArguments[1], iVar.e(new z1.a<>(actualTypeArguments[1])), this.f3839a.a(aVar));
    }
}
