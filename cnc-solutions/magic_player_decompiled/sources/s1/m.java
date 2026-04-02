package s1;

import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: loaded from: classes.dex */
public final class m<E> extends h<E> {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final m<Object> f3483i = new m<>(new Object[0], 0, null, 0, 0);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final transient Object[] f3484d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final transient Object[] f3485e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final transient int f3486f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final transient int f3487g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final transient int f3488h;

    public m(Object[] objArr, int i4, Object[] objArr2, int i5, int i6) {
        this.f3484d = objArr;
        this.f3485e = objArr2;
        this.f3486f = i5;
        this.f3487g = i4;
        this.f3488h = i6;
    }

    @Override // s1.e
    public int b(Object[] objArr, int i4) {
        System.arraycopy(this.f3484d, 0, objArr, i4, this.f3488h);
        return i4 + this.f3488h;
    }

    @Override // s1.e
    public Object[] c() {
        return this.f3484d;
    }

    @Override // s1.e, java.util.AbstractCollection, java.util.Collection
    public boolean contains(@NullableDecl Object obj) {
        Object[] objArr = this.f3485e;
        if (obj == null || objArr == null) {
            return false;
        }
        int iB = d.b(obj.hashCode());
        while (true) {
            int i4 = iB & this.f3486f;
            Object obj2 = objArr[i4];
            if (obj2 == null) {
                return false;
            }
            if (obj2.equals(obj)) {
                return true;
            }
            iB = i4 + 1;
        }
    }

    @Override // s1.e
    public int d() {
        return this.f3488h;
    }

    @Override // s1.e
    public int e() {
        return 0;
    }

    @Override // s1.h, s1.e, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    /* JADX INFO: renamed from: g */
    public o<E> iterator() {
        return a().listIterator();
    }

    @Override // s1.h, java.util.Collection, java.util.Set
    public int hashCode() {
        return this.f3487g;
    }

    @Override // s1.h
    public f<E> j() {
        Object[] objArr = this.f3484d;
        int i4 = this.f3488h;
        a<Object> aVar = f.f3450b;
        return i4 == 0 ? (f<E>) k.f3466e : new k(objArr, i4);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return this.f3488h;
    }
}
