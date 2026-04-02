package com.stripe.bbota01z;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;

/* JADX INFO: loaded from: classes3.dex */
public class d {
    private final BufferedReader a;
    private com.stripe.bbota01z.a b = null;
    private boolean c = false;
    private int d = 0;
    private long e = 0;
    private long f = 0;
    private byte[] g = null;

    static /* synthetic */ class a {
        static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[f.values().length];
            a = iArr;
            try {
                iArr[f.DATA.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[f.EOF.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[f.EXT_LIN.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[f.EXT_SEG.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                a[f.START_LIN.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                a[f.START_SEG.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                a[f.BBPOS_DEFINE_CMAC.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                a[f.BBPOS_DEFINE_TARGET_DEVICE_CHECKING.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                a[f.UNKNOWN.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    public d(InputStream inputStream) {
        this.a = new BufferedReader(new InputStreamReader(inputStream));
    }

    public void a(com.stripe.bbota01z.a aVar) {
        this.b = aVar;
    }

    public byte[] b() {
        return this.g;
    }

    public void c() throws b, IOException {
        this.c = false;
        this.d = 1;
        this.e = 0L;
        this.f = 0L;
        this.g = null;
        while (true) {
            String line = this.a.readLine();
            if (line == null) {
                break;
            }
            a(a(line));
            this.d++;
        }
        if (!this.c) {
            throw new b("No eof at the end of file");
        }
    }

    private e a(String str) throws b {
        e eVar = new e();
        if (this.c) {
            throw new b("Data after eof (" + this.d + ")");
        }
        if (!str.startsWith(":")) {
            throw new b("Invalid Intel HEX record (" + this.d + ")");
        }
        int length = str.length() / 2;
        byte[] bArr = new byte[length];
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            int i3 = i2 * 2;
            byte b = (byte) Integer.parseInt(str.substring(i3 + 1, i3 + 3), 16);
            bArr[i2] = b;
            i += b & 255;
        }
        if ((i & 255) != 0) {
            throw new b("Invalid checksum (" + this.d + ")");
        }
        int i4 = bArr[0];
        eVar.a = i4;
        if (i4 + 5 != length) {
            throw new b("Invalid record length (" + this.d + ")");
        }
        byte[] bArr2 = new byte[i4];
        eVar.d = bArr2;
        System.arraycopy(bArr, 4, bArr2, 0, i4);
        eVar.b = ((bArr[1] & 255) << 8) + (bArr[2] & 255);
        eVar.c = f.a(bArr[3] & 255);
        return eVar;
    }

    private void a(e eVar) throws b {
        long j = ((long) eVar.b) | this.e;
        int i = 0;
        switch (a.a[eVar.c.ordinal()]) {
            case 1:
                com.stripe.bbota01z.a aVar = this.b;
                if (aVar != null) {
                    aVar.a(j, eVar.d);
                    return;
                }
                return;
            case 2:
                com.stripe.bbota01z.a aVar2 = this.b;
                if (aVar2 != null) {
                    aVar2.a();
                }
                this.c = true;
                return;
            case 3:
                if (eVar.a == 2) {
                    byte[] bArr = eVar.d;
                    this.e = ((long) (((bArr[0] & 255) << 8) + (bArr[1] & 255))) << 16;
                    return;
                }
                throw new b("Invalid EXT_LIN record (" + this.d + ")");
            case 4:
                if (eVar.a == 2) {
                    byte[] bArr2 = eVar.d;
                    this.e = ((long) (((bArr2[0] & 255) << 8) + (bArr2[1] & 255))) << 4;
                    return;
                }
                throw new b("Invalid EXT_SEG record (" + this.d + ")");
            case 5:
                if (eVar.a == 4) {
                    this.f = 0L;
                    byte[] bArr3 = eVar.d;
                    int length = bArr3.length;
                    while (i < length) {
                        this.f = (this.f << 8) | ((long) (bArr3[i] & 255));
                        i++;
                    }
                    return;
                }
                throw new b("Invalid START_LIN record at line #" + this.d + " " + eVar);
            case 6:
                if (eVar.a == 4) {
                    this.f = 0L;
                    byte[] bArr4 = eVar.d;
                    int length2 = bArr4.length;
                    while (i < length2) {
                        this.f = (this.f << 8) | ((long) (bArr4[i] & 255));
                        i++;
                    }
                    return;
                }
                throw new b("Invalid START_SEG record at line #" + this.d + " " + eVar);
            case 7:
            default:
                return;
            case 8:
                byte[] bArr5 = this.g;
                if (bArr5 == null) {
                    byte[] bArr6 = eVar.d;
                    int length3 = bArr6.length;
                    byte[] bArr7 = new byte[length3];
                    this.g = bArr7;
                    System.arraycopy(bArr6, 0, bArr7, 0, length3);
                    return;
                }
                byte[] bArr8 = new byte[bArr5.length + eVar.d.length];
                System.arraycopy(bArr5, 0, bArr8, 0, bArr5.length);
                byte[] bArr9 = eVar.d;
                System.arraycopy(bArr9, 0, bArr8, this.g.length, bArr9.length);
                this.g = bArr8;
                return;
        }
    }

    public long a() {
        return this.f;
    }
}
