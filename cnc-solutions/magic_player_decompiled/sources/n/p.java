package n;

import n.b;
import org.eclipse.jetty.util.StringUtil;

/* JADX INFO: loaded from: classes.dex */
public class p extends b {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f2695c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f2696d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f2697e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f2698f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public String f2699g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public String f2700h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public String f2701i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public String f2702j;

    public p() {
        super("WifiStaticIpConfig");
    }

    @Override // n.b
    public void a(b.a aVar) {
        String str = aVar.f2626a.get("DhcpIp");
        if (str == null) {
            str = "192.168.1.220";
        }
        this.f2695c = str;
        String str2 = aVar.f2626a.get("DhcpMask");
        if (str2 == null) {
            str2 = "255.255.0.0";
        }
        this.f2696d = str2;
        String str3 = aVar.f2626a.get("DhcpGateway");
        if (str3 == null) {
            str3 = "192.168.1.1";
        }
        this.f2697e = str3;
        String str4 = aVar.f2626a.get("DhcpDns");
        if (str4 == null) {
            str4 = "192.168.1.1";
        }
        this.f2698f = str4;
        String str5 = aVar.f2626a.get("StaticIp");
        if (str5 == null) {
            str5 = StringUtil.ALL_INTERFACES;
        }
        this.f2699g = str5;
        String str6 = aVar.f2626a.get("StaticMask");
        this.f2700h = str6 != null ? str6 : "255.255.0.0";
        String str7 = aVar.f2626a.get("StaticGateway");
        if (str7 == null) {
            str7 = "192.168.1.1";
        }
        this.f2701i = str7;
        String str8 = aVar.f2626a.get("StaticDns");
        this.f2702j = str8 != null ? str8 : "192.168.1.1";
    }

    @Override // n.b
    public void b(b.a aVar) {
        aVar.f2626a.put("DhcpIp", this.f2695c);
        aVar.f2626a.put("DhcpMask", this.f2696d);
        aVar.f2626a.put("DhcpGateway", this.f2697e);
        aVar.f2626a.put("DhcpDns", this.f2698f);
        aVar.f2626a.put("StaticIp", this.f2699g);
        aVar.f2626a.put("StaticMask", this.f2700h);
        aVar.f2626a.put("StaticGateway", this.f2701i);
        aVar.f2626a.put("StaticDns", this.f2702j);
    }
}
