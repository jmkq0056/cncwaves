package u2;

import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class u extends h {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final transient byte[][] f3619f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final transient int[] f3620g;

    public u(e eVar, int i4) {
        super(null);
        y.b(eVar.f3578b, 0L, i4);
        s sVar = eVar.f3577a;
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        while (i6 < i4) {
            int i8 = sVar.f3612c;
            int i9 = sVar.f3611b;
            if (i8 == i9) {
                throw new AssertionError("s.limit == s.pos");
            }
            i6 += i8 - i9;
            i7++;
            sVar = sVar.f3615f;
        }
        this.f3619f = new byte[i7][];
        this.f3620g = new int[i7 * 2];
        s sVar2 = eVar.f3577a;
        int i10 = 0;
        while (i5 < i4) {
            byte[][] bArr = this.f3619f;
            bArr[i10] = sVar2.f3610a;
            int i11 = sVar2.f3612c;
            int i12 = sVar2.f3611b;
            int i13 = (i11 - i12) + i5;
            i5 = i13 > i4 ? i4 : i13;
            int[] iArr = this.f3620g;
            iArr[i10] = i5;
            iArr[bArr.length + i10] = i12;
            sVar2.f3613d = true;
            i10++;
            sVar2 = sVar2.f3615f;
        }
    }

    private Object writeReplace() {
        return r();
    }

    @Override // u2.h
    public String a() {
        return r().a();
    }

    @Override // u2.h
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof h) {
            h hVar = (h) obj;
            if (hVar.k() == k() && i(0, hVar, 0, k())) {
                return true;
            }
        }
        return false;
    }

    @Override // u2.h
    public byte f(int i4) {
        y.b(this.f3620g[this.f3619f.length - 1], i4, 1L);
        int iP = p(i4);
        int i5 = iP == 0 ? 0 : this.f3620g[iP - 1];
        int[] iArr = this.f3620g;
        byte[][] bArr = this.f3619f;
        return bArr[iP][(i4 - i5) + iArr[bArr.length + iP]];
    }

    @Override // u2.h
    public String g() {
        return r().g();
    }

    @Override // u2.h
    public int hashCode() {
        int i4 = this.f3583b;
        if (i4 != 0) {
            return i4;
        }
        int length = this.f3619f.length;
        int i5 = 0;
        int i6 = 0;
        int i7 = 1;
        while (i5 < length) {
            byte[] bArr = this.f3619f[i5];
            int[] iArr = this.f3620g;
            int i8 = iArr[length + i5];
            int i9 = iArr[i5];
            int i10 = (i9 - i6) + i8;
            while (i8 < i10) {
                i7 = (i7 * 31) + bArr[i8];
                i8++;
            }
            i5++;
            i6 = i9;
        }
        this.f3583b = i7;
        return i7;
    }

    @Override // u2.h
    public boolean i(int i4, h hVar, int i5, int i6) {
        if (i4 < 0 || i4 > k() - i6) {
            return false;
        }
        int iP = p(i4);
        while (i6 > 0) {
            int i7 = iP == 0 ? 0 : this.f3620g[iP - 1];
            int iMin = Math.min(i6, ((this.f3620g[iP] - i7) + i7) - i4);
            int[] iArr = this.f3620g;
            byte[][] bArr = this.f3619f;
            if (!hVar.j(i5, bArr[iP], (i4 - i7) + iArr[bArr.length + iP], iMin)) {
                return false;
            }
            i4 += iMin;
            i5 += iMin;
            i6 -= iMin;
            iP++;
        }
        return true;
    }

    @Override // u2.h
    public boolean j(int i4, byte[] bArr, int i5, int i6) {
        if (i4 < 0 || i4 > k() - i6 || i5 < 0 || i5 > bArr.length - i6) {
            return false;
        }
        int iP = p(i4);
        while (i6 > 0) {
            int i7 = iP == 0 ? 0 : this.f3620g[iP - 1];
            int iMin = Math.min(i6, ((this.f3620g[iP] - i7) + i7) - i4);
            int[] iArr = this.f3620g;
            byte[][] bArr2 = this.f3619f;
            if (!y.a(bArr2[iP], (i4 - i7) + iArr[bArr2.length + iP], bArr, i5, iMin)) {
                return false;
            }
            i4 += iMin;
            i5 += iMin;
            i6 -= iMin;
            iP++;
        }
        return true;
    }

    @Override // u2.h
    public int k() {
        return this.f3620g[this.f3619f.length - 1];
    }

    @Override // u2.h
    public h l(int i4, int i5) {
        return r().l(i4, i5);
    }

    @Override // u2.h
    public h m() {
        return r().m();
    }

    @Override // u2.h
    public String n() {
        return r().n();
    }

    @Override // u2.h
    public void o(e eVar) {
        int length = this.f3619f.length;
        int i4 = 0;
        int i5 = 0;
        while (i4 < length) {
            int[] iArr = this.f3620g;
            int i6 = iArr[length + i4];
            int i7 = iArr[i4];
            s sVar = new s(this.f3619f[i4], i6, (i6 + i7) - i5, true, false);
            s sVar2 = eVar.f3577a;
            if (sVar2 == null) {
                sVar.f3616g = sVar;
                sVar.f3615f = sVar;
                eVar.f3577a = sVar;
            } else {
                sVar2.f3616g.b(sVar);
            }
            i4++;
            i5 = i7;
        }
        eVar.f3578b += (long) i5;
    }

    public final int p(int i4) {
        int iBinarySearch = Arrays.binarySearch(this.f3620g, 0, this.f3619f.length, i4 + 1);
        return iBinarySearch >= 0 ? iBinarySearch : iBinarySearch ^ (-1);
    }

    public byte[] q() {
        int[] iArr = this.f3620g;
        byte[][] bArr = this.f3619f;
        byte[] bArr2 = new byte[iArr[bArr.length - 1]];
        int length = bArr.length;
        int i4 = 0;
        int i5 = 0;
        while (i4 < length) {
            int[] iArr2 = this.f3620g;
            int i6 = iArr2[length + i4];
            int i7 = iArr2[i4];
            System.arraycopy(this.f3619f[i4], i6, bArr2, i5, i7 - i5);
            i4++;
            i5 = i7;
        }
        return bArr2;
    }

    public final h r() {
        return new h(q());
    }

    @Override // u2.h
    public String toString() {
        return r().toString();
    }
}
