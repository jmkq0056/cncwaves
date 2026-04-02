package n;

import n.b;

/* JADX INFO: loaded from: classes.dex */
public class d extends b {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f2631c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f2632d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f2633e;

    public d() {
        super("DeviceInfoConfig");
    }

    @Override // n.b
    public void a(b.a aVar) {
        String str = aVar.f2626a.get("DeviceName");
        if (str == null) {
            str = "MagicPlayer";
        }
        this.f2631c = str;
        String str2 = aVar.f2626a.get("DeviceId");
        if (str2 == null) {
            str2 = "HD-00-0000";
        }
        this.f2632d = str2;
        String str3 = aVar.f2626a.get("UUID");
        this.f2633e = str3 != null ? str3 : null;
    }

    @Override // n.b
    public void b(b.a aVar) {
        aVar.f2626a.put("DeviceName", this.f2631c);
        aVar.f2626a.put("DeviceId", this.f2632d);
        aVar.f2626a.put("UUID", this.f2633e);
    }

    public String c() {
        return this.f2632d;
    }

    public void d(String str) {
        this.f2632d = str;
    }
}
