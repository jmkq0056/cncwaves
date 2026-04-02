package okhttp3.internal.publicsuffix;

import java.io.InputStream;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicBoolean;
import l2.c;
import u2.l;
import u2.o;
import u2.r;
import u2.x;

/* JADX INFO: loaded from: classes2.dex */
public final class PublicSuffixDatabase {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final byte[] f2879e = {42};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final String[] f2880f = new String[0];

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final String[] f2881g = {"*"};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final PublicSuffixDatabase f2882h = new PublicSuffixDatabase();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AtomicBoolean f2883a = new AtomicBoolean(false);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CountDownLatch f2884b = new CountDownLatch(1);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public byte[] f2885c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public byte[] f2886d;

    public static String a(byte[] bArr, byte[][] bArr2, int i4) {
        int i5;
        boolean z3;
        int i6;
        int i7;
        int length = bArr.length;
        int i8 = 0;
        while (i8 < length) {
            int i9 = (i8 + length) / 2;
            while (i9 > -1 && bArr[i9] != 10) {
                i9--;
            }
            int i10 = i9 + 1;
            int i11 = 1;
            while (true) {
                i5 = i10 + i11;
                if (bArr[i5] == 10) {
                    break;
                }
                i11++;
            }
            int i12 = i5 - i10;
            int i13 = i4;
            boolean z4 = false;
            int i14 = 0;
            int i15 = 0;
            while (true) {
                if (z4) {
                    i6 = 46;
                    z3 = false;
                } else {
                    z3 = z4;
                    i6 = bArr2[i13][i14] & 255;
                }
                i7 = i6 - (bArr[i10 + i15] & 255);
                if (i7 == 0) {
                    i15++;
                    i14++;
                    if (i15 == i12) {
                        break;
                    }
                    if (bArr2[i13].length != i14) {
                        z4 = z3;
                    } else {
                        if (i13 == bArr2.length - 1) {
                            break;
                        }
                        i13++;
                        z4 = true;
                        i14 = -1;
                    }
                } else {
                    break;
                }
            }
            if (i7 >= 0) {
                if (i7 <= 0) {
                    int i16 = i12 - i15;
                    int length2 = bArr2[i13].length - i14;
                    while (true) {
                        i13++;
                        if (i13 >= bArr2.length) {
                            break;
                        }
                        length2 += bArr2[i13].length;
                    }
                    if (length2 >= i16) {
                        if (length2 <= i16) {
                            return new String(bArr, i10, i12, c.f2445i);
                        }
                    }
                }
                i8 = i5 + 1;
            }
            length = i10 - 1;
        }
        return null;
    }

    public final void b() {
        InputStream resourceAsStream = PublicSuffixDatabase.class.getResourceAsStream("publicsuffixes.gz");
        if (resourceAsStream == null) {
            return;
        }
        r rVar = new r(new l(o.c(resourceAsStream, new x())));
        try {
            byte[] bArr = new byte[rVar.readInt()];
            rVar.C(bArr);
            byte[] bArr2 = new byte[rVar.readInt()];
            rVar.C(bArr2);
            synchronized (this) {
                this.f2885c = bArr;
                this.f2886d = bArr2;
            }
            this.f2884b.countDown();
        } finally {
            c.f(rVar);
        }
    }
}
