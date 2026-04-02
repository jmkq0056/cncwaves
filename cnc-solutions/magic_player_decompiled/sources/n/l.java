package n;

import n.b;

/* JADX INFO: loaded from: classes.dex */
public class l extends b {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f2672c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f2673d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f2674e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f2675f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f2676g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f2677h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f2678i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f2679j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f2680k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f2681l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f2682m;

    public l() {
        super("NtpConfig");
    }

    @Override // n.b
    public void a(b.a aVar) {
        this.f2672c = aVar.a("AutoTime", true);
        String str = aVar.f2626a.get("TimeZoneId");
        if (str == null) {
            str = null;
        }
        this.f2673d = str;
        String str2 = aVar.f2626a.get("NtpHost");
        if (str2 == null) {
            str2 = "ntp.huidu.cn";
        }
        this.f2674e = str2;
        this.f2675f = aVar.b("RefreshInterval", 300000);
        this.f2676g = aVar.b("HtpMode", 0);
        int iB = aVar.b("SyncMode", 0);
        this.f2682m = iB;
        if (iB == 0 && this.f2672c) {
            this.f2682m = 1;
        }
        this.f2678i = aVar.b("RFModel", 2);
        this.f2677h = aVar.a("RFEnable", false);
        this.f2679j = aVar.b("Channel", 0);
        this.f2680k = aVar.b("GroupNo", 0);
        this.f2681l = aVar.b("Certainty", 120);
    }

    @Override // n.b
    public void b(b.a aVar) {
        aVar.f2626a.put("AutoTime", Boolean.toString(this.f2672c));
        aVar.f2626a.put("TimeZoneId", this.f2673d);
        aVar.f2626a.put("NtpHost", this.f2674e);
        aVar.f2626a.put("RefreshInterval", Integer.toString(this.f2675f));
        aVar.f2626a.put("HtpMode", Integer.toString(this.f2676g));
        aVar.f2626a.put("SyncMode", Integer.toString(this.f2682m));
        aVar.f2626a.put("RFModel", Integer.toString(this.f2678i));
        aVar.f2626a.put("RFEnable", Boolean.toString(this.f2677h));
        aVar.f2626a.put("Channel", Integer.toString(this.f2679j));
        aVar.f2626a.put("GroupNo", Integer.toString(this.f2680k));
        aVar.f2626a.put("Certainty", Integer.toString(this.f2681l));
    }

    public int c() {
        return this.f2681l;
    }

    public int d() {
        return this.f2680k;
    }

    public int e() {
        return this.f2676g;
    }

    public String f() {
        return this.f2674e;
    }

    public int g() {
        return this.f2678i;
    }

    public int h() {
        return this.f2682m;
    }

    public boolean i() {
        return this.f2677h;
    }
}
