package i1;

import android.net.Uri;
import androidx.annotation.Nullable;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final a f1920e = new a(new long[0]);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f1921a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long[] f1922b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final C0026a[] f1923c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final long f1924d;

    /* JADX INFO: renamed from: i1.a$a, reason: collision with other inner class name */
    public static final class C0026a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f1925a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Uri[] f1926b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int[] f1927c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final long[] f1928d;

        public C0026a() {
            o1.a.a(true);
            this.f1925a = -1;
            this.f1927c = new int[0];
            this.f1926b = new Uri[0];
            this.f1928d = new long[0];
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || C0026a.class != obj.getClass()) {
                return false;
            }
            C0026a c0026a = (C0026a) obj;
            return this.f1925a == c0026a.f1925a && Arrays.equals(this.f1926b, c0026a.f1926b) && Arrays.equals(this.f1927c, c0026a.f1927c) && Arrays.equals(this.f1928d, c0026a.f1928d);
        }

        public int hashCode() {
            return Arrays.hashCode(this.f1928d) + ((Arrays.hashCode(this.f1927c) + (((this.f1925a * 31) + Arrays.hashCode(this.f1926b)) * 31)) * 31);
        }
    }

    public a(long... jArr) {
        int length = jArr.length;
        this.f1921a = length;
        this.f1922b = Arrays.copyOf(jArr, length);
        this.f1923c = new C0026a[length];
        for (int i4 = 0; i4 < length; i4++) {
            this.f1923c[i4] = new C0026a();
        }
        this.f1924d = -9223372036854775807L;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || a.class != obj.getClass()) {
            return false;
        }
        a aVar = (a) obj;
        return this.f1921a == aVar.f1921a && this.f1924d == aVar.f1924d && Arrays.equals(this.f1922b, aVar.f1922b) && Arrays.equals(this.f1923c, aVar.f1923c);
    }

    public int hashCode() {
        return Arrays.hashCode(this.f1923c) + ((Arrays.hashCode(this.f1922b) + (((((this.f1921a * 31) + ((int) 0)) * 31) + ((int) this.f1924d)) * 31)) * 31);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("AdPlaybackState(adResumePositionUs=");
        sb.append(0L);
        sb.append(", adGroups=[");
        for (int i4 = 0; i4 < this.f1923c.length; i4++) {
            sb.append("adGroup(timeUs=");
            sb.append(this.f1922b[i4]);
            sb.append(", ads=[");
            for (int i5 = 0; i5 < this.f1923c[i4].f1927c.length; i5++) {
                sb.append("ad(state=");
                int i6 = this.f1923c[i4].f1927c[i5];
                if (i6 == 0) {
                    sb.append('_');
                } else if (i6 == 1) {
                    sb.append('R');
                } else if (i6 == 2) {
                    sb.append('S');
                } else if (i6 == 3) {
                    sb.append('P');
                } else if (i6 != 4) {
                    sb.append('?');
                } else {
                    sb.append('!');
                }
                sb.append(", durationUs=");
                sb.append(this.f1923c[i4].f1928d[i5]);
                sb.append(')');
                if (i5 < this.f1923c[i4].f1927c.length - 1) {
                    sb.append(", ");
                }
            }
            sb.append("])");
            if (i4 < this.f1923c.length - 1) {
                sb.append(", ");
            }
        }
        sb.append("])");
        return sb.toString();
    }
}
