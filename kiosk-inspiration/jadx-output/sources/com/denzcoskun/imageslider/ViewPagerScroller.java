package com.denzcoskun.imageslider;

import android.content.Context;
import android.view.animation.Interpolator;
import android.widget.Scroller;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ViewPagerScroller.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u000f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004B\u0017\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007B\u001f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ(\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\f2\u0006\u0010\u0014\u001a\u00020\f2\u0006\u0010\u0015\u001a\u00020\f2\u0006\u0010\u0016\u001a\u00020\fH\u0016J0\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\f2\u0006\u0010\u0014\u001a\u00020\f2\u0006\u0010\u0015\u001a\u00020\f2\u0006\u0010\u0016\u001a\u00020\f2\u0006\u0010\u0017\u001a\u00020\fH\u0016R\u001a\u0010\u000b\u001a\u00020\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010¨\u0006\u0018"}, d2 = {"Lcom/denzcoskun/imageslider/ViewPagerScroller;", "Landroid/widget/Scroller;", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "interpolator", "Landroid/view/animation/Interpolator;", "(Landroid/content/Context;Landroid/view/animation/Interpolator;)V", "flywheel", "", "(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V", "fixedDuration", "", "getFixedDuration", "()I", "setFixedDuration", "(I)V", "startScroll", "", "startX", "startY", "dx", "dy", TypedValues.TransitionType.S_DURATION, "imageslider_release"}, k = 1, mv = {1, 1, 16})
public final class ViewPagerScroller extends Scroller {
    private int fixedDuration;

    public final int getFixedDuration() {
        return this.fixedDuration;
    }

    public final void setFixedDuration(int i) {
        this.fixedDuration = i;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ViewPagerScroller(Context context) {
        super(context);
        Intrinsics.checkParameterIsNotNull(context, "context");
        this.fixedDuration = 1000;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ViewPagerScroller(Context context, Interpolator interpolator) {
        super(context, interpolator);
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(interpolator, "interpolator");
        this.fixedDuration = 1000;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ViewPagerScroller(Context context, Interpolator interpolator, boolean z) {
        super(context, interpolator, z);
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(interpolator, "interpolator");
        this.fixedDuration = 1000;
    }

    @Override // android.widget.Scroller
    public void startScroll(int startX, int startY, int dx, int dy, int duration) {
        super.startScroll(startX, startY, dx, dy, this.fixedDuration);
    }

    @Override // android.widget.Scroller
    public void startScroll(int startX, int startY, int dx, int dy) {
        super.startScroll(startX, startY, dx, dy, this.fixedDuration);
    }
}
