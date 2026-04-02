package n;

import cn.huidu.lcd.render.model.NodeTags;
import java.util.Map;
import n.b;
import org.eclipse.jetty.http.HttpHeaders;

/* JADX INFO: loaded from: classes.dex */
public class k extends b {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f2663c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f2664d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f2665e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f2666f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f2667g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f2668h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f2669i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f2670j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f2671k;

    public k() {
        super("SystemModeConfig");
    }

    @Override // n.b
    public void a(b.a aVar) {
        Map<String, String> map = aVar.f2626a;
        if (map.containsKey("NewNetworkMode")) {
            this.f2663c = aVar.b("NewNetworkMode", 0);
        } else if (map.containsKey("NetworkMode")) {
            this.f2663c = aVar.a("NetworkMode", false) ? 1 : 0;
        }
        this.f2664d = aVar.a("CopyMode", true);
        this.f2665e = aVar.b(HttpHeaders.LOCATION, 0);
        this.f2666f = aVar.b("Padding", 0);
        this.f2667g = aVar.b(NodeTags.EFFECT, 0);
        this.f2668h = aVar.a("ClearScreen", false);
        this.f2669i = aVar.b("PlayDuration", 5);
        this.f2670j = aVar.b("EffectDuration", 3);
        this.f2671k = aVar.a("ShowClock", false);
    }

    @Override // n.b
    public void b(b.a aVar) {
        aVar.f2626a.put("NewNetworkMode", Integer.toString(this.f2663c));
        aVar.f2626a.put("CopyMode", Boolean.toString(this.f2664d));
        aVar.f2626a.put(HttpHeaders.LOCATION, Integer.toString(this.f2665e));
        aVar.f2626a.put("Padding", Integer.toString(this.f2666f));
        aVar.f2626a.put(NodeTags.EFFECT, Integer.toString(this.f2667g));
        aVar.f2626a.put("ClearScreen", Boolean.toString(this.f2668h));
        aVar.f2626a.put("PlayDuration", Integer.toString(this.f2669i));
        aVar.f2626a.put("EffectDuration", Integer.toString(this.f2670j));
        aVar.f2626a.put("ShowClock", Boolean.toString(this.f2671k));
    }
}
