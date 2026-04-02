package org.eclipse.jetty.util;

import java.util.AbstractList;
import java.util.NoSuchElementException;
import java.util.Queue;

/* JADX INFO: loaded from: classes2.dex */
public class ArrayQueue<E> extends AbstractList<E> implements Queue<E> {
    public static final int DEFAULT_CAPACITY = 64;
    public static final int DEFAULT_GROWTH = 32;
    public Object[] _elements;
    public final int _growCapacity;
    public final Object _lock;
    public int _nextE;
    public int _nextSlot;
    public int _size;

    public ArrayQueue() {
        this(64, -1);
    }

    private E at(int i4) {
        return (E) this._elements[i4];
    }

    private E dequeue() {
        E eAt = at(this._nextE);
        Object[] objArr = this._elements;
        int i4 = this._nextE;
        objArr[i4] = null;
        this._size--;
        int i5 = i4 + 1;
        this._nextE = i5;
        if (i5 == objArr.length) {
            this._nextE = 0;
        }
        return eAt;
    }

    private boolean enqueue(E e4) {
        if (this._size == this._elements.length && !grow()) {
            return false;
        }
        this._size++;
        Object[] objArr = this._elements;
        int i4 = this._nextSlot;
        int i5 = i4 + 1;
        this._nextSlot = i5;
        objArr[i4] = e4;
        if (i5 == objArr.length) {
            this._nextSlot = 0;
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List, java.util.Queue
    public boolean add(E e4) {
        if (offer(e4)) {
            return true;
        }
        throw new IllegalStateException("Full");
    }

    public void addUnsafe(E e4) {
        if (!enqueue(e4)) {
            throw new IllegalStateException("Full");
        }
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public void clear() {
        synchronized (this._lock) {
            this._size = 0;
            this._nextE = 0;
            this._nextSlot = 0;
        }
    }

    @Override // java.util.Queue
    public E element() {
        E eAt;
        synchronized (this._lock) {
            if (isEmpty()) {
                throw new NoSuchElementException();
            }
            eAt = at(this._nextE);
        }
        return eAt;
    }

    @Override // java.util.AbstractList, java.util.List
    public E get(int i4) {
        E unsafe;
        synchronized (this._lock) {
            if (i4 >= 0) {
                if (i4 < this._size) {
                    unsafe = getUnsafe(i4);
                }
            }
            throw new IndexOutOfBoundsException("!(0<" + i4 + "<=" + this._size + ")");
        }
        return unsafe;
    }

    public int getCapacity() {
        int length;
        synchronized (this._lock) {
            length = this._elements.length;
        }
        return length;
    }

    public E getUnsafe(int i4) {
        return at((this._nextE + i4) % this._elements.length);
    }

    public boolean grow() {
        synchronized (this._lock) {
            int i4 = this._growCapacity;
            if (i4 <= 0) {
                return false;
            }
            Object[] objArr = this._elements;
            Object[] objArr2 = new Object[objArr.length + i4];
            int length = objArr.length;
            int i5 = this._nextE;
            int i6 = length - i5;
            if (i6 > 0) {
                System.arraycopy(objArr, i5, objArr2, 0, i6);
            }
            if (this._nextE != 0) {
                System.arraycopy(this._elements, 0, objArr2, i6, this._nextSlot);
            }
            this._elements = objArr2;
            this._nextE = 0;
            this._nextSlot = this._size;
            return true;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean isEmpty() {
        boolean z3;
        synchronized (this._lock) {
            z3 = this._size == 0;
        }
        return z3;
    }

    @Override // java.util.Queue
    public boolean offer(E e4) {
        boolean zEnqueue;
        synchronized (this._lock) {
            zEnqueue = enqueue(e4);
        }
        return zEnqueue;
    }

    @Override // java.util.Queue
    public E peek() {
        synchronized (this._lock) {
            if (isEmpty()) {
                return null;
            }
            return at(this._nextE);
        }
    }

    @Override // java.util.Queue
    public E poll() {
        synchronized (this._lock) {
            if (this._size == 0) {
                return null;
            }
            return dequeue();
        }
    }

    @Override // java.util.Queue
    public E remove() {
        E eDequeue;
        synchronized (this._lock) {
            if (this._size == 0) {
                throw new NoSuchElementException();
            }
            eDequeue = dequeue();
        }
        return eDequeue;
    }

    @Override // java.util.AbstractList, java.util.List
    public E set(int i4, E e4) {
        E eAt;
        synchronized (this._lock) {
            if (i4 >= 0) {
                if (i4 < this._size) {
                    int length = this._nextE + i4;
                    Object[] objArr = this._elements;
                    if (length >= objArr.length) {
                        length -= objArr.length;
                    }
                    eAt = at(length);
                    this._elements[length] = e4;
                }
            }
            throw new IndexOutOfBoundsException("!(0<" + i4 + "<=" + this._size + ")");
        }
        return eAt;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        int i4;
        synchronized (this._lock) {
            i4 = this._size;
        }
        return i4;
    }

    public ArrayQueue(int i4) {
        this(i4, -1);
    }

    public ArrayQueue(int i4, int i5) {
        this(i4, i5, null);
    }

    @Override // java.util.AbstractList, java.util.List
    public void add(int i4, E e4) {
        synchronized (this._lock) {
            if (i4 >= 0) {
                int i5 = this._size;
                if (i4 <= i5) {
                    if (i5 == this._elements.length && !grow()) {
                        throw new IllegalStateException("Full");
                    }
                    int i6 = this._size;
                    if (i4 == i6) {
                        add(e4);
                    } else {
                        int length = this._nextE + i4;
                        Object[] objArr = this._elements;
                        if (length >= objArr.length) {
                            length -= objArr.length;
                        }
                        this._size = i6 + 1;
                        int i7 = this._nextSlot + 1;
                        this._nextSlot = i7;
                        if (i7 == objArr.length) {
                            this._nextSlot = 0;
                        }
                        int i8 = this._nextSlot;
                        if (length < i8) {
                            System.arraycopy(objArr, length, objArr, length + 1, i8 - length);
                            this._elements[length] = e4;
                        } else {
                            if (i8 > 0) {
                                System.arraycopy(objArr, 0, objArr, 1, i8);
                                Object[] objArr2 = this._elements;
                                objArr2[0] = objArr2[objArr2.length - 1];
                            }
                            Object[] objArr3 = this._elements;
                            System.arraycopy(objArr3, length, objArr3, length + 1, (objArr3.length - length) - 1);
                            this._elements[length] = e4;
                        }
                    }
                }
            }
            throw new IndexOutOfBoundsException("!(0<" + i4 + "<=" + this._size + ")");
        }
    }

    public ArrayQueue(int i4, int i5, Object obj) {
        this._lock = obj == null ? this : obj;
        this._growCapacity = i5;
        this._elements = new Object[i4];
    }

    @Override // java.util.AbstractList, java.util.List
    public E remove(int i4) {
        E eAt;
        synchronized (this._lock) {
            if (i4 >= 0) {
                if (i4 < this._size) {
                    int length = (this._nextE + i4) % this._elements.length;
                    eAt = at(length);
                    int i5 = this._nextSlot;
                    if (length < i5) {
                        Object[] objArr = this._elements;
                        System.arraycopy(objArr, length + 1, objArr, length, i5 - length);
                        this._nextSlot--;
                        this._size--;
                    } else {
                        Object[] objArr2 = this._elements;
                        System.arraycopy(objArr2, length + 1, objArr2, length, (objArr2.length - length) - 1);
                        int i6 = this._nextSlot;
                        if (i6 > 0) {
                            Object[] objArr3 = this._elements;
                            objArr3[objArr3.length - 1] = objArr3[0];
                            System.arraycopy(objArr3, 1, objArr3, 0, i6 - 1);
                            this._nextSlot--;
                        } else {
                            this._nextSlot = this._elements.length - 1;
                        }
                        this._size--;
                    }
                }
            }
            throw new IndexOutOfBoundsException("!(0<" + i4 + "<=" + this._size + ")");
        }
        return eAt;
    }
}
