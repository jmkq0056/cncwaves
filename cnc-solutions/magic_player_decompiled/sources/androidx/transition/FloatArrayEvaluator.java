package androidx.transition;

import android.animation.TypeEvaluator;
import androidx.appcompat.graphics.drawable.a;

/* JADX INFO: loaded from: classes.dex */
class FloatArrayEvaluator implements TypeEvaluator<float[]> {
    private float[] mArray;

    public FloatArrayEvaluator(float[] fArr) {
        this.mArray = fArr;
    }

    @Override // android.animation.TypeEvaluator
    public float[] evaluate(float f4, float[] fArr, float[] fArr2) {
        float[] fArr3 = this.mArray;
        if (fArr3 == null) {
            fArr3 = new float[fArr.length];
        }
        for (int i4 = 0; i4 < fArr3.length; i4++) {
            float f5 = fArr[i4];
            fArr3[i4] = a.a(fArr2[i4], f5, f4, f5);
        }
        return fArr3;
    }
}
