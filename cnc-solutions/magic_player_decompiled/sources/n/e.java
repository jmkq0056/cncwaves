package n;

import n.b;

/* JADX INFO: loaded from: classes.dex */
public class e extends b {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f2634c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f2635d;

    public e() {
        super("DeviceLockConfig");
    }

    @Override // n.b
    public void a(b.a aVar) {
        this.f2634c = aVar.a("enableDeviceLock", false);
        String str = aVar.f2626a.get("password");
        if (str == null) {
            str = null;
        }
        this.f2635d = str;
    }

    @Override // n.b
    public void b(b.a aVar) {
        aVar.f2626a.put("enableDeviceLock", Boolean.toString(this.f2634c));
        aVar.f2626a.put("password", this.f2635d);
    }
}
