package s;

/* JADX INFO: loaded from: classes.dex */
public class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static String f3411a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static long f3412b;

    /* JADX WARN: Removed duplicated region for block: B:37:0x0055 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long a() throws java.lang.Throwable {
        /*
            long r0 = s.i.f3412b
            r2 = 0
            int r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r4 <= 0) goto L9
            return r0
        L9:
            r0 = 0
            java.io.BufferedReader r1 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L34 java.lang.Exception -> L36
            java.io.FileReader r4 = new java.io.FileReader     // Catch: java.lang.Throwable -> L34 java.lang.Exception -> L36
            java.lang.String r5 = "/proc/meminfo"
            r4.<init>(r5)     // Catch: java.lang.Throwable -> L34 java.lang.Exception -> L36
            r5 = 8192(0x2000, float:1.14794E-41)
            r1.<init>(r4, r5)     // Catch: java.lang.Throwable -> L34 java.lang.Exception -> L36
            java.lang.String r0 = r1.readLine()     // Catch: java.lang.Exception -> L32 java.lang.Throwable -> L4f
            java.lang.String r4 = "\\s+"
            java.lang.String[] r0 = r0.split(r4)     // Catch: java.lang.Exception -> L32 java.lang.Throwable -> L4f
            r4 = 1
            r0 = r0[r4]     // Catch: java.lang.Exception -> L32 java.lang.Throwable -> L4f
            long r4 = java.lang.Long.parseLong(r0)     // Catch: java.lang.Exception -> L32 java.lang.Throwable -> L4f
            r1.close()     // Catch: java.io.IOException -> L2d
            goto L48
        L2d:
            r0 = move-exception
            r0.printStackTrace()
            goto L48
        L32:
            r0 = move-exception
            goto L3a
        L34:
            r1 = move-exception
            goto L53
        L36:
            r1 = move-exception
            r6 = r1
            r1 = r0
            r0 = r6
        L3a:
            r0.printStackTrace()     // Catch: java.lang.Throwable -> L4f
            if (r1 == 0) goto L47
            r1.close()     // Catch: java.io.IOException -> L43
            goto L47
        L43:
            r0 = move-exception
            r0.printStackTrace()
        L47:
            r4 = r2
        L48:
            int r0 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r0 <= 0) goto L4e
            s.i.f3412b = r4
        L4e:
            return r4
        L4f:
            r0 = move-exception
            r6 = r1
            r1 = r0
            r0 = r6
        L53:
            if (r0 == 0) goto L5d
            r0.close()     // Catch: java.io.IOException -> L59
            goto L5d
        L59:
            r0 = move-exception
            r0.printStackTrace()
        L5d:
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: s.i.a():long");
    }
}
