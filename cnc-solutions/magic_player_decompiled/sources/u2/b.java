package u2;

import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public class b implements w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ w f3567a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ c f3568b;

    public b(c cVar, w wVar) {
        this.f3568b = cVar;
        this.f3567a = wVar;
    }

    @Override // u2.w
    public x a() {
        return this.f3568b;
    }

    @Override // u2.w, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        try {
            try {
                this.f3567a.close();
                this.f3568b.j(true);
            } catch (IOException e4) {
                c cVar = this.f3568b;
                if (!cVar.k()) {
                    throw e4;
                }
                throw cVar.l(e4);
            }
        } catch (Throwable th) {
            this.f3568b.j(false);
            throw th;
        }
    }

    @Override // u2.w
    public long s(e eVar, long j4) throws IOException {
        this.f3568b.i();
        try {
            try {
                long jS = this.f3567a.s(eVar, j4);
                this.f3568b.j(true);
                return jS;
            } catch (IOException e4) {
                c cVar = this.f3568b;
                if (cVar.k()) {
                    throw cVar.l(e4);
                }
                throw e4;
            }
        } catch (Throwable th) {
            this.f3568b.j(false);
            throw th;
        }
    }

    public String toString() {
        StringBuilder sbA = android.support.v4.media.f.a("AsyncTimeout.source(");
        sbA.append(this.f3567a);
        sbA.append(")");
        return sbA.toString();
    }
}
