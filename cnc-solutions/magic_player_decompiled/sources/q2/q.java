package q2;

import androidx.appcompat.widget.ActivityChooserView;
import java.io.Closeable;
import java.io.IOException;
import java.util.List;
import java.util.Objects;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.xbill.DNS.TTL;
import q2.d;

/* JADX INFO: loaded from: classes2.dex */
public final class q implements Closeable {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final Logger f3298g = Logger.getLogger(e.class.getName());

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final u2.f f3299a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f3300b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final u2.e f3301c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f3302d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f3303e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final d.b f3304f;

    public q(u2.f fVar, boolean z3) {
        this.f3299a = fVar;
        this.f3300b = z3;
        u2.e eVar = new u2.e();
        this.f3301c = eVar;
        this.f3304f = new d.b(eVar);
        this.f3302d = 16384;
    }

    public synchronized void B(t tVar) {
        if (this.f3303e) {
            throw new IOException("closed");
        }
        int i4 = this.f3302d;
        int i5 = tVar.f3313a;
        if ((i5 & 32) != 0) {
            i4 = tVar.f3314b[5];
        }
        this.f3302d = i4;
        int i6 = i5 & 2;
        if ((i6 != 0 ? tVar.f3314b[1] : -1) != -1) {
            d.b bVar = this.f3304f;
            int i7 = i6 != 0 ? tVar.f3314b[1] : -1;
            Objects.requireNonNull(bVar);
            int iMin = Math.min(i7, 16384);
            int i8 = bVar.f3189d;
            if (i8 != iMin) {
                if (iMin < i8) {
                    bVar.f3187b = Math.min(bVar.f3187b, iMin);
                }
                bVar.f3188c = true;
                bVar.f3189d = iMin;
                int i9 = bVar.f3193h;
                if (iMin < i9) {
                    if (iMin == 0) {
                        bVar.a();
                    } else {
                        bVar.b(i9 - iMin);
                    }
                }
            }
        }
        D(0, 0, (byte) 4, (byte) 1);
        this.f3299a.flush();
    }

    public synchronized void C(boolean z3, int i4, u2.e eVar, int i5) {
        if (this.f3303e) {
            throw new IOException("closed");
        }
        D(i4, i5, (byte) 0, z3 ? (byte) 1 : (byte) 0);
        if (i5 > 0) {
            this.f3299a.o(eVar, i5);
        }
    }

    public void D(int i4, int i5, byte b4, byte b5) {
        Logger logger = f3298g;
        if (logger.isLoggable(Level.FINE)) {
            logger.fine(e.a(false, i4, i5, b4, b5));
        }
        int i6 = this.f3302d;
        if (i5 > i6) {
            e.b("FRAME_SIZE_ERROR length > %d: %d", Integer.valueOf(i6), Integer.valueOf(i5));
            throw null;
        }
        if ((Integer.MIN_VALUE & i4) != 0) {
            e.b("reserved bit set: %s", Integer.valueOf(i4));
            throw null;
        }
        u2.f fVar = this.f3299a;
        fVar.m((i5 >>> 16) & 255);
        fVar.m((i5 >>> 8) & 255);
        fVar.m(i5 & 255);
        this.f3299a.m(b4 & 255);
        this.f3299a.m(b5 & 255);
        this.f3299a.f(i4 & ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED);
    }

    public synchronized void E(int i4, b bVar, byte[] bArr) {
        if (this.f3303e) {
            throw new IOException("closed");
        }
        if (bVar.f3166a == -1) {
            e.b("errorCode.httpCode == -1", new Object[0]);
            throw null;
        }
        D(0, bArr.length + 8, (byte) 7, (byte) 0);
        this.f3299a.f(i4);
        this.f3299a.f(bVar.f3166a);
        if (bArr.length > 0) {
            this.f3299a.p(bArr);
        }
        this.f3299a.flush();
    }

    public void F(boolean z3, int i4, List<c> list) throws IOException {
        if (this.f3303e) {
            throw new IOException("closed");
        }
        this.f3304f.e(list);
        long j4 = this.f3301c.f3578b;
        int iMin = (int) Math.min(this.f3302d, j4);
        long j5 = iMin;
        byte b4 = j4 == j5 ? (byte) 4 : (byte) 0;
        if (z3) {
            b4 = (byte) (b4 | 1);
        }
        D(i4, iMin, (byte) 1, b4);
        this.f3299a.o(this.f3301c, j5);
        if (j4 > j5) {
            J(i4, j4 - j5);
        }
    }

    public synchronized void G(boolean z3, int i4, int i5) {
        if (this.f3303e) {
            throw new IOException("closed");
        }
        D(0, 8, (byte) 6, z3 ? (byte) 1 : (byte) 0);
        this.f3299a.f(i4);
        this.f3299a.f(i5);
        this.f3299a.flush();
    }

    public synchronized void H(int i4, b bVar) {
        if (this.f3303e) {
            throw new IOException("closed");
        }
        if (bVar.f3166a == -1) {
            throw new IllegalArgumentException();
        }
        D(i4, 4, (byte) 3, (byte) 0);
        this.f3299a.f(bVar.f3166a);
        this.f3299a.flush();
    }

    public synchronized void I(int i4, long j4) {
        if (this.f3303e) {
            throw new IOException("closed");
        }
        if (j4 == 0 || j4 > TTL.MAX_VALUE) {
            e.b("windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: %s", Long.valueOf(j4));
            throw null;
        }
        D(i4, 4, (byte) 8, (byte) 0);
        this.f3299a.f((int) j4);
        this.f3299a.flush();
    }

    public final void J(int i4, long j4) {
        while (j4 > 0) {
            int iMin = (int) Math.min(this.f3302d, j4);
            long j5 = iMin;
            j4 -= j5;
            D(i4, iMin, (byte) 9, j4 == 0 ? (byte) 4 : (byte) 0);
            this.f3299a.o(this.f3301c, j5);
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() {
        this.f3303e = true;
        this.f3299a.close();
    }

    public synchronized void flush() {
        if (this.f3303e) {
            throw new IOException("closed");
        }
        this.f3299a.flush();
    }
}
