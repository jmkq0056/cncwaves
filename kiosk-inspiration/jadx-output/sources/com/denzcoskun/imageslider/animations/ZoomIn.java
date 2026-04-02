package com.denzcoskun.imageslider.animations;

import android.view.View;
import androidx.viewpager.widget.ViewPager;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ZoomIn.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016¨\u0006\t"}, d2 = {"Lcom/denzcoskun/imageslider/animations/ZoomIn;", "Landroidx/viewpager/widget/ViewPager$PageTransformer;", "()V", "transformPage", "", "view", "Landroid/view/View;", "positon", "", "imageslider_release"}, k = 1, mv = {1, 1, 16})
public final class ZoomIn implements ViewPager.PageTransformer {
    @Override // androidx.viewpager.widget.ViewPager.PageTransformer
    public void transformPage(View view, float positon) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        float fAbs = positon < ((float) 0) ? positon + 1.0f : Math.abs(1.0f - positon);
        view.setScaleX(fAbs);
        view.setScaleY(fAbs);
        view.setPivotX(view.getWidth() * 0.5f);
        view.setPivotY(view.getHeight() * 0.5f);
        view.setAlpha((positon < -1.0f || positon > 1.0f) ? 0.0f : 1.0f - (fAbs - 1.0f));
    }
}
