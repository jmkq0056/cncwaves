package v1;

import java.io.Serializable;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Comparator;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public final class s<K, V> extends AbstractMap<K, V> implements Serializable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final Comparator<Comparable> f3687h = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Comparator<? super K> f3688a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public e<K, V> f3689b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f3690c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f3691d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final e<K, V> f3692e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public s<K, V>.b f3693f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public s<K, V>.c f3694g;

    public class a implements Comparator<Comparable> {
        @Override // java.util.Comparator
        public int compare(Comparable comparable, Comparable comparable2) {
            return comparable.compareTo(comparable2);
        }
    }

    public class b extends AbstractSet<Map.Entry<K, V>> {

        public class a extends s<K, V>.d<Map.Entry<K, V>> {
            public a(b bVar) {
                super();
            }

            @Override // java.util.Iterator
            public Object next() {
                return a();
            }
        }

        public b() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            s.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return (obj instanceof Map.Entry) && s.this.b((Map.Entry) obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, V>> iterator() {
            return new a(this);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            e<K, V> eVarB;
            if (!(obj instanceof Map.Entry) || (eVarB = s.this.b((Map.Entry) obj)) == null) {
                return false;
            }
            s.this.e(eVarB, true);
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return s.this.f3690c;
        }
    }

    public final class c extends AbstractSet<K> {

        public class a extends s<K, V>.d<K> {
            public a(c cVar) {
                super();
            }

            @Override // java.util.Iterator
            public K next() {
                return a().f3706f;
            }
        }

        public c() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            s.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return s.this.c(obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<K> iterator() {
            return new a(this);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            s sVar = s.this;
            e<K, V> eVarC = sVar.c(obj);
            if (eVarC != null) {
                sVar.e(eVarC, true);
            }
            return eVarC != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return s.this.f3690c;
        }
    }

    public abstract class d<T> implements Iterator<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public e<K, V> f3697a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public e<K, V> f3698b = null;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f3699c;

        public d() {
            this.f3697a = s.this.f3692e.f3704d;
            this.f3699c = s.this.f3691d;
        }

        public final e<K, V> a() {
            e<K, V> eVar = this.f3697a;
            s sVar = s.this;
            if (eVar == sVar.f3692e) {
                throw new NoSuchElementException();
            }
            if (sVar.f3691d != this.f3699c) {
                throw new ConcurrentModificationException();
            }
            this.f3697a = eVar.f3704d;
            this.f3698b = eVar;
            return eVar;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f3697a != s.this.f3692e;
        }

        @Override // java.util.Iterator
        public final void remove() {
            e<K, V> eVar = this.f3698b;
            if (eVar == null) {
                throw new IllegalStateException();
            }
            s.this.e(eVar, true);
            this.f3698b = null;
            this.f3699c = s.this.f3691d;
        }
    }

    public s() {
        Comparator<Comparable> comparator = f3687h;
        this.f3690c = 0;
        this.f3691d = 0;
        this.f3692e = new e<>();
        this.f3688a = comparator;
    }

    private Object writeReplace() {
        return new LinkedHashMap(this);
    }

    public e<K, V> a(K k4, boolean z3) {
        int iCompareTo;
        e<K, V> eVar;
        Comparator<? super K> comparator = this.f3688a;
        e<K, V> eVar2 = this.f3689b;
        if (eVar2 != null) {
            Comparable comparable = comparator == f3687h ? (Comparable) k4 : null;
            while (true) {
                iCompareTo = comparable != null ? comparable.compareTo(eVar2.f3706f) : comparator.compare(k4, eVar2.f3706f);
                if (iCompareTo == 0) {
                    return eVar2;
                }
                e<K, V> eVar3 = iCompareTo < 0 ? eVar2.f3702b : eVar2.f3703c;
                if (eVar3 == null) {
                    break;
                }
                eVar2 = eVar3;
            }
        } else {
            iCompareTo = 0;
        }
        if (!z3) {
            return null;
        }
        e<K, V> eVar4 = this.f3692e;
        if (eVar2 != null) {
            eVar = new e<>(eVar2, k4, eVar4, eVar4.f3705e);
            if (iCompareTo < 0) {
                eVar2.f3702b = eVar;
            } else {
                eVar2.f3703c = eVar;
            }
            d(eVar2, true);
        } else {
            if (comparator == f3687h && !(k4 instanceof Comparable)) {
                throw new ClassCastException(k4.getClass().getName() + " is not Comparable");
            }
            eVar = new e<>(eVar2, k4, eVar4, eVar4.f3705e);
            this.f3689b = eVar;
        }
        this.f3690c++;
        this.f3691d++;
        return eVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public v1.s.e<K, V> b(java.util.Map.Entry<?, ?> r5) {
        /*
            r4 = this;
            java.lang.Object r0 = r5.getKey()
            v1.s$e r0 = r4.c(r0)
            r1 = 1
            r2 = 0
            if (r0 == 0) goto L23
            V r3 = r0.f3707g
            java.lang.Object r5 = r5.getValue()
            if (r3 == r5) goto L1f
            if (r3 == 0) goto L1d
            boolean r5 = r3.equals(r5)
            if (r5 == 0) goto L1d
            goto L1f
        L1d:
            r5 = 0
            goto L20
        L1f:
            r5 = 1
        L20:
            if (r5 == 0) goto L23
            goto L24
        L23:
            r1 = 0
        L24:
            if (r1 == 0) goto L27
            goto L28
        L27:
            r0 = 0
        L28:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: v1.s.b(java.util.Map$Entry):v1.s$e");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public e<K, V> c(Object obj) {
        if (obj == 0) {
            return null;
        }
        try {
            return a(obj, false);
        } catch (ClassCastException unused) {
            return null;
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        this.f3689b = null;
        this.f3690c = 0;
        this.f3691d++;
        e<K, V> eVar = this.f3692e;
        eVar.f3705e = eVar;
        eVar.f3704d = eVar;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        return c(obj) != null;
    }

    public final void d(e<K, V> eVar, boolean z3) {
        while (eVar != null) {
            e<K, V> eVar2 = eVar.f3702b;
            e<K, V> eVar3 = eVar.f3703c;
            int i4 = eVar2 != null ? eVar2.f3708h : 0;
            int i5 = eVar3 != null ? eVar3.f3708h : 0;
            int i6 = i4 - i5;
            if (i6 == -2) {
                e<K, V> eVar4 = eVar3.f3702b;
                e<K, V> eVar5 = eVar3.f3703c;
                int i7 = (eVar4 != null ? eVar4.f3708h : 0) - (eVar5 != null ? eVar5.f3708h : 0);
                if (i7 == -1 || (i7 == 0 && !z3)) {
                    g(eVar);
                } else {
                    h(eVar3);
                    g(eVar);
                }
                if (z3) {
                    return;
                }
            } else if (i6 == 2) {
                e<K, V> eVar6 = eVar2.f3702b;
                e<K, V> eVar7 = eVar2.f3703c;
                int i8 = (eVar6 != null ? eVar6.f3708h : 0) - (eVar7 != null ? eVar7.f3708h : 0);
                if (i8 == 1 || (i8 == 0 && !z3)) {
                    h(eVar);
                } else {
                    g(eVar2);
                    h(eVar);
                }
                if (z3) {
                    return;
                }
            } else if (i6 == 0) {
                eVar.f3708h = i4 + 1;
                if (z3) {
                    return;
                }
            } else {
                eVar.f3708h = Math.max(i4, i5) + 1;
                if (!z3) {
                    return;
                }
            }
            eVar = eVar.f3701a;
        }
    }

    public void e(e<K, V> eVar, boolean z3) {
        e<K, V> eVar2;
        e<K, V> eVar3;
        int i4;
        if (z3) {
            e<K, V> eVar4 = eVar.f3705e;
            eVar4.f3704d = eVar.f3704d;
            eVar.f3704d.f3705e = eVar4;
        }
        e<K, V> eVar5 = eVar.f3702b;
        e<K, V> eVar6 = eVar.f3703c;
        e<K, V> eVar7 = eVar.f3701a;
        int i5 = 0;
        if (eVar5 == null || eVar6 == null) {
            if (eVar5 != null) {
                f(eVar, eVar5);
                eVar.f3702b = null;
            } else if (eVar6 != null) {
                f(eVar, eVar6);
                eVar.f3703c = null;
            } else {
                f(eVar, null);
            }
            d(eVar7, false);
            this.f3690c--;
            this.f3691d++;
            return;
        }
        if (eVar5.f3708h > eVar6.f3708h) {
            e<K, V> eVar8 = eVar5.f3703c;
            while (true) {
                e<K, V> eVar9 = eVar8;
                eVar3 = eVar5;
                eVar5 = eVar9;
                if (eVar5 == null) {
                    break;
                } else {
                    eVar8 = eVar5.f3703c;
                }
            }
        } else {
            e<K, V> eVar10 = eVar6.f3702b;
            while (true) {
                eVar2 = eVar6;
                eVar6 = eVar10;
                if (eVar6 == null) {
                    break;
                } else {
                    eVar10 = eVar6.f3702b;
                }
            }
            eVar3 = eVar2;
        }
        e(eVar3, false);
        e<K, V> eVar11 = eVar.f3702b;
        if (eVar11 != null) {
            i4 = eVar11.f3708h;
            eVar3.f3702b = eVar11;
            eVar11.f3701a = eVar3;
            eVar.f3702b = null;
        } else {
            i4 = 0;
        }
        e<K, V> eVar12 = eVar.f3703c;
        if (eVar12 != null) {
            i5 = eVar12.f3708h;
            eVar3.f3703c = eVar12;
            eVar12.f3701a = eVar3;
            eVar.f3703c = null;
        }
        eVar3.f3708h = Math.max(i4, i5) + 1;
        f(eVar, eVar3);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        s<K, V>.b bVar = this.f3693f;
        if (bVar != null) {
            return bVar;
        }
        s<K, V>.b bVar2 = new b();
        this.f3693f = bVar2;
        return bVar2;
    }

    public final void f(e<K, V> eVar, e<K, V> eVar2) {
        e<K, V> eVar3 = eVar.f3701a;
        eVar.f3701a = null;
        if (eVar2 != null) {
            eVar2.f3701a = eVar3;
        }
        if (eVar3 == null) {
            this.f3689b = eVar2;
        } else if (eVar3.f3702b == eVar) {
            eVar3.f3702b = eVar2;
        } else {
            eVar3.f3703c = eVar2;
        }
    }

    public final void g(e<K, V> eVar) {
        e<K, V> eVar2 = eVar.f3702b;
        e<K, V> eVar3 = eVar.f3703c;
        e<K, V> eVar4 = eVar3.f3702b;
        e<K, V> eVar5 = eVar3.f3703c;
        eVar.f3703c = eVar4;
        if (eVar4 != null) {
            eVar4.f3701a = eVar;
        }
        f(eVar, eVar3);
        eVar3.f3702b = eVar;
        eVar.f3701a = eVar3;
        int iMax = Math.max(eVar2 != null ? eVar2.f3708h : 0, eVar4 != null ? eVar4.f3708h : 0) + 1;
        eVar.f3708h = iMax;
        eVar3.f3708h = Math.max(iMax, eVar5 != null ? eVar5.f3708h : 0) + 1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        e<K, V> eVarC = c(obj);
        if (eVarC != null) {
            return eVarC.f3707g;
        }
        return null;
    }

    public final void h(e<K, V> eVar) {
        e<K, V> eVar2 = eVar.f3702b;
        e<K, V> eVar3 = eVar.f3703c;
        e<K, V> eVar4 = eVar2.f3702b;
        e<K, V> eVar5 = eVar2.f3703c;
        eVar.f3702b = eVar5;
        if (eVar5 != null) {
            eVar5.f3701a = eVar;
        }
        f(eVar, eVar2);
        eVar2.f3703c = eVar;
        eVar.f3701a = eVar2;
        int iMax = Math.max(eVar3 != null ? eVar3.f3708h : 0, eVar5 != null ? eVar5.f3708h : 0) + 1;
        eVar.f3708h = iMax;
        eVar2.f3708h = Math.max(iMax, eVar4 != null ? eVar4.f3708h : 0) + 1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<K> keySet() {
        s<K, V>.c cVar = this.f3694g;
        if (cVar != null) {
            return cVar;
        }
        s<K, V>.c cVar2 = new c();
        this.f3694g = cVar2;
        return cVar2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V put(K k4, V v3) {
        Objects.requireNonNull(k4, "key == null");
        e<K, V> eVarA = a(k4, true);
        V v4 = eVarA.f3707g;
        eVarA.f3707g = v3;
        return v4;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        e<K, V> eVarC = c(obj);
        if (eVarC != null) {
            e(eVarC, true);
        }
        if (eVarC != null) {
            return eVarC.f3707g;
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.f3690c;
    }

    public static final class e<K, V> implements Map.Entry<K, V> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public e<K, V> f3701a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public e<K, V> f3702b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public e<K, V> f3703c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public e<K, V> f3704d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public e<K, V> f3705e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final K f3706f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public V f3707g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f3708h;

        public e() {
            this.f3706f = null;
            this.f3705e = this;
            this.f3704d = this;
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            K k4 = this.f3706f;
            if (k4 == null) {
                if (entry.getKey() != null) {
                    return false;
                }
            } else if (!k4.equals(entry.getKey())) {
                return false;
            }
            V v3 = this.f3707g;
            if (v3 == null) {
                if (entry.getValue() != null) {
                    return false;
                }
            } else if (!v3.equals(entry.getValue())) {
                return false;
            }
            return true;
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            return this.f3706f;
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            return this.f3707g;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            K k4 = this.f3706f;
            int iHashCode = k4 == null ? 0 : k4.hashCode();
            V v3 = this.f3707g;
            return iHashCode ^ (v3 != null ? v3.hashCode() : 0);
        }

        @Override // java.util.Map.Entry
        public V setValue(V v3) {
            V v4 = this.f3707g;
            this.f3707g = v3;
            return v4;
        }

        public String toString() {
            return this.f3706f + "=" + this.f3707g;
        }

        public e(e<K, V> eVar, K k4, e<K, V> eVar2, e<K, V> eVar3) {
            this.f3701a = eVar;
            this.f3706f = k4;
            this.f3708h = 1;
            this.f3704d = eVar2;
            this.f3705e = eVar3;
            eVar3.f3704d = this;
            eVar2.f3705e = this;
        }
    }
}
