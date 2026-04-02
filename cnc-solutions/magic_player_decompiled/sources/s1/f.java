package s1;

import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: loaded from: classes.dex */
public abstract class f<E> extends e<E> implements List<E>, RandomAccess {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final s1.a<Object> f3450b = new a(k.f3466e, 0);

    /* JADX INFO: loaded from: classes2.dex */
    public static class a<E> extends s1.a<E> {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final f<E> f3451c;

        public a(f<E> fVar, int i4) {
            super(fVar.size(), i4);
            this.f3451c = fVar;
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    public static class b implements Serializable {
        private static final long serialVersionUID = 0;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Object[] f3452a;

        public b(Object[] objArr) {
            this.f3452a = objArr;
        }

        public Object readResolve() {
            Object[] objArr = this.f3452a;
            s1.a<Object> aVar = f.f3450b;
            return objArr.length == 0 ? k.f3466e : f.i((Object[]) objArr.clone());
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    public class c extends f<E> {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final transient int f3453c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final transient int f3454d;

        public c(int i4, int i5) {
            this.f3453c = i4;
            this.f3454d = i5;
        }

        @Override // s1.e
        public Object[] c() {
            return f.this.c();
        }

        @Override // s1.e
        public int d() {
            return f.this.e() + this.f3453c + this.f3454d;
        }

        @Override // s1.e
        public int e() {
            return f.this.e() + this.f3453c;
        }

        @Override // s1.e
        public boolean f() {
            return true;
        }

        @Override // java.util.List
        public E get(int i4) {
            r1.d.b(i4, this.f3454d);
            return f.this.get(i4 + this.f3453c);
        }

        @Override // s1.f, s1.e, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator iterator() {
            return listIterator();
        }

        @Override // s1.f, java.util.List
        public /* bridge */ /* synthetic */ ListIterator listIterator() {
            return listIterator();
        }

        @Override // s1.f, java.util.List
        /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
        public f<E> subList(int i4, int i5) {
            r1.d.d(i4, i5, this.f3454d);
            f fVar = f.this;
            int i6 = this.f3453c;
            return fVar.subList(i4 + i6, i5 + i6);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f3454d;
        }

        @Override // s1.f, java.util.List
        public /* bridge */ /* synthetic */ ListIterator listIterator(int i4) {
            return listIterator(i4);
        }
    }

    public static <E> f<E> h(Object[] objArr) {
        int length = objArr.length;
        return length == 0 ? (f<E>) k.f3466e : new k(objArr, length);
    }

    public static <E> f<E> i(Object... objArr) {
        int length = objArr.length;
        for (int i4 = 0; i4 < length; i4++) {
            s1.b.a(objArr[i4], i4);
        }
        return h(objArr);
    }

    public static <E> f<E> j(Collection<? extends E> collection) {
        if (!(collection instanceof e)) {
            return i(collection.toArray());
        }
        f<E> fVarA = ((e) collection).a();
        return fVarA.f() ? h(fVarA.toArray()) : fVarA;
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Use SerializedForm");
    }

    @Override // s1.e
    public final f<E> a() {
        return this;
    }

    @Override // java.util.List
    @Deprecated
    public final void add(int i4, E e4) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    @CanIgnoreReturnValue
    @Deprecated
    public final boolean addAll(int i4, Collection<? extends E> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // s1.e
    public int b(Object[] objArr, int i4) {
        int size = size();
        for (int i5 = 0; i5 < size; i5++) {
            objArr[i4 + i5] = get(i5);
        }
        return i4 + size;
    }

    @Override // s1.e, java.util.AbstractCollection, java.util.Collection
    public boolean contains(@NullableDecl Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override // java.util.Collection, java.util.List
    public boolean equals(@NullableDecl Object obj) {
        if (obj != this) {
            if (!(obj instanceof List)) {
                return false;
            }
            List list = (List) obj;
            int size = size();
            if (size != list.size()) {
                return false;
            }
            if (!(list instanceof RandomAccess)) {
                Iterator<E> it = iterator();
                Iterator<E> it2 = list.iterator();
                while (it.hasNext()) {
                    if (!it2.hasNext() || !r1.c.a(it.next(), it2.next())) {
                        return false;
                    }
                }
                return !it2.hasNext();
            }
            for (int i4 = 0; i4 < size; i4++) {
                if (!r1.c.a(get(i4), list.get(i4))) {
                    return false;
                }
            }
        }
        return true;
    }

    @Override // s1.e
    /* JADX INFO: renamed from: g */
    public o<E> iterator() {
        return listIterator();
    }

    @Override // java.util.Collection, java.util.List
    public int hashCode() {
        int size = size();
        int iHashCode = 1;
        for (int i4 = 0; i4 < size; i4++) {
            iHashCode = ((get(i4).hashCode() + (iHashCode * 31)) ^ (-1)) ^ (-1);
        }
        return iHashCode;
    }

    @Override // java.util.List
    public int indexOf(@NullableDecl Object obj) {
        if (obj == null) {
            return -1;
        }
        int size = size();
        for (int i4 = 0; i4 < size; i4++) {
            if (obj.equals(get(i4))) {
                return i4;
            }
        }
        return -1;
    }

    @Override // s1.e, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public Iterator iterator() {
        return listIterator();
    }

    @Override // java.util.List
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public s1.a listIterator() {
        return listIterator(0);
    }

    @Override // java.util.List
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public s1.a listIterator(int i4) {
        r1.d.c(i4, size());
        return isEmpty() ? f3450b : new a(this, i4);
    }

    @Override // java.util.List
    public int lastIndexOf(@NullableDecl Object obj) {
        if (obj == null) {
            return -1;
        }
        for (int size = size() - 1; size >= 0; size--) {
            if (obj.equals(get(size))) {
                return size;
            }
        }
        return -1;
    }

    @Override // java.util.List
    /* JADX INFO: renamed from: m */
    public f<E> subList(int i4, int i5) {
        r1.d.d(i4, i5, size());
        int i6 = i5 - i4;
        return i6 == size() ? this : i6 == 0 ? (f<E>) k.f3466e : new c(i4, i6);
    }

    @Override // java.util.List
    @CanIgnoreReturnValue
    @Deprecated
    public final E remove(int i4) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    @CanIgnoreReturnValue
    @Deprecated
    public final E set(int i4, E e4) {
        throw new UnsupportedOperationException();
    }

    @Override // s1.e
    public Object writeReplace() {
        return new b(toArray());
    }
}
