package com.denzcoskun.imageslider.animations;

import android.view.View;
import androidx.core.app.NotificationManagerCompat;
import androidx.viewpager.widget.ViewPager;
import com.sun.jna.platform.win32.WinError;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Toss.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016¨\u0006\t"}, d2 = {"Lcom/denzcoskun/imageslider/animations/Toss;", "Landroidx/viewpager/widget/ViewPager$PageTransformer;", "()V", "transformPage", "", "view", "Landroid/view/View;", "position", "", "imageslider_release"}, k = 1, mv = {1, 1, 16})
public final class Toss implements ViewPager.PageTransformer {
    @Override // androidx.viewpager.widget.ViewPager.PageTransformer
    public void transformPage(View view, float position) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        view.setTranslationX((-position) * view.getWidth());
        view.setCameraDistance(20000.0f);
        double d = position;
        if (d < 0.5d && d > -0.5d) {
            view.setVisibility(0);
        } else {
            view.setVisibility(4);
        }
        if (position < -1) {
            view.setAlpha(0.0f);
            return;
        }
        if (position <= 0) {
            view.setAlpha(1.0f);
            float f = 1;
            view.setScaleX(Math.max(0.4f, f - Math.abs(position)));
            view.setScaleY(Math.max(0.4f, f - Math.abs(position)));
            view.setRotationX(WinError.ERROR_CANNOT_DETECT_DRIVER_FAILURE * ((f - Math.abs(position)) + f));
            view.setTranslationY(NotificationManagerCompat.IMPORTANCE_UNSPECIFIED * Math.abs(position));
            return;
        }
        float f2 = 1;
        if (position <= f2) {
            view.setAlpha(1.0f);
            view.setScaleX(Math.max(0.4f, f2 - Math.abs(position)));
            view.setScaleY(Math.max(0.4f, f2 - Math.abs(position)));
            view.setRotationX((-1080) * ((f2 - Math.abs(position)) + f2));
            view.setTranslationY(NotificationManagerCompat.IMPORTANCE_UNSPECIFIED * Math.abs(position));
            return;
        }
        view.setAlpha(0.0f);
    }
}
