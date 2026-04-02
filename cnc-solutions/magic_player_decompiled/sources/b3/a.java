package b3;

import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes2.dex */
public class a extends InputStream {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public InputStream f260a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f261b = 0;

    public a(InputStream inputStream) {
        this.f260a = inputStream;
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        int i4 = this.f260a.read();
        if (i4 != -1) {
            this.f261b++;
        }
        return i4;
    }
}
