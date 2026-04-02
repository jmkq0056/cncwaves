package a3;

import java.io.IOException;
import java.io.InputStream;
import java.io.PipedInputStream;
import java.io.PipedOutputStream;
import java.net.SocketTimeoutException;

/* JADX INFO: loaded from: classes2.dex */
public class h implements Runnable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final String f116h = h.class.getName();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public InputStream f121e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public PipedOutputStream f123g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public c3.b f117a = c3.c.a("org.eclipse.paho.client.mqttv3.internal.nls.logcat", f116h);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f118b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f119c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Object f120d = new Object();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Thread f122f = null;

    public h(InputStream inputStream, PipedInputStream pipedInputStream) throws IOException {
        this.f121e = inputStream;
        PipedOutputStream pipedOutputStream = new PipedOutputStream();
        this.f123g = pipedOutputStream;
        pipedInputStream.connect(pipedOutputStream);
    }

    public void a(String str) {
        this.f117a.h(f116h, "start", "855");
        synchronized (this.f120d) {
            if (!this.f118b) {
                this.f118b = true;
                Thread thread = new Thread(this, str);
                this.f122f = thread;
                thread.start();
            }
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        while (this.f118b && this.f121e != null) {
            try {
                this.f117a.h(f116h, "run", "852");
                this.f121e.available();
                d dVar = new d(this.f121e);
                if (!dVar.f101d) {
                    int i4 = 0;
                    while (true) {
                        byte[] bArr = dVar.f100c;
                        if (i4 >= bArr.length) {
                            break;
                        }
                        this.f123g.write(bArr[i4]);
                        i4++;
                    }
                    this.f123g.flush();
                } else if (!this.f119c) {
                    throw new IOException("Server sent a WebSocket Frame with the Stop OpCode");
                }
            } catch (SocketTimeoutException unused) {
            } catch (IOException unused2) {
                stop();
            }
        }
    }

    public void stop() {
        Thread thread;
        boolean z3 = true;
        this.f119c = true;
        synchronized (this.f120d) {
            this.f117a.h(f116h, "stop", "850");
            if (this.f118b) {
                this.f118b = false;
                try {
                    this.f123g.close();
                } catch (IOException unused) {
                }
            } else {
                z3 = false;
            }
        }
        if (z3 && !Thread.currentThread().equals(this.f122f) && (thread = this.f122f) != null) {
            try {
                thread.join();
            } catch (InterruptedException unused2) {
            }
        }
        this.f122f = null;
        this.f117a.h(f116h, "stop", "851");
    }
}
