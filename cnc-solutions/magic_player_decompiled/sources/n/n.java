package n;

import n.b;

/* JADX INFO: loaded from: classes.dex */
public class n extends b {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f2685c;

    public n() {
        super("WebLockConfig");
    }

    @Override // n.b
    public void a(b.a aVar) {
        this.f2685c = aVar.a("Locked", false);
    }

    @Override // n.b
    public void b(b.a aVar) {
        aVar.f2626a.put("Locked", Boolean.toString(this.f2685c));
    }
}
