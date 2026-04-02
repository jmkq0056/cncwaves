package q2;

import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final u2.h f3194a = u2.h.e("PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String[] f3195b = {"DATA", "HEADERS", "PRIORITY", "RST_STREAM", "SETTINGS", "PUSH_PROMISE", "PING", "GOAWAY", "WINDOW_UPDATE", "CONTINUATION"};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String[] f3196c = new String[64];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final String[] f3197d = new String[256];

    static {
        int i4 = 0;
        int i5 = 0;
        while (true) {
            String[] strArr = f3197d;
            if (i5 >= strArr.length) {
                break;
            }
            strArr[i5] = l2.c.n("%8s", Integer.toBinaryString(i5)).replace(' ', '0');
            i5++;
        }
        String[] strArr2 = f3196c;
        strArr2[0] = "";
        strArr2[1] = "END_STREAM";
        int[] iArr = {1};
        strArr2[8] = "PADDED";
        for (int i6 = 0; i6 < 1; i6++) {
            int i7 = iArr[i6];
            String[] strArr3 = f3196c;
            strArr3[i7 | 8] = android.support.v4.media.b.a(new StringBuilder(), strArr3[i7], "|PADDED");
        }
        String[] strArr4 = f3196c;
        strArr4[4] = "END_HEADERS";
        strArr4[32] = "PRIORITY";
        strArr4[36] = "END_HEADERS|PRIORITY";
        int[] iArr2 = {4, 32, 36};
        for (int i8 = 0; i8 < 3; i8++) {
            int i9 = iArr2[i8];
            for (int i10 = 0; i10 < 1; i10++) {
                int i11 = iArr[i10];
                String[] strArr5 = f3196c;
                int i12 = i11 | i9;
                strArr5[i12] = strArr5[i11] + '|' + strArr5[i9];
                StringBuilder sb = new StringBuilder();
                sb.append(strArr5[i11]);
                sb.append('|');
                strArr5[i12 | 8] = android.support.v4.media.b.a(sb, strArr5[i9], "|PADDED");
            }
        }
        while (true) {
            String[] strArr6 = f3196c;
            if (i4 >= strArr6.length) {
                return;
            }
            if (strArr6[i4] == null) {
                strArr6[i4] = f3197d[i4];
            }
            i4++;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x0067  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String a(boolean r9, int r10, int r11, byte r12, byte r13) {
        /*
            java.lang.String[] r0 = q2.e.f3195b
            int r1 = r0.length
            r2 = 0
            r3 = 1
            if (r12 >= r1) goto La
            r0 = r0[r12]
            goto L18
        La:
            java.lang.Object[] r0 = new java.lang.Object[r3]
            java.lang.Byte r1 = java.lang.Byte.valueOf(r12)
            r0[r2] = r1
            java.lang.String r1 = "0x%02x"
            java.lang.String r0 = l2.c.n(r1, r0)
        L18:
            r1 = 5
            r4 = 3
            r5 = 2
            r6 = 4
            if (r13 != 0) goto L21
            java.lang.String r12 = ""
            goto L6b
        L21:
            if (r12 == r5) goto L67
            if (r12 == r4) goto L67
            if (r12 == r6) goto L5d
            r7 = 6
            if (r12 == r7) goto L5d
            r7 = 7
            if (r12 == r7) goto L67
            r7 = 8
            if (r12 == r7) goto L67
            java.lang.String[] r7 = q2.e.f3196c
            int r8 = r7.length
            if (r13 >= r8) goto L39
            r7 = r7[r13]
            goto L3d
        L39:
            java.lang.String[] r7 = q2.e.f3197d
            r7 = r7[r13]
        L3d:
            if (r12 != r1) goto L4c
            r8 = r13 & 4
            if (r8 == 0) goto L4c
            java.lang.String r12 = "HEADERS"
            java.lang.String r13 = "PUSH_PROMISE"
            java.lang.String r12 = r7.replace(r12, r13)
            goto L6b
        L4c:
            if (r12 != 0) goto L5b
            r12 = r13 & 32
            if (r12 == 0) goto L5b
            java.lang.String r12 = "PRIORITY"
            java.lang.String r13 = "COMPRESSED"
            java.lang.String r12 = r7.replace(r12, r13)
            goto L6b
        L5b:
            r12 = r7
            goto L6b
        L5d:
            if (r13 != r3) goto L62
            java.lang.String r12 = "ACK"
            goto L6b
        L62:
            java.lang.String[] r12 = q2.e.f3197d
            r12 = r12[r13]
            goto L6b
        L67:
            java.lang.String[] r12 = q2.e.f3197d
            r12 = r12[r13]
        L6b:
            java.lang.Object[] r13 = new java.lang.Object[r1]
            if (r9 == 0) goto L72
            java.lang.String r9 = "<<"
            goto L74
        L72:
            java.lang.String r9 = ">>"
        L74:
            r13[r2] = r9
            java.lang.Integer r9 = java.lang.Integer.valueOf(r10)
            r13[r3] = r9
            java.lang.Integer r9 = java.lang.Integer.valueOf(r11)
            r13[r5] = r9
            r13[r4] = r0
            r13[r6] = r12
            java.lang.String r9 = "%s 0x%08x %5d %-13s %s"
            java.lang.String r9 = l2.c.n(r9, r13)
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: q2.e.a(boolean, int, int, byte, byte):java.lang.String");
    }

    public static IllegalArgumentException b(String str, Object... objArr) {
        throw new IllegalArgumentException(l2.c.n(str, objArr));
    }

    public static IOException c(String str, Object... objArr) {
        throw new IOException(l2.c.n(str, objArr));
    }
}
