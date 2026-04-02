package s1;

import com.google.errorprone.annotations.concurrent.LazyInit;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class n<E> extends h<E> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final transient E f3489d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @LazyInit
    public transient int f3490e;

    public n(E e4) {
        Objects.requireNonNull(e4);
        this.f3489d = e4;
    }

    @Override // s1.e
    public int b(Object[] objArr, int i4) {
        objArr[i4] = this.f3489d;
        return i4 + 1;
    }

    @Override // s1.e, java.util.AbstractCollection, java.util.Collection
    public boolean contains(Object obj) {
        return this.f3489d.equals(obj);
    }

    @Override // s1.h, s1.e, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    /* JADX INFO: renamed from: g */
    public o<E> iterator() {
        return new i(this.f3489d);
    }

    @Override // s1.h, java.util.Collection, java.util.Set
    public final int hashCode() {
        int i4 = this.f3490e;
        if (i4 != 0) {
            return i4;
        }
        int iHashCode = this.f3489d.hashCode();
        this.f3490e = iHashCode;
        return iHashCode;
    }

    @Override // s1.h
    public f<E> j() {
        E e4 = this.f3489d;
        a<Object> aVar = f.f3450b;
        return f.i(e4);
    }

    @Override // s1.h
    public boolean k() {
        return this.f3490e != 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return 1;
    }

    @Override // java.util.AbstractCollection
    public String toString() {
        return '[' + this.f3489d.toString() + ']';
    }

    public n(E e4, int i4) {
        this.f3489d = e4;
        this.f3490e = i4;
    }
}
