package s1;

import java.util.AbstractMap;
import java.util.Map;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: loaded from: classes.dex */
public final class l<K, V> extends g<K, V> {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final g<Object, Object> f3469g = new l(null, new Object[0], 0);
    private static final long serialVersionUID = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final transient int[] f3470d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final transient Object[] f3471e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final transient int f3472f;

    /* JADX INFO: loaded from: classes2.dex */
    public static class a<K, V> extends h<Map.Entry<K, V>> {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final transient g<K, V> f3473d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final transient Object[] f3474e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final transient int f3475f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public final transient int f3476g;

        /* JADX INFO: renamed from: s1.l$a$a, reason: collision with other inner class name */
        public class C0044a extends f<Map.Entry<K, V>> {
            public C0044a() {
            }

            @Override // s1.e
            public boolean f() {
                return true;
            }

            @Override // java.util.List
            public Object get(int i4) {
                r1.d.b(i4, a.this.f3476g);
                a aVar = a.this;
                Object[] objArr = aVar.f3474e;
                int i5 = i4 * 2;
                int i6 = aVar.f3475f;
                return new AbstractMap.SimpleImmutableEntry(objArr[i5 + i6], objArr[i5 + (i6 ^ 1)]);
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
            public int size() {
                return a.this.f3476g;
            }
        }

        public a(g<K, V> gVar, Object[] objArr, int i4, int i5) {
            this.f3473d = gVar;
            this.f3474e = objArr;
            this.f3475f = i4;
            this.f3476g = i5;
        }

        @Override // s1.e
        public int b(Object[] objArr, int i4) {
            return a().b(objArr, i4);
        }

        @Override // s1.e, java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            Object value = entry.getValue();
            return value != null && value.equals(this.f3473d.get(key));
        }

        @Override // s1.h, s1.e, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        /* JADX INFO: renamed from: g */
        public o<Map.Entry<K, V>> iterator() {
            return a().listIterator();
        }

        @Override // s1.h
        public f<Map.Entry<K, V>> j() {
            return new C0044a();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return this.f3476g;
        }
    }

    public static final class b<K> extends h<K> {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final transient g<K, ?> f3478d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final transient f<K> f3479e;

        public b(g<K, ?> gVar, f<K> fVar) {
            this.f3478d = gVar;
            this.f3479e = fVar;
        }

        @Override // s1.h, s1.e
        public f<K> a() {
            return this.f3479e;
        }

        @Override // s1.e
        public int b(Object[] objArr, int i4) {
            return this.f3479e.b(objArr, i4);
        }

        @Override // s1.e, java.util.AbstractCollection, java.util.Collection
        public boolean contains(@NullableDecl Object obj) {
            return this.f3478d.get(obj) != null;
        }

        @Override // s1.h, s1.e, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        /* JADX INFO: renamed from: g */
        public o<K> iterator() {
            return this.f3479e.listIterator();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return this.f3478d.size();
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    public static final class c extends f<Object> {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final transient Object[] f3480c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final transient int f3481d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final transient int f3482e;

        public c(Object[] objArr, int i4, int i5) {
            this.f3480c = objArr;
            this.f3481d = i4;
            this.f3482e = i5;
        }

        @Override // s1.e
        public boolean f() {
            return true;
        }

        @Override // java.util.List
        public Object get(int i4) {
            r1.d.b(i4, this.f3482e);
            return this.f3480c[(i4 * 2) + this.f3481d];
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f3482e;
        }
    }

    public l(int[] iArr, Object[] objArr, int i4) {
        this.f3470d = iArr;
        this.f3471e = objArr;
        this.f3472f = i4;
    }

    @Override // s1.g
    public h<Map.Entry<K, V>> a() {
        return new a(this, this.f3471e, 0, this.f3472f);
    }

    @Override // s1.g
    public h<K> b() {
        return new b(this, new c(this.f3471e, 0, this.f3472f));
    }

    @Override // s1.g
    public e<V> c() {
        return new c(this.f3471e, 1, this.f3472f);
    }

    @Override // s1.g, java.util.Map
    @NullableDecl
    public V get(@NullableDecl Object obj) {
        int[] iArr = this.f3470d;
        Object[] objArr = this.f3471e;
        int i4 = this.f3472f;
        if (obj == null) {
            return null;
        }
        if (i4 == 1) {
            if (objArr[0].equals(obj)) {
                return (V) objArr[1];
            }
            return null;
        }
        if (iArr == null) {
            return null;
        }
        int length = iArr.length - 1;
        int iB = d.b(obj.hashCode());
        while (true) {
            int i5 = iB & length;
            int i6 = iArr[i5];
            if (i6 == -1) {
                return null;
            }
            if (objArr[i6].equals(obj)) {
                return (V) objArr[i6 ^ 1];
            }
            iB = i5 + 1;
        }
    }

    @Override // java.util.Map
    public int size() {
        return this.f3472f;
    }
}
