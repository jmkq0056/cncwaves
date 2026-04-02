package org.eclipse.jetty.util;

import androidx.appcompat.widget.ActivityChooserView;
import java.util.AbstractList;
import java.util.Collection;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: loaded from: classes2.dex */
public class BlockingArrayQueue<E> extends AbstractList<E> implements BlockingQueue<E> {
    private volatile int _capacity;
    private Object[] _elements;
    private final int _growCapacity;
    private int _head;
    private final ReentrantLock _headLock;
    private final int _limit;
    private final Condition _notEmpty;
    private long _space0;
    private long _space1;
    private long _space2;
    private long _space3;
    private long _space4;
    private long _space5;
    private long _space6;
    private long _space7;
    private int _tail;
    private final ReentrantLock _tailLock;
    public final int DEFAULT_CAPACITY = 128;
    public final int DEFAULT_GROWTH = 64;
    private final AtomicInteger _size = new AtomicInteger();

    public BlockingArrayQueue() {
        ReentrantLock reentrantLock = new ReentrantLock();
        this._headLock = reentrantLock;
        this._notEmpty = reentrantLock.newCondition();
        this._tailLock = new ReentrantLock();
        Object[] objArr = new Object[128];
        this._elements = objArr;
        this._growCapacity = 64;
        this._capacity = objArr.length;
        this._limit = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
    }

    private boolean grow() {
        int i4;
        if (this._growCapacity <= 0) {
            return false;
        }
        this._tailLock.lock();
        try {
            this._headLock.lock();
            try {
                int i5 = this._head;
                int i6 = this._tail;
                Object[] objArr = new Object[this._capacity + this._growCapacity];
                if (i5 < i6) {
                    i4 = i6 - i5;
                    System.arraycopy(this._elements, i5, objArr, 0, i4);
                } else if (i5 > i6 || this._size.get() > 0) {
                    int i7 = (this._capacity + i6) - i5;
                    int i8 = this._capacity - i5;
                    System.arraycopy(this._elements, i5, objArr, 0, i8);
                    System.arraycopy(this._elements, 0, objArr, i8, i6);
                    i4 = i7;
                } else {
                    i4 = 0;
                }
                this._elements = objArr;
                this._capacity = objArr.length;
                this._head = 0;
                this._tail = i4;
                return true;
            } finally {
                this._headLock.unlock();
            }
        } finally {
            this._tailLock.unlock();
        }
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List, java.util.concurrent.BlockingQueue, java.util.Queue
    public boolean add(E e4) {
        return offer(e4);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public void clear() {
        this._tailLock.lock();
        try {
            this._headLock.lock();
            try {
                this._head = 0;
                this._tail = 0;
                this._size.set(0);
            } finally {
                this._headLock.unlock();
            }
        } finally {
            this._tailLock.unlock();
        }
    }

    @Override // java.util.concurrent.BlockingQueue
    public int drainTo(Collection<? super E> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Queue
    public E element() {
        E ePeek = peek();
        if (ePeek != null) {
            return ePeek;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.AbstractList, java.util.List
    public E get(int i4) {
        this._tailLock.lock();
        try {
            this._headLock.lock();
            if (i4 >= 0) {
                try {
                    if (i4 < this._size.get()) {
                        int i5 = this._head + i4;
                        if (i5 >= this._capacity) {
                            i5 -= this._capacity;
                        }
                        return (E) this._elements[i5];
                    }
                } finally {
                    this._headLock.unlock();
                }
            }
            throw new IndexOutOfBoundsException("!(0<" + i4 + "<=" + this._size + ")");
        } finally {
            this._tailLock.unlock();
        }
    }

    public int getCapacity() {
        return this._capacity;
    }

    public int getLimit() {
        return this._limit;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean isEmpty() {
        return this._size.get() == 0;
    }

    @Override // java.util.concurrent.BlockingQueue, java.util.Queue
    public boolean offer(E e4) {
        Objects.requireNonNull(e4);
        this._tailLock.lock();
        try {
            if (this._size.get() < this._limit) {
                if (this._size.get() == this._capacity) {
                    this._headLock.lock();
                    try {
                        if (grow()) {
                            this._headLock.unlock();
                        } else {
                            this._headLock.unlock();
                        }
                    } finally {
                    }
                }
                Object[] objArr = this._elements;
                int i4 = this._tail;
                objArr[i4] = e4;
                this._tail = (i4 + 1) % this._capacity;
                if (this._size.getAndIncrement() == 0) {
                    this._headLock.lock();
                    try {
                        this._notEmpty.signal();
                    } finally {
                    }
                }
                return true;
            }
            return false;
        } finally {
            this._tailLock.unlock();
        }
    }

    @Override // java.util.Queue
    public E peek() {
        E e4 = null;
        if (this._size.get() == 0) {
            return null;
        }
        this._headLock.lock();
        try {
            if (this._size.get() > 0) {
                e4 = (E) this._elements[this._head];
            }
            return e4;
        } finally {
            this._headLock.unlock();
        }
    }

    @Override // java.util.Queue
    public E poll() {
        E e4 = null;
        if (this._size.get() == 0) {
            return null;
        }
        this._headLock.lock();
        try {
            if (this._size.get() > 0) {
                int i4 = this._head;
                Object[] objArr = this._elements;
                Object obj = objArr[i4];
                objArr[i4] = null;
                this._head = (i4 + 1) % this._capacity;
                if (this._size.decrementAndGet() > 0) {
                    this._notEmpty.signal();
                }
                e4 = (E) obj;
            }
            return e4;
        } finally {
            this._headLock.unlock();
        }
    }

    @Override // java.util.concurrent.BlockingQueue
    public void put(E e4) {
        if (!add(e4)) {
            throw new IllegalStateException("full");
        }
    }

    @Override // java.util.concurrent.BlockingQueue
    public int remainingCapacity() {
        this._tailLock.lock();
        try {
            this._headLock.lock();
            try {
                return getCapacity() - size();
            } finally {
                this._headLock.unlock();
            }
        } finally {
            this._tailLock.unlock();
        }
    }

    @Override // java.util.Queue
    public E remove() {
        E ePoll = poll();
        if (ePoll != null) {
            return ePoll;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.AbstractList, java.util.List
    public E set(int i4, E e4) {
        Objects.requireNonNull(e4);
        this._tailLock.lock();
        try {
            this._headLock.lock();
            if (i4 >= 0) {
                try {
                    if (i4 < this._size.get()) {
                        int i5 = this._head + i4;
                        if (i5 >= this._capacity) {
                            i5 -= this._capacity;
                        }
                        Object[] objArr = this._elements;
                        E e5 = (E) objArr[i5];
                        objArr[i5] = e4;
                        return e5;
                    }
                } finally {
                    this._headLock.unlock();
                }
            }
            throw new IndexOutOfBoundsException("!(0<" + i4 + "<=" + this._size + ")");
        } finally {
            this._tailLock.unlock();
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this._size.get();
    }

    public long sumOfSpace() {
        long j4 = this._space0;
        this._space0 = j4 + 1;
        long j5 = this._space1;
        this._space1 = j5 + 1;
        long j6 = j4 + j5;
        long j7 = this._space2;
        this._space2 = j7 + 1;
        long j8 = j6 + j7;
        long j9 = this._space3;
        this._space3 = j9 + 1;
        long j10 = j8 + j9;
        long j11 = this._space4;
        this._space4 = j11 + 1;
        long j12 = j10 + j11;
        long j13 = this._space5;
        this._space5 = j13 + 1;
        long j14 = j12 + j13;
        long j15 = this._space6;
        this._space6 = j15 + 1;
        long j16 = j14 + j15;
        long j17 = this._space7;
        this._space7 = 1 + j17;
        return j16 + j17;
    }

    @Override // java.util.concurrent.BlockingQueue
    public E take() throws InterruptedException {
        this._headLock.lockInterruptibly();
        while (this._size.get() == 0) {
            try {
                try {
                    this._notEmpty.await();
                } catch (InterruptedException e4) {
                    this._notEmpty.signal();
                    throw e4;
                }
            } finally {
                this._headLock.unlock();
            }
        }
        int i4 = this._head;
        Object[] objArr = this._elements;
        E e5 = (E) objArr[i4];
        objArr[i4] = null;
        this._head = (i4 + 1) % this._capacity;
        if (this._size.decrementAndGet() > 0) {
            this._notEmpty.signal();
        }
        return e5;
    }

    @Override // java.util.AbstractList, java.util.List
    public void add(int i4, E e4) {
        Objects.requireNonNull(e4);
        this._tailLock.lock();
        try {
            this._headLock.lock();
            if (i4 >= 0) {
                try {
                    if (i4 <= this._size.get()) {
                        if (i4 == this._size.get()) {
                            add(e4);
                        } else {
                            if (this._tail == this._head && !grow()) {
                                throw new IllegalStateException("full");
                            }
                            int i5 = this._head + i4;
                            if (i5 >= this._capacity) {
                                i5 -= this._capacity;
                            }
                            this._size.incrementAndGet();
                            int i6 = (this._tail + 1) % this._capacity;
                            this._tail = i6;
                            if (i5 < i6) {
                                Object[] objArr = this._elements;
                                System.arraycopy(objArr, i5, objArr, i5 + 1, i6 - i5);
                                this._elements[i5] = e4;
                            } else {
                                if (i6 > 0) {
                                    Object[] objArr2 = this._elements;
                                    System.arraycopy(objArr2, 0, objArr2, 1, i6);
                                    Object[] objArr3 = this._elements;
                                    objArr3[0] = objArr3[this._capacity - 1];
                                }
                                Object[] objArr4 = this._elements;
                                System.arraycopy(objArr4, i5, objArr4, i5 + 1, (this._capacity - i5) - 1);
                                this._elements[i5] = e4;
                            }
                        }
                        return;
                    }
                } finally {
                    this._headLock.unlock();
                }
            }
            throw new IndexOutOfBoundsException("!(0<" + i4 + "<=" + this._size + ")");
        } finally {
            this._tailLock.unlock();
        }
    }

    @Override // java.util.concurrent.BlockingQueue
    public int drainTo(Collection<? super E> collection, int i4) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractList, java.util.List
    public E remove(int i4) {
        this._tailLock.lock();
        try {
            this._headLock.lock();
            if (i4 >= 0) {
                try {
                    if (i4 < this._size.get()) {
                        int i5 = this._head + i4;
                        if (i5 >= this._capacity) {
                            i5 -= this._capacity;
                        }
                        Object[] objArr = this._elements;
                        E e4 = (E) objArr[i5];
                        int i6 = this._tail;
                        if (i5 < i6) {
                            System.arraycopy(objArr, i5 + 1, objArr, i5, i6 - i5);
                            this._tail--;
                            this._size.decrementAndGet();
                        } else {
                            System.arraycopy(objArr, i5 + 1, objArr, i5, (this._capacity - i5) - 1);
                            if (this._tail > 0) {
                                Object[] objArr2 = this._elements;
                                int i7 = this._capacity;
                                Object[] objArr3 = this._elements;
                                objArr2[i7] = objArr3[0];
                                System.arraycopy(objArr3, 1, objArr3, 0, this._tail - 1);
                                this._tail--;
                            } else {
                                this._tail = this._capacity - 1;
                            }
                            this._size.decrementAndGet();
                        }
                        return e4;
                    }
                } finally {
                    this._headLock.unlock();
                }
            }
            throw new IndexOutOfBoundsException("!(0<" + i4 + "<=" + this._size + ")");
        } finally {
            this._tailLock.unlock();
        }
    }

    @Override // java.util.concurrent.BlockingQueue
    public E poll(long j4, TimeUnit timeUnit) throws InterruptedException {
        long nanos = timeUnit.toNanos(j4);
        this._headLock.lockInterruptibly();
        while (this._size.get() == 0) {
            try {
                try {
                    if (nanos <= 0) {
                        return null;
                    }
                    nanos = this._notEmpty.awaitNanos(nanos);
                } catch (InterruptedException e4) {
                    this._notEmpty.signal();
                    throw e4;
                }
            } finally {
                this._headLock.unlock();
            }
        }
        Object[] objArr = this._elements;
        int i4 = this._head;
        E e5 = (E) objArr[i4];
        objArr[i4] = null;
        this._head = (i4 + 1) % this._capacity;
        if (this._size.decrementAndGet() > 0) {
            this._notEmpty.signal();
        }
        return e5;
    }

    public BlockingArrayQueue(int i4) {
        ReentrantLock reentrantLock = new ReentrantLock();
        this._headLock = reentrantLock;
        this._notEmpty = reentrantLock.newCondition();
        this._tailLock = new ReentrantLock();
        Object[] objArr = new Object[i4];
        this._elements = objArr;
        this._capacity = objArr.length;
        this._growCapacity = -1;
        this._limit = i4;
    }

    @Override // java.util.concurrent.BlockingQueue
    public boolean offer(E e4, long j4, TimeUnit timeUnit) {
        throw new UnsupportedOperationException();
    }

    public BlockingArrayQueue(int i4, int i5) {
        ReentrantLock reentrantLock = new ReentrantLock();
        this._headLock = reentrantLock;
        this._notEmpty = reentrantLock.newCondition();
        this._tailLock = new ReentrantLock();
        Object[] objArr = new Object[i4];
        this._elements = objArr;
        this._capacity = objArr.length;
        this._growCapacity = i5;
        this._limit = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
    }

    public BlockingArrayQueue(int i4, int i5, int i6) {
        ReentrantLock reentrantLock = new ReentrantLock();
        this._headLock = reentrantLock;
        this._notEmpty = reentrantLock.newCondition();
        this._tailLock = new ReentrantLock();
        if (i4 <= i6) {
            Object[] objArr = new Object[i4];
            this._elements = objArr;
            this._capacity = objArr.length;
            this._growCapacity = i5;
            this._limit = i6;
            return;
        }
        throw new IllegalArgumentException();
    }
}
