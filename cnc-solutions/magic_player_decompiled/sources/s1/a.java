package s1;

import java.util.ListIterator;
import java.util.NoSuchElementException;
import s1.f;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a<E> implements ListIterator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f3446a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f3447b;

    public a(int i4, int i5) {
        r1.d.c(i5, i4);
        this.f3446a = i4;
        this.f3447b = i5;
    }

    @Override // java.util.ListIterator
    public final void add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final boolean hasNext() {
        return this.f3447b < this.f3446a;
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f3447b > 0;
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final E next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        int i4 = this.f3447b;
        this.f3447b = i4 + 1;
        return ((f.a) this).f3451c.get(i4);
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f3447b;
    }

    @Override // java.util.ListIterator
    public final E previous() {
        if (!hasPrevious()) {
            throw new NoSuchElementException();
        }
        int i4 = this.f3447b - 1;
        this.f3447b = i4;
        return ((f.a) this).f3451c.get(i4);
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f3447b - 1;
    }

    @Override // java.util.ListIterator
    public final void set(Object obj) {
        throw new UnsupportedOperationException();
    }
}
