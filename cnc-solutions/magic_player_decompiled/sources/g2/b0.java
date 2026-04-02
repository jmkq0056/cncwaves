package g2;

import java.util.EventObject;

/* JADX INFO: loaded from: classes2.dex */
public class b0 extends EventObject {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public y f1717a;

    public b0(p pVar, y yVar) {
        super(pVar);
        this.f1717a = yVar;
    }

    public p a() {
        return (p) super.getSource();
    }
}
