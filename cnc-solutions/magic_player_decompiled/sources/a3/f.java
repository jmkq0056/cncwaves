package a3;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PipedInputStream;
import java.util.Properties;
import javax.net.SocketFactory;
import x2.m;
import y2.o;

/* JADX INFO: loaded from: classes2.dex */
public class f extends o {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public c3.b f108g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public String f109h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public String f110i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f111j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Properties f112k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public PipedInputStream f113l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public h f114m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public ByteArrayOutputStream f115n;

    public f(SocketFactory socketFactory, String str, String str2, int i4, String str3, Properties properties) {
        super(socketFactory, str2, i4, str3);
        this.f108g = c3.c.a("org.eclipse.paho.client.mqttv3.internal.nls.logcat", "a3.f");
        this.f115n = new b(this);
        this.f109h = str;
        this.f110i = str2;
        this.f111j = i4;
        this.f112k = null;
        this.f113l = new PipedInputStream();
        this.f108g.i(str3);
    }

    @Override // y2.o, y2.j
    public String a() {
        return "ws://" + this.f110i + ":" + this.f111j;
    }

    public OutputStream b() {
        return super.getOutputStream();
    }

    @Override // y2.o, y2.j
    public InputStream getInputStream() {
        return this.f113l;
    }

    @Override // y2.o, y2.j
    public OutputStream getOutputStream() {
        return this.f115n;
    }

    @Override // y2.o, y2.j
    public void start() throws IOException, m {
        super.start();
        new e(super.getInputStream(), super.getOutputStream(), this.f109h, this.f110i, this.f111j, this.f112k).a();
        h hVar = new h(super.getInputStream(), this.f113l);
        this.f114m = hVar;
        hVar.a("webSocketReceiver");
    }

    @Override // y2.o, y2.j
    public void stop() throws IOException {
        super.getOutputStream().write(new d((byte) 8, true, "1000".getBytes()).b());
        super.getOutputStream().flush();
        h hVar = this.f114m;
        if (hVar != null) {
            hVar.stop();
        }
        super.stop();
    }
}
