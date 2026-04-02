package g2;

import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes2.dex */
public abstract class v extends InputStream {
    public int readLine(byte[] bArr, int i4, int i5) throws IOException {
        int i6 = 0;
        if (i5 <= 0) {
            return 0;
        }
        while (true) {
            int i7 = read();
            if (i7 == -1) {
                break;
            }
            int i8 = i4 + 1;
            bArr[i4] = (byte) i7;
            i6++;
            if (i7 == 10 || i6 == i5) {
                break;
            }
            i4 = i8;
        }
        if (i6 > 0) {
            return i6;
        }
        return -1;
    }
}
