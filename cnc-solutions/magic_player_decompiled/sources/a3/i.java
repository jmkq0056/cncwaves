package a3;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PipedInputStream;
import java.util.Properties;
import javax.net.ssl.SSLSocketFactory;
import y2.m;

/* JADX INFO: loaded from: classes2.dex */
public class i extends m {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public c3.b f124n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public PipedInputStream f125o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public h f126p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public String f127q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public String f128r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f129s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public Properties f130t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public ByteArrayOutputStream f131u;

    public i(SSLSocketFactory sSLSocketFactory, String str, String str2, int i4, String str3, Properties properties) {
        super(sSLSocketFactory, str2, i4, str3);
        this.f124n = c3.c.a("org.eclipse.paho.client.mqttv3.internal.nls.logcat", "a3.i");
        this.f131u = new b(this);
        this.f127q = str;
        this.f128r = str2;
        this.f129s = i4;
        this.f130t = null;
        this.f125o = new PipedInputStream();
        this.f124n.i(str3);
    }

    @Override // y2.m, y2.o, y2.j
    public String a() {
        return "wss://" + this.f128r + ":" + this.f129s;
    }

    public OutputStream c() {
        return super.getOutputStream();
    }

    @Override // y2.o, y2.j
    public InputStream getInputStream() {
        return this.f125o;
    }

    @Override // y2.o, y2.j
    public OutputStream getOutputStream() {
        return this.f131u;
    }

    @Override // y2.m, y2.o, y2.j
    public void start() throws IOException, x2.m {
        super.start();
        new e(super.getInputStream(), super.getOutputStream(), this.f127q, this.f128r, this.f129s, this.f130t).a();
        h hVar = new h(super.getInputStream(), this.f125o);
        this.f126p = hVar;
        hVar.a("WssSocketReceiver");
    }

    @Override // y2.o, y2.j
    public void stop() throws IOException {
        super.getOutputStream().write(new d((byte) 8, true, "1000".getBytes()).b());
        super.getOutputStream().flush();
        h hVar = this.f126p;
        if (hVar != null) {
            hVar.stop();
        }
        super.stop();
    }
}
