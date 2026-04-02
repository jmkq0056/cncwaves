package com.stripe.bbpos.bbdevice.ota;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
final class c0 {
    static List<b0> a(String str) {
        try {
            return b(f0.i(str));
        } catch (Exception unused) {
            return null;
        }
    }

    private static List<b0> b(byte[] bArr) {
        byte[] bArr2;
        int i;
        byte[] bArr3;
        int i2;
        ArrayList arrayList = new ArrayList();
        int i3 = 0;
        while (i3 < bArr.length) {
            try {
                byte b = bArr[i3];
                boolean z = (b & 32) == 32;
                if ((b & 31) != 31) {
                    bArr2 = new byte[]{b};
                    i = i3 + 1;
                    if (b == 0) {
                        break;
                    }
                } else {
                    int i4 = i3 + 1;
                    while ((bArr[i4] & (-128)) == -128) {
                        i4++;
                    }
                    int i5 = (i4 - i3) + 1;
                    bArr2 = new byte[i5];
                    System.arraycopy(bArr, i3, bArr2, 0, i5);
                    i = i3 + i5;
                }
                byte b2 = bArr[i];
                if ((b2 & (-128)) == -128) {
                    int i6 = (b2 & 127) + 1;
                    bArr3 = new byte[i6];
                    System.arraycopy(bArr, i, bArr3, 0, i6);
                    i2 = i + i6;
                } else {
                    bArr3 = new byte[]{b2};
                    i2 = i + 1;
                }
                int iA = a(bArr3);
                if (iA > 16777215) {
                    break;
                }
                byte[] bArr4 = new byte[iA];
                System.arraycopy(bArr, i2, bArr4, 0, iA);
                i3 = i2 + iA;
                b0 b0Var = new b0();
                b0Var.a = f0.a(bArr2);
                b0Var.b = f0.a(bArr3);
                b0Var.c = f0.a(bArr4);
                b0Var.d = z;
                if (z) {
                    b0Var.e = b(bArr4);
                }
                arrayList.add(b0Var);
            } catch (Exception unused) {
            }
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    private static int a(byte[] bArr) {
        int i = 0;
        byte b = bArr[0];
        if ((b & (-128)) != -128) {
            return b & 255;
        }
        int i2 = b & 127;
        for (int i3 = 1; i3 < i2 + 1; i3++) {
            i = (i << 8) | (bArr[i3] & 255);
        }
        return i;
    }

    static b0 a(List<b0> list, String str) {
        b0 b0Var = new b0();
        b0Var.a = str;
        int iBinarySearch = Collections.binarySearch(list, b0Var);
        if (iBinarySearch >= 0) {
            return list.get(iBinarySearch);
        }
        return new b0();
    }
}
