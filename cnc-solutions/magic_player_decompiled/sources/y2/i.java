package y2;

/* JADX INFO: loaded from: classes2.dex */
public class i implements x2.o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public byte[] f4132a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f4133b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f4134c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public byte[] f4135d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f4136e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f4137f;

    public i(String str, byte[] bArr, int i4, int i5, byte[] bArr2, int i6, int i7) {
        this.f4132a = null;
        this.f4133b = 0;
        this.f4134c = 0;
        this.f4135d = null;
        this.f4136e = 0;
        this.f4137f = 0;
        this.f4132a = (byte[]) bArr.clone();
        this.f4133b = i4;
        this.f4134c = i5;
        this.f4135d = null;
        this.f4136e = i6;
        this.f4137f = i7;
    }

    @Override // x2.o
    public int a() {
        if (this.f4135d == null) {
            return 0;
        }
        return this.f4137f;
    }

    @Override // x2.o
    public int b() {
        return this.f4133b;
    }

    @Override // x2.o
    public byte[] c() {
        return this.f4135d;
    }

    @Override // x2.o
    public int d() {
        return this.f4136e;
    }

    @Override // x2.o
    public byte[] e() {
        return this.f4132a;
    }

    @Override // x2.o
    public int f() {
        return this.f4134c;
    }
}
