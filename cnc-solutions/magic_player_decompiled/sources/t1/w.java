package t1;

import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public class w extends x<Object> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ x f3548a;

    public w(x xVar) {
        this.f3548a = xVar;
    }

    @Override // t1.x
    public Object a(a2.a aVar) throws IOException {
        if (aVar.W() != a2.b.NULL) {
            return this.f3548a.a(aVar);
        }
        aVar.S();
        return null;
    }

    @Override // t1.x
    public void b(a2.c cVar, Object obj) throws IOException {
        if (obj == null) {
            cVar.J();
        } else {
            this.f3548a.b(cVar, obj);
        }
    }
}
