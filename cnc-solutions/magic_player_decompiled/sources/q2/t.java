package q2;

/* JADX INFO: loaded from: classes2.dex */
public final class t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f3313a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int[] f3314b = new int[10];

    public int a() {
        if ((this.f3313a & 128) != 0) {
            return this.f3314b[7];
        }
        return 65535;
    }

    public t b(int i4, int i5) {
        if (i4 >= 0) {
            int[] iArr = this.f3314b;
            if (i4 < iArr.length) {
                this.f3313a = (1 << i4) | this.f3313a;
                iArr[i4] = i5;
            }
        }
        return this;
    }
}
