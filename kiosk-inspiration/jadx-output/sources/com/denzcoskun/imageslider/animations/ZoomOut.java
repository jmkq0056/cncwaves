package com.denzcoskun.imageslider.animations;

import android.view.View;
import androidx.viewpager.widget.ViewPager;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ZoomOut.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0004H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/denzcoskun/imageslider/animations/ZoomOut;", "Landroidx/viewpager/widget/ViewPager$PageTransformer;", "()V", "MIN_ALPHA", "", "MIN_SCALE", "transformPage", "", "view", "Landroid/view/View;", "position", "imageslider_release"}, k = 1, mv = {1, 1, 16})
public final class ZoomOut implements ViewPager.PageTransformer {
    private final float MIN_SCALE = 0.85f;
    private final float MIN_ALPHA = 0.5f;

    @Override // androidx.viewpager.widget.ViewPager.PageTransformer
    public void transformPage(View view, float position) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        int width = view.getWidth();
        int height = view.getHeight();
        if (position < -1) {
            view.setAlpha(0.0f);
            return;
        }
        float f = 1;
        if (position <= f) {
            float fMax = Math.max(this.MIN_SCALE, f - Math.abs(position));
            float f2 = f - fMax;
            float f3 = 2;
            float f4 = (height * f2) / f3;
            float f5 = (width * f2) / f3;
            if (position < 0) {
                view.setTranslationX(f5 - (f4 / f3));
            } else {
                view.setTranslationX((-f5) + (f4 / f3));
            }
            view.setScaleX(fMax);
            view.setScaleY(fMax);
            float f6 = this.MIN_ALPHA;
            float f7 = this.MIN_SCALE;
            view.setAlpha(f6 + (((fMax - f7) / (f - f7)) * (f - f6)));
            return;
        }
        view.setAlpha(0.0f);
    }
}
