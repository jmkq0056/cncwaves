package n;

import n.b;

/* JADX INFO: loaded from: classes.dex */
public class m extends b {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f2683c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f2684d;

    public m() {
        super("TimedRebootConfig");
    }

    @Override // n.b
    public void a(b.a aVar) {
        this.f2683c = aVar.a("Enable", false);
        String str = aVar.f2626a.get("RebootTime");
        if (str == null) {
            str = null;
        }
        this.f2684d = str;
    }

    @Override // n.b
    public void b(b.a aVar) {
        aVar.f2626a.put("Enable", Boolean.toString(this.f2683c));
        aVar.f2626a.put("RebootTime", this.f2684d);
    }
}
