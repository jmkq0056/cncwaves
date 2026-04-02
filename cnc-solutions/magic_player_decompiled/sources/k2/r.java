package k2;

import java.net.URI;
import java.net.URISyntaxException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import javax.annotation.Nullable;
import org.eclipse.jetty.util.B64Code;

/* JADX INFO: loaded from: classes.dex */
public final class r {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final char[] f2181j = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f2182a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f2183b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f2184c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f2185d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f2186e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final List<String> f2187f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Nullable
    public final List<String> f2188g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @Nullable
    public final String f2189h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f2190i;

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        @Nullable
        public String f2191a;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        @Nullable
        public String f2194d;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final List<String> f2196f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        @Nullable
        public List<String> f2197g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        @Nullable
        public String f2198h;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f2192b = "";

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f2193c = "";

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f2195e = -1;

        public a() {
            ArrayList arrayList = new ArrayList();
            this.f2196f = arrayList;
            arrayList.add("");
        }

        public r a() {
            if (this.f2191a == null) {
                throw new IllegalStateException("scheme == null");
            }
            if (this.f2194d != null) {
                return new r(this);
            }
            throw new IllegalStateException("host == null");
        }

        public a b(@Nullable String str) {
            this.f2197g = str != null ? r.n(r.b(str, " \"'<>#", true, false, true, true)) : null;
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:139:0x02ac  */
        /* JADX WARN: Removed duplicated region for block: B:33:0x0062  */
        /* JADX WARN: Unreachable blocks removed: 1, instructions: 2 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public k2.r.a c(@javax.annotation.Nullable k2.r r22, java.lang.String r23) {
            /*
                Method dump skipped, instruction units count: 976
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: k2.r.a.c(k2.r, java.lang.String):k2.r$a");
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            String str = this.f2191a;
            if (str != null) {
                sb.append(str);
                sb.append("://");
            } else {
                sb.append("//");
            }
            if (!this.f2192b.isEmpty() || !this.f2193c.isEmpty()) {
                sb.append(this.f2192b);
                if (!this.f2193c.isEmpty()) {
                    sb.append(':');
                    sb.append(this.f2193c);
                }
                sb.append('@');
            }
            String str2 = this.f2194d;
            if (str2 != null) {
                if (str2.indexOf(58) != -1) {
                    sb.append('[');
                    sb.append(this.f2194d);
                    sb.append(']');
                } else {
                    sb.append(this.f2194d);
                }
            }
            int iC = this.f2195e;
            if (iC != -1 || this.f2191a != null) {
                if (iC == -1) {
                    iC = r.c(this.f2191a);
                }
                String str3 = this.f2191a;
                if (str3 == null || iC != r.c(str3)) {
                    sb.append(':');
                    sb.append(iC);
                }
            }
            List<String> list = this.f2196f;
            int size = list.size();
            for (int i4 = 0; i4 < size; i4++) {
                sb.append('/');
                sb.append(list.get(i4));
            }
            if (this.f2197g != null) {
                sb.append('?');
                r.i(sb, this.f2197g);
            }
            if (this.f2198h != null) {
                sb.append('#');
                sb.append(this.f2198h);
            }
            return sb.toString();
        }
    }

    public r(a aVar) {
        this.f2182a = aVar.f2191a;
        this.f2183b = k(aVar.f2192b, false);
        this.f2184c = k(aVar.f2193c, false);
        this.f2185d = aVar.f2194d;
        int i4 = aVar.f2195e;
        this.f2186e = i4 == -1 ? c(aVar.f2191a) : i4;
        this.f2187f = l(aVar.f2196f, false);
        List<String> list = aVar.f2197g;
        this.f2188g = list != null ? l(list, true) : null;
        String str = aVar.f2198h;
        this.f2189h = str != null ? j(str, 0, str.length(), false) : null;
        this.f2190i = aVar.toString();
    }

    public static String a(String str, int i4, int i5, String str2, boolean z3, boolean z4, boolean z5, boolean z6, Charset charset) {
        int iCharCount = i4;
        while (iCharCount < i5) {
            int iCodePointAt = str.codePointAt(iCharCount);
            if (iCodePointAt < 32 || iCodePointAt == 127 || ((iCodePointAt >= 128 && z6) || str2.indexOf(iCodePointAt) != -1 || ((iCodePointAt == 37 && (!z3 || (z4 && !m(str, iCharCount, i5)))) || (iCodePointAt == 43 && z5)))) {
                u2.e eVar = new u2.e();
                eVar.S(str, i4, iCharCount);
                u2.e eVar2 = null;
                while (iCharCount < i5) {
                    int iCodePointAt2 = str.codePointAt(iCharCount);
                    if (!z3 || (iCodePointAt2 != 9 && iCodePointAt2 != 10 && iCodePointAt2 != 12 && iCodePointAt2 != 13)) {
                        if (iCodePointAt2 == 43 && z5) {
                            eVar.R(z3 ? "+" : "%2B");
                        } else if (iCodePointAt2 < 32 || iCodePointAt2 == 127 || ((iCodePointAt2 >= 128 && z6) || str2.indexOf(iCodePointAt2) != -1 || (iCodePointAt2 == 37 && (!z3 || (z4 && !m(str, iCharCount, i5)))))) {
                            if (eVar2 == null) {
                                eVar2 = new u2.e();
                            }
                            eVar2.T(iCodePointAt2);
                            while (!eVar2.l()) {
                                int i6 = eVar2.readByte() & 255;
                                eVar.N(37);
                                char[] cArr = f2181j;
                                eVar.N(cArr[(i6 >> 4) & 15]);
                                eVar.N(cArr[i6 & 15]);
                            }
                        } else {
                            eVar.T(iCodePointAt2);
                        }
                    }
                    iCharCount += Character.charCount(iCodePointAt2);
                }
                return eVar.H();
            }
            iCharCount += Character.charCount(iCodePointAt);
        }
        return str.substring(i4, i5);
    }

    public static String b(String str, String str2, boolean z3, boolean z4, boolean z5, boolean z6) {
        return a(str, 0, str.length(), str2, z3, z4, z5, z6, null);
    }

    public static int c(String str) {
        if (str.equals("http")) {
            return 80;
        }
        return str.equals("https") ? 443 : -1;
    }

    public static void i(StringBuilder sb, List<String> list) {
        int size = list.size();
        for (int i4 = 0; i4 < size; i4 += 2) {
            String str = list.get(i4);
            String str2 = list.get(i4 + 1);
            if (i4 > 0) {
                sb.append('&');
            }
            sb.append(str);
            if (str2 != null) {
                sb.append(B64Code.__pad);
                sb.append(str2);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0052  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String j(java.lang.String r8, int r9, int r10, boolean r11) {
        /*
            r0 = r9
        L1:
            if (r0 >= r10) goto L60
            char r1 = r8.charAt(r0)
            r2 = 43
            r3 = 37
            if (r1 == r3) goto L15
            if (r1 != r2) goto L12
            if (r11 == 0) goto L12
            goto L15
        L12:
            int r0 = r0 + 1
            goto L1
        L15:
            u2.e r1 = new u2.e
            r1.<init>()
            r1.S(r8, r9, r0)
        L1d:
            if (r0 >= r10) goto L5b
            int r9 = r8.codePointAt(r0)
            if (r9 != r3) goto L48
            int r4 = r0 + 2
            if (r4 >= r10) goto L48
            int r5 = r0 + 1
            char r5 = r8.charAt(r5)
            int r5 = l2.c.h(r5)
            char r6 = r8.charAt(r4)
            int r6 = l2.c.h(r6)
            r7 = -1
            if (r5 == r7) goto L52
            if (r6 == r7) goto L52
            int r0 = r5 << 4
            int r0 = r0 + r6
            r1.N(r0)
            r0 = r4
            goto L55
        L48:
            if (r9 != r2) goto L52
            if (r11 == 0) goto L52
            r4 = 32
            r1.N(r4)
            goto L55
        L52:
            r1.T(r9)
        L55:
            int r9 = java.lang.Character.charCount(r9)
            int r0 = r0 + r9
            goto L1d
        L5b:
            java.lang.String r8 = r1.H()
            return r8
        L60:
            java.lang.String r8 = r8.substring(r9, r10)
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: k2.r.j(java.lang.String, int, int, boolean):java.lang.String");
    }

    public static String k(String str, boolean z3) {
        return j(str, 0, str.length(), z3);
    }

    public static boolean m(String str, int i4, int i5) {
        int i6 = i4 + 2;
        return i6 < i5 && str.charAt(i4) == '%' && l2.c.h(str.charAt(i4 + 1)) != -1 && l2.c.h(str.charAt(i6)) != -1;
    }

    public static List<String> n(String str) {
        ArrayList arrayList = new ArrayList();
        int i4 = 0;
        while (i4 <= str.length()) {
            int iIndexOf = str.indexOf(38, i4);
            if (iIndexOf == -1) {
                iIndexOf = str.length();
            }
            int iIndexOf2 = str.indexOf(61, i4);
            if (iIndexOf2 == -1 || iIndexOf2 > iIndexOf) {
                arrayList.add(str.substring(i4, iIndexOf));
                arrayList.add(null);
            } else {
                arrayList.add(str.substring(i4, iIndexOf2));
                arrayList.add(str.substring(iIndexOf2 + 1, iIndexOf));
            }
            i4 = iIndexOf + 1;
        }
        return arrayList;
    }

    public String d() {
        if (this.f2184c.isEmpty()) {
            return "";
        }
        return this.f2190i.substring(this.f2190i.indexOf(58, this.f2182a.length() + 3) + 1, this.f2190i.indexOf(64));
    }

    public String e() {
        int iIndexOf = this.f2190i.indexOf(47, this.f2182a.length() + 3);
        String str = this.f2190i;
        return this.f2190i.substring(iIndexOf, l2.c.k(str, iIndexOf, str.length(), "?#"));
    }

    public boolean equals(@Nullable Object obj) {
        return (obj instanceof r) && ((r) obj).f2190i.equals(this.f2190i);
    }

    public List<String> f() {
        int iIndexOf = this.f2190i.indexOf(47, this.f2182a.length() + 3);
        String str = this.f2190i;
        int iK = l2.c.k(str, iIndexOf, str.length(), "?#");
        ArrayList arrayList = new ArrayList();
        while (iIndexOf < iK) {
            int i4 = iIndexOf + 1;
            int iJ = l2.c.j(this.f2190i, i4, iK, '/');
            arrayList.add(this.f2190i.substring(i4, iJ));
            iIndexOf = iJ;
        }
        return arrayList;
    }

    @Nullable
    public String g() {
        if (this.f2188g == null) {
            return null;
        }
        int iIndexOf = this.f2190i.indexOf(63) + 1;
        String str = this.f2190i;
        return this.f2190i.substring(iIndexOf, l2.c.j(str, iIndexOf, str.length(), '#'));
    }

    public String h() {
        if (this.f2183b.isEmpty()) {
            return "";
        }
        int length = this.f2182a.length() + 3;
        String str = this.f2190i;
        return this.f2190i.substring(length, l2.c.k(str, length, str.length(), ":@"));
    }

    public int hashCode() {
        return this.f2190i.hashCode();
    }

    public final List<String> l(List<String> list, boolean z3) {
        int size = list.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i4 = 0; i4 < size; i4++) {
            String str = list.get(i4);
            arrayList.add(str != null ? j(str, 0, str.length(), z3) : null);
        }
        return Collections.unmodifiableList(arrayList);
    }

    public URI o() {
        a aVar = new a();
        aVar.f2191a = this.f2182a;
        aVar.f2192b = h();
        aVar.f2193c = d();
        aVar.f2194d = this.f2185d;
        aVar.f2195e = this.f2186e != c(this.f2182a) ? this.f2186e : -1;
        aVar.f2196f.clear();
        aVar.f2196f.addAll(f());
        aVar.b(g());
        aVar.f2198h = this.f2189h == null ? null : this.f2190i.substring(this.f2190i.indexOf(35) + 1);
        int size = aVar.f2196f.size();
        for (int i4 = 0; i4 < size; i4++) {
            aVar.f2196f.set(i4, b(aVar.f2196f.get(i4), "[]", true, true, false, true));
        }
        List<String> list = aVar.f2197g;
        if (list != null) {
            int size2 = list.size();
            for (int i5 = 0; i5 < size2; i5++) {
                String str = aVar.f2197g.get(i5);
                if (str != null) {
                    aVar.f2197g.set(i5, b(str, "\\^`{|}", true, true, true, true));
                }
            }
        }
        String str2 = aVar.f2198h;
        if (str2 != null) {
            aVar.f2198h = b(str2, " \"#<>\\^`{|}", true, true, false, false);
        }
        String string = aVar.toString();
        try {
            return new URI(string);
        } catch (URISyntaxException e4) {
            try {
                return URI.create(string.replaceAll("[\\u0000-\\u001F\\u007F-\\u009F\\p{javaWhitespace}]", ""));
            } catch (Exception unused) {
                throw new RuntimeException(e4);
            }
        }
    }

    public String toString() {
        return this.f2190i;
    }
}
