package u2;

import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes2.dex */
public final class n implements v {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ x f3597a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ OutputStream f3598b;

    public n(x xVar, OutputStream outputStream) {
        this.f3597a = xVar;
        this.f3598b = outputStream;
    }

    @Override // u2.v
    public x a() {
        return this.f3597a;
    }

    @Override // u2.v, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f3598b.close();
    }

    @Override // u2.v, java.io.Flushable
    public void flush() throws IOException {
        this.f3598b.flush();
    }

    @Override // u2.v
    public void o(e eVar, long j4) throws IOException {
        y.b(eVar.f3578b, 0L, j4);
        while (j4 > 0) {
            this.f3597a.f();
            s sVar = eVar.f3577a;
            int iMin = (int) Math.min(j4, sVar.f3612c - sVar.f3611b);
            this.f3598b.write(sVar.f3610a, sVar.f3611b, iMin);
            int i4 = sVar.f3611b + iMin;
            sVar.f3611b = i4;
            long j5 = iMin;
            j4 -= j5;
            eVar.f3578b -= j5;
            if (i4 == sVar.f3612c) {
                eVar.f3577a = sVar.a();
                t.a(sVar);
            }
        }
    }

    public String toString() {
        StringBuilder sbA = android.support.v4.media.f.a("sink(");
        sbA.append(this.f3598b);
        sbA.append(")");
        return sbA.toString();
    }
}
