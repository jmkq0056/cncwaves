package o1;

import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes.dex */
public final class d<V> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long[] f2843a = new long[10];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public V[] f2844b = (V[]) new Object[10];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f2845c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f2846d;

    @Nullable
    public final V a(long j4, boolean z3) {
        long j5 = RecyclerView.FOREVER_NS;
        V v3 = null;
        while (true) {
            int i4 = this.f2846d;
            if (i4 <= 0) {
                break;
            }
            long j6 = j4 - this.f2843a[this.f2845c];
            if (j6 < 0 && (z3 || (-j6) >= j5)) {
                break;
            }
            a.b(i4 > 0);
            V[] vArr = this.f2844b;
            int i5 = this.f2845c;
            V v4 = vArr[i5];
            vArr[i5] = null;
            this.f2845c = (i5 + 1) % vArr.length;
            this.f2846d--;
            v3 = v4;
            j5 = j6;
        }
        return v3;
    }
}
