package y;

import android.view.animation.AlphaAnimation;
import android.view.animation.DecelerateInterpolator;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class d {
    public static void a(AlphaAnimation alphaAnimation, long j4, int i4, int i5) {
        alphaAnimation.setInterpolator(new DecelerateInterpolator());
        alphaAnimation.setDuration(j4);
        alphaAnimation.setRepeatMode(i4);
        alphaAnimation.setRepeatCount(i5);
    }
}
