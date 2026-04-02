package k2;

import java.util.Date;
import java.util.regex.Pattern;
import javax.annotation.Nullable;
import org.eclipse.jetty.util.B64Code;

/* JADX INFO: loaded from: classes.dex */
public final class j {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final Pattern f2154j = Pattern.compile("(\\d{2,4})[^\\d]*");

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final Pattern f2155k = Pattern.compile("(?i)(jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec).*");

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final Pattern f2156l = Pattern.compile("(\\d{1,2})[^\\d]*");

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final Pattern f2157m = Pattern.compile("(\\d{1,2}):(\\d{1,2}):(\\d{1,2})[^\\d]*");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f2158a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f2159b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f2160c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f2161d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f2162e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f2163f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final boolean f2164g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f2165h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f2166i;

    public j(String str, String str2, long j4, String str3, String str4, boolean z3, boolean z4, boolean z5, boolean z6) {
        this.f2158a = str;
        this.f2159b = str2;
        this.f2160c = j4;
        this.f2161d = str3;
        this.f2162e = str4;
        this.f2163f = z3;
        this.f2164g = z4;
        this.f2166i = z5;
        this.f2165h = z6;
    }

    public static int a(String str, int i4, int i5, boolean z3) {
        while (i4 < i5) {
            char cCharAt = str.charAt(i4);
            if (((cCharAt < ' ' && cCharAt != '\t') || cCharAt >= 127 || (cCharAt >= '0' && cCharAt <= '9') || ((cCharAt >= 'a' && cCharAt <= 'z') || ((cCharAt >= 'A' && cCharAt <= 'Z') || cCharAt == ':'))) == (!z3)) {
                return i4;
            }
            i4++;
        }
        return i5;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0081  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long b(java.lang.String r12, int r13, int r14) {
        /*
            Method dump skipped, instruction units count: 289
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: k2.j.b(java.lang.String, int, int):long");
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof j)) {
            return false;
        }
        j jVar = (j) obj;
        return jVar.f2158a.equals(this.f2158a) && jVar.f2159b.equals(this.f2159b) && jVar.f2161d.equals(this.f2161d) && jVar.f2162e.equals(this.f2162e) && jVar.f2160c == this.f2160c && jVar.f2163f == this.f2163f && jVar.f2164g == this.f2164g && jVar.f2165h == this.f2165h && jVar.f2166i == this.f2166i;
    }

    public int hashCode() {
        int iHashCode = (this.f2162e.hashCode() + ((this.f2161d.hashCode() + ((this.f2159b.hashCode() + ((this.f2158a.hashCode() + 527) * 31)) * 31)) * 31)) * 31;
        long j4 = this.f2160c;
        return ((((((((iHashCode + ((int) (j4 ^ (j4 >>> 32)))) * 31) + (!this.f2163f ? 1 : 0)) * 31) + (!this.f2164g ? 1 : 0)) * 31) + (!this.f2165h ? 1 : 0)) * 31) + (!this.f2166i ? 1 : 0);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f2158a);
        sb.append(B64Code.__pad);
        sb.append(this.f2159b);
        if (this.f2165h) {
            if (this.f2160c == Long.MIN_VALUE) {
                sb.append("; max-age=0");
            } else {
                sb.append("; expires=");
                sb.append(o2.d.f2854a.get().format(new Date(this.f2160c)));
            }
        }
        if (!this.f2166i) {
            sb.append("; domain=");
            sb.append(this.f2161d);
        }
        sb.append("; path=");
        sb.append(this.f2162e);
        if (this.f2163f) {
            sb.append("; secure");
        }
        if (this.f2164g) {
            sb.append("; httponly");
        }
        return sb.toString();
    }
}
