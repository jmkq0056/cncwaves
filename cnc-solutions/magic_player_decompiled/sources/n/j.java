package n;

import n.b;

/* JADX INFO: loaded from: classes.dex */
public class j extends b {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f2660c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f2661d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f2662e;

    public j() {
        super("PlayRecordConfig");
    }

    @Override // n.b
    public void a(b.a aVar) {
        this.f2660c = aVar.a("EnableRecord", true);
        this.f2661d = aVar.a("AutoReport", false);
        String str = aVar.f2626a.get("ReportTime");
        if (str == null) {
            str = null;
        }
        this.f2662e = str;
    }

    @Override // n.b
    public void b(b.a aVar) {
        aVar.f2626a.put("EnableRecord", Boolean.toString(this.f2660c));
        aVar.f2626a.put("AutoReport", Boolean.toString(this.f2661d));
        aVar.f2626a.put("ReportTime", this.f2662e);
    }
}
