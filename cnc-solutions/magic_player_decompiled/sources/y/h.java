package y;

import android.view.View;
import android.view.animation.Animation;
import android.view.animation.RotateAnimation;
import android.view.animation.ScaleAnimation;
import android.view.animation.TranslateAnimation;
import cn.huidu.lcd.render.model.extra.AnimationNode;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class h implements Animation.AnimationListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List<AnimationNode> f3994a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f3995b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f3996c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public View f3997d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f3998e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f3999f;

    public final Animation a(float f4, float f5) {
        return new RotateAnimation(f4, f5, 1, 0.5f, 1, 0.5f);
    }

    public final Animation b(float f4, float f5) {
        return new ScaleAnimation(f4, f5, f4, f5, 1, 0.5f, 1, 0.5f);
    }

    /* JADX WARN: Removed duplicated region for block: B:57:0x0599  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x05a0  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x05be A[LOOP:0: B:7:0x0010->B:65:0x05be, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x05bb A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void c(int r25) {
        /*
            Method dump skipped, instruction units count: 1560
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: y.h.c(int):void");
    }

    public final Animation d(float f4, float f5, float f6, float f7) {
        return new TranslateAnimation(1, f4, 1, f5, 1, f6, 1, f7);
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationEnd(Animation animation) {
        if (this.f3999f) {
            return;
        }
        c(this.f3998e + 1);
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationRepeat(Animation animation) {
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationStart(Animation animation) {
    }
}
