package n;

import n.b;

/* JADX INFO: loaded from: classes.dex */
public class a extends b {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f2606c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f2607d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f2608e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f2609f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f2610g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f2611h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public long f2612i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f2613j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f2614k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f2615l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f2616m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f2617n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f2618o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f2619p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f2620q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public boolean f2621r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public String f2622s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f2623t;

    public a() {
        super("AdvancedConfig");
    }

    @Override // n.b
    public void a(b.a aVar) {
        this.f2606c = aVar.b("StorageLocation", 0);
        this.f2607d = aVar.b("ScreenRotation", 0);
        this.f2621r = aVar.a("ControlPwd", false);
        String str = aVar.f2626a.get("Password");
        if (str == null) {
            str = "12345678";
        }
        this.f2622s = str;
        if (aVar.a("MachineSync", false)) {
            aVar.f2626a.remove("MachineSync");
            this.f2608e = 1;
        } else {
            this.f2608e = aVar.b("PlayMode", 0);
        }
        this.f2609f = aVar.a("EnableInteraction", false);
        this.f2610g = aVar.a("EnablePlayResume", false);
        this.f2611h = aVar.b("PlayResumeIndex", 0);
        this.f2612i = aVar.c("PlayResumePosition", 0L);
        this.f2613j = aVar.b("AutoBackDelay", 0);
        this.f2620q = aVar.a("EnableStandbyPage", true);
        this.f2614k = aVar.a("EnableDualScreen", false);
        this.f2615l = aVar.a("AutoPlayHdmiIn", false);
        this.f2616m = aVar.b("HdmiInAngle", 0);
        this.f2617n = aVar.a("EnableDLNA", false);
        this.f2618o = aVar.a("EnableMiracast", false);
        this.f2619p = aVar.a("EnableAirPlay", false);
        this.f2623t = aVar.b("SensorPlayTime", 5);
    }

    @Override // n.b
    public void b(b.a aVar) {
        aVar.f2626a.put("StorageLocation", Integer.toString(this.f2606c));
        aVar.f2626a.put("ScreenRotation", Integer.toString(this.f2607d));
        aVar.f2626a.put("ControlPwd", Boolean.toString(this.f2621r));
        aVar.f2626a.put("Password", this.f2622s);
        aVar.f2626a.put("PlayMode", Integer.toString(this.f2608e));
        aVar.f2626a.put("EnableInteraction", Boolean.toString(this.f2609f));
        aVar.f2626a.put("EnablePlayResume", Boolean.toString(this.f2610g));
        aVar.f2626a.put("PlayResumeIndex", Integer.toString(this.f2611h));
        aVar.f2626a.put("PlayResumePosition", Long.toString(this.f2612i));
        aVar.f2626a.put("AutoBackDelay", Integer.toString(this.f2613j));
        aVar.f2626a.put("EnableStandbyPage", Boolean.toString(this.f2620q));
        aVar.f2626a.put("EnableDualScreen", Boolean.toString(this.f2614k));
        aVar.f2626a.put("AutoPlayHdmiIn", Boolean.toString(this.f2615l));
        aVar.f2626a.put("HdmiInAngle", Integer.toString(this.f2616m));
        aVar.f2626a.put("EnableDLNA", Boolean.toString(this.f2617n));
        aVar.f2626a.put("EnableMiracast", Boolean.toString(this.f2618o));
        aVar.f2626a.put("EnableAirPlay", Boolean.toString(this.f2619p));
        aVar.f2626a.put("SensorPlayTime", Integer.toString(this.f2623t));
    }

    public int c() {
        return this.f2606c;
    }

    public void d(int i4) {
        this.f2606c = i4;
    }
}
