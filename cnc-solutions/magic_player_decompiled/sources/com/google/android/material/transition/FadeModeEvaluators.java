package com.google.android.material.transition;

import android.support.v4.media.d;
import androidx.appcompat.graphics.drawable.a;

/* JADX INFO: loaded from: classes2.dex */
class FadeModeEvaluators {
    private static final FadeModeEvaluator IN = new FadeModeEvaluator() { // from class: com.google.android.material.transition.FadeModeEvaluators.1
        @Override // com.google.android.material.transition.FadeModeEvaluator
        public FadeModeResult evaluate(float f4, float f5, float f6) {
            return FadeModeResult.endOnTop(255, TransitionUtils.lerp(0, 255, f5, f6, f4));
        }
    };
    private static final FadeModeEvaluator OUT = new FadeModeEvaluator() { // from class: com.google.android.material.transition.FadeModeEvaluators.2
        @Override // com.google.android.material.transition.FadeModeEvaluator
        public FadeModeResult evaluate(float f4, float f5, float f6) {
            return FadeModeResult.startOnTop(TransitionUtils.lerp(255, 0, f5, f6, f4), 255);
        }
    };
    private static final FadeModeEvaluator CROSS = new FadeModeEvaluator() { // from class: com.google.android.material.transition.FadeModeEvaluators.3
        @Override // com.google.android.material.transition.FadeModeEvaluator
        public FadeModeResult evaluate(float f4, float f5, float f6) {
            return FadeModeResult.startOnTop(TransitionUtils.lerp(255, 0, f5, f6, f4), TransitionUtils.lerp(0, 255, f5, f6, f4));
        }
    };
    private static final FadeModeEvaluator THROUGH = new FadeModeEvaluator() { // from class: com.google.android.material.transition.FadeModeEvaluators.4
        @Override // com.google.android.material.transition.FadeModeEvaluator
        public FadeModeResult evaluate(float f4, float f5, float f6) {
            float fA = a.a(f6, f5, 0.35f, f5);
            return FadeModeResult.startOnTop(TransitionUtils.lerp(255, 0, f5, fA, f4), TransitionUtils.lerp(0, 255, fA, f6, f4));
        }
    };

    private FadeModeEvaluators() {
    }

    public static FadeModeEvaluator get(int i4, boolean z3) {
        if (i4 == 0) {
            return z3 ? IN : OUT;
        }
        if (i4 == 1) {
            return z3 ? OUT : IN;
        }
        if (i4 == 2) {
            return CROSS;
        }
        if (i4 == 3) {
            return THROUGH;
        }
        throw new IllegalArgumentException(d.a("Invalid fade mode: ", i4));
    }
}
