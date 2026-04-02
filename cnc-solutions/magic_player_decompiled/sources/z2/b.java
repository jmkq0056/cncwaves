package z2;

/* JADX INFO: loaded from: classes2.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final char[] f4203a = "./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz".toCharArray();

    public static final long a(byte[] bArr, int i4, int i5) {
        int i6 = 0;
        long j4 = 0;
        while (i5 > 0) {
            i5--;
            int i7 = i4 + 1;
            byte b4 = bArr[i4];
            long j5 = b4 == 47 ? 1L : 0L;
            if (b4 >= 48 && b4 <= 57) {
                j5 = (b4 + 2) - 48;
            }
            if (b4 >= 65 && b4 <= 90) {
                j5 = (b4 + 12) - 65;
            }
            if (b4 >= 97 && b4 <= 122) {
                j5 = (b4 + 38) - 97;
            }
            j4 += j5 << i6;
            i6 += 6;
            i4 = i7;
        }
        return j4;
    }
}
