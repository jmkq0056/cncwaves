package x2;

import b3.u;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public class i implements AutoCloseable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public f f3972a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f3973b = -1;

    public i(String str, String str2, j jVar) {
        this.f3972a = null;
        this.f3972a = new f(str, str2, jVar);
    }

    public boolean B() {
        return this.f3972a.f3964d.g();
    }

    public void C(String str, byte[] bArr, int i4, boolean z3) throws m {
        n nVar = new n(bArr);
        nVar.b(i4);
        nVar.a();
        nVar.f3984c = z3;
        f fVar = this.f3972a;
        c3.b bVar = fVar.f3961a;
        String str2 = f.f3958k;
        bVar.d(str2, "publish", "111", new Object[]{str, null, null});
        q0.a.z(str, false);
        l lVar = new l(fVar.f3962b);
        y2.q qVar = lVar.f3986a;
        qVar.f4166l = null;
        qVar.f4167m = null;
        qVar.f4163i = (String[]) new String[]{str}.clone();
        fVar.f3964d.k(new b3.o(str, nVar), lVar);
        fVar.f3961a.h(str2, "publish", "112");
        lVar.f3986a.d(this.f3973b);
    }

    public void D(String str, int i4) throws Exception {
        String[] strArr = {str};
        int[] iArr = new int[1];
        iArr[0] = i4;
        f fVar = this.f3972a;
        Objects.requireNonNull(fVar);
        for (int i5 = 0; i5 < 1; i5++) {
            q0.a.z(strArr[i5], true);
            fVar.f3964d.f4020h.f4071d.remove(strArr[i5]);
        }
        try {
            s sVar = (s) fVar.E(strArr, iArr, null, null);
            sVar.f3986a.d(this.f3973b);
            int[] iArr2 = new int[0];
            u uVar = sVar.f3986a.f4161g;
            if (uVar instanceof b3.q) {
                iArr2 = ((b3.q) uVar).f287g;
            }
            int[] iArr3 = iArr2;
            for (int i6 = 0; i6 < iArr3.length; i6++) {
                iArr[i6] = iArr3[i6];
            }
            if (iArr3.length == 1 && iArr[0] == 128) {
                throw new m(128);
            }
        } catch (Exception e4) {
            for (int i7 = 0; i7 < 1; i7++) {
                fVar.f3964d.f4020h.f4071d.remove(strArr[i7]);
            }
            throw e4;
        }
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        this.f3972a.B(false);
    }
}
