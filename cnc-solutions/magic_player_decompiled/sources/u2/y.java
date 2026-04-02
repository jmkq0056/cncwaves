package u2;

import java.nio.charset.Charset;
import org.eclipse.jetty.util.StringUtil;

/* JADX INFO: loaded from: classes2.dex */
public final class y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Charset f3625a = Charset.forName(StringUtil.__UTF8);

    public static boolean a(byte[] bArr, int i4, byte[] bArr2, int i5, int i6) {
        for (int i7 = 0; i7 < i6; i7++) {
            if (bArr[i7 + i4] != bArr2[i7 + i5]) {
                return false;
            }
        }
        return true;
    }

    public static void b(long j4, long j5, long j6) {
        if ((j5 | j6) < 0 || j5 > j4 || j4 - j5 < j6) {
            throw new ArrayIndexOutOfBoundsException(String.format("size=%s offset=%s byteCount=%s", Long.valueOf(j4), Long.valueOf(j5), Long.valueOf(j6)));
        }
    }
}
