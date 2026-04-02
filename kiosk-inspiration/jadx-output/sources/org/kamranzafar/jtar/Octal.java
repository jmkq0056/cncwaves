package org.kamranzafar.jtar;

/* JADX INFO: loaded from: classes5.dex */
public class Octal {
    public static long parseOctal(byte[] bArr, int i, int i2) {
        int i3 = i2 + i;
        long j = 0;
        boolean z = true;
        while (i < i3) {
            byte b = bArr[i];
            if (b == 0) {
                break;
            }
            if (b != 32 && b != 48) {
                j = (j << 3) + ((long) (b - 48));
                z = false;
            } else if (z) {
                continue;
            } else {
                if (b == 32) {
                    break;
                }
                j = (j << 3) + ((long) (b - 48));
                z = false;
            }
            i++;
        }
        return j;
    }

    public static int getOctalBytes(long j, byte[] bArr, int i, int i2) {
        int i3;
        bArr[(i2 - 1) + i] = 0;
        bArr[(i2 - 2) + i] = 32;
        int i4 = i2 - 3;
        if (j == 0) {
            bArr[i4 + i] = TarHeader.LF_NORMAL;
            i3 = i2 - 4;
        } else {
            while (i4 >= 0 && j > 0) {
                bArr[i + i4] = (byte) (((byte) (7 & j)) + TarHeader.LF_NORMAL);
                j >>= 3;
                i4--;
            }
            i3 = i4;
        }
        while (i3 >= 0) {
            bArr[i + i3] = 32;
            i3--;
        }
        return i + i2;
    }

    public static int getCheckSumOctalBytes(long j, byte[] bArr, int i, int i2) {
        getOctalBytes(j, bArr, i, i2);
        int i3 = i + i2;
        bArr[i3 - 1] = 32;
        bArr[i3 - 2] = 0;
        return i3;
    }

    public static int getLongOctalBytes(long j, byte[] bArr, int i, int i2) {
        int i3 = i2 + 1;
        byte[] bArr2 = new byte[i3];
        getOctalBytes(j, bArr2, 0, i3);
        System.arraycopy(bArr2, 0, bArr, i, i2);
        return i + i2;
    }
}
