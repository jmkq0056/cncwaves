package j2;

import g2.w;
import java.io.IOException;
import java.util.ResourceBundle;

/* JADX INFO: loaded from: classes2.dex */
public class o extends w {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static ResourceBundle f2023b = ResourceBundle.getBundle("javax.servlet.http.LocalStrings");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f2024a = 0;

    @Override // java.io.OutputStream
    public void write(int i4) {
        this.f2024a++;
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i4, int i5) throws IOException {
        if (i5 < 0) {
            throw new IOException(f2023b.getString("err.io.negativelength"));
        }
        this.f2024a += i5;
    }
}
