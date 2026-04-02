package u2;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public final class q implements f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final e f3603a = new e();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final v f3604b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f3605c;

    public q(v vVar) {
        Objects.requireNonNull(vVar, "sink == null");
        this.f3604b = vVar;
    }

    public f B() {
        if (this.f3605c) {
            throw new IllegalStateException("closed");
        }
        e eVar = this.f3603a;
        long j4 = eVar.f3578b;
        if (j4 == 0) {
            j4 = 0;
        } else {
            s sVar = eVar.f3577a.f3616g;
            int i4 = sVar.f3612c;
            if (i4 < 8192 && sVar.f3614e) {
                j4 -= (long) (i4 - sVar.f3611b);
            }
        }
        if (j4 > 0) {
            this.f3604b.o(eVar, j4);
        }
        return this;
    }

    public f C(byte[] bArr, int i4, int i5) {
        if (this.f3605c) {
            throw new IllegalStateException("closed");
        }
        this.f3603a.L(bArr, i4, i5);
        B();
        return this;
    }

    @Override // u2.v
    public x a() {
        return this.f3604b.a();
    }

    @Override // u2.f
    public f b(long j4) {
        if (this.f3605c) {
            throw new IllegalStateException("closed");
        }
        this.f3603a.b(j4);
        return B();
    }

    @Override // u2.f
    public e buffer() {
        return this.f3603a;
    }

    @Override // u2.v, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws Throwable {
        if (this.f3605c) {
            return;
        }
        Throwable th = null;
        try {
            e eVar = this.f3603a;
            long j4 = eVar.f3578b;
            if (j4 > 0) {
                this.f3604b.o(eVar, j4);
            }
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            this.f3604b.close();
        } catch (Throwable th3) {
            if (th == null) {
                th = th3;
            }
        }
        this.f3605c = true;
        if (th == null) {
            return;
        }
        Charset charset = y.f3625a;
        throw th;
    }

    @Override // u2.f
    public f e(int i4) {
        if (this.f3605c) {
            throw new IllegalStateException("closed");
        }
        this.f3603a.Q(i4);
        B();
        return this;
    }

    @Override // u2.f
    public f f(int i4) {
        if (this.f3605c) {
            throw new IllegalStateException("closed");
        }
        this.f3603a.P(i4);
        return B();
    }

    @Override // u2.f, u2.v, java.io.Flushable
    public void flush() {
        if (this.f3605c) {
            throw new IllegalStateException("closed");
        }
        e eVar = this.f3603a;
        long j4 = eVar.f3578b;
        if (j4 > 0) {
            this.f3604b.o(eVar, j4);
        }
        this.f3604b.flush();
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return !this.f3605c;
    }

    @Override // u2.f
    public f m(int i4) {
        if (this.f3605c) {
            throw new IllegalStateException("closed");
        }
        this.f3603a.N(i4);
        return B();
    }

    @Override // u2.v
    public void o(e eVar, long j4) {
        if (this.f3605c) {
            throw new IllegalStateException("closed");
        }
        this.f3603a.o(eVar, j4);
        B();
    }

    @Override // u2.f
    public f p(byte[] bArr) {
        if (this.f3605c) {
            throw new IllegalStateException("closed");
        }
        this.f3603a.K(bArr);
        B();
        return this;
    }

    public String toString() {
        StringBuilder sbA = android.support.v4.media.f.a("buffer(");
        sbA.append(this.f3604b);
        sbA.append(")");
        return sbA.toString();
    }

    @Override // u2.f
    public f u(String str) {
        if (this.f3605c) {
            throw new IllegalStateException("closed");
        }
        this.f3603a.R(str);
        B();
        return this;
    }

    @Override // java.nio.channels.WritableByteChannel
    public int write(ByteBuffer byteBuffer) {
        if (this.f3605c) {
            throw new IllegalStateException("closed");
        }
        int iWrite = this.f3603a.write(byteBuffer);
        B();
        return iWrite;
    }
}
