package u2;

import android.support.v4.media.session.PlaybackStateCompat;
import androidx.recyclerview.widget.RecyclerView;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Objects;
import org.xbill.DNS.TTL;

/* JADX INFO: loaded from: classes2.dex */
public final class r implements g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final e f3606a = new e();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final w f3607b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f3608c;

    public r(w wVar) {
        Objects.requireNonNull(wVar, "source == null");
        this.f3607b = wVar;
    }

    @Override // u2.g
    public InputStream A() {
        return new a();
    }

    public long B(byte b4, long j4, long j5) {
        if (this.f3608c) {
            throw new IllegalStateException("closed");
        }
        if (j4 < 0 || j5 < j4) {
            throw new IllegalArgumentException(String.format("fromIndex=%s toIndex=%s", Long.valueOf(j4), Long.valueOf(j5)));
        }
        while (j4 < j5) {
            long jD = this.f3606a.D(b4, j4, j5);
            if (jD != -1) {
                return jD;
            }
            e eVar = this.f3606a;
            long j6 = eVar.f3578b;
            if (j6 >= j5 || this.f3607b.s(eVar, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
                break;
            }
            j4 = Math.max(j4, j6);
        }
        return -1L;
    }

    public void C(byte[] bArr) throws EOFException {
        try {
            t(bArr.length);
            this.f3606a.F(bArr);
        } catch (EOFException e4) {
            int i4 = 0;
            while (true) {
                e eVar = this.f3606a;
                long j4 = eVar.f3578b;
                if (j4 <= 0) {
                    throw e4;
                }
                int i5 = eVar.read(bArr, i4, (int) j4);
                if (i5 == -1) {
                    throw new AssertionError();
                }
                i4 += i5;
            }
        }
    }

    public boolean D(long j4) {
        e eVar;
        if (j4 < 0) {
            throw new IllegalArgumentException(androidx.viewpager2.adapter.a.a("byteCount < 0: ", j4));
        }
        if (this.f3608c) {
            throw new IllegalStateException("closed");
        }
        do {
            eVar = this.f3606a;
            if (eVar.f3578b >= j4) {
                return true;
            }
        } while (this.f3607b.s(eVar, PlaybackStateCompat.ACTION_PLAY_FROM_URI) != -1);
        return false;
    }

    @Override // u2.w
    public x a() {
        return this.f3607b.a();
    }

    @Override // u2.g, u2.f
    public e buffer() {
        return this.f3606a;
    }

    @Override // u2.g
    public h c(long j4) throws EOFException {
        if (D(j4)) {
            return this.f3606a.c(j4);
        }
        throw new EOFException();
    }

    @Override // u2.w, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.f3608c) {
            return;
        }
        this.f3608c = true;
        this.f3607b.close();
        this.f3606a.clear();
    }

    @Override // u2.g
    public boolean d(long j4, h hVar) {
        int iK = hVar.k();
        if (this.f3608c) {
            throw new IllegalStateException("closed");
        }
        if (j4 < 0 || iK < 0 || hVar.k() - 0 < iK) {
            return false;
        }
        for (int i4 = 0; i4 < iK; i4++) {
            long j5 = ((long) i4) + j4;
            if (!D(1 + j5) || this.f3606a.C(j5) != hVar.f(0 + i4)) {
                return false;
            }
        }
        return true;
    }

    @Override // u2.g
    public String h() {
        return r(RecyclerView.FOREVER_NS);
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return !this.f3608c;
    }

    @Override // u2.g
    public int j() throws EOFException {
        t(4L);
        return this.f3606a.j();
    }

    @Override // u2.g
    public boolean l() {
        if (this.f3608c) {
            throw new IllegalStateException("closed");
        }
        return this.f3606a.l() && this.f3607b.s(this.f3606a, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1;
    }

    @Override // u2.g
    public byte[] n(long j4) throws EOFException {
        if (D(j4)) {
            return this.f3606a.n(j4);
        }
        throw new EOFException();
    }

    @Override // u2.g
    public short q() throws EOFException {
        t(2L);
        return this.f3606a.q();
    }

    @Override // u2.g
    public String r(long j4) throws EOFException {
        if (j4 < 0) {
            throw new IllegalArgumentException(androidx.viewpager2.adapter.a.a("limit < 0: ", j4));
        }
        long j5 = j4 == RecyclerView.FOREVER_NS ? Long.MAX_VALUE : j4 + 1;
        long jB = B((byte) 10, 0L, j5);
        if (jB != -1) {
            return this.f3606a.I(jB);
        }
        if (j5 < RecyclerView.FOREVER_NS && D(j5) && this.f3606a.C(j5 - 1) == 13 && D(1 + j5) && this.f3606a.C(j5) == 10) {
            return this.f3606a.I(j5);
        }
        e eVar = new e();
        e eVar2 = this.f3606a;
        eVar2.B(eVar, 0L, Math.min(32L, eVar2.f3578b));
        StringBuilder sbA = android.support.v4.media.f.a("\\n not found: limit=");
        sbA.append(Math.min(this.f3606a.f3578b, j4));
        sbA.append(" content=");
        sbA.append(eVar.E().g());
        sbA.append((char) 8230);
        throw new EOFException(sbA.toString());
    }

    @Override // java.nio.channels.ReadableByteChannel
    public int read(ByteBuffer byteBuffer) {
        e eVar = this.f3606a;
        if (eVar.f3578b == 0 && this.f3607b.s(eVar, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
            return -1;
        }
        return this.f3606a.read(byteBuffer);
    }

    @Override // u2.g
    public byte readByte() throws EOFException {
        t(1L);
        return this.f3606a.readByte();
    }

    @Override // u2.g
    public int readInt() throws EOFException {
        t(4L);
        return this.f3606a.readInt();
    }

    @Override // u2.g
    public short readShort() throws EOFException {
        t(2L);
        return this.f3606a.readShort();
    }

    @Override // u2.w
    public long s(e eVar, long j4) {
        if (eVar == null) {
            throw new IllegalArgumentException("sink == null");
        }
        if (j4 < 0) {
            throw new IllegalArgumentException(androidx.viewpager2.adapter.a.a("byteCount < 0: ", j4));
        }
        if (this.f3608c) {
            throw new IllegalStateException("closed");
        }
        e eVar2 = this.f3606a;
        if (eVar2.f3578b == 0 && this.f3607b.s(eVar2, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
            return -1L;
        }
        return this.f3606a.s(eVar, Math.min(j4, this.f3606a.f3578b));
    }

    @Override // u2.g
    public void skip(long j4) throws EOFException {
        if (this.f3608c) {
            throw new IllegalStateException("closed");
        }
        while (j4 > 0) {
            e eVar = this.f3606a;
            if (eVar.f3578b == 0 && this.f3607b.s(eVar, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
                throw new EOFException();
            }
            long jMin = Math.min(j4, this.f3606a.f3578b);
            this.f3606a.skip(jMin);
            j4 -= jMin;
        }
    }

    @Override // u2.g
    public void t(long j4) throws EOFException {
        if (!D(j4)) {
            throw new EOFException();
        }
    }

    public String toString() {
        StringBuilder sbA = android.support.v4.media.f.a("buffer(");
        sbA.append(this.f3607b);
        sbA.append(")");
        return sbA.toString();
    }

    @Override // u2.g
    public long w(byte b4) {
        return B(b4, 0L, RecyclerView.FOREVER_NS);
    }

    @Override // u2.g
    public long y() throws EOFException {
        byte bC;
        t(1L);
        int i4 = 0;
        while (true) {
            int i5 = i4 + 1;
            if (!D(i5)) {
                break;
            }
            bC = this.f3606a.C(i4);
            if ((bC < 48 || bC > 57) && ((bC < 97 || bC > 102) && (bC < 65 || bC > 70))) {
                break;
            }
            i4 = i5;
        }
        if (i4 == 0) {
            throw new NumberFormatException(String.format("Expected leading [0-9a-fA-F] character but was %#x", Byte.valueOf(bC)));
        }
        return this.f3606a.y();
    }

    @Override // u2.g
    public String z(Charset charset) {
        if (charset == null) {
            throw new IllegalArgumentException("charset == null");
        }
        this.f3606a.M(this.f3607b);
        e eVar = this.f3606a;
        Objects.requireNonNull(eVar);
        try {
            return eVar.G(eVar.f3578b, charset);
        } catch (EOFException e4) {
            throw new AssertionError(e4);
        }
    }

    public class a extends InputStream {
        public a() {
        }

        @Override // java.io.InputStream
        public int available() throws IOException {
            r rVar = r.this;
            if (rVar.f3608c) {
                throw new IOException("closed");
            }
            return (int) Math.min(rVar.f3606a.f3578b, TTL.MAX_VALUE);
        }

        @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            r.this.close();
        }

        @Override // java.io.InputStream
        public int read() throws IOException {
            r rVar = r.this;
            if (rVar.f3608c) {
                throw new IOException("closed");
            }
            e eVar = rVar.f3606a;
            if (eVar.f3578b == 0 && rVar.f3607b.s(eVar, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
                return -1;
            }
            return r.this.f3606a.readByte() & 255;
        }

        public String toString() {
            return r.this + ".inputStream()";
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i4, int i5) throws IOException {
            if (!r.this.f3608c) {
                y.b(bArr.length, i4, i5);
                r rVar = r.this;
                e eVar = rVar.f3606a;
                if (eVar.f3578b == 0 && rVar.f3607b.s(eVar, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
                    return -1;
                }
                return r.this.f3606a.read(bArr, i4, i5);
            }
            throw new IOException("closed");
        }
    }
}
