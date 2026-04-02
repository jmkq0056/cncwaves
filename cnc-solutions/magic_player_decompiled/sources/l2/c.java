package l2;

import android.support.v4.media.f;
import android.support.v4.media.session.PlaybackStateCompat;
import androidx.recyclerview.widget.RecyclerView;
import java.io.Closeable;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.lang.reflect.Method;
import java.net.IDN;
import java.net.InetAddress;
import java.net.Socket;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.TimeZone;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;
import k2.b0;
import k2.c0;
import k2.q;
import k2.r;
import org.eclipse.jetty.util.StringUtil;
import org.xbill.DNS.TTL;
import u2.e;
import u2.g;
import u2.h;
import u2.w;

/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final byte[] f2437a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String[] f2438b = new String[0];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final c0 f2439c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final h f2440d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final h f2441e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final h f2442f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final h f2443g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final h f2444h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final Charset f2445i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final Charset f2446j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final Charset f2447k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final Charset f2448l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final Charset f2449m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final TimeZone f2450n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final Comparator<String> f2451o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final Method f2452p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final Pattern f2453q;

    /* JADX INFO: loaded from: classes2.dex */
    public class a implements Comparator<String> {
        @Override // java.util.Comparator
        public int compare(String str, String str2) {
            return str.compareTo(str2);
        }
    }

    static {
        byte[] bArr = new byte[0];
        f2437a = bArr;
        e eVar = new e();
        eVar.K(bArr);
        long j4 = 0;
        Method declaredMethod = null;
        f2439c = new b0(null, j4, eVar);
        e(j4, j4, j4);
        f2440d = h.b("efbbbf");
        f2441e = h.b("feff");
        f2442f = h.b("fffe");
        f2443g = h.b("0000ffff");
        f2444h = h.b("ffff0000");
        f2445i = Charset.forName(StringUtil.__UTF8);
        Charset.forName("ISO-8859-1");
        f2446j = Charset.forName("UTF-16BE");
        f2447k = Charset.forName("UTF-16LE");
        f2448l = Charset.forName("UTF-32BE");
        f2449m = Charset.forName("UTF-32LE");
        f2450n = TimeZone.getTimeZone("GMT");
        f2451o = new a();
        try {
            declaredMethod = Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class);
        } catch (Exception unused) {
        }
        f2452p = declaredMethod;
        f2453q = Pattern.compile("([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)");
    }

    public static AssertionError a(String str, Exception exc) {
        AssertionError assertionError = new AssertionError(str);
        try {
            assertionError.initCause(exc);
        } catch (IllegalStateException unused) {
        }
        return assertionError;
    }

    public static Charset b(g gVar, Charset charset) {
        if (gVar.d(0L, f2440d)) {
            gVar.skip(r0.f3582a.length);
            return f2445i;
        }
        if (gVar.d(0L, f2441e)) {
            gVar.skip(r0.f3582a.length);
            return f2446j;
        }
        if (gVar.d(0L, f2442f)) {
            gVar.skip(r0.f3582a.length);
            return f2447k;
        }
        if (gVar.d(0L, f2443g)) {
            gVar.skip(r0.f3582a.length);
            return f2448l;
        }
        if (!gVar.d(0L, f2444h)) {
            return charset;
        }
        gVar.skip(r0.f3582a.length);
        return f2449m;
    }

    public static String c(String str) {
        int i4 = -1;
        boolean z3 = true;
        int i5 = 0;
        if (!str.contains(":")) {
            try {
                String lowerCase = IDN.toASCII(str).toLowerCase(Locale.US);
                if (lowerCase.isEmpty()) {
                    return null;
                }
                int i6 = 0;
                while (true) {
                    if (i6 >= lowerCase.length()) {
                        z3 = false;
                        break;
                    }
                    char cCharAt = lowerCase.charAt(i6);
                    if (cCharAt <= 31 || cCharAt >= 127 || " #%/:?@[\\]".indexOf(cCharAt) != -1) {
                        break;
                    }
                    i6++;
                }
                if (z3) {
                    return null;
                }
                return lowerCase;
            } catch (IllegalArgumentException unused) {
                return null;
            }
        }
        InetAddress inetAddressI = (str.startsWith("[") && str.endsWith("]")) ? i(str, 1, str.length() - 1) : i(str, 0, str.length());
        if (inetAddressI == null) {
            return null;
        }
        byte[] address = inetAddressI.getAddress();
        if (address.length != 16) {
            throw new AssertionError(android.support.v4.media.h.a("Invalid IPv6 address: '", str, "'"));
        }
        int i7 = 0;
        int i8 = 0;
        while (i7 < address.length) {
            int i9 = i7;
            while (i9 < 16 && address[i9] == 0 && address[i9 + 1] == 0) {
                i9 += 2;
            }
            int i10 = i9 - i7;
            if (i10 > i8 && i10 >= 4) {
                i4 = i7;
                i8 = i10;
            }
            i7 = i9 + 2;
        }
        e eVar = new e();
        while (i5 < address.length) {
            if (i5 == i4) {
                eVar.N(58);
                i5 += i8;
                if (i5 == 16) {
                    eVar.N(58);
                }
            } else {
                if (i5 > 0) {
                    eVar.N(58);
                }
                eVar.b(((address[i5] & 255) << 8) | (address[i5 + 1] & 255));
                i5 += 2;
            }
        }
        return eVar.H();
    }

    public static int d(String str, long j4, TimeUnit timeUnit) {
        if (j4 < 0) {
            throw new IllegalArgumentException(androidx.appcompat.view.a.a(str, " < 0"));
        }
        Objects.requireNonNull(timeUnit, "unit == null");
        long millis = timeUnit.toMillis(j4);
        if (millis > TTL.MAX_VALUE) {
            throw new IllegalArgumentException(androidx.appcompat.view.a.a(str, " too large."));
        }
        if (millis != 0 || j4 <= 0) {
            return (int) millis;
        }
        throw new IllegalArgumentException(androidx.appcompat.view.a.a(str, " too small."));
    }

    public static void e(long j4, long j5, long j6) {
        if ((j5 | j6) < 0 || j5 > j4 || j4 - j5 < j6) {
            throw new ArrayIndexOutOfBoundsException();
        }
    }

    public static void f(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (RuntimeException e4) {
                throw e4;
            } catch (Exception unused) {
            }
        }
    }

    public static void g(Socket socket) {
        if (socket != null) {
            try {
                socket.close();
            } catch (AssertionError e4) {
                if (!t(e4)) {
                    throw e4;
                }
            } catch (RuntimeException e5) {
                throw e5;
            } catch (Exception unused) {
            }
        }
    }

    public static int h(char c4) {
        if (c4 >= '0' && c4 <= '9') {
            return c4 - '0';
        }
        char c5 = 'a';
        if (c4 < 'a' || c4 > 'f') {
            c5 = 'A';
            if (c4 < 'A' || c4 > 'F') {
                return -1;
            }
        }
        return (c4 - c5) + 10;
    }

    /* JADX WARN: Code restructure failed: missing block: B:70:0x00d4, code lost:
    
        return null;
     */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0087 A[LOOP:2: B:24:0x004c->B:49:0x0087, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0097 A[EDGE_INSN: B:95:0x0097->B:52:0x0097 BREAK  A[LOOP:2: B:24:0x004c->B:49:0x0087], SYNTHETIC] */
    @javax.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.net.InetAddress i(java.lang.String r16, int r17, int r18) {
        /*
            Method dump skipped, instruction units count: 248
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: l2.c.i(java.lang.String, int, int):java.net.InetAddress");
    }

    public static int j(String str, int i4, int i5, char c4) {
        while (i4 < i5) {
            if (str.charAt(i4) == c4) {
                return i4;
            }
            i4++;
        }
        return i5;
    }

    public static int k(String str, int i4, int i5, String str2) {
        while (i4 < i5) {
            if (str2.indexOf(str.charAt(i4)) != -1) {
                return i4;
            }
            i4++;
        }
        return i5;
    }

    public static boolean l(w wVar, int i4, TimeUnit timeUnit) {
        try {
            return v(wVar, i4, timeUnit);
        } catch (IOException unused) {
            return false;
        }
    }

    public static boolean m(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    public static String n(String str, Object... objArr) {
        return String.format(Locale.US, str, objArr);
    }

    public static String o(r rVar, boolean z3) {
        String strA = rVar.f2185d.contains(":") ? android.support.v4.media.b.a(f.a("["), rVar.f2185d, "]") : rVar.f2185d;
        if (!z3 && rVar.f2186e == r.c(rVar.f2182a)) {
            return strA;
        }
        StringBuilder sbA = android.support.v4.media.g.a(strA, ":");
        sbA.append(rVar.f2186e);
        return sbA.toString();
    }

    public static <T> List<T> p(List<T> list) {
        return Collections.unmodifiableList(new ArrayList(list));
    }

    public static <T> List<T> q(T... tArr) {
        return Collections.unmodifiableList(Arrays.asList((Object[]) tArr.clone()));
    }

    public static int r(String str) {
        int length = str.length();
        for (int i4 = 0; i4 < length; i4++) {
            char cCharAt = str.charAt(i4);
            if (cCharAt <= 31 || cCharAt >= 127) {
                return i4;
            }
        }
        return -1;
    }

    public static String[] s(Comparator<? super String> comparator, String[] strArr, String[] strArr2) {
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            int length = strArr2.length;
            int i4 = 0;
            while (true) {
                if (i4 >= length) {
                    break;
                }
                if (comparator.compare(str, strArr2[i4]) == 0) {
                    arrayList.add(str);
                    break;
                }
                i4++;
            }
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    public static boolean t(AssertionError assertionError) {
        return (assertionError.getCause() == null || assertionError.getMessage() == null || !assertionError.getMessage().contains("getsockname failed")) ? false : true;
    }

    public static boolean u(Comparator<String> comparator, String[] strArr, String[] strArr2) {
        if (strArr != null && strArr2 != null && strArr.length != 0 && strArr2.length != 0) {
            for (String str : strArr) {
                for (String str2 : strArr2) {
                    if (comparator.compare(str, str2) == 0) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public static boolean v(w wVar, int i4, TimeUnit timeUnit) {
        long jNanoTime = System.nanoTime();
        long jC = wVar.a().e() ? wVar.a().c() - jNanoTime : Long.MAX_VALUE;
        wVar.a().d(Math.min(jC, timeUnit.toNanos(i4)) + jNanoTime);
        try {
            e eVar = new e();
            while (wVar.s(eVar, PlaybackStateCompat.ACTION_PLAY_FROM_URI) != -1) {
                eVar.clear();
            }
            if (jC == RecyclerView.FOREVER_NS) {
                wVar.a().a();
            } else {
                wVar.a().d(jNanoTime + jC);
            }
            return true;
        } catch (InterruptedIOException unused) {
            if (jC == RecyclerView.FOREVER_NS) {
                wVar.a().a();
            } else {
                wVar.a().d(jNanoTime + jC);
            }
            return false;
        } catch (Throwable th) {
            if (jC == RecyclerView.FOREVER_NS) {
                wVar.a().a();
            } else {
                wVar.a().d(jNanoTime + jC);
            }
            throw th;
        }
    }

    public static int w(String str, int i4, int i5) {
        while (i4 < i5) {
            char cCharAt = str.charAt(i4);
            if (cCharAt != '\t' && cCharAt != '\n' && cCharAt != '\f' && cCharAt != '\r' && cCharAt != ' ') {
                return i4;
            }
            i4++;
        }
        return i5;
    }

    public static int x(String str, int i4, int i5) {
        for (int i6 = i5 - 1; i6 >= i4; i6--) {
            char cCharAt = str.charAt(i6);
            if (cCharAt != '\t' && cCharAt != '\n' && cCharAt != '\f' && cCharAt != '\r' && cCharAt != ' ') {
                return i6 + 1;
            }
        }
        return i4;
    }

    public static q y(List<q2.c> list) {
        q.a aVar = new q.a();
        for (q2.c cVar : list) {
            l2.a.f2435a.a(aVar, cVar.f3173a.n(), cVar.f3174b.n());
        }
        return new q(aVar);
    }

    public static String z(String str, int i4, int i5) {
        int iW = w(str, i4, i5);
        return str.substring(iW, x(str, iW, i5));
    }
}
