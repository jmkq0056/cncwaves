package b3;

import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes2.dex */
public class g extends OutputStream {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final String f280d = g.class.getName();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public c3.b f281a = c3.c.a("org.eclipse.paho.client.mqttv3.internal.nls.logcat", f280d);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public y2.b f282b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public BufferedOutputStream f283c;

    public g(y2.b bVar, OutputStream outputStream) {
        this.f282b = null;
        this.f282b = bVar;
        this.f283c = new BufferedOutputStream(outputStream);
    }

    public void B(u uVar) throws IOException, x2.m {
        byte[] bArrL = uVar.l();
        byte[] bArrO = uVar.o();
        this.f283c.write(bArrL, 0, bArrL.length);
        this.f282b.w(bArrL.length);
        int i4 = 0;
        while (i4 < bArrO.length) {
            int iMin = Math.min(1024, bArrO.length - i4);
            this.f283c.write(bArrO, i4, iMin);
            i4 += 1024;
            this.f282b.w(iMin);
        }
        this.f281a.d(f280d, "write", "529", new Object[]{uVar});
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f283c.close();
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        this.f283c.flush();
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) {
        this.f283c.write(bArr);
        this.f282b.w(bArr.length);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i4, int i5) throws IOException {
        this.f283c.write(bArr, i4, i5);
        this.f282b.w(i5);
    }

    @Override // java.io.OutputStream
    public void write(int i4) throws IOException {
        this.f283c.write(i4);
    }
}
