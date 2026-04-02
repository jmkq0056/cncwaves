package y;

import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class b {
    public static AlphaAnimation a(AnimationSet animationSet, Animation animation, float f4, float f5) {
        animationSet.addAnimation(animation);
        return new AlphaAnimation(f4, f5);
    }
}
