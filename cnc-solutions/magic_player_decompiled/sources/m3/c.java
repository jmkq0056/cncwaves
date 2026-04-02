package m3;

import androidx.appcompat.widget.ActivityChooserView;
import org.greenrobot.greendao.internal.LongHashMap;

/* JADX INFO: loaded from: classes2.dex */
public final class c<T> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f2589d;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f2587b = 16;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f2588c = 21;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public LongHashMap.Entry<T>[] f2586a = new a[16];

    public static final class a<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long f2590a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public T f2591b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public a<T> f2592c;

        public a(long j4, T t3, a<T> aVar) {
            this.f2590a = j4;
            this.f2591b = t3;
            this.f2592c = aVar;
        }
    }

    public T a(long j4) {
        for (a<T> aVar = this.f2586a[((((int) j4) ^ ((int) (j4 >>> 32))) & ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED) % this.f2587b]; aVar != null; aVar = aVar.f2592c) {
            if (aVar.f2590a == j4) {
                return aVar.f2591b;
            }
        }
        return null;
    }

    public T b(long j4, T t3) {
        int i4 = ((((int) j4) ^ ((int) (j4 >>> 32))) & ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED) % this.f2587b;
        a<T> aVar = this.f2586a[i4];
        for (a<T> aVar2 = aVar; aVar2 != null; aVar2 = aVar2.f2592c) {
            if (aVar2.f2590a == j4) {
                T t4 = aVar2.f2591b;
                aVar2.f2591b = t3;
                return t4;
            }
        }
        this.f2586a[i4] = new a(j4, t3, aVar);
        int i5 = this.f2589d + 1;
        this.f2589d = i5;
        if (i5 <= this.f2588c) {
            return null;
        }
        d(this.f2587b * 2);
        return null;
    }

    public T c(long j4) {
        int i4 = ((((int) j4) ^ ((int) (j4 >>> 32))) & ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED) % this.f2587b;
        a aVar = this.f2586a[i4];
        a aVar2 = null;
        while (aVar != null) {
            a aVar3 = aVar.f2592c;
            if (aVar.f2590a == j4) {
                if (aVar2 == null) {
                    this.f2586a[i4] = aVar3;
                } else {
                    aVar2.f2592c = aVar3;
                }
                this.f2589d--;
                return aVar.f2591b;
            }
            aVar2 = aVar;
            aVar = aVar3;
        }
        return null;
    }

    public void d(int i4) {
        a<T>[] aVarArr = new a[i4];
        int length = this.f2586a.length;
        for (int i5 = 0; i5 < length; i5++) {
            a<T> aVar = this.f2586a[i5];
            while (aVar != null) {
                long j4 = aVar.f2590a;
                int i6 = ((((int) (j4 >>> 32)) ^ ((int) j4)) & ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED) % i4;
                a<T> aVar2 = aVar.f2592c;
                aVar.f2592c = aVarArr[i6];
                aVarArr[i6] = aVar;
                aVar = aVar2;
            }
        }
        this.f2586a = aVarArr;
        this.f2587b = i4;
        this.f2588c = (i4 * 4) / 3;
    }
}
