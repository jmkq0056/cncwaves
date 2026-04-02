package com.google.zxing.oned.rss;

/* JADX INFO: loaded from: classes2.dex */
public final class RSSUtils {
    private RSSUtils() {
    }

    private static int combins(int i4, int i5) {
        int i6 = i4 - i5;
        if (i6 > i5) {
            i6 = i5;
            i5 = i6;
        }
        int i7 = 1;
        int i8 = 1;
        while (i4 > i5) {
            i7 *= i4;
            if (i8 <= i6) {
                i7 /= i8;
                i8++;
            }
            i4--;
        }
        while (i8 <= i6) {
            i7 /= i8;
            i8++;
        }
        return i7;
    }

    public static int getRSSvalue(int[] iArr, int i4, boolean z3) {
        int[] iArr2 = iArr;
        int i5 = 0;
        for (int i6 : iArr2) {
            i5 += i6;
        }
        int length = iArr2.length;
        int i7 = 0;
        int i8 = 0;
        int i9 = 0;
        while (true) {
            int i10 = length - 1;
            if (i7 >= i10) {
                return i8;
            }
            int i11 = 1 << i7;
            i9 |= i11;
            int i12 = 1;
            while (i12 < iArr2[i7]) {
                int i13 = i5 - i12;
                int i14 = length - i7;
                int i15 = i14 - 2;
                int iCombins = combins(i13 - 1, i15);
                if (z3 && i9 == 0) {
                    int i16 = i14 - 1;
                    if (i13 - i16 >= i16) {
                        iCombins -= combins(i13 - i14, i15);
                    }
                }
                if (i14 - 1 > 1) {
                    int iCombins2 = 0;
                    for (int i17 = i13 - i15; i17 > i4; i17--) {
                        iCombins2 += combins((i13 - i17) - 1, i14 - 3);
                    }
                    iCombins -= (i10 - i7) * iCombins2;
                } else if (i13 > i4) {
                    iCombins--;
                }
                i8 += iCombins;
                i12++;
                i9 &= i11 ^ (-1);
                iArr2 = iArr;
            }
            i5 -= i12;
            i7++;
            iArr2 = iArr;
        }
    }
}
