package s1;

import androidx.constraintlayout.solver.widgets.analyzer.BasicMeasure;
import com.google.errorprone.annotations.concurrent.LazyInit;
import com.google.j2objc.annotations.RetainedWith;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: loaded from: classes.dex */
public abstract class h<E> extends e<E> implements Set<E> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ int f3461c = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @RetainedWith
    @NullableDecl
    @LazyInit
    public transient f<E> f3462b;

    /* JADX INFO: loaded from: classes2.dex */
    public static class a implements Serializable {
        private static final long serialVersionUID = 0;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Object[] f3463a;

        public a(Object[] objArr) {
            this.f3463a = objArr;
        }

        public Object readResolve() {
            Object[] objArr = this.f3463a;
            int i4 = h.f3461c;
            int length = objArr.length;
            return length != 0 ? length != 1 ? h.i(objArr.length, (Object[]) objArr.clone()) : new n(objArr[0]) : m.f3483i;
        }
    }

    public static int h(int i4) {
        int iMax = Math.max(i4, 2);
        if (iMax >= 751619276) {
            if (iMax < 1073741824) {
                return BasicMeasure.EXACTLY;
            }
            throw new IllegalArgumentException("collection too large");
        }
        int iHighestOneBit = Integer.highestOneBit(iMax - 1) << 1;
        while (true) {
            double d4 = iHighestOneBit;
            Double.isNaN(d4);
            if (d4 * 0.7d >= iMax) {
                return iHighestOneBit;
            }
            iHighestOneBit <<= 1;
        }
    }

    public static <E> h<E> i(int i4, Object... objArr) {
        if (i4 == 0) {
            return m.f3483i;
        }
        if (i4 == 1) {
            return new n(objArr[0]);
        }
        int iH = h(i4);
        Object[] objArr2 = new Object[iH];
        int i5 = iH - 1;
        int i6 = 0;
        int i7 = 0;
        for (int i8 = 0; i8 < i4; i8++) {
            Object obj = objArr[i8];
            b.a(obj, i8);
            int iHashCode = obj.hashCode();
            int iB = d.b(iHashCode);
            while (true) {
                int i9 = iB & i5;
                Object obj2 = objArr2[i9];
                if (obj2 == null) {
                    objArr[i7] = obj;
                    objArr2[i9] = obj;
                    i6 += iHashCode;
                    i7++;
                    break;
                }
                if (obj2.equals(obj)) {
                    break;
                }
                iB++;
            }
        }
        Arrays.fill(objArr, i7, i4, (Object) null);
        if (i7 == 1) {
            return new n(objArr[0], i6);
        }
        if (h(i7) < iH / 2) {
            return i(i7, objArr);
        }
        int length = objArr.length;
        if (i7 < (length >> 1) + (length >> 2)) {
            objArr = Arrays.copyOf(objArr, i7);
        }
        return new m(objArr, i6, objArr2, i5, i7);
    }

    @Override // s1.e
    public f<E> a() {
        f<E> fVar = this.f3462b;
        if (fVar != null) {
            return fVar;
        }
        f<E> fVarJ = j();
        this.f3462b = fVarJ;
        return fVarJ;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean equals(@NullableDecl Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof h) && k() && ((h) obj).k() && hashCode() != obj.hashCode()) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (obj instanceof Set) {
            Set set = (Set) obj;
            try {
                if (size() == set.size()) {
                    if (containsAll(set)) {
                        return true;
                    }
                }
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        return d.a(this);
    }

    @Override // s1.e, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public /* bridge */ /* synthetic */ Iterator iterator() {
        return iterator();
    }

    public f<E> j() {
        return f.h(toArray());
    }

    public boolean k() {
        return this instanceof m;
    }

    @Override // s1.e
    public Object writeReplace() {
        return new a(toArray());
    }
}
