package u2;

import java.io.EOFException;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Field;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class h implements Serializable, Comparable<h> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final char[] f3580d = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final h f3581e = h(new byte[0]);
    private static final long serialVersionUID = 1;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final byte[] f3582a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public transient int f3583b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public transient String f3584c;

    public h(byte[] bArr) {
        this.f3582a = bArr;
    }

    public static h b(String str) {
        if (str.length() % 2 != 0) {
            throw new IllegalArgumentException(androidx.appcompat.view.a.a("Unexpected hex string: ", str));
        }
        int length = str.length() / 2;
        byte[] bArr = new byte[length];
        for (int i4 = 0; i4 < length; i4++) {
            int i5 = i4 * 2;
            bArr[i4] = (byte) (c(str.charAt(i5 + 1)) + (c(str.charAt(i5)) << 4));
        }
        return h(bArr);
    }

    public static int c(char c4) {
        if (c4 >= '0' && c4 <= '9') {
            return c4 - '0';
        }
        char c5 = 'a';
        if (c4 < 'a' || c4 > 'f') {
            c5 = 'A';
            if (c4 < 'A' || c4 > 'F') {
                throw new IllegalArgumentException("Unexpected hex digit: " + c4);
            }
        }
        return (c4 - c5) + 10;
    }

    public static h e(String str) {
        if (str == null) {
            throw new IllegalArgumentException("s == null");
        }
        h hVar = new h(str.getBytes(y.f3625a));
        hVar.f3584c = str;
        return hVar;
    }

    public static h h(byte... bArr) {
        if (bArr != null) {
            return new h((byte[]) bArr.clone());
        }
        throw new IllegalArgumentException("data == null");
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException {
        int i4 = objectInputStream.readInt();
        if (i4 < 0) {
            throw new IllegalArgumentException(android.support.v4.media.d.a("byteCount < 0: ", i4));
        }
        byte[] bArr = new byte[i4];
        int i5 = 0;
        while (i5 < i4) {
            int i6 = objectInputStream.read(bArr, i5, i4 - i5);
            if (i6 == -1) {
                throw new EOFException();
            }
            i5 += i6;
        }
        h hVar = new h(bArr);
        try {
            Field declaredField = h.class.getDeclaredField("a");
            declaredField.setAccessible(true);
            declaredField.set(this, hVar.f3582a);
        } catch (IllegalAccessException unused) {
            throw new AssertionError();
        } catch (NoSuchFieldException unused2) {
            throw new AssertionError();
        }
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.writeInt(this.f3582a.length);
        objectOutputStream.write(this.f3582a);
    }

    public String a() {
        byte[] bArr = this.f3582a;
        byte[] bArr2 = d.f3575a;
        byte[] bArr3 = new byte[((bArr.length + 2) / 3) * 4];
        int length = bArr.length - (bArr.length % 3);
        int i4 = 0;
        for (int i5 = 0; i5 < length; i5 += 3) {
            int i6 = i4 + 1;
            bArr3[i4] = bArr2[(bArr[i5] & 255) >> 2];
            int i7 = i6 + 1;
            int i8 = i5 + 1;
            bArr3[i6] = bArr2[((bArr[i5] & 3) << 4) | ((bArr[i8] & 255) >> 4)];
            int i9 = i7 + 1;
            int i10 = (bArr[i8] & 15) << 2;
            int i11 = i5 + 2;
            bArr3[i7] = bArr2[i10 | ((bArr[i11] & 255) >> 6)];
            i4 = i9 + 1;
            bArr3[i9] = bArr2[bArr[i11] & 63];
        }
        int length2 = bArr.length % 3;
        if (length2 == 1) {
            int i12 = i4 + 1;
            bArr3[i4] = bArr2[(bArr[length] & 255) >> 2];
            int i13 = i12 + 1;
            bArr3[i12] = bArr2[(bArr[length] & 3) << 4];
            bArr3[i13] = 61;
            bArr3[i13 + 1] = 61;
        } else if (length2 == 2) {
            int i14 = i4 + 1;
            bArr3[i4] = bArr2[(bArr[length] & 255) >> 2];
            int i15 = i14 + 1;
            int i16 = (bArr[length] & 3) << 4;
            int i17 = length + 1;
            bArr3[i14] = bArr2[((bArr[i17] & 255) >> 4) | i16];
            bArr3[i15] = bArr2[(bArr[i17] & 15) << 2];
            bArr3[i15 + 1] = 61;
        }
        try {
            return new String(bArr3, "US-ASCII");
        } catch (UnsupportedEncodingException e4) {
            throw new AssertionError(e4);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0029 A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0027 A[ORIG_RETURN, RETURN] */
    @Override // java.lang.Comparable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int compareTo(u2.h r10) {
        /*
            r9 = this;
            u2.h r10 = (u2.h) r10
            int r0 = r9.k()
            int r1 = r10.k()
            int r2 = java.lang.Math.min(r0, r1)
            r3 = 0
            r4 = 0
        L10:
            r5 = -1
            r6 = 1
            if (r4 >= r2) goto L2b
            byte r7 = r9.f(r4)
            r7 = r7 & 255(0xff, float:3.57E-43)
            byte r8 = r10.f(r4)
            r8 = r8 & 255(0xff, float:3.57E-43)
            if (r7 != r8) goto L25
            int r4 = r4 + 1
            goto L10
        L25:
            if (r7 >= r8) goto L29
        L27:
            r3 = -1
            goto L31
        L29:
            r3 = 1
            goto L31
        L2b:
            if (r0 != r1) goto L2e
            goto L31
        L2e:
            if (r0 >= r1) goto L29
            goto L27
        L31:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: u2.h.compareTo(java.lang.Object):int");
    }

    public final h d(String str) {
        try {
            return h(MessageDigest.getInstance(str).digest(this.f3582a));
        } catch (NoSuchAlgorithmException e4) {
            throw new AssertionError(e4);
        }
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof h) {
            h hVar = (h) obj;
            int iK = hVar.k();
            byte[] bArr = this.f3582a;
            if (iK == bArr.length && hVar.j(0, bArr, 0, bArr.length)) {
                return true;
            }
        }
        return false;
    }

    public byte f(int i4) {
        return this.f3582a[i4];
    }

    public String g() {
        byte[] bArr = this.f3582a;
        char[] cArr = new char[bArr.length * 2];
        int i4 = 0;
        for (byte b4 : bArr) {
            int i5 = i4 + 1;
            char[] cArr2 = f3580d;
            cArr[i4] = cArr2[(b4 >> 4) & 15];
            i4 = i5 + 1;
            cArr[i5] = cArr2[b4 & 15];
        }
        return new String(cArr);
    }

    public int hashCode() {
        int i4 = this.f3583b;
        if (i4 != 0) {
            return i4;
        }
        int iHashCode = Arrays.hashCode(this.f3582a);
        this.f3583b = iHashCode;
        return iHashCode;
    }

    public boolean i(int i4, h hVar, int i5, int i6) {
        return hVar.j(i5, this.f3582a, i4, i6);
    }

    public boolean j(int i4, byte[] bArr, int i5, int i6) {
        if (i4 >= 0) {
            byte[] bArr2 = this.f3582a;
            if (i4 <= bArr2.length - i6 && i5 >= 0 && i5 <= bArr.length - i6 && y.a(bArr2, i4, bArr, i5, i6)) {
                return true;
            }
        }
        return false;
    }

    public int k() {
        return this.f3582a.length;
    }

    public h l(int i4, int i5) {
        if (i4 < 0) {
            throw new IllegalArgumentException("beginIndex < 0");
        }
        byte[] bArr = this.f3582a;
        if (i5 > bArr.length) {
            throw new IllegalArgumentException(android.support.v4.media.e.a(android.support.v4.media.f.a("endIndex > length("), this.f3582a.length, ")"));
        }
        int i6 = i5 - i4;
        if (i6 < 0) {
            throw new IllegalArgumentException("endIndex < beginIndex");
        }
        if (i4 == 0 && i5 == bArr.length) {
            return this;
        }
        byte[] bArr2 = new byte[i6];
        System.arraycopy(bArr, i4, bArr2, 0, i6);
        return new h(bArr2);
    }

    public h m() {
        int i4 = 0;
        while (true) {
            byte[] bArr = this.f3582a;
            if (i4 >= bArr.length) {
                return this;
            }
            byte b4 = bArr[i4];
            if (b4 >= 65 && b4 <= 90) {
                byte[] bArr2 = (byte[]) bArr.clone();
                bArr2[i4] = (byte) (b4 + 32);
                for (int i5 = i4 + 1; i5 < bArr2.length; i5++) {
                    byte b5 = bArr2[i5];
                    if (b5 >= 65 && b5 <= 90) {
                        bArr2[i5] = (byte) (b5 + 32);
                    }
                }
                return new h(bArr2);
            }
            i4++;
        }
    }

    public String n() {
        String str = this.f3584c;
        if (str != null) {
            return str;
        }
        String str2 = new String(this.f3582a, y.f3625a);
        this.f3584c = str2;
        return str2;
    }

    public void o(e eVar) {
        byte[] bArr = this.f3582a;
        eVar.L(bArr, 0, bArr.length);
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0032, code lost:
    
        r3 = -1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String toString() {
        /*
            r9 = this;
            byte[] r0 = r9.f3582a
            int r0 = r0.length
            if (r0 != 0) goto L8
            java.lang.String r0 = "[size=0]"
            return r0
        L8:
            java.lang.String r0 = r9.n()
            int r1 = r0.length()
            r2 = 0
            r3 = 0
            r4 = 0
        L13:
            r5 = -1
            r6 = 64
            if (r3 >= r1) goto L3c
            if (r4 != r6) goto L1b
            goto L40
        L1b:
            int r7 = r0.codePointAt(r3)
            boolean r8 = java.lang.Character.isISOControl(r7)
            if (r8 == 0) goto L2d
            r8 = 10
            if (r7 == r8) goto L2d
            r8 = 13
            if (r7 != r8) goto L32
        L2d:
            r8 = 65533(0xfffd, float:9.1831E-41)
            if (r7 != r8) goto L34
        L32:
            r3 = -1
            goto L40
        L34:
            int r4 = r4 + 1
            int r5 = java.lang.Character.charCount(r7)
            int r3 = r3 + r5
            goto L13
        L3c:
            int r3 = r0.length()
        L40:
            java.lang.String r1 = "…]"
            java.lang.String r4 = "[size="
            java.lang.String r7 = "]"
            if (r3 != r5) goto L84
            byte[] r0 = r9.f3582a
            int r0 = r0.length
            if (r0 > r6) goto L62
            java.lang.String r0 = "[hex="
            java.lang.StringBuilder r0 = android.support.v4.media.f.a(r0)
            java.lang.String r1 = r9.g()
            r0.append(r1)
            r0.append(r7)
            java.lang.String r0 = r0.toString()
            goto L83
        L62:
            java.lang.StringBuilder r0 = android.support.v4.media.f.a(r4)
            byte[] r3 = r9.f3582a
            int r3 = r3.length
            r0.append(r3)
            java.lang.String r3 = " hex="
            r0.append(r3)
            u2.h r2 = r9.l(r2, r6)
            java.lang.String r2 = r2.g()
            r0.append(r2)
            r0.append(r1)
            java.lang.String r0 = r0.toString()
        L83:
            return r0
        L84:
            java.lang.String r2 = r0.substring(r2, r3)
            java.lang.String r5 = "\\"
            java.lang.String r6 = "\\\\"
            java.lang.String r2 = r2.replace(r5, r6)
            java.lang.String r5 = "\n"
            java.lang.String r6 = "\\n"
            java.lang.String r2 = r2.replace(r5, r6)
            java.lang.String r5 = "\r"
            java.lang.String r6 = "\\r"
            java.lang.String r2 = r2.replace(r5, r6)
            int r0 = r0.length()
            if (r3 >= r0) goto Lc0
            java.lang.StringBuilder r0 = android.support.v4.media.f.a(r4)
            byte[] r3 = r9.f3582a
            int r3 = r3.length
            r0.append(r3)
            java.lang.String r3 = " text="
            r0.append(r3)
            r0.append(r2)
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            goto Lc6
        Lc0:
            java.lang.String r0 = "[text="
            java.lang.String r0 = android.support.v4.media.h.a(r0, r2, r7)
        Lc6:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: u2.h.toString():java.lang.String");
    }
}
