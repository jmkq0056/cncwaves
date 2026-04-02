package o2;

import androidx.appcompat.widget.ActivityChooserView;
import k2.a0;
import org.eclipse.jetty.http.HttpHeaderValues;
import org.eclipse.jetty.http.HttpHeaders;
import org.eclipse.jetty.http.HttpMethods;
import org.xbill.DNS.TTL;

/* JADX INFO: loaded from: classes2.dex */
public final class e {
    static {
        u2.h.e("\"\\");
        u2.h.e("\t ,=");
    }

    public static long a(a0 a0Var) {
        String strC = a0Var.f2063f.c(HttpHeaders.CONTENT_LENGTH);
        if (strC != null) {
            try {
                return Long.parseLong(strC);
            } catch (NumberFormatException unused) {
            }
        }
        return -1L;
    }

    public static boolean b(a0 a0Var) {
        if (a0Var.f2058a.f2270b.equals(HttpMethods.HEAD)) {
            return false;
        }
        int i4 = a0Var.f2060c;
        if (((i4 >= 100 && i4 < 200) || i4 == 204 || i4 == 304) && a(a0Var) == -1) {
            String strC = a0Var.f2063f.c(HttpHeaders.TRANSFER_ENCODING);
            if (strC == null) {
                strC = null;
            }
            if (!HttpHeaderValues.CHUNKED.equalsIgnoreCase(strC)) {
                return false;
            }
        }
        return true;
    }

    public static int c(String str, int i4) {
        try {
            long j4 = Long.parseLong(str);
            if (j4 > TTL.MAX_VALUE) {
                return ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
            }
            if (j4 < 0) {
                return 0;
            }
            return (int) j4;
        } catch (NumberFormatException unused) {
            return i4;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:127:0x0204  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x0274  */
    /* JADX WARN: Removed duplicated region for block: B:168:0x0285  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x0288  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x02a0  */
    /* JADX WARN: Removed duplicated region for block: B:186:0x02c9  */
    /* JADX WARN: Removed duplicated region for block: B:189:0x02d4  */
    /* JADX WARN: Removed duplicated region for block: B:192:0x02dd  */
    /* JADX WARN: Removed duplicated region for block: B:193:0x02e0  */
    /* JADX WARN: Removed duplicated region for block: B:197:0x02f2 A[LOOP:8: B:195:0x02ef->B:197:0x02f2, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:200:0x030d  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00f4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void d(k2.k r34, k2.r r35, k2.q r36) {
        /*
            Method dump skipped, instruction units count: 884
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: o2.e.d(k2.k, k2.r, k2.q):void");
    }

    public static int e(String str, int i4, String str2) {
        while (i4 < str.length() && str2.indexOf(str.charAt(i4)) == -1) {
            i4++;
        }
        return i4;
    }
}
