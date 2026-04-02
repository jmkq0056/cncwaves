package k2;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String[] f2179a;

    /* JADX INFO: loaded from: classes2.dex */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final List<String> f2180a = new ArrayList(20);

        public a a(String str, String str2) {
            this.f2180a.add(str);
            this.f2180a.add(str2.trim());
            return this;
        }

        public a b(String str) {
            int i4 = 0;
            while (i4 < this.f2180a.size()) {
                if (str.equalsIgnoreCase(this.f2180a.get(i4))) {
                    this.f2180a.remove(i4);
                    this.f2180a.remove(i4);
                    i4 -= 2;
                }
                i4 += 2;
            }
            return this;
        }
    }

    public q(a aVar) {
        List<String> list = aVar.f2180a;
        this.f2179a = (String[]) list.toArray(new String[list.size()]);
    }

    public static void a(String str) {
        Objects.requireNonNull(str, "name == null");
        if (str.isEmpty()) {
            throw new IllegalArgumentException("name is empty");
        }
        int length = str.length();
        for (int i4 = 0; i4 < length; i4++) {
            char cCharAt = str.charAt(i4);
            if (cCharAt <= ' ' || cCharAt >= 127) {
                throw new IllegalArgumentException(l2.c.n("Unexpected char %#04x at %d in header name: %s", Integer.valueOf(cCharAt), Integer.valueOf(i4), str));
            }
        }
    }

    public static void b(String str, String str2) {
        if (str == null) {
            throw new NullPointerException(android.support.v4.media.h.a("value for name ", str2, " == null"));
        }
        int length = str.length();
        for (int i4 = 0; i4 < length; i4++) {
            char cCharAt = str.charAt(i4);
            if ((cCharAt <= 31 && cCharAt != '\t') || cCharAt >= 127) {
                throw new IllegalArgumentException(l2.c.n("Unexpected char %#04x at %d in %s value: %s", Integer.valueOf(cCharAt), Integer.valueOf(i4), str2, str));
            }
        }
    }

    @Nullable
    public String c(String str) {
        String[] strArr = this.f2179a;
        int length = strArr.length;
        do {
            length -= 2;
            if (length < 0) {
                return null;
            }
        } while (!str.equalsIgnoreCase(strArr[length]));
        return strArr[length + 1];
    }

    public String d(int i4) {
        return this.f2179a[i4 * 2];
    }

    public a e() {
        a aVar = new a();
        Collections.addAll(aVar.f2180a, this.f2179a);
        return aVar;
    }

    public boolean equals(@Nullable Object obj) {
        return (obj instanceof q) && Arrays.equals(((q) obj).f2179a, this.f2179a);
    }

    public int f() {
        return this.f2179a.length / 2;
    }

    public String g(int i4) {
        return this.f2179a[(i4 * 2) + 1];
    }

    public int hashCode() {
        return Arrays.hashCode(this.f2179a);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        int iF = f();
        for (int i4 = 0; i4 < iF; i4++) {
            sb.append(d(i4));
            sb.append(": ");
            sb.append(g(i4));
            sb.append("\n");
        }
        return sb.toString();
    }
}
