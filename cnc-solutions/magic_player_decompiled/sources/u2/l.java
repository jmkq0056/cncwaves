package u2;

import java.io.EOFException;
import java.io.IOException;
import java.util.logging.Logger;
import java.util.zip.CRC32;
import java.util.zip.Inflater;

/* JADX INFO: loaded from: classes2.dex */
public final class l implements w {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final g f3589b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Inflater f3590c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final m f3591d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f3588a = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final CRC32 f3592e = new CRC32();

    public l(w wVar) {
        if (wVar == null) {
            throw new IllegalArgumentException("source == null");
        }
        Inflater inflater = new Inflater(true);
        this.f3590c = inflater;
        Logger logger = o.f3599a;
        r rVar = new r(wVar);
        this.f3589b = rVar;
        this.f3591d = new m(rVar, inflater);
    }

    public final void B(String str, int i4, int i5) throws IOException {
        if (i5 != i4) {
            throw new IOException(String.format("%s: actual 0x%08x != expected 0x%08x", str, Integer.valueOf(i5), Integer.valueOf(i4)));
        }
    }

    public final void C(e eVar, long j4, long j5) {
        s sVar = eVar.f3577a;
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
            int i6 = (int) (((long) sVar.f3611b) + j4);
            int iMin = (int) Math.min(sVar.f3612c - i6, j5);
            this.f3592e.update(sVar.f3610a, i6, iMin);
            j5 -= (long) iMin;
            sVar = sVar.f3615f;
            j4 = 0;
        }
    }

    @Override // u2.w
    public x a() {
        return this.f3589b.a();
    }

    @Override // u2.w, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f3591d.close();
    }

    @Override // u2.w
    public long s(e eVar, long j4) throws IOException {
        long j5;
        if (j4 < 0) {
            throw new IllegalArgumentException(androidx.viewpager2.adapter.a.a("byteCount < 0: ", j4));
        }
        if (j4 == 0) {
            return 0L;
        }
        if (this.f3588a == 0) {
            this.f3589b.t(10L);
            byte bC = this.f3589b.buffer().C(3L);
            boolean z3 = ((bC >> 1) & 1) == 1;
            if (z3) {
                C(this.f3589b.buffer(), 0L, 10L);
            }
            B("ID1ID2", 8075, this.f3589b.readShort());
            this.f3589b.skip(8L);
            if (((bC >> 2) & 1) == 1) {
                this.f3589b.t(2L);
                if (z3) {
                    C(this.f3589b.buffer(), 0L, 2L);
                }
                long jQ = this.f3589b.buffer().q();
                this.f3589b.t(jQ);
                if (z3) {
                    j5 = jQ;
                    C(this.f3589b.buffer(), 0L, jQ);
                } else {
                    j5 = jQ;
                }
                this.f3589b.skip(j5);
            }
            if (((bC >> 3) & 1) == 1) {
                long jW = this.f3589b.w((byte) 0);
                if (jW == -1) {
                    throw new EOFException();
                }
                if (z3) {
                    C(this.f3589b.buffer(), 0L, jW + 1);
                }
                this.f3589b.skip(jW + 1);
            }
            if (((bC >> 4) & 1) == 1) {
                long jW2 = this.f3589b.w((byte) 0);
                if (jW2 == -1) {
                    throw new EOFException();
                }
                if (z3) {
                    C(this.f3589b.buffer(), 0L, jW2 + 1);
                }
                this.f3589b.skip(jW2 + 1);
            }
            if (z3) {
                B("FHCRC", this.f3589b.q(), (short) this.f3592e.getValue());
                this.f3592e.reset();
            }
            this.f3588a = 1;
        }
        if (this.f3588a == 1) {
            long j6 = eVar.f3578b;
            long jS = this.f3591d.s(eVar, j4);
            if (jS != -1) {
                C(eVar, j6, jS);
                return jS;
            }
            this.f3588a = 2;
        }
        if (this.f3588a == 2) {
            B("CRC", this.f3589b.j(), (int) this.f3592e.getValue());
            B("ISIZE", this.f3589b.j(), (int) this.f3590c.getBytesWritten());
            this.f3588a = 3;
            if (!this.f3589b.l()) {
                throw new IOException("gzip finished without exhausting source");
            }
        }
        return -1L;
    }
}
