package u2;

import android.support.v4.media.session.PlaybackStateCompat;
import androidx.recyclerview.widget.RecyclerView;
import java.io.EOFException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
import java.nio.charset.Charset;
import java.util.Objects;
import javax.annotation.Nullable;
import org.xbill.DNS.TTL;

/* JADX INFO: loaded from: classes.dex */
public final class e implements g, f, Cloneable, ByteChannel {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final byte[] f3576c = {48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @Nullable
    public s f3577a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f3578b;

    /* JADX INFO: loaded from: classes2.dex */
    public class a extends InputStream {
        public a() {
        }

        @Override // java.io.InputStream
        public int available() {
            return (int) Math.min(e.this.f3578b, TTL.MAX_VALUE);
        }

        @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
        }

        @Override // java.io.InputStream
        public int read() {
            e eVar = e.this;
            if (eVar.f3578b > 0) {
                return eVar.readByte() & 255;
            }
            return -1;
        }

        public String toString() {
            return e.this + ".inputStream()";
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i4, int i5) {
            return e.this.read(bArr, i4, i5);
        }
    }

    @Override // u2.g
    public InputStream A() {
        return new a();
    }

    public final e B(e eVar, long j4, long j5) {
        if (eVar == null) {
            throw new IllegalArgumentException("out == null");
        }
        y.b(this.f3578b, j4, j5);
        if (j5 == 0) {
            return this;
        }
        eVar.f3578b += j5;
        s sVar = this.f3577a;
        while (true) {
            int i4 = sVar.f3612c;
            int i5 = sVar.f3611b;
            if (j4 < i4 - i5) {
                break;
            }
            j4 -= (long) (i4 - i5);
            sVar = sVar.f3615f;
        }
        while (j5 > 0) {
            s sVarC = sVar.c();
            int i6 = (int) (((long) sVarC.f3611b) + j4);
            sVarC.f3611b = i6;
            sVarC.f3612c = Math.min(i6 + ((int) j5), sVarC.f3612c);
            s sVar2 = eVar.f3577a;
            if (sVar2 == null) {
                sVarC.f3616g = sVarC;
                sVarC.f3615f = sVarC;
                eVar.f3577a = sVarC;
            } else {
                sVar2.f3616g.b(sVarC);
            }
            j5 -= (long) (sVarC.f3612c - sVarC.f3611b);
            sVar = sVar.f3615f;
            j4 = 0;
        }
        return this;
    }

    public final byte C(long j4) {
        int i4;
        y.b(this.f3578b, j4, 1L);
        long j5 = this.f3578b;
        if (j5 - j4 <= j4) {
            long j6 = j4 - j5;
            s sVar = this.f3577a;
            do {
                sVar = sVar.f3616g;
                int i5 = sVar.f3612c;
                i4 = sVar.f3611b;
                j6 += (long) (i5 - i4);
            } while (j6 < 0);
            return sVar.f3610a[i4 + ((int) j6)];
        }
        s sVar2 = this.f3577a;
        while (true) {
            int i6 = sVar2.f3612c;
            int i7 = sVar2.f3611b;
            long j7 = i6 - i7;
            if (j4 < j7) {
                return sVar2.f3610a[i7 + ((int) j4)];
            }
            j4 -= j7;
            sVar2 = sVar2.f3615f;
        }
    }

    public long D(byte b4, long j4, long j5) {
        s sVar;
        long j6 = 0;
        if (j4 < 0 || j5 < j4) {
            throw new IllegalArgumentException(String.format("size=%s fromIndex=%s toIndex=%s", Long.valueOf(this.f3578b), Long.valueOf(j4), Long.valueOf(j5)));
        }
        long j7 = this.f3578b;
        long j8 = j5 > j7 ? j7 : j5;
        if (j4 == j8 || (sVar = this.f3577a) == null) {
            return -1L;
        }
        if (j7 - j4 < j4) {
            while (j7 > j4) {
                sVar = sVar.f3616g;
                j7 -= (long) (sVar.f3612c - sVar.f3611b);
            }
        } else {
            while (true) {
                long j9 = ((long) (sVar.f3612c - sVar.f3611b)) + j6;
                if (j9 >= j4) {
                    break;
                }
                sVar = sVar.f3615f;
                j6 = j9;
            }
            j7 = j6;
        }
        long j10 = j4;
        while (j7 < j8) {
            byte[] bArr = sVar.f3610a;
            int iMin = (int) Math.min(sVar.f3612c, (((long) sVar.f3611b) + j8) - j7);
            for (int i4 = (int) ((((long) sVar.f3611b) + j10) - j7); i4 < iMin; i4++) {
                if (bArr[i4] == b4) {
                    return ((long) (i4 - sVar.f3611b)) + j7;
                }
            }
            j7 += (long) (sVar.f3612c - sVar.f3611b);
            sVar = sVar.f3615f;
            j10 = j7;
        }
        return -1L;
    }

    public h E() {
        try {
            return new h(n(this.f3578b));
        } catch (EOFException e4) {
            throw new AssertionError(e4);
        }
    }

    public void F(byte[] bArr) throws EOFException {
        int i4 = 0;
        while (i4 < bArr.length) {
            int i5 = read(bArr, i4, bArr.length - i4);
            if (i5 == -1) {
                throw new EOFException();
            }
            i4 += i5;
        }
    }

    public String G(long j4, Charset charset) {
        y.b(this.f3578b, 0L, j4);
        if (charset == null) {
            throw new IllegalArgumentException("charset == null");
        }
        if (j4 > TTL.MAX_VALUE) {
            throw new IllegalArgumentException(androidx.viewpager2.adapter.a.a("byteCount > Integer.MAX_VALUE: ", j4));
        }
        if (j4 == 0) {
            return "";
        }
        s sVar = this.f3577a;
        int i4 = sVar.f3611b;
        if (((long) i4) + j4 > sVar.f3612c) {
            return new String(n(j4), charset);
        }
        String str = new String(sVar.f3610a, i4, (int) j4, charset);
        int i5 = (int) (((long) sVar.f3611b) + j4);
        sVar.f3611b = i5;
        this.f3578b -= j4;
        if (i5 == sVar.f3612c) {
            this.f3577a = sVar.a();
            t.a(sVar);
        }
        return str;
    }

    public String H() {
        try {
            return G(this.f3578b, y.f3625a);
        } catch (EOFException e4) {
            throw new AssertionError(e4);
        }
    }

    public String I(long j4) throws EOFException {
        if (j4 > 0) {
            long j5 = j4 - 1;
            if (C(j5) == 13) {
                String strG = G(j5, y.f3625a);
                skip(2L);
                return strG;
            }
        }
        String strG2 = G(j4, y.f3625a);
        skip(1L);
        return strG2;
    }

    public s J(int i4) {
        if (i4 < 1 || i4 > 8192) {
            throw new IllegalArgumentException();
        }
        s sVar = this.f3577a;
        if (sVar == null) {
            s sVarB = t.b();
            this.f3577a = sVarB;
            sVarB.f3616g = sVarB;
            sVarB.f3615f = sVarB;
            return sVarB;
        }
        s sVar2 = sVar.f3616g;
        if (sVar2.f3612c + i4 <= 8192 && sVar2.f3614e) {
            return sVar2;
        }
        s sVarB2 = t.b();
        sVar2.b(sVarB2);
        return sVarB2;
    }

    public e K(byte[] bArr) {
        if (bArr == null) {
            throw new IllegalArgumentException("source == null");
        }
        L(bArr, 0, bArr.length);
        return this;
    }

    public e L(byte[] bArr, int i4, int i5) {
        if (bArr == null) {
            throw new IllegalArgumentException("source == null");
        }
        long j4 = i5;
        y.b(bArr.length, i4, j4);
        int i6 = i5 + i4;
        while (i4 < i6) {
            s sVarJ = J(1);
            int iMin = Math.min(i6 - i4, 8192 - sVarJ.f3612c);
            System.arraycopy(bArr, i4, sVarJ.f3610a, sVarJ.f3612c, iMin);
            i4 += iMin;
            sVarJ.f3612c += iMin;
        }
        this.f3578b += j4;
        return this;
    }

    public long M(w wVar) {
        if (wVar == null) {
            throw new IllegalArgumentException("source == null");
        }
        long j4 = 0;
        while (true) {
            long jS = wVar.s(this, PlaybackStateCompat.ACTION_PLAY_FROM_URI);
            if (jS == -1) {
                return j4;
            }
            j4 += jS;
        }
    }

    public e N(int i4) {
        s sVarJ = J(1);
        byte[] bArr = sVarJ.f3610a;
        int i5 = sVarJ.f3612c;
        sVarJ.f3612c = i5 + 1;
        bArr[i5] = (byte) i4;
        this.f3578b++;
        return this;
    }

    @Override // u2.f
    /* JADX INFO: renamed from: O, reason: merged with bridge method [inline-methods] */
    public e b(long j4) {
        if (j4 == 0) {
            N(48);
            return this;
        }
        int iNumberOfTrailingZeros = (Long.numberOfTrailingZeros(Long.highestOneBit(j4)) / 4) + 1;
        s sVarJ = J(iNumberOfTrailingZeros);
        byte[] bArr = sVarJ.f3610a;
        int i4 = sVarJ.f3612c;
        for (int i5 = (i4 + iNumberOfTrailingZeros) - 1; i5 >= i4; i5--) {
            bArr[i5] = f3576c[(int) (15 & j4)];
            j4 >>>= 4;
        }
        sVarJ.f3612c += iNumberOfTrailingZeros;
        this.f3578b += (long) iNumberOfTrailingZeros;
        return this;
    }

    public e P(int i4) {
        s sVarJ = J(4);
        byte[] bArr = sVarJ.f3610a;
        int i5 = sVarJ.f3612c;
        int i6 = i5 + 1;
        bArr[i5] = (byte) ((i4 >>> 24) & 255);
        int i7 = i6 + 1;
        bArr[i6] = (byte) ((i4 >>> 16) & 255);
        int i8 = i7 + 1;
        bArr[i7] = (byte) ((i4 >>> 8) & 255);
        bArr[i8] = (byte) (i4 & 255);
        sVarJ.f3612c = i8 + 1;
        this.f3578b += 4;
        return this;
    }

    public e Q(int i4) {
        s sVarJ = J(2);
        byte[] bArr = sVarJ.f3610a;
        int i5 = sVarJ.f3612c;
        int i6 = i5 + 1;
        bArr[i5] = (byte) ((i4 >>> 8) & 255);
        bArr[i6] = (byte) (i4 & 255);
        sVarJ.f3612c = i6 + 1;
        this.f3578b += 2;
        return this;
    }

    public e R(String str) {
        S(str, 0, str.length());
        return this;
    }

    public e S(String str, int i4, int i5) {
        char cCharAt;
        if (i4 < 0) {
            throw new IllegalArgumentException(android.support.v4.media.d.a("beginIndex < 0: ", i4));
        }
        if (i5 < i4) {
            throw new IllegalArgumentException("endIndex < beginIndex: " + i5 + " < " + i4);
        }
        if (i5 > str.length()) {
            StringBuilder sbA = android.support.v4.media.a.a("endIndex > string.length: ", i5, " > ");
            sbA.append(str.length());
            throw new IllegalArgumentException(sbA.toString());
        }
        while (i4 < i5) {
            char cCharAt2 = str.charAt(i4);
            if (cCharAt2 < 128) {
                s sVarJ = J(1);
                byte[] bArr = sVarJ.f3610a;
                int i6 = sVarJ.f3612c - i4;
                int iMin = Math.min(i5, 8192 - i6);
                int i7 = i4 + 1;
                bArr[i4 + i6] = (byte) cCharAt2;
                while (true) {
                    i4 = i7;
                    if (i4 >= iMin || (cCharAt = str.charAt(i4)) >= 128) {
                        break;
                    }
                    i7 = i4 + 1;
                    bArr[i4 + i6] = (byte) cCharAt;
                }
                int i8 = sVarJ.f3612c;
                int i9 = (i6 + i4) - i8;
                sVarJ.f3612c = i8 + i9;
                this.f3578b += (long) i9;
            } else {
                if (cCharAt2 < 2048) {
                    N((cCharAt2 >> 6) | 192);
                    N((cCharAt2 & '?') | 128);
                } else if (cCharAt2 < 55296 || cCharAt2 > 57343) {
                    N((cCharAt2 >> '\f') | 224);
                    N(((cCharAt2 >> 6) & 63) | 128);
                    N((cCharAt2 & '?') | 128);
                } else {
                    int i10 = i4 + 1;
                    char cCharAt3 = i10 < i5 ? str.charAt(i10) : (char) 0;
                    if (cCharAt2 > 56319 || cCharAt3 < 56320 || cCharAt3 > 57343) {
                        N(63);
                        i4 = i10;
                    } else {
                        int i11 = (((cCharAt2 & 10239) << 10) | (9215 & cCharAt3)) + 65536;
                        N((i11 >> 18) | 240);
                        N(((i11 >> 12) & 63) | 128);
                        N(((i11 >> 6) & 63) | 128);
                        N((i11 & 63) | 128);
                        i4 += 2;
                    }
                }
                i4++;
            }
        }
        return this;
    }

    public e T(int i4) {
        if (i4 < 128) {
            N(i4);
        } else if (i4 < 2048) {
            N((i4 >> 6) | 192);
            N((i4 & 63) | 128);
        } else if (i4 < 65536) {
            if (i4 < 55296 || i4 > 57343) {
                N((i4 >> 12) | 224);
                N(((i4 >> 6) & 63) | 128);
                N((i4 & 63) | 128);
            } else {
                N(63);
            }
        } else {
            if (i4 > 1114111) {
                StringBuilder sbA = android.support.v4.media.f.a("Unexpected code point: ");
                sbA.append(Integer.toHexString(i4));
                throw new IllegalArgumentException(sbA.toString());
            }
            N((i4 >> 18) | 240);
            N(((i4 >> 12) & 63) | 128);
            N(((i4 >> 6) & 63) | 128);
            N((i4 & 63) | 128);
        }
        return this;
    }

    @Override // u2.w
    public x a() {
        return x.f3621d;
    }

    @Override // u2.g, u2.f
    public e buffer() {
        return this;
    }

    @Override // u2.g
    public h c(long j4) {
        return new h(n(j4));
    }

    public final void clear() {
        try {
            skip(this.f3578b);
        } catch (EOFException e4) {
            throw new AssertionError(e4);
        }
    }

    public Object clone() {
        e eVar = new e();
        if (this.f3578b != 0) {
            s sVarC = this.f3577a.c();
            eVar.f3577a = sVarC;
            sVarC.f3616g = sVarC;
            sVarC.f3615f = sVarC;
            s sVar = this.f3577a;
            while (true) {
                sVar = sVar.f3615f;
                if (sVar == this.f3577a) {
                    break;
                }
                eVar.f3577a.f3616g.b(sVar.c());
            }
            eVar.f3578b = this.f3578b;
        }
        return eVar;
    }

    @Override // u2.w, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    @Override // u2.g
    public boolean d(long j4, h hVar) {
        int iK = hVar.k();
        if (j4 < 0 || iK < 0 || this.f3578b - j4 < iK || hVar.k() - 0 < iK) {
            return false;
        }
        for (int i4 = 0; i4 < iK; i4++) {
            if (C(((long) i4) + j4) != hVar.f(0 + i4)) {
                return false;
            }
        }
        return true;
    }

    @Override // u2.f
    public /* bridge */ /* synthetic */ f e(int i4) {
        Q(i4);
        return this;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        long j4 = this.f3578b;
        if (j4 != eVar.f3578b) {
            return false;
        }
        long j5 = 0;
        if (j4 == 0) {
            return true;
        }
        s sVar = this.f3577a;
        s sVar2 = eVar.f3577a;
        int i4 = sVar.f3611b;
        int i5 = sVar2.f3611b;
        while (j5 < this.f3578b) {
            long jMin = Math.min(sVar.f3612c - i4, sVar2.f3612c - i5);
            int i6 = 0;
            while (i6 < jMin) {
                int i7 = i4 + 1;
                int i8 = i5 + 1;
                if (sVar.f3610a[i4] != sVar2.f3610a[i5]) {
                    return false;
                }
                i6++;
                i4 = i7;
                i5 = i8;
            }
            if (i4 == sVar.f3612c) {
                sVar = sVar.f3615f;
                i4 = sVar.f3611b;
            }
            if (i5 == sVar2.f3612c) {
                sVar2 = sVar2.f3615f;
                i5 = sVar2.f3611b;
            }
            j5 += jMin;
        }
        return true;
    }

    @Override // u2.f
    public /* bridge */ /* synthetic */ f f(int i4) {
        P(i4);
        return this;
    }

    @Override // u2.f, u2.v, java.io.Flushable
    public void flush() {
    }

    @Override // u2.g
    public String h() {
        return r(RecyclerView.FOREVER_NS);
    }

    public int hashCode() {
        s sVar = this.f3577a;
        if (sVar == null) {
            return 0;
        }
        int i4 = 1;
        do {
            int i5 = sVar.f3612c;
            for (int i6 = sVar.f3611b; i6 < i5; i6++) {
                i4 = (i4 * 31) + sVar.f3610a[i6];
            }
            sVar = sVar.f3615f;
        } while (sVar != this.f3577a);
        return i4;
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return true;
    }

    @Override // u2.g
    public int j() {
        int i4 = readInt();
        Charset charset = y.f3625a;
        return ((i4 & 255) << 24) | (((-16777216) & i4) >>> 24) | ((16711680 & i4) >>> 8) | ((65280 & i4) << 8);
    }

    @Override // u2.g
    public boolean l() {
        return this.f3578b == 0;
    }

    @Override // u2.f
    public /* bridge */ /* synthetic */ f m(int i4) {
        N(i4);
        return this;
    }

    @Override // u2.g
    public byte[] n(long j4) throws EOFException {
        y.b(this.f3578b, 0L, j4);
        if (j4 > TTL.MAX_VALUE) {
            throw new IllegalArgumentException(androidx.viewpager2.adapter.a.a("byteCount > Integer.MAX_VALUE: ", j4));
        }
        byte[] bArr = new byte[(int) j4];
        F(bArr);
        return bArr;
    }

    @Override // u2.v
    public void o(e eVar, long j4) {
        s sVarB;
        if (eVar == null) {
            throw new IllegalArgumentException("source == null");
        }
        if (eVar == this) {
            throw new IllegalArgumentException("source == this");
        }
        y.b(eVar.f3578b, 0L, j4);
        while (j4 > 0) {
            s sVar = eVar.f3577a;
            if (j4 < sVar.f3612c - sVar.f3611b) {
                s sVar2 = this.f3577a;
                s sVar3 = sVar2 != null ? sVar2.f3616g : null;
                if (sVar3 != null && sVar3.f3614e) {
                    if ((((long) sVar3.f3612c) + j4) - ((long) (sVar3.f3613d ? 0 : sVar3.f3611b)) <= PlaybackStateCompat.ACTION_PLAY_FROM_URI) {
                        sVar.d(sVar3, (int) j4);
                        eVar.f3578b -= j4;
                        this.f3578b += j4;
                        return;
                    }
                }
                int i4 = (int) j4;
                Objects.requireNonNull(sVar);
                if (i4 <= 0 || i4 > sVar.f3612c - sVar.f3611b) {
                    throw new IllegalArgumentException();
                }
                if (i4 >= 1024) {
                    sVarB = sVar.c();
                } else {
                    sVarB = t.b();
                    System.arraycopy(sVar.f3610a, sVar.f3611b, sVarB.f3610a, 0, i4);
                }
                sVarB.f3612c = sVarB.f3611b + i4;
                sVar.f3611b += i4;
                sVar.f3616g.b(sVarB);
                eVar.f3577a = sVarB;
            }
            s sVar4 = eVar.f3577a;
            long j5 = sVar4.f3612c - sVar4.f3611b;
            eVar.f3577a = sVar4.a();
            s sVar5 = this.f3577a;
            if (sVar5 == null) {
                this.f3577a = sVar4;
                sVar4.f3616g = sVar4;
                sVar4.f3615f = sVar4;
            } else {
                sVar5.f3616g.b(sVar4);
                s sVar6 = sVar4.f3616g;
                if (sVar6 == sVar4) {
                    throw new IllegalStateException();
                }
                if (sVar6.f3614e) {
                    int i5 = sVar4.f3612c - sVar4.f3611b;
                    if (i5 <= (8192 - sVar6.f3612c) + (sVar6.f3613d ? 0 : sVar6.f3611b)) {
                        sVar4.d(sVar6, i5);
                        sVar4.a();
                        t.a(sVar4);
                    }
                }
            }
            eVar.f3578b -= j5;
            this.f3578b += j5;
            j4 -= j5;
        }
    }

    @Override // u2.f
    public /* bridge */ /* synthetic */ f p(byte[] bArr) {
        K(bArr);
        return this;
    }

    @Override // u2.g
    public short q() {
        short s3 = readShort();
        Charset charset = y.f3625a;
        int i4 = s3 & 65535;
        return (short) (((i4 & 255) << 8) | ((65280 & i4) >>> 8));
    }

    @Override // u2.g
    public String r(long j4) throws EOFException {
        if (j4 < 0) {
            throw new IllegalArgumentException(androidx.viewpager2.adapter.a.a("limit < 0: ", j4));
        }
        long j5 = RecyclerView.FOREVER_NS;
        if (j4 != RecyclerView.FOREVER_NS) {
            j5 = j4 + 1;
        }
        long jD = D((byte) 10, 0L, j5);
        if (jD != -1) {
            return I(jD);
        }
        if (j5 < this.f3578b && C(j5 - 1) == 13 && C(j5) == 10) {
            return I(j5);
        }
        e eVar = new e();
        B(eVar, 0L, Math.min(32L, this.f3578b));
        StringBuilder sbA = android.support.v4.media.f.a("\\n not found: limit=");
        sbA.append(Math.min(this.f3578b, j4));
        sbA.append(" content=");
        sbA.append(eVar.E().g());
        sbA.append((char) 8230);
        throw new EOFException(sbA.toString());
    }

    public int read(byte[] bArr, int i4, int i5) {
        y.b(bArr.length, i4, i5);
        s sVar = this.f3577a;
        if (sVar == null) {
            return -1;
        }
        int iMin = Math.min(i5, sVar.f3612c - sVar.f3611b);
        System.arraycopy(sVar.f3610a, sVar.f3611b, bArr, i4, iMin);
        int i6 = sVar.f3611b + iMin;
        sVar.f3611b = i6;
        this.f3578b -= (long) iMin;
        if (i6 == sVar.f3612c) {
            this.f3577a = sVar.a();
            t.a(sVar);
        }
        return iMin;
    }

    @Override // u2.g
    public byte readByte() {
        long j4 = this.f3578b;
        if (j4 == 0) {
            throw new IllegalStateException("size == 0");
        }
        s sVar = this.f3577a;
        int i4 = sVar.f3611b;
        int i5 = sVar.f3612c;
        int i6 = i4 + 1;
        byte b4 = sVar.f3610a[i4];
        this.f3578b = j4 - 1;
        if (i6 == i5) {
            this.f3577a = sVar.a();
            t.a(sVar);
        } else {
            sVar.f3611b = i6;
        }
        return b4;
    }

    @Override // u2.g
    public int readInt() {
        long j4 = this.f3578b;
        if (j4 < 4) {
            StringBuilder sbA = android.support.v4.media.f.a("size < 4: ");
            sbA.append(this.f3578b);
            throw new IllegalStateException(sbA.toString());
        }
        s sVar = this.f3577a;
        int i4 = sVar.f3611b;
        int i5 = sVar.f3612c;
        if (i5 - i4 < 4) {
            return ((readByte() & 255) << 24) | ((readByte() & 255) << 16) | ((readByte() & 255) << 8) | (readByte() & 255);
        }
        byte[] bArr = sVar.f3610a;
        int i6 = i4 + 1;
        int i7 = i6 + 1;
        int i8 = ((bArr[i4] & 255) << 24) | ((bArr[i6] & 255) << 16);
        int i9 = i7 + 1;
        int i10 = i8 | ((bArr[i7] & 255) << 8);
        int i11 = i9 + 1;
        int i12 = i10 | (bArr[i9] & 255);
        this.f3578b = j4 - 4;
        if (i11 == i5) {
            this.f3577a = sVar.a();
            t.a(sVar);
        } else {
            sVar.f3611b = i11;
        }
        return i12;
    }

    @Override // u2.g
    public short readShort() {
        long j4 = this.f3578b;
        if (j4 < 2) {
            StringBuilder sbA = android.support.v4.media.f.a("size < 2: ");
            sbA.append(this.f3578b);
            throw new IllegalStateException(sbA.toString());
        }
        s sVar = this.f3577a;
        int i4 = sVar.f3611b;
        int i5 = sVar.f3612c;
        if (i5 - i4 < 2) {
            return (short) (((readByte() & 255) << 8) | (readByte() & 255));
        }
        byte[] bArr = sVar.f3610a;
        int i6 = i4 + 1;
        int i7 = i6 + 1;
        int i8 = ((bArr[i4] & 255) << 8) | (bArr[i6] & 255);
        this.f3578b = j4 - 2;
        if (i7 == i5) {
            this.f3577a = sVar.a();
            t.a(sVar);
        } else {
            sVar.f3611b = i7;
        }
        return (short) i8;
    }

    @Override // u2.w
    public long s(e eVar, long j4) {
        if (eVar == null) {
            throw new IllegalArgumentException("sink == null");
        }
        if (j4 < 0) {
            throw new IllegalArgumentException(androidx.viewpager2.adapter.a.a("byteCount < 0: ", j4));
        }
        long j5 = this.f3578b;
        if (j5 == 0) {
            return -1L;
        }
        if (j4 > j5) {
            j4 = j5;
        }
        eVar.o(this, j4);
        return j4;
    }

    @Override // u2.g
    public void skip(long j4) throws EOFException {
        while (j4 > 0) {
            if (this.f3577a == null) {
                throw new EOFException();
            }
            int iMin = (int) Math.min(j4, r0.f3612c - r0.f3611b);
            long j5 = iMin;
            this.f3578b -= j5;
            j4 -= j5;
            s sVar = this.f3577a;
            int i4 = sVar.f3611b + iMin;
            sVar.f3611b = i4;
            if (i4 == sVar.f3612c) {
                this.f3577a = sVar.a();
                t.a(sVar);
            }
        }
    }

    @Override // u2.g
    public void t(long j4) throws EOFException {
        if (this.f3578b < j4) {
            throw new EOFException();
        }
    }

    public String toString() {
        long j4 = this.f3578b;
        if (j4 <= TTL.MAX_VALUE) {
            int i4 = (int) j4;
            return (i4 == 0 ? h.f3581e : new u(this, i4)).toString();
        }
        StringBuilder sbA = android.support.v4.media.f.a("size > Integer.MAX_VALUE: ");
        sbA.append(this.f3578b);
        throw new IllegalArgumentException(sbA.toString());
    }

    @Override // u2.f
    public /* bridge */ /* synthetic */ f u(String str) {
        R(str);
        return this;
    }

    @Override // u2.g
    public long w(byte b4) {
        return D(b4, 0L, RecyclerView.FOREVER_NS);
    }

    @Override // java.nio.channels.WritableByteChannel
    public int write(ByteBuffer byteBuffer) {
        if (byteBuffer == null) {
            throw new IllegalArgumentException("source == null");
        }
        int iRemaining = byteBuffer.remaining();
        int i4 = iRemaining;
        while (i4 > 0) {
            s sVarJ = J(1);
            int iMin = Math.min(i4, 8192 - sVarJ.f3612c);
            byteBuffer.get(sVarJ.f3610a, sVarJ.f3612c, iMin);
            i4 -= iMin;
            sVarJ.f3612c += iMin;
        }
        this.f3578b += (long) iRemaining;
        return iRemaining;
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x009b A[EDGE_INSN: B:45:0x009b->B:38:0x009b BREAK  A[LOOP:0: B:5:0x000b->B:47:?], SYNTHETIC] */
    @Override // u2.g
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long y() {
        /*
            r15 = this;
            long r0 = r15.f3578b
            r2 = 0
            int r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r4 == 0) goto La2
            r0 = 0
            r1 = 0
            r4 = r2
        Lb:
            u2.s r6 = r15.f3577a
            byte[] r7 = r6.f3610a
            int r8 = r6.f3611b
            int r9 = r6.f3612c
        L13:
            if (r8 >= r9) goto L87
            r10 = r7[r8]
            r11 = 48
            if (r10 < r11) goto L22
            r11 = 57
            if (r10 > r11) goto L22
            int r11 = r10 + (-48)
            goto L39
        L22:
            r11 = 97
            if (r10 < r11) goto L2d
            r11 = 102(0x66, float:1.43E-43)
            if (r10 > r11) goto L2d
            int r11 = r10 + (-97)
            goto L37
        L2d:
            r11 = 65
            if (r10 < r11) goto L6c
            r11 = 70
            if (r10 > r11) goto L6c
            int r11 = r10 + (-65)
        L37:
            int r11 = r11 + 10
        L39:
            r12 = -1152921504606846976(0xf000000000000000, double:-3.105036184601418E231)
            long r12 = r12 & r4
            int r14 = (r12 > r2 ? 1 : (r12 == r2 ? 0 : -1))
            if (r14 != 0) goto L49
            r10 = 4
            long r4 = r4 << r10
            long r10 = (long) r11
            long r4 = r4 | r10
            int r8 = r8 + 1
            int r0 = r0 + 1
            goto L13
        L49:
            u2.e r0 = new u2.e
            r0.<init>()
            u2.e r0 = r0.b(r4)
            r0.N(r10)
            java.lang.NumberFormatException r1 = new java.lang.NumberFormatException
            java.lang.String r2 = "Number too large: "
            java.lang.StringBuilder r2 = android.support.v4.media.f.a(r2)
            java.lang.String r0 = r0.H()
            r2.append(r0)
            java.lang.String r0 = r2.toString()
            r1.<init>(r0)
            throw r1
        L6c:
            if (r0 == 0) goto L70
            r1 = 1
            goto L87
        L70:
            java.lang.NumberFormatException r0 = new java.lang.NumberFormatException
            java.lang.String r1 = "Expected leading [0-9a-fA-F] character but was 0x"
            java.lang.StringBuilder r1 = android.support.v4.media.f.a(r1)
            java.lang.String r2 = java.lang.Integer.toHexString(r10)
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        L87:
            if (r8 != r9) goto L93
            u2.s r7 = r6.a()
            r15.f3577a = r7
            u2.t.a(r6)
            goto L95
        L93:
            r6.f3611b = r8
        L95:
            if (r1 != 0) goto L9b
            u2.s r6 = r15.f3577a
            if (r6 != 0) goto Lb
        L9b:
            long r1 = r15.f3578b
            long r6 = (long) r0
            long r1 = r1 - r6
            r15.f3578b = r1
            return r4
        La2:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "size == 0"
            r0.<init>(r1)
            goto Lab
        Laa:
            throw r0
        Lab:
            goto Laa
        */
        throw new UnsupportedOperationException("Method not decompiled: u2.e.y():long");
    }

    @Override // u2.g
    public String z(Charset charset) {
        try {
            return G(this.f3578b, charset);
        } catch (EOFException e4) {
            throw new AssertionError(e4);
        }
    }

    @Override // java.nio.channels.ReadableByteChannel
    public int read(ByteBuffer byteBuffer) {
        s sVar = this.f3577a;
        if (sVar == null) {
            return -1;
        }
        int iMin = Math.min(byteBuffer.remaining(), sVar.f3612c - sVar.f3611b);
        byteBuffer.put(sVar.f3610a, sVar.f3611b, iMin);
        int i4 = sVar.f3611b + iMin;
        sVar.f3611b = i4;
        this.f3578b -= (long) iMin;
        if (i4 == sVar.f3612c) {
            this.f3577a = sVar.a();
            t.a(sVar);
        }
        return iMin;
    }
}
