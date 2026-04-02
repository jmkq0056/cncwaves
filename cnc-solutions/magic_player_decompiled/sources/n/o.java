package n;

import n.b;
import org.eclipse.jetty.http.HttpHeaders;

/* JADX INFO: loaded from: classes.dex */
public class o extends b {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f2686c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f2687d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f2688e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f2689f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public String f2690g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public String f2691h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f2692i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public long f2693j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f2694k;

    public o() {
        super("WifiHotspotConfig");
    }

    @Override // n.b
    public void a(b.a aVar) {
        this.f2686c = aVar.a("WifiState", false);
        String str = aVar.f2626a.get("WifiName");
        if (str == null) {
            str = "";
        }
        this.f2687d = str;
        this.f2688e = aVar.b("WifiPwdMode", 1);
        this.f2689f = aVar.b("EffectTime", 30);
        String str2 = aVar.f2626a.get("FixedPwd");
        if (str2 == null) {
            str2 = "88888888";
        }
        this.f2690g = str2;
        this.f2692i = aVar.b(HttpHeaders.LOCATION, 0);
        String str3 = aVar.f2626a.get("RandomPwd");
        this.f2691h = str3 != null ? str3 : "";
        this.f2693j = aVar.c("TimeStamp", 0L);
        this.f2694k = aVar.b("apBand", 0);
    }

    @Override // n.b
    public void b(b.a aVar) {
        aVar.f2626a.put("WifiState", Boolean.toString(this.f2686c));
        aVar.f2626a.put("WifiName", this.f2687d);
        aVar.f2626a.put("WifiPwdMode", Integer.toString(this.f2688e));
        aVar.f2626a.put("EffectTime", Integer.toString(this.f2689f));
        aVar.f2626a.put("FixedPwd", this.f2690g);
        aVar.f2626a.put(HttpHeaders.LOCATION, Integer.toString(this.f2692i));
        aVar.f2626a.put("RandomPwd", this.f2691h);
        aVar.f2626a.put("TimeStamp", Long.toString(this.f2693j));
        aVar.f2626a.put("apBand", Integer.toString(this.f2694k));
    }
}
