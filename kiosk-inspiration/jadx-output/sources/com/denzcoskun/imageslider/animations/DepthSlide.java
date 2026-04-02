package com.denzcoskun.imageslider.animations;

import android.view.View;
import androidx.viewpager.widget.ViewPager;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DepthSlide.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u0004H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lcom/denzcoskun/imageslider/animations/DepthSlide;", "Landroidx/viewpager/widget/ViewPager$PageTransformer;", "()V", "MIN_SCALE", "", "transformPage", "", "view", "Landroid/view/View;", "position", "imageslider_release"}, k = 1, mv = {1, 1, 16})
public final class DepthSlide implements ViewPager.PageTransformer {
    private final float MIN_SCALE = 0.75f;

    @Override // androidx.viewpager.widget.ViewPager.PageTransformer
    public void transformPage(View view, float position) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        int width = view.getWidth();
        if (position < -1) {
            view.setAlpha(0.0f);
            return;
        }
        if (position <= 0) {
            view.setAlpha(1.0f);
            view.setTranslationX(0.0f);
            view.setScaleX(1.0f);
            view.setScaleY(1.0f);
            return;
        }
        float f = 1;
        if (position <= f) {
            view.setAlpha(f - position);
            view.setTranslationX(width * (-position));
            float f2 = this.MIN_SCALE;
            float fAbs = f2 + ((f - f2) * (f - Math.abs(position)));
            view.setScaleX(fAbs);
            view.setScaleY(fAbs);
            return;
        }
        view.setAlpha(0.0f);
    }
}
