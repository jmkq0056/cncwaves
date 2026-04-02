package n;

import n.b;
import org.slf4j.helpers.MessageFormatter;

/* JADX INFO: loaded from: classes.dex */
public class g extends b {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f2647c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f2648d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f2649e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f2650f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public String f2651g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f2652h;

    public g() {
        super("LanServerConfig");
    }

    @Override // n.b
    public void a(b.a aVar) {
        this.f2647c = aVar.a("Locking", false);
        String str = aVar.f2626a.get("LockPassword");
        if (str == null) {
            str = "";
        }
        this.f2648d = str;
        String str2 = aVar.f2626a.get("LanUUid");
        if (str2 == null) {
            str2 = "";
        }
        this.f2649e = str2;
        String str3 = aVar.f2626a.get("LanServer");
        if (str3 == null) {
            str3 = "";
        }
        this.f2650f = str3;
        String str4 = aVar.f2626a.get("LanMqtt");
        this.f2651g = str4 != null ? str4 : "";
        this.f2652h = aVar.b("StatusCode", 0);
    }

    @Override // n.b
    public void b(b.a aVar) {
        aVar.f2626a.put("Locking", Boolean.toString(this.f2647c));
        aVar.f2626a.put("LockPassword", this.f2648d);
        aVar.f2626a.put("LanUUid", this.f2649e);
        aVar.f2626a.put("LanServer", this.f2650f);
        aVar.f2626a.put("LanMqtt", this.f2651g);
        aVar.f2626a.put("StatusCode", Integer.toString(this.f2652h));
    }

    public String toString() {
        StringBuilder sbA = android.support.v4.media.f.a("LanServerConfig{mLocking=");
        sbA.append(this.f2647c);
        sbA.append(", mLockPassword='");
        k.a.a(sbA, this.f2648d, '\'', ", mLanUUid='");
        k.a.a(sbA, this.f2649e, '\'', ", mLanServer='");
        k.a.a(sbA, this.f2650f, '\'', ", mLanMqtt='");
        k.a.a(sbA, this.f2651g, '\'', ", mStatusCode=");
        sbA.append(this.f2652h);
        sbA.append(MessageFormatter.DELIM_STOP);
        return sbA.toString();
    }
}
