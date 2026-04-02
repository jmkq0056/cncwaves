package com.google.android.material.transition;

import android.graphics.RectF;
import android.support.v4.media.d;

/* JADX INFO: loaded from: classes2.dex */
class FitModeEvaluators {
    private static final FitModeEvaluator WIDTH = new FitModeEvaluator() { // from class: com.google.android.material.transition.FitModeEvaluators.1
        @Override // com.google.android.material.transition.FitModeEvaluator
        public void applyMask(RectF rectF, float f4, FitModeResult fitModeResult) {
            rectF.bottom -= Math.abs(fitModeResult.currentEndHeight - fitModeResult.currentStartHeight) * f4;
        }

        @Override // com.google.android.material.transition.FitModeEvaluator
        public FitModeResult evaluate(float f4, float f5, float f6, float f7, float f8, float f9, float f10) {
            float fLerp = TransitionUtils.lerp(f7, f9, f5, f6, f4, true);
            float f11 = fLerp / f7;
            float f12 = fLerp / f9;
            return new FitModeResult(f11, f12, fLerp, f8 * f11, fLerp, f10 * f12);
        }

        @Override // com.google.android.material.transition.FitModeEvaluator
        public boolean shouldMaskStartBounds(FitModeResult fitModeResult) {
            return fitModeResult.currentStartHeight > fitModeResult.currentEndHeight;
        }
    };
    private static final FitModeEvaluator HEIGHT = new FitModeEvaluator() { // from class: com.google.android.material.transition.FitModeEvaluators.2
        @Override // com.google.android.material.transition.FitModeEvaluator
        public void applyMask(RectF rectF, float f4, FitModeResult fitModeResult) {
            float fAbs = (Math.abs(fitModeResult.currentEndWidth - fitModeResult.currentStartWidth) / 2.0f) * f4;
            rectF.left += fAbs;
            rectF.right -= fAbs;
        }

        @Override // com.google.android.material.transition.FitModeEvaluator
        public FitModeResult evaluate(float f4, float f5, float f6, float f7, float f8, float f9, float f10) {
            float fLerp = TransitionUtils.lerp(f8, f10, f5, f6, f4, true);
            float f11 = fLerp / f8;
            float f12 = fLerp / f10;
            return new FitModeResult(f11, f12, f7 * f11, fLerp, f9 * f12, fLerp);
        }

        @Override // com.google.android.material.transition.FitModeEvaluator
        public boolean shouldMaskStartBounds(FitModeResult fitModeResult) {
            return fitModeResult.currentStartWidth > fitModeResult.currentEndWidth;
        }
    };

    private FitModeEvaluators() {
    }

    public static FitModeEvaluator get(int i4, boolean z3, RectF rectF, RectF rectF2) {
        if (i4 == 0) {
            return shouldAutoFitToWidth(z3, rectF, rectF2) ? WIDTH : HEIGHT;
        }
        if (i4 == 1) {
            return WIDTH;
        }
        if (i4 == 2) {
            return HEIGHT;
        }
        throw new IllegalArgumentException(d.a("Invalid fit mode: ", i4));
    }

    private static boolean shouldAutoFitToWidth(boolean z3, RectF rectF, RectF rectF2) {
        float fWidth = rectF.width();
        float fHeight = rectF.height();
        float fWidth2 = rectF2.width();
        float fHeight2 = rectF2.height();
        float f4 = (fHeight2 * fWidth) / fWidth2;
        float f5 = (fWidth2 * fHeight) / fWidth;
        if (z3) {
            if (f4 >= fHeight) {
                return true;
            }
        } else if (f5 >= fHeight2) {
            return true;
        }
        return false;
    }
}
