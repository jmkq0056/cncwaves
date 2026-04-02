package u2;

import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final byte[] f3610a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f3611b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f3612c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f3613d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f3614e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public s f3615f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public s f3616g;

    public s() {
        this.f3610a = new byte[8192];
        this.f3614e = true;
        this.f3613d = false;
    }

    @Nullable
    public final s a() {
        s sVar = this.f3615f;
        s sVar2 = sVar != this ? sVar : null;
        s sVar3 = this.f3616g;
        sVar3.f3615f = sVar;
        this.f3615f.f3616g = sVar3;
        this.f3615f = null;
        this.f3616g = null;
        return sVar2;
    }

    public final s b(s sVar) {
        sVar.f3616g = this;
        sVar.f3615f = this.f3615f;
        this.f3615f.f3616g = sVar;
        this.f3615f = sVar;
        return sVar;
    }

    public final s c() {
        this.f3613d = true;
        return new s(this.f3610a, this.f3611b, this.f3612c, true, false);
    }

    public final void d(s sVar, int i4) {
        if (!sVar.f3614e) {
            throw new IllegalArgumentException();
        }
        int i5 = sVar.f3612c;
        if (i5 + i4 > 8192) {
            if (sVar.f3613d) {
                throw new IllegalArgumentException();
            }
            int i6 = sVar.f3611b;
            if ((i5 + i4) - i6 > 8192) {
                throw new IllegalArgumentException();
            }
            byte[] bArr = sVar.f3610a;
            System.arraycopy(bArr, i6, bArr, 0, i5 - i6);
            sVar.f3612c -= sVar.f3611b;
            sVar.f3611b = 0;
        }
        System.arraycopy(this.f3610a, this.f3611b, sVar.f3610a, sVar.f3612c, i4);
        sVar.f3612c += i4;
        this.f3611b += i4;
    }

    public s(byte[] bArr, int i4, int i5, boolean z3, boolean z4) {
        this.f3610a = bArr;
        this.f3611b = i4;
        this.f3612c = i5;
        this.f3613d = z3;
        this.f3614e = z4;
    }
}
