package q2;

import androidx.appcompat.widget.ActivityChooserView;
import java.io.Closeable;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.xbill.DNS.TTL;
import org.xbill.DNS.WKSRecord;
import q2.d;
import q2.g;
import q2.g.e;
import u2.w;
import u2.x;

/* JADX INFO: loaded from: classes2.dex */
public final class o implements Closeable {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Logger f3265e = Logger.getLogger(e.class.getName());

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final u2.g f3266a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final a f3267b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f3268c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final d.a f3269d;

    public static final class a implements w {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final u2.g f3270a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f3271b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public byte f3272c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f3273d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f3274e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public short f3275f;

        public a(u2.g gVar) {
            this.f3270a = gVar;
        }

        @Override // u2.w
        public x a() {
            return this.f3270a.a();
        }

        @Override // u2.w, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
        }

        @Override // u2.w
        public long s(u2.e eVar, long j4) {
            int i4;
            int i5;
            do {
                int i6 = this.f3274e;
                if (i6 != 0) {
                    long jS = this.f3270a.s(eVar, Math.min(j4, i6));
                    if (jS == -1) {
                        return -1L;
                    }
                    this.f3274e = (int) (((long) this.f3274e) - jS);
                    return jS;
                }
                this.f3270a.skip(this.f3275f);
                this.f3275f = (short) 0;
                if ((this.f3272c & 4) != 0) {
                    return -1L;
                }
                i4 = this.f3273d;
                int iG = o.G(this.f3270a);
                this.f3274e = iG;
                this.f3271b = iG;
                byte b4 = (byte) (this.f3270a.readByte() & 255);
                this.f3272c = (byte) (this.f3270a.readByte() & 255);
                Logger logger = o.f3265e;
                if (logger.isLoggable(Level.FINE)) {
                    logger.fine(e.a(true, this.f3273d, this.f3271b, b4, this.f3272c));
                }
                i5 = this.f3270a.readInt() & ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
                this.f3273d = i5;
                if (b4 != 9) {
                    e.c("%s != TYPE_CONTINUATION", Byte.valueOf(b4));
                    throw null;
                }
            } while (i5 == i4);
            e.c("TYPE_CONTINUATION streamId changed", new Object[0]);
            throw null;
        }
    }

    public interface b {
    }

    public o(u2.g gVar, boolean z3) {
        this.f3266a = gVar;
        this.f3268c = z3;
        a aVar = new a(gVar);
        this.f3267b = aVar;
        this.f3269d = new d.a(4096, aVar);
    }

    public static int B(int i4, byte b4, short s3) {
        if ((b4 & 8) != 0) {
            i4--;
        }
        if (s3 <= i4) {
            return (short) (i4 - s3);
        }
        e.c("PROTOCOL_ERROR padding %s > remaining length %s", Short.valueOf(s3), Integer.valueOf(i4));
        throw null;
    }

    public static int G(u2.g gVar) {
        return (gVar.readByte() & 255) | ((gVar.readByte() & 255) << 16) | ((gVar.readByte() & 255) << 8);
    }

    /* JADX WARN: Code restructure failed: missing block: B:146:0x02a8, code lost:
    
        if (r17 == false) goto L148;
     */
    /* JADX WARN: Code restructure failed: missing block: B:147:0x02aa, code lost:
    
        r7.i();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean C(boolean r19, q2.o.b r20) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 746
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: q2.o.C(boolean, q2.o$b):boolean");
    }

    public void D(b bVar) {
        if (this.f3268c) {
            if (C(true, bVar)) {
                return;
            }
            e.c("Required SETTINGS preface not received", new Object[0]);
            throw null;
        }
        u2.g gVar = this.f3266a;
        u2.h hVar = e.f3194a;
        u2.h hVarC = gVar.c(hVar.f3582a.length);
        Logger logger = f3265e;
        if (logger.isLoggable(Level.FINE)) {
            logger.fine(l2.c.n("<< CONNECTION %s", hVarC.g()));
        }
        if (hVar.equals(hVarC)) {
            return;
        }
        e.c("Expected a connection header but was %s", hVarC.n());
        throw null;
    }

    public final void E(b bVar, int i4, int i5) {
        p[] pVarArr;
        if (i4 < 8) {
            e.c("TYPE_GOAWAY length < 8: %s", Integer.valueOf(i4));
            throw null;
        }
        if (i5 != 0) {
            e.c("TYPE_GOAWAY streamId != 0", new Object[0]);
            throw null;
        }
        int i6 = this.f3266a.readInt();
        int i7 = this.f3266a.readInt();
        int i8 = i4 - 8;
        if (q2.b.a(i7) == null) {
            e.c("TYPE_GOAWAY unexpected error code: %d", Integer.valueOf(i7));
            throw null;
        }
        u2.h hVarC = u2.h.f3581e;
        if (i8 > 0) {
            hVarC = this.f3266a.c(i8);
        }
        g.f fVar = (g.f) bVar;
        Objects.requireNonNull(fVar);
        hVarC.k();
        synchronized (g.this) {
            pVarArr = (p[]) g.this.f3211c.values().toArray(new p[g.this.f3211c.size()]);
            g.this.f3215g = true;
        }
        for (p pVar : pVarArr) {
            if (pVar.f3278c > i6 && pVar.g()) {
                q2.b bVar2 = q2.b.REFUSED_STREAM;
                synchronized (pVar) {
                    if (pVar.f3286k == null) {
                        pVar.f3286k = bVar2;
                        pVar.notifyAll();
                    }
                }
                g.this.H(pVar.f3278c);
            }
        }
    }

    public final List<c> F(int i4, short s3, byte b4, int i5) throws IOException {
        a aVar = this.f3267b;
        aVar.f3274e = i4;
        aVar.f3271b = i4;
        aVar.f3275f = s3;
        aVar.f3272c = b4;
        aVar.f3273d = i5;
        d.a aVar2 = this.f3269d;
        while (!aVar2.f3179b.l()) {
            int i6 = aVar2.f3179b.readByte() & 255;
            if (i6 == 128) {
                throw new IOException("index == 0");
            }
            if ((i6 & 128) == 128) {
                int iG = aVar2.g(i6, WKSRecord.Service.LOCUS_CON) - 1;
                if (!(iG >= 0 && iG <= d.f3176a.length + (-1))) {
                    int iB = aVar2.b(iG - d.f3176a.length);
                    if (iB >= 0) {
                        c[] cVarArr = aVar2.f3182e;
                        if (iB < cVarArr.length) {
                            aVar2.f3178a.add(cVarArr[iB]);
                        }
                    }
                    StringBuilder sbA = android.support.v4.media.f.a("Header index too large ");
                    sbA.append(iG + 1);
                    throw new IOException(sbA.toString());
                }
                aVar2.f3178a.add(d.f3176a[iG]);
            } else if (i6 == 64) {
                u2.h hVarF = aVar2.f();
                d.a(hVarF);
                aVar2.e(-1, new c(hVarF, aVar2.f()));
            } else if ((i6 & 64) == 64) {
                aVar2.e(-1, new c(aVar2.d(aVar2.g(i6, 63) - 1), aVar2.f()));
            } else if ((i6 & 32) == 32) {
                int iG2 = aVar2.g(i6, 31);
                aVar2.f3181d = iG2;
                if (iG2 < 0 || iG2 > aVar2.f3180c) {
                    StringBuilder sbA2 = android.support.v4.media.f.a("Invalid dynamic table size update ");
                    sbA2.append(aVar2.f3181d);
                    throw new IOException(sbA2.toString());
                }
                int i7 = aVar2.f3185h;
                if (iG2 < i7) {
                    if (iG2 == 0) {
                        aVar2.a();
                    } else {
                        aVar2.c(i7 - iG2);
                    }
                }
            } else if (i6 == 16 || i6 == 0) {
                u2.h hVarF2 = aVar2.f();
                d.a(hVarF2);
                aVar2.f3178a.add(new c(hVarF2, aVar2.f()));
            } else {
                aVar2.f3178a.add(new c(aVar2.d(aVar2.g(i6, 15) - 1), aVar2.f()));
            }
        }
        d.a aVar3 = this.f3269d;
        Objects.requireNonNull(aVar3);
        ArrayList arrayList = new ArrayList(aVar3.f3178a);
        aVar3.f3178a.clear();
        return arrayList;
    }

    public final void H(b bVar, int i4, byte b4, int i5) {
        if (i4 != 8) {
            e.c("TYPE_PING length != 8: %s", Integer.valueOf(i4));
            throw null;
        }
        if (i5 != 0) {
            e.c("TYPE_PING streamId != 0", new Object[0]);
            throw null;
        }
        int i6 = this.f3266a.readInt();
        int i7 = this.f3266a.readInt();
        boolean z3 = (b4 & 1) != 0;
        g.f fVar = (g.f) bVar;
        Objects.requireNonNull(fVar);
        if (!z3) {
            try {
                g gVar = g.this;
                gVar.f3216h.execute(gVar.new e(true, i6, i7));
            } catch (RejectedExecutionException unused) {
            }
        } else {
            synchronized (g.this) {
                g gVar2 = g.this;
                gVar2.f3219k = false;
                gVar2.notifyAll();
            }
        }
    }

    public final void I(b bVar, int i4, byte b4, int i5) throws IOException {
        if (i5 == 0) {
            e.c("PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0", new Object[0]);
            throw null;
        }
        short s3 = (b4 & 8) != 0 ? (short) (this.f3266a.readByte() & 255) : (short) 0;
        int i6 = this.f3266a.readInt() & ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        List<c> listF = F(B(i4 - 4, b4, s3), s3, b4, i5);
        g gVar = g.this;
        synchronized (gVar) {
            if (gVar.f3228t.contains(Integer.valueOf(i6))) {
                gVar.L(i6, q2.b.PROTOCOL_ERROR);
                return;
            }
            gVar.f3228t.add(Integer.valueOf(i6));
            try {
                gVar.F(new h(gVar, "OkHttp %s Push Request[%s]", new Object[]{gVar.f3212d, Integer.valueOf(i6)}, i6, listF));
            } catch (RejectedExecutionException unused) {
            }
        }
    }

    public final void J(b bVar, int i4, int i5) {
        if (i4 != 4) {
            e.c("TYPE_RST_STREAM length: %d != 4", Integer.valueOf(i4));
            throw null;
        }
        if (i5 == 0) {
            e.c("TYPE_RST_STREAM streamId == 0", new Object[0]);
            throw null;
        }
        int i6 = this.f3266a.readInt();
        q2.b bVarA = q2.b.a(i6);
        if (bVarA == null) {
            e.c("TYPE_RST_STREAM unexpected error code: %d", Integer.valueOf(i6));
            throw null;
        }
        g.f fVar = (g.f) bVar;
        if (g.this.G(i5)) {
            g gVar = g.this;
            gVar.F(new k(gVar, "OkHttp %s Push Reset[%s]", new Object[]{gVar.f3212d, Integer.valueOf(i5)}, i5, bVarA));
            return;
        }
        p pVarH = g.this.H(i5);
        if (pVarH != null) {
            synchronized (pVarH) {
                if (pVarH.f3286k == null) {
                    pVarH.f3286k = bVarA;
                    pVarH.notifyAll();
                }
            }
        }
    }

    public final void K(b bVar, int i4, byte b4, int i5) {
        long j4;
        p[] pVarArr = null;
        if (i5 != 0) {
            e.c("TYPE_SETTINGS streamId != 0", new Object[0]);
            throw null;
        }
        if ((b4 & 1) != 0) {
            if (i4 == 0) {
                Objects.requireNonNull(bVar);
                return;
            } else {
                e.c("FRAME_SIZE_ERROR ack frame should be empty!", new Object[0]);
                throw null;
            }
        }
        if (i4 % 6 != 0) {
            e.c("TYPE_SETTINGS length %% 6 != 0: %s", Integer.valueOf(i4));
            throw null;
        }
        t tVar = new t();
        for (int i6 = 0; i6 < i4; i6 += 6) {
            int i7 = this.f3266a.readShort() & 65535;
            int i8 = this.f3266a.readInt();
            if (i7 == 2) {
                if (i8 != 0 && i8 != 1) {
                    e.c("PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1", new Object[0]);
                    throw null;
                }
            } else if (i7 == 3) {
                i7 = 4;
            } else if (i7 == 4) {
                i7 = 7;
                if (i8 < 0) {
                    e.c("PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1", new Object[0]);
                    throw null;
                }
            } else if (i7 == 5 && (i8 < 16384 || i8 > 16777215)) {
                e.c("PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s", Integer.valueOf(i8));
                throw null;
            }
            tVar.b(i7, i8);
        }
        g.f fVar = (g.f) bVar;
        synchronized (g.this) {
            int iA = g.this.f3223o.a();
            t tVar2 = g.this.f3223o;
            Objects.requireNonNull(tVar2);
            for (int i9 = 0; i9 < 10; i9++) {
                if (((1 << i9) & tVar.f3313a) != 0) {
                    tVar2.b(i9, tVar.f3314b[i9]);
                }
            }
            try {
                g gVar = g.this;
                gVar.f3216h.execute(new n(fVar, "OkHttp %s ACK Settings", new Object[]{gVar.f3212d}, tVar));
            } catch (RejectedExecutionException unused) {
            }
            int iA2 = g.this.f3223o.a();
            if (iA2 == -1 || iA2 == iA) {
                j4 = 0;
            } else {
                j4 = iA2 - iA;
                g gVar2 = g.this;
                if (!gVar2.f3224p) {
                    gVar2.f3224p = true;
                }
                if (!gVar2.f3211c.isEmpty()) {
                    pVarArr = (p[]) g.this.f3211c.values().toArray(new p[g.this.f3211c.size()]);
                }
            }
            ((ThreadPoolExecutor) g.f3208u).execute(new m(fVar, "OkHttp %s settings", g.this.f3212d));
        }
        if (pVarArr == null || j4 == 0) {
            return;
        }
        for (p pVar : pVarArr) {
            synchronized (pVar) {
                pVar.f3277b += j4;
                if (j4 > 0) {
                    pVar.notifyAll();
                }
            }
        }
    }

    public final void L(b bVar, int i4, int i5) {
        if (i4 != 4) {
            e.c("TYPE_WINDOW_UPDATE length !=4: %s", Integer.valueOf(i4));
            throw null;
        }
        long j4 = ((long) this.f3266a.readInt()) & TTL.MAX_VALUE;
        if (j4 == 0) {
            e.c("windowSizeIncrement was 0", Long.valueOf(j4));
            throw null;
        }
        g.f fVar = (g.f) bVar;
        if (i5 == 0) {
            synchronized (g.this) {
                g gVar = g.this;
                gVar.f3221m += j4;
                gVar.notifyAll();
            }
            return;
        }
        p pVarD = g.this.D(i5);
        if (pVarD != null) {
            synchronized (pVarD) {
                pVarD.f3277b += j4;
                if (j4 > 0) {
                    pVarD.notifyAll();
                }
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f3266a.close();
    }
}
