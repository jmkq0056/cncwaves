package m1;

import android.animation.ValueAnimator;
import com.google.android.exoplayer2.ui.DefaultTimeBar;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class f implements ValueAnimator.AnimatorUpdateListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2496a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f2497b;

    public /* synthetic */ f(DefaultTimeBar defaultTimeBar) {
        this.f2496a = 2;
        this.f2497b = defaultTimeBar;
    }

    public /* synthetic */ f(j jVar, int i4) {
        this.f2496a = i4;
        this.f2497b = jVar;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        switch (this.f2496a) {
            case 0:
                j jVar = (j) this.f2497b;
                Objects.requireNonNull(jVar);
                jVar.b(((Float) valueAnimator.getAnimatedValue()).floatValue());
                break;
            case 1:
                j jVar2 = (j) this.f2497b;
                Objects.requireNonNull(jVar2);
                jVar2.b(((Float) valueAnimator.getAnimatedValue()).floatValue());
                break;
            default:
                DefaultTimeBar defaultTimeBar = (DefaultTimeBar) this.f2497b;
                int i4 = DefaultTimeBar.O;
                Objects.requireNonNull(defaultTimeBar);
                defaultTimeBar.F = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                defaultTimeBar.invalidate(defaultTimeBar.f1122a);
                break;
        }
    }
}
