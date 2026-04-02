package n2;

import java.io.IOException;
import java.util.Objects;
import k2.a0;
import k2.s;
import k2.u;
import k2.x;
import org.eclipse.jetty.http.HttpMethods;

/* JADX INFO: loaded from: classes2.dex */
public final class a implements s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final u f2732a;

    public a(u uVar) {
        this.f2732a = uVar;
    }

    @Override // k2.s
    public a0 a(s.a aVar) {
        o2.f fVar = (o2.f) aVar;
        x xVar = fVar.f2862f;
        f fVar2 = fVar.f2858b;
        boolean z3 = !xVar.f2270b.equals(HttpMethods.GET);
        u uVar = this.f2732a;
        Objects.requireNonNull(fVar2);
        int i4 = fVar.f2865i;
        int i5 = fVar.f2866j;
        int i6 = fVar.f2867k;
        Objects.requireNonNull(uVar);
        try {
            o2.c cVarI = fVar2.e(i4, i5, i6, 0, uVar.f2224t, z3).i(uVar, aVar, fVar2);
            synchronized (fVar2.f2765d) {
                fVar2.f2775n = cVarI;
            }
            return fVar.b(xVar, fVar2, cVarI, fVar2.b());
        } catch (IOException e4) {
            throw new d(e4);
        }
    }
}
