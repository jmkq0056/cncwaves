package com.google.android.material.transition.platform;

import androidx.annotation.RequiresApi;

/* JADX INFO: loaded from: classes2.dex */
@RequiresApi(21)
class FadeModeResult {
    public final int endAlpha;
    public final boolean endOnTop;
    public final int startAlpha;

    private FadeModeResult(int i4, int i5, boolean z3) {
        this.startAlpha = i4;
        this.endAlpha = i5;
        this.endOnTop = z3;
    }

    public static FadeModeResult endOnTop(int i4, int i5) {
        return new FadeModeResult(i4, i5, true);
    }

    public static FadeModeResult startOnTop(int i4, int i5) {
        return new FadeModeResult(i4, i5, false);
    }
}
