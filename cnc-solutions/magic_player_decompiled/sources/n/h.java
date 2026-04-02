package n;

import n.b;

/* JADX INFO: loaded from: classes.dex */
public class h extends b {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f2653c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f2654d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f2655e;

    public h() {
        super("MobileNetConfig");
    }

    @Override // n.b
    public void a(b.a aVar) {
        this.f2653c = aVar.a("OpenMobileData", false);
        this.f2654d = aVar.a("OpenRoam", false);
        this.f2655e = aVar.a("Open4G", false);
    }

    @Override // n.b
    public void b(b.a aVar) {
        aVar.f2626a.put("OpenMobileData", Boolean.toString(this.f2653c));
        aVar.f2626a.put("OpenRoam", Boolean.toString(this.f2654d));
        aVar.f2626a.put("Open4G", Boolean.toString(this.f2655e));
    }
}
