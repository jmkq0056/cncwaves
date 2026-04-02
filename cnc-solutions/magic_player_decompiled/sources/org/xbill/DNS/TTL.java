package org.xbill.DNS;

/* JADX INFO: loaded from: classes2.dex */
public final class TTL {
    public static final long MAX_VALUE = 2147483647L;

    private TTL() {
    }

    public static void check(long j4) {
        if (j4 < 0 || j4 > MAX_VALUE) {
            throw new InvalidTTLException(j4);
        }
    }

    public static String format(long j4) {
        check(j4);
        StringBuffer stringBuffer = new StringBuffer();
        long j5 = j4 % 60;
        long j6 = j4 / 60;
        long j7 = j6 % 60;
        long j8 = j6 / 60;
        long j9 = j8 % 24;
        long j10 = j8 / 24;
        long j11 = j10 % 7;
        long j12 = j10 / 7;
        if (j12 > 0) {
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append(j12);
            stringBuffer2.append("W");
            stringBuffer.append(stringBuffer2.toString());
        }
        if (j11 > 0) {
            StringBuffer stringBuffer3 = new StringBuffer();
            stringBuffer3.append(j11);
            stringBuffer3.append("D");
            stringBuffer.append(stringBuffer3.toString());
        }
        if (j9 > 0) {
            StringBuffer stringBuffer4 = new StringBuffer();
            stringBuffer4.append(j9);
            stringBuffer4.append("H");
            stringBuffer.append(stringBuffer4.toString());
        }
        if (j7 > 0) {
            StringBuffer stringBuffer5 = new StringBuffer();
            stringBuffer5.append(j7);
            stringBuffer5.append("M");
            stringBuffer.append(stringBuffer5.toString());
        }
        if (j5 > 0 || (j12 == 0 && j11 == 0 && j9 == 0 && j7 == 0)) {
            StringBuffer stringBuffer6 = new StringBuffer();
            stringBuffer6.append(j5);
            stringBuffer6.append("S");
            stringBuffer.append(stringBuffer6.toString());
        }
        return stringBuffer.toString();
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x007a A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long parse(java.lang.String r16, boolean r17) {
        /*
            r0 = r16
            if (r0 == 0) goto L9a
            int r1 = r16.length()
            if (r1 == 0) goto L9a
            r1 = 0
            char r2 = r0.charAt(r1)
            boolean r2 = java.lang.Character.isDigit(r2)
            if (r2 == 0) goto L9a
            r2 = 0
            r4 = r2
            r6 = r4
        L19:
            int r8 = r16.length()
            r9 = 4294967295(0xffffffff, double:2.1219957905E-314)
            if (r1 >= r8) goto L80
            char r8 = r0.charAt(r1)
            boolean r11 = java.lang.Character.isDigit(r8)
            if (r11 == 0) goto L44
            r9 = 10
            long r9 = r9 * r6
            int r8 = java.lang.Character.getNumericValue(r8)
            long r11 = (long) r8
            long r9 = r9 + r11
            int r8 = (r9 > r6 ? 1 : (r9 == r6 ? 0 : -1))
            if (r8 < 0) goto L3e
            r6 = r9
            goto L77
        L3e:
            java.lang.NumberFormatException r0 = new java.lang.NumberFormatException
            r0.<init>()
            throw r0
        L44:
            char r8 = java.lang.Character.toUpperCase(r8)
            r11 = 68
            r12 = 60
            if (r8 == r11) goto L69
            r11 = 72
            if (r8 == r11) goto L6d
            r11 = 77
            if (r8 == r11) goto L6f
            r11 = 83
            if (r8 == r11) goto L71
            r11 = 87
            if (r8 != r11) goto L63
            r14 = 7
            long r6 = r6 * r14
            goto L69
        L63:
            java.lang.NumberFormatException r0 = new java.lang.NumberFormatException
            r0.<init>()
            throw r0
        L69:
            r14 = 24
            long r6 = r6 * r14
        L6d:
            long r6 = r6 * r12
        L6f:
            long r6 = r6 * r12
        L71:
            long r4 = r4 + r6
            int r6 = (r4 > r9 ? 1 : (r4 == r9 ? 0 : -1))
            if (r6 > 0) goto L7a
            r6 = r2
        L77:
            int r1 = r1 + 1
            goto L19
        L7a:
            java.lang.NumberFormatException r0 = new java.lang.NumberFormatException
            r0.<init>()
            throw r0
        L80:
            int r0 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r0 != 0) goto L85
            r4 = r6
        L85:
            int r0 = (r4 > r9 ? 1 : (r4 == r9 ? 0 : -1))
            if (r0 > 0) goto L94
            r0 = 2147483647(0x7fffffff, double:1.060997895E-314)
            int r2 = (r4 > r0 ? 1 : (r4 == r0 ? 0 : -1))
            if (r2 <= 0) goto L93
            if (r17 == 0) goto L93
            r4 = r0
        L93:
            return r4
        L94:
            java.lang.NumberFormatException r0 = new java.lang.NumberFormatException
            r0.<init>()
            throw r0
        L9a:
            java.lang.NumberFormatException r0 = new java.lang.NumberFormatException
            r0.<init>()
            goto La1
        La0:
            throw r0
        La1:
            goto La0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.xbill.DNS.TTL.parse(java.lang.String, boolean):long");
    }

    public static long parseTTL(String str) {
        return parse(str, true);
    }
}
