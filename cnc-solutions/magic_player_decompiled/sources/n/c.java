package n;

import n.b;
import org.slf4j.helpers.MessageFormatter;

/* JADX INFO: loaded from: classes.dex */
public class c extends b {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f2627c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f2628d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f2629e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f2630f;

    public c() {
        super("CloudServerConfig");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x001d  */
    @Override // n.b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(n.b.a r5) {
        /*
            r4 = this;
            java.lang.String r0 = "Registered"
            r1 = 0
            boolean r0 = r5.a(r0, r1)
            r4.f2627c = r0
            java.lang.String r0 = "ro.vendor.domestic_server_address"
            java.lang.String r0 = h.a.L(r0)
            if (r0 == 0) goto L1d
            r2 = 1
            int r2 = java.lang.Integer.parseInt(r0)     // Catch: java.lang.Exception -> L17
            goto L18
        L17:
        L18:
            if (r2 != 0) goto L1d
            java.lang.String r0 = "http://www.led-cloud.com"
            goto L1f
        L1d:
            java.lang.String r0 = "http://www.led-cloud.cn"
        L1f:
            java.util.Map<java.lang.String, java.lang.String> r2 = r5.f2626a
            java.lang.String r3 = "RegisterServer"
            java.lang.Object r2 = r2.get(r3)
            java.lang.String r2 = (java.lang.String) r2
            if (r2 == 0) goto L2c
            r0 = r2
        L2c:
            r4.f2628d = r0
            java.util.Map<java.lang.String, java.lang.String> r0 = r5.f2626a
            java.lang.String r2 = "CloudUserName"
            java.lang.Object r0 = r0.get(r2)
            java.lang.String r0 = (java.lang.String) r0
            if (r0 == 0) goto L3b
            goto L3d
        L3b:
            java.lang.String r0 = ""
        L3d:
            r4.f2629e = r0
            java.lang.String r0 = "ErrorCode"
            int r5 = r5.b(r0, r1)
            r4.f2630f = r5
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: n.c.a(n.b$a):void");
    }

    @Override // n.b
    public void b(b.a aVar) {
        aVar.f2626a.put("Registered", Boolean.toString(this.f2627c));
        aVar.f2626a.put("RegisterServer", this.f2628d);
        aVar.f2626a.put("CloudUserName", this.f2629e);
        aVar.f2626a.put("ErrorCode", Integer.toString(this.f2630f));
    }

    public String toString() {
        StringBuilder sbA = android.support.v4.media.f.a("CloudServerConfig{mRegistered=");
        sbA.append(this.f2627c);
        sbA.append(", mRegisterServer='");
        k.a.a(sbA, this.f2628d, '\'', ", mCloudUserName='");
        k.a.a(sbA, this.f2629e, '\'', ", mErrorCode=");
        sbA.append(this.f2630f);
        sbA.append(MessageFormatter.DELIM_STOP);
        return sbA.toString();
    }
}
