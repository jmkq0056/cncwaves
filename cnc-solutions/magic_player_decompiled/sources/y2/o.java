package y2;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.ConnectException;
import java.net.InetSocketAddress;
import java.net.Socket;
import javax.net.SocketFactory;

/* JADX INFO: loaded from: classes2.dex */
public class o implements j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public c3.b f4149a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Socket f4150b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public SocketFactory f4151c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f4152d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f4153e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f4154f;

    public o(SocketFactory socketFactory, String str, int i4, String str2) {
        c3.b bVarA = c3.c.a("org.eclipse.paho.client.mqttv3.internal.nls.logcat", "y2.o");
        this.f4149a = bVarA;
        bVarA.i(str2);
        this.f4151c = socketFactory;
        this.f4152d = str;
        this.f4153e = i4;
    }

    @Override // y2.j
    public String a() {
        return "tcp://" + this.f4152d + ":" + this.f4153e;
    }

    @Override // y2.j
    public InputStream getInputStream() {
        return this.f4150b.getInputStream();
    }

    @Override // y2.j
    public OutputStream getOutputStream() {
        return this.f4150b.getOutputStream();
    }

    @Override // y2.j
    public void start() throws IOException, x2.m {
        try {
            this.f4149a.d("y2.o", "start", "252", new Object[]{this.f4152d, Integer.valueOf(this.f4153e), Long.valueOf(this.f4154f * 1000)});
            InetSocketAddress inetSocketAddress = new InetSocketAddress(this.f4152d, this.f4153e);
            Socket socketCreateSocket = this.f4151c.createSocket();
            this.f4150b = socketCreateSocket;
            socketCreateSocket.connect(inetSocketAddress, this.f4154f * 1000);
            this.f4150b.setSoTimeout(1000);
        } catch (ConnectException e4) {
            this.f4149a.b("y2.o", "start", "250", null, e4);
            throw new x2.m(32103, e4);
        }
    }

    @Override // y2.j
    public void stop() throws IOException {
        Socket socket = this.f4150b;
        if (socket != null) {
            socket.close();
        }
    }
}
