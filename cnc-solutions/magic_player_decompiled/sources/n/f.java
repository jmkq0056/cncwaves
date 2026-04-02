package n;

import n.b;

/* JADX INFO: loaded from: classes.dex */
public class f extends b {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f2636c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f2637d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f2638e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f2639f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f2640g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f2641h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f2642i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public String f2643j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f2644k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f2645l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f2646m;

    public f() {
        super("FaceDetectConfig");
    }

    @Override // n.b
    public void a(b.a aVar) {
        this.f2636c = aVar.a("Enable", false);
        this.f2637d = aVar.a("CountVisitors", false);
        this.f2638e = aVar.a("ReportVisitors", false);
        this.f2639f = aVar.b("ReportInterval", 28800);
        this.f2640g = aVar.a("ShowPreview", false);
        this.f2641h = aVar.b("Width", 0);
        this.f2642i = aVar.b("Height", 0);
        String str = aVar.f2626a.get("Alignment");
        if (str == null) {
            str = null;
        }
        this.f2643j = str;
        this.f2644k = aVar.a("ShowFaceRect", false);
        this.f2645l = aVar.a("ShowFaceInfo", false);
        this.f2646m = aVar.a("ShowVisitors", false);
    }

    @Override // n.b
    public void b(b.a aVar) {
        aVar.f2626a.put("Enable", Boolean.toString(this.f2636c));
        aVar.f2626a.put("CountVisitors", Boolean.toString(this.f2637d));
        aVar.f2626a.put("ReportVisitors", Boolean.toString(this.f2638e));
        aVar.f2626a.put("ReportInterval", Integer.toString(this.f2639f));
        aVar.f2626a.put("ShowPreview", Boolean.toString(this.f2640g));
        aVar.f2626a.put("Width", Integer.toString(this.f2641h));
        aVar.f2626a.put("Height", Integer.toString(this.f2642i));
        aVar.f2626a.put("Alignment", this.f2643j);
        aVar.f2626a.put("ShowFaceRect", Boolean.toString(this.f2644k));
        aVar.f2626a.put("ShowFaceInfo", Boolean.toString(this.f2645l));
        aVar.f2626a.put("ShowVisitors", Boolean.toString(this.f2646m));
    }
}
