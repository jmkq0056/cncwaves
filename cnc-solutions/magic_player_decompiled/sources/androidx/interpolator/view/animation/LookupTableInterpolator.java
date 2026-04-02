package androidx.interpolator.view.animation;

import android.view.animation.Interpolator;
import androidx.appcompat.graphics.drawable.a;

/* JADX INFO: loaded from: classes.dex */
abstract class LookupTableInterpolator implements Interpolator {
    private final float mStepSize;
    private final float[] mValues;

    public LookupTableInterpolator(float[] fArr) {
        this.mValues = fArr;
        this.mStepSize = 1.0f / (fArr.length - 1);
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f4) {
        if (f4 >= 1.0f) {
            return 1.0f;
        }
        if (f4 <= 0.0f) {
            return 0.0f;
        }
        float[] fArr = this.mValues;
        int iMin = Math.min((int) ((fArr.length - 1) * f4), fArr.length - 2);
        float f5 = this.mStepSize;
        float f6 = (f4 - (iMin * f5)) / f5;
        float[] fArr2 = this.mValues;
        return a.a(fArr2[iMin + 1], fArr2[iMin], f6, fArr2[iMin]);
    }
}
