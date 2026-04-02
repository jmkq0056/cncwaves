package q1;

import android.opengl.Matrix;
import o1.d;

/* JADX INFO: loaded from: classes.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f3155a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f3156b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public d<float[]> f3157c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f3158d;

    public b() {
        this.f3155a = new float[16];
        this.f3156b = new float[16];
        this.f3157c = new d<>();
    }

    public static void b(float[] fArr, float[] fArr2) {
        Matrix.setIdentityM(fArr, 0);
        float fSqrt = (float) Math.sqrt((fArr2[8] * fArr2[8]) + (fArr2[10] * fArr2[10]));
        fArr[0] = fArr2[10] / fSqrt;
        fArr[2] = fArr2[8] / fSqrt;
        fArr[8] = (-fArr2[8]) / fSqrt;
        fArr[10] = fArr2[10] / fSqrt;
    }

    public boolean a(b bVar) {
        return (((v2.d) bVar.f3155a).f3720e & ((v2.d) this.f3155a).f3719d) != 0;
    }

    public int c() {
        return ((v2.d) this.f3155a).f3721f;
    }

    public String d() {
        return ((v2.d) this.f3155a).f3716a;
    }

    public b(v2.d dVar, boolean z3) {
        this.f3155a = dVar;
        if (z3) {
            this.f3156b = new v2.b(dVar.f3722g);
        } else {
            this.f3156b = new v2.b();
        }
        this.f3157c = null;
        this.f3158d = false;
    }
}
