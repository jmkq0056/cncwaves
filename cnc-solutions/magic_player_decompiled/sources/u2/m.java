package u2;

import java.io.EOFException;
import java.io.IOException;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;

/* JADX INFO: loaded from: classes2.dex */
public final class m implements w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final g f3593a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Inflater f3594b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f3595c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f3596d;

    public m(g gVar, Inflater inflater) {
        this.f3593a = gVar;
        this.f3594b = inflater;
    }

    public final void B() {
        int i4 = this.f3595c;
        if (i4 == 0) {
            return;
        }
        int remaining = i4 - this.f3594b.getRemaining();
        this.f3595c -= remaining;
        this.f3593a.skip(remaining);
    }

    @Override // u2.w
    public x a() {
        return this.f3593a.a();
    }

    @Override // u2.w, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.f3596d) {
            return;
        }
        this.f3594b.end();
        this.f3596d = true;
        this.f3593a.close();
    }

    @Override // u2.w
    public long s(e eVar, long j4) throws IOException {
        boolean z3;
        if (j4 < 0) {
            throw new IllegalArgumentException(androidx.viewpager2.adapter.a.a("byteCount < 0: ", j4));
        }
        if (this.f3596d) {
            throw new IllegalStateException("closed");
        }
        if (j4 == 0) {
            return 0L;
        }
        do {
            z3 = false;
            if (this.f3594b.needsInput()) {
                B();
                if (this.f3594b.getRemaining() != 0) {
                    throw new IllegalStateException("?");
                }
                if (this.f3593a.l()) {
                    z3 = true;
                } else {
                    s sVar = this.f3593a.buffer().f3577a;
                    int i4 = sVar.f3612c;
                    int i5 = sVar.f3611b;
                    int i6 = i4 - i5;
                    this.f3595c = i6;
                    this.f3594b.setInput(sVar.f3610a, i5, i6);
                }
            }
            try {
                s sVarJ = eVar.J(1);
                int iInflate = this.f3594b.inflate(sVarJ.f3610a, sVarJ.f3612c, (int) Math.min(j4, 8192 - sVarJ.f3612c));
                if (iInflate > 0) {
                    sVarJ.f3612c += iInflate;
                    long j5 = iInflate;
                    eVar.f3578b += j5;
                    return j5;
                }
                if (!this.f3594b.finished() && !this.f3594b.needsDictionary()) {
                }
                B();
                if (sVarJ.f3611b != sVarJ.f3612c) {
                    return -1L;
                }
                eVar.f3577a = sVarJ.a();
                t.a(sVarJ);
                return -1L;
            } catch (DataFormatException e4) {
                throw new IOException(e4);
            }
        } while (!z3);
        throw new EOFException("source exhausted prematurely");
    }
}
