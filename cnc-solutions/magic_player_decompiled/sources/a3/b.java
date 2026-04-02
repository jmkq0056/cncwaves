package a3;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes2.dex */
public class b extends ByteArrayOutputStream {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final f f96a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final i f97b;

    public b(f fVar) {
        this.f96a = fVar;
        this.f97b = null;
    }

    public OutputStream B() {
        f fVar = this.f96a;
        if (fVar != null) {
            return fVar.b();
        }
        i iVar = this.f97b;
        if (iVar != null) {
            return iVar.c();
        }
        return null;
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        ByteBuffer byteBufferWrap;
        synchronized (this) {
            byteBufferWrap = ByteBuffer.wrap(toByteArray());
            reset();
        }
        B().write(new d((byte) 2, true, byteBufferWrap.array()).b());
        B().flush();
    }

    public b(i iVar) {
        this.f96a = null;
        this.f97b = iVar;
    }
}
