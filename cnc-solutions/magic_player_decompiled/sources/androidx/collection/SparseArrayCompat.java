package androidx.collection;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import org.eclipse.jetty.util.B64Code;
import org.slf4j.helpers.MessageFormatter;

/* JADX INFO: loaded from: classes.dex */
public class SparseArrayCompat<E> implements Cloneable {
    private static final Object DELETED = new Object();
    private boolean mGarbage;
    private int[] mKeys;
    private int mSize;
    private Object[] mValues;

    public SparseArrayCompat() {
        this(10);
    }

    private void gc() {
        int i4 = this.mSize;
        int[] iArr = this.mKeys;
        Object[] objArr = this.mValues;
        int i5 = 0;
        for (int i6 = 0; i6 < i4; i6++) {
            Object obj = objArr[i6];
            if (obj != DELETED) {
                if (i6 != i5) {
                    iArr[i5] = iArr[i6];
                    objArr[i5] = obj;
                    objArr[i6] = null;
                }
                i5++;
            }
        }
        this.mGarbage = false;
        this.mSize = i5;
    }

    public void append(int i4, E e4) {
        int i5 = this.mSize;
        if (i5 != 0 && i4 <= this.mKeys[i5 - 1]) {
            put(i4, e4);
            return;
        }
        if (this.mGarbage && i5 >= this.mKeys.length) {
            gc();
        }
        int i6 = this.mSize;
        if (i6 >= this.mKeys.length) {
            int iIdealIntArraySize = ContainerHelpers.idealIntArraySize(i6 + 1);
            int[] iArr = new int[iIdealIntArraySize];
            Object[] objArr = new Object[iIdealIntArraySize];
            int[] iArr2 = this.mKeys;
            System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
            Object[] objArr2 = this.mValues;
            System.arraycopy(objArr2, 0, objArr, 0, objArr2.length);
            this.mKeys = iArr;
            this.mValues = objArr;
        }
        this.mKeys[i6] = i4;
        this.mValues[i6] = e4;
        this.mSize = i6 + 1;
    }

    public void clear() {
        int i4 = this.mSize;
        Object[] objArr = this.mValues;
        for (int i5 = 0; i5 < i4; i5++) {
            objArr[i5] = null;
        }
        this.mSize = 0;
        this.mGarbage = false;
    }

    public boolean containsKey(int i4) {
        return indexOfKey(i4) >= 0;
    }

    public boolean containsValue(E e4) {
        return indexOfValue(e4) >= 0;
    }

    @Deprecated
    public void delete(int i4) {
        remove(i4);
    }

    @Nullable
    public E get(int i4) {
        return get(i4, null);
    }

    public int indexOfKey(int i4) {
        if (this.mGarbage) {
            gc();
        }
        return ContainerHelpers.binarySearch(this.mKeys, this.mSize, i4);
    }

    public int indexOfValue(E e4) {
        if (this.mGarbage) {
            gc();
        }
        for (int i4 = 0; i4 < this.mSize; i4++) {
            if (this.mValues[i4] == e4) {
                return i4;
            }
        }
        return -1;
    }

    public boolean isEmpty() {
        return size() == 0;
    }

    public int keyAt(int i4) {
        if (this.mGarbage) {
            gc();
        }
        return this.mKeys[i4];
    }

    public void put(int i4, E e4) {
        int iBinarySearch = ContainerHelpers.binarySearch(this.mKeys, this.mSize, i4);
        if (iBinarySearch >= 0) {
            this.mValues[iBinarySearch] = e4;
            return;
        }
        int iBinarySearch2 = iBinarySearch ^ (-1);
        int i5 = this.mSize;
        if (iBinarySearch2 < i5) {
            Object[] objArr = this.mValues;
            if (objArr[iBinarySearch2] == DELETED) {
                this.mKeys[iBinarySearch2] = i4;
                objArr[iBinarySearch2] = e4;
                return;
            }
        }
        if (this.mGarbage && i5 >= this.mKeys.length) {
            gc();
            iBinarySearch2 = ContainerHelpers.binarySearch(this.mKeys, this.mSize, i4) ^ (-1);
        }
        int i6 = this.mSize;
        if (i6 >= this.mKeys.length) {
            int iIdealIntArraySize = ContainerHelpers.idealIntArraySize(i6 + 1);
            int[] iArr = new int[iIdealIntArraySize];
            Object[] objArr2 = new Object[iIdealIntArraySize];
            int[] iArr2 = this.mKeys;
            System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
            Object[] objArr3 = this.mValues;
            System.arraycopy(objArr3, 0, objArr2, 0, objArr3.length);
            this.mKeys = iArr;
            this.mValues = objArr2;
        }
        int i7 = this.mSize;
        if (i7 - iBinarySearch2 != 0) {
            int[] iArr3 = this.mKeys;
            int i8 = iBinarySearch2 + 1;
            System.arraycopy(iArr3, iBinarySearch2, iArr3, i8, i7 - iBinarySearch2);
            Object[] objArr4 = this.mValues;
            System.arraycopy(objArr4, iBinarySearch2, objArr4, i8, this.mSize - iBinarySearch2);
        }
        this.mKeys[iBinarySearch2] = i4;
        this.mValues[iBinarySearch2] = e4;
        this.mSize++;
    }

    public void putAll(@NonNull SparseArrayCompat<? extends E> sparseArrayCompat) {
        int size = sparseArrayCompat.size();
        for (int i4 = 0; i4 < size; i4++) {
            put(sparseArrayCompat.keyAt(i4), sparseArrayCompat.valueAt(i4));
        }
    }

    @Nullable
    public E putIfAbsent(int i4, E e4) {
        E e5 = get(i4);
        if (e5 == null) {
            put(i4, e4);
        }
        return e5;
    }

    public void remove(int i4) {
        int iBinarySearch = ContainerHelpers.binarySearch(this.mKeys, this.mSize, i4);
        if (iBinarySearch >= 0) {
            Object[] objArr = this.mValues;
            Object obj = objArr[iBinarySearch];
            Object obj2 = DELETED;
            if (obj != obj2) {
                objArr[iBinarySearch] = obj2;
                this.mGarbage = true;
            }
        }
    }

    public void removeAt(int i4) {
        Object[] objArr = this.mValues;
        Object obj = objArr[i4];
        Object obj2 = DELETED;
        if (obj != obj2) {
            objArr[i4] = obj2;
            this.mGarbage = true;
        }
    }

    public void removeAtRange(int i4, int i5) {
        int iMin = Math.min(this.mSize, i5 + i4);
        while (i4 < iMin) {
            removeAt(i4);
            i4++;
        }
    }

    @Nullable
    public E replace(int i4, E e4) {
        int iIndexOfKey = indexOfKey(i4);
        if (iIndexOfKey < 0) {
            return null;
        }
        Object[] objArr = this.mValues;
        E e5 = (E) objArr[iIndexOfKey];
        objArr[iIndexOfKey] = e4;
        return e5;
    }

    public void setValueAt(int i4, E e4) {
        if (this.mGarbage) {
            gc();
        }
        this.mValues[i4] = e4;
    }

    public int size() {
        if (this.mGarbage) {
            gc();
        }
        return this.mSize;
    }

    public String toString() {
        if (size() <= 0) {
            return MessageFormatter.DELIM_STR;
        }
        StringBuilder sb = new StringBuilder(this.mSize * 28);
        sb.append(MessageFormatter.DELIM_START);
        for (int i4 = 0; i4 < this.mSize; i4++) {
            if (i4 > 0) {
                sb.append(", ");
            }
            sb.append(keyAt(i4));
            sb.append(B64Code.__pad);
            E eValueAt = valueAt(i4);
            if (eValueAt != this) {
                sb.append(eValueAt);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append(MessageFormatter.DELIM_STOP);
        return sb.toString();
    }

    public E valueAt(int i4) {
        if (this.mGarbage) {
            gc();
        }
        return (E) this.mValues[i4];
    }

    public SparseArrayCompat(int i4) {
        this.mGarbage = false;
        if (i4 == 0) {
            this.mKeys = ContainerHelpers.EMPTY_INTS;
            this.mValues = ContainerHelpers.EMPTY_OBJECTS;
        } else {
            int iIdealIntArraySize = ContainerHelpers.idealIntArraySize(i4);
            this.mKeys = new int[iIdealIntArraySize];
            this.mValues = new Object[iIdealIntArraySize];
        }
    }

    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public SparseArrayCompat<E> m1clone() {
        try {
            SparseArrayCompat<E> sparseArrayCompat = (SparseArrayCompat) super.clone();
            sparseArrayCompat.mKeys = (int[]) this.mKeys.clone();
            sparseArrayCompat.mValues = (Object[]) this.mValues.clone();
            return sparseArrayCompat;
        } catch (CloneNotSupportedException e4) {
            throw new AssertionError(e4);
        }
    }

    public E get(int i4, E e4) {
        int iBinarySearch = ContainerHelpers.binarySearch(this.mKeys, this.mSize, i4);
        if (iBinarySearch >= 0) {
            Object[] objArr = this.mValues;
            if (objArr[iBinarySearch] != DELETED) {
                return (E) objArr[iBinarySearch];
            }
        }
        return e4;
    }

    public boolean replace(int i4, E e4, E e5) {
        int iIndexOfKey = indexOfKey(i4);
        if (iIndexOfKey < 0) {
            return false;
        }
        Object obj = this.mValues[iIndexOfKey];
        if (obj != e4 && (e4 == null || !e4.equals(obj))) {
            return false;
        }
        this.mValues[iIndexOfKey] = e5;
        return true;
    }

    public boolean remove(int i4, Object obj) {
        int iIndexOfKey = indexOfKey(i4);
        if (iIndexOfKey < 0) {
            return false;
        }
        E eValueAt = valueAt(iIndexOfKey);
        if (obj != eValueAt && (obj == null || !obj.equals(eValueAt))) {
            return false;
        }
        removeAt(iIndexOfKey);
        return true;
    }
}
