package u2;

import android.support.v4.media.session.PlaybackStateCompat;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public class a implements v {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ v f3565a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ c f3566b;

    public a(c cVar, v vVar) {
        this.f3566b = cVar;
        this.f3565a = vVar;
    }

    @Override // u2.v
    public x a() {
        return this.f3566b;
    }

    @Override // u2.v, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f3566b.i();
        try {
            try {
                this.f3565a.close();
                this.f3566b.j(true);
            } catch (IOException e4) {
                c cVar = this.f3566b;
                if (!cVar.k()) {
                    throw e4;
                }
                throw cVar.l(e4);
            }
        } catch (Throwable th) {
            this.f3566b.j(false);
            throw th;
        }
    }

    @Override // u2.v, java.io.Flushable
    public void flush() throws IOException {
        this.f3566b.i();
        try {
            try {
                this.f3565a.flush();
                this.f3566b.j(true);
            } catch (IOException e4) {
                c cVar = this.f3566b;
                if (!cVar.k()) {
                    throw e4;
                }
                throw cVar.l(e4);
            }
        } catch (Throwable th) {
            this.f3566b.j(false);
            throw th;
        }
    }

    @Override // u2.v
    public void o(e eVar, long j4) throws IOException {
        y.b(eVar.f3578b, 0L, j4);
        while (true) {
            long j5 = 0;
            if (j4 <= 0) {
                return;
            }
            s sVar = eVar.f3577a;
            while (true) {
                if (j5 >= PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH) {
                    break;
                }
                j5 += (long) (sVar.f3612c - sVar.f3611b);
                if (j5 >= j4) {
                    j5 = j4;
                    break;
                }
                sVar = sVar.f3615f;
            }
            this.f3566b.i();
            try {
                try {
                    this.f3565a.o(eVar, j5);
                    j4 -= j5;
                    this.f3566b.j(true);
                } catch (IOException e4) {
                    c cVar = this.f3566b;
                    if (!cVar.k()) {
                        throw e4;
                    }
                    throw cVar.l(e4);
                }
            } catch (Throwable th) {
                this.f3566b.j(false);
                throw th;
            }
        }
    }

    public String toString() {
        StringBuilder sbA = android.support.v4.media.f.a("AsyncTimeout.sink(");
        sbA.append(this.f3565a);
        sbA.append(")");
        return sbA.toString();
    }
}
