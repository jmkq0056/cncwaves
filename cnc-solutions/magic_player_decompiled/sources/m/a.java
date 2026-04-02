package m;

import android.os.SystemClock;
import j.n;
import r.e;

/* JADX INFO: loaded from: classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f2461a;

    public final boolean a(byte[] bArr, int i4, int i5) {
        if (i4 != 8 || i5 == 1) {
            return false;
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        long jP0 = h.a.p0(bArr, 0);
        if (jP0 != 0 && SystemClock.elapsedRealtime() - this.f2461a >= 9600) {
            this.f2461a = SystemClock.elapsedRealtime();
            r.e eVarD = r.e.d();
            synchronized (eVarD) {
                SystemClock.elapsedRealtime();
                eVarD.j("RF service");
                eVarD.f3349j = new e.b("RF service", jP0, jElapsedRealtime, 40);
                eVarD.b();
            }
        }
        return true;
    }

    public final void b(int i4, int i5, int i6, String str) {
        n nVar = new n(i4, i5);
        nVar.f1951c = i6;
        nVar.f1952d = str;
        g3.c.b().f(nVar);
    }
}
