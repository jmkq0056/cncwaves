package b3;

import java.io.InputStream;

/* JADX INFO: loaded from: classes2.dex */
public class v extends InputStream {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public byte[] f298a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f299b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f300c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public byte[] f301d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f302e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f303f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f304g = 0;

    public v(byte[] bArr, int i4, int i5, byte[] bArr2, int i6, int i7) {
        this.f298a = (byte[]) bArr.clone();
        this.f301d = (byte[]) bArr2.clone();
        this.f299b = i4;
        this.f302e = i6;
        this.f300c = i5;
        this.f303f = i7;
    }

    @Override // java.io.InputStream
    public int read() {
        int i4;
        int i5 = this.f304g;
        int i6 = this.f300c;
        if (i5 < i6) {
            i4 = this.f298a[this.f299b + i5];
        } else {
            if (i5 >= this.f303f + i6) {
                return -1;
            }
            i4 = this.f301d[(this.f302e + i5) - i6];
        }
        if (i4 < 0) {
            i4 += 256;
        }
        this.f304g = i5 + 1;
        return i4;
    }
}
