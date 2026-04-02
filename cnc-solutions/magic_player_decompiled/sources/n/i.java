package n;

import n.b;
import org.slf4j.helpers.MessageFormatter;

/* JADX INFO: loaded from: classes.dex */
public class i extends b {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f2656c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f2657d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f2658e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f2659f;

    public i() {
        super("NetWorkMonitorConfig");
    }

    @Override // n.b
    public void a(b.a aVar) {
        this.f2656c = aVar.a("isOnMonitor", false);
        String str = aVar.f2626a.get("MonitorAddress");
        if (str == null) {
            str = "www.baidu.com";
        }
        this.f2657d = str;
        this.f2658e = aVar.b("MonitorNumber", 3);
        this.f2659f = aVar.b("MonitorDelayTime", 60);
    }

    @Override // n.b
    public void b(b.a aVar) {
        aVar.f2626a.put("isOnMonitor", Boolean.toString(this.f2656c));
        aVar.f2626a.put("MonitorAddress", this.f2657d);
        aVar.f2626a.put("MonitorNumber", Integer.toString(this.f2658e));
        aVar.f2626a.put("MonitorDelayTime", Integer.toString(this.f2659f));
    }

    public String toString() {
        StringBuilder sbA = android.support.v4.media.f.a("NetWorkMonitorConfig{isOnMonitor=");
        sbA.append(this.f2656c);
        sbA.append(", MonitorAddress='");
        k.a.a(sbA, this.f2657d, '\'', ", MonitorNumber=");
        sbA.append(this.f2658e);
        sbA.append(", MonitorDelayTime=");
        sbA.append(this.f2659f);
        sbA.append(MessageFormatter.DELIM_STOP);
        return sbA.toString();
    }
}
