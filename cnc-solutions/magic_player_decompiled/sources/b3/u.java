package b3;

import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import org.eclipse.jetty.http.HttpMethods;

/* JADX INFO: loaded from: classes2.dex */
public abstract class u {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Charset f292e = StandardCharsets.UTF_8;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final String[] f293f = {"reserved", HttpMethods.CONNECT, "CONNACK", "PUBLISH", "PUBACK", "PUBREC", "PUBREL", "PUBCOMP", "SUBSCRIBE", "SUBACK", "UNSUBSCRIBE", "UNSUBACK", "PINGREQ", "PINGRESP", "DISCONNECT"};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public byte f294a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public x2.s f297d;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f296c = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f295b = 0;

    public u(byte b4) {
        this.f294a = b4;
    }

    public static u g(InputStream inputStream) throws x2.m {
        try {
            a aVar = new a(inputStream);
            DataInputStream dataInputStream = new DataInputStream(aVar);
            int unsignedByte = dataInputStream.readUnsignedByte();
            byte b4 = (byte) (unsignedByte >> 4);
            byte b5 = (byte) (unsignedByte & 15);
            long j4 = r(dataInputStream).f305a;
            long j5 = aVar.f261b;
            long j6 = (j4 + j5) - j5;
            byte[] bArr = new byte[0];
            if (j6 > 0) {
                int i4 = (int) j6;
                bArr = new byte[i4];
                dataInputStream.readFully(bArr, 0, i4);
            }
            if (b4 == 1) {
                return new d(bArr);
            }
            if (b4 == 3) {
                return new o(b5, bArr);
            }
            if (b4 == 4) {
                return new k(bArr);
            }
            if (b4 == 7) {
                return new l(bArr);
            }
            if (b4 == 2) {
                return new c(bArr);
            }
            if (b4 == 12) {
                return new i(b5, bArr);
            }
            if (b4 == 13) {
                return new j();
            }
            if (b4 == 8) {
                return new r(bArr);
            }
            if (b4 == 9) {
                return new q(bArr);
            }
            if (b4 == 10) {
                return new t(bArr);
            }
            if (b4 == 11) {
                return new s(bArr);
            }
            if (b4 == 6) {
                return new n(bArr);
            }
            if (b4 == 5) {
                return new m(bArr);
            }
            if (b4 == 14) {
                return new e(b5, bArr);
            }
            throw q0.a.e(6);
        } catch (IOException e4) {
            throw new x2.m(e4);
        }
    }

    public static String h(DataInputStream dataInputStream) throws x2.m {
        try {
            byte[] bArr = new byte[dataInputStream.readUnsignedShort()];
            dataInputStream.readFully(bArr);
            String str = new String(bArr, f292e);
            t(str);
            return str;
        } catch (IOException e4) {
            throw new x2.m(e4);
        }
    }

    public static byte[] i(long j4) {
        int i4 = (int) j4;
        if (i4 < 0 || i4 > 268435455) {
            throw new IllegalArgumentException("This property must be a number between 0 and 268435455");
        }
        int i5 = 0;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        do {
            byte b4 = (byte) (j4 % 128);
            j4 /= 128;
            if (j4 > 0) {
                b4 = (byte) (b4 | 128);
            }
            byteArrayOutputStream.write(b4);
            i5++;
            if (j4 <= 0) {
                break;
            }
        } while (i5 < 4);
        return byteArrayOutputStream.toByteArray();
    }

    public static void k(DataOutputStream dataOutputStream, String str) throws x2.m {
        t(str);
        try {
            byte[] bytes = str.getBytes(f292e);
            byte length = (byte) ((bytes.length >>> 8) & 255);
            byte length2 = (byte) ((bytes.length >>> 0) & 255);
            dataOutputStream.write(length);
            dataOutputStream.write(length2);
            dataOutputStream.write(bytes);
        } catch (UnsupportedEncodingException e4) {
            throw new x2.m(e4);
        } catch (IOException e5) {
            throw new x2.m(e5);
        }
    }

    public static w r(DataInputStream dataInputStream) throws IOException {
        byte b4;
        int i4 = 0;
        int i5 = 0;
        int i6 = 1;
        do {
            b4 = dataInputStream.readByte();
            i4++;
            i5 += (b4 & 127) * i6;
            i6 *= 128;
        } while ((b4 & 128) != 0);
        if (i5 >= 0 && i5 <= 268435455) {
            return new w(i5, i4);
        }
        throw new IOException("This property must be a number between 0 and 268435455. Read value was: " + i5);
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0057 A[PHI: r1
      0x0057: PHI (r1v6 int) = (r1v1 int), (r1v1 int), (r1v7 int) binds: [B:24:0x004b, B:28:0x0054, B:16:0x0038] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void t(java.lang.String r7) {
        /*
            r0 = 0
            r1 = 0
        L2:
            int r2 = r7.length()
            if (r1 < r2) goto L9
            return
        L9:
            char r2 = r7.charAt(r1)
            boolean r3 = java.lang.Character.isHighSurrogate(r2)
            r4 = 65534(0xfffe, float:9.1833E-41)
            r5 = 1
            if (r3 == 0) goto L3b
            int r1 = r1 + 1
            int r3 = r7.length()
            if (r1 != r3) goto L20
            goto L59
        L20:
            char r3 = r7.charAt(r1)
            boolean r6 = java.lang.Character.isLowSurrogate(r3)
            if (r6 == 0) goto L2b
            goto L59
        L2b:
            r6 = r2 & 1023(0x3ff, float:1.434E-42)
            int r6 = r6 << 10
            r3 = r3 & 1023(0x3ff, float:1.434E-42)
            r3 = r3 | r6
            r6 = 65535(0xffff, float:9.1834E-41)
            r3 = r3 & r6
            if (r3 == r6) goto L59
            if (r3 != r4) goto L57
            goto L59
        L3b:
            boolean r3 = java.lang.Character.isISOControl(r2)
            if (r3 != 0) goto L59
            boolean r3 = java.lang.Character.isLowSurrogate(r2)
            if (r3 == 0) goto L48
            goto L59
        L48:
            r3 = 64976(0xfdd0, float:9.1051E-41)
            if (r2 < r3) goto L57
            if (r2 == r4) goto L59
            if (r2 >= r3) goto L59
            r3 = 64991(0xfddf, float:9.1072E-41)
            if (r2 > r3) goto L57
            goto L59
        L57:
            r3 = 0
            goto L5a
        L59:
            r3 = 1
        L5a:
            if (r3 != 0) goto L5e
            int r1 = r1 + r5
            goto L2
        L5e:
            java.lang.IllegalArgumentException r7 = new java.lang.IllegalArgumentException
            java.lang.Object[] r1 = new java.lang.Object[r5]
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
            r1[r0] = r2
            java.lang.String r0 = "Invalid UTF-8 char: [%x]"
            java.lang.String r0 = java.lang.String.format(r0, r1)
            r7.<init>(r0)
            goto L73
        L72:
            throw r7
        L73:
            goto L72
        */
        throw new UnsupportedOperationException("Method not decompiled: b3.u.t(java.lang.String):void");
    }

    public byte[] j() throws x2.m {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
            dataOutputStream.writeShort(this.f295b);
            dataOutputStream.flush();
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e4) {
            throw new x2.m(e4);
        }
    }

    public byte[] l() throws x2.m {
        try {
            int iN = ((this.f294a & 15) << 4) ^ (n() & 15);
            byte[] bArrP = p();
            int length = bArrP.length + o().length;
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
            dataOutputStream.writeByte(iN);
            dataOutputStream.write(i(length));
            dataOutputStream.write(bArrP);
            dataOutputStream.flush();
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e4) {
            throw new x2.m(e4);
        }
    }

    public String m() {
        return Integer.toString(this.f295b);
    }

    public abstract byte n();

    public byte[] o() {
        return new byte[0];
    }

    public abstract byte[] p();

    public boolean q() {
        return !(this instanceof c);
    }

    public void s(int i4) {
        this.f295b = i4;
    }

    public String toString() {
        return f293f[this.f294a];
    }
}
