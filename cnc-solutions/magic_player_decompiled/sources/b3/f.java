package b3;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.net.SocketTimeoutException;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes2.dex */
public class f extends InputStream {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f272a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final c3.b f273b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public y2.b f274c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public DataInputStream f275d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public ByteArrayOutputStream f276e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f277f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f278g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public byte[] f279h;

    public f(y2.b bVar, InputStream inputStream) {
        String name = f.class.getName();
        this.f272a = name;
        this.f273b = c3.c.a("org.eclipse.paho.client.mqttv3.internal.nls.logcat", name);
        this.f274c = null;
        this.f274c = bVar;
        this.f275d = new DataInputStream(inputStream);
        this.f276e = new ByteArrayOutputStream();
        this.f277f = -1;
    }

    public final void B() throws IOException {
        int size = this.f276e.size();
        int i4 = this.f278g;
        int i5 = size + i4;
        int i6 = this.f277f - i4;
        if (i6 < 0) {
            throw new IndexOutOfBoundsException();
        }
        int i7 = 0;
        while (i7 < i6) {
            try {
                int i8 = this.f275d.read(this.f279h, i5 + i7, i6 - i7);
                if (i8 < 0) {
                    throw new EOFException();
                }
                this.f274c.s(i8);
                i7 += i8;
            } catch (SocketTimeoutException e4) {
                this.f278g += i7;
                throw e4;
            }
        }
    }

    public u C() throws IOException, x2.m {
        try {
            if (this.f277f < 0) {
                this.f276e.reset();
                byte b4 = this.f275d.readByte();
                this.f274c.s(1);
                byte b5 = (byte) ((b4 >>> 4) & 15);
                if (b5 < 1 || b5 > 14) {
                    throw q0.a.e(32108);
                }
                this.f277f = u.r(this.f275d).f305a;
                this.f276e.write(b4);
                this.f276e.write(u.i(this.f277f));
                this.f279h = new byte[this.f276e.size() + this.f277f];
                this.f278g = 0;
            }
            if (this.f277f >= 0) {
                B();
                this.f277f = -1;
                byte[] byteArray = this.f276e.toByteArray();
                System.arraycopy(byteArray, 0, this.f279h, 0, byteArray.length);
                byte[] bArr = this.f279h;
                Charset charset = u.f292e;
                u uVarG = u.g(new ByteArrayInputStream(bArr));
                try {
                    this.f273b.d(this.f272a, "readMqttWireMessage", "301", new Object[]{uVarG});
                    return uVarG;
                } catch (SocketTimeoutException unused) {
                    return uVarG;
                }
            }
        } catch (SocketTimeoutException unused2) {
        }
        return null;
    }

    @Override // java.io.InputStream
    public int available() {
        return this.f275d.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f275d.close();
    }

    @Override // java.io.InputStream
    public int read() {
        return this.f275d.read();
    }
}
