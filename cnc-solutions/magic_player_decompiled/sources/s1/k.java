package s1;

/* JADX INFO: loaded from: classes2.dex */
public class k<E> extends f<E> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final f<Object> f3466e = new k(new Object[0], 0);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final transient Object[] f3467c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final transient int f3468d;

    public k(Object[] objArr, int i4) {
        this.f3467c = objArr;
        this.f3468d = i4;
    }

    @Override // s1.f, s1.e
    public int b(Object[] objArr, int i4) {
        System.arraycopy(this.f3467c, 0, objArr, i4, this.f3468d);
        return i4 + this.f3468d;
    }

    @Override // s1.e
    public Object[] c() {
        return this.f3467c;
    }

    @Override // s1.e
    public int d() {
        return this.f3468d;
    }

    @Override // s1.e
    public int e() {
        return 0;
    }

    @Override // s1.e
    public boolean f() {
        return false;
    }

    @Override // java.util.List
    public E get(int i4) {
        r1.d.b(i4, this.f3468d);
        return (E) this.f3467c[i4];
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f3468d;
    }
}
