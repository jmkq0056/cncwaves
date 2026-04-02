package com.google.android.exoplayer2.ui;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.Nullable;
import androidx.constraintlayout.solver.widgets.analyzer.BasicMeasure;

/* JADX INFO: loaded from: classes.dex */
public final class AspectRatioFrameLayout extends FrameLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final c f1113a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    public b f1114b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float f1115c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f1116d;

    public interface b {
        void a(float f4, float f5, boolean z3);
    }

    public final class c implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public float f1117a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public float f1118b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f1119c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public boolean f1120d;

        public c(a aVar) {
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f1120d = false;
            b bVar = AspectRatioFrameLayout.this.f1114b;
            if (bVar == null) {
                return;
            }
            bVar.a(this.f1117a, this.f1118b, this.f1119c);
        }
    }

    public AspectRatioFrameLayout(Context context) {
        this(context, null);
    }

    public int getResizeMode() {
        return this.f1116d;
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i4, int i5) {
        float f4;
        float f5;
        super.onMeasure(i4, i5);
        if (this.f1115c <= 0.0f) {
            return;
        }
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        float f6 = measuredWidth;
        float f7 = measuredHeight;
        float f8 = f6 / f7;
        float f9 = (this.f1115c / f8) - 1.0f;
        if (Math.abs(f9) <= 0.01f) {
            c cVar = this.f1113a;
            cVar.f1117a = this.f1115c;
            cVar.f1118b = f8;
            cVar.f1119c = false;
            if (cVar.f1120d) {
                return;
            }
            cVar.f1120d = true;
            AspectRatioFrameLayout.this.post(cVar);
            return;
        }
        int i6 = this.f1116d;
        if (i6 != 0) {
            if (i6 != 1) {
                if (i6 == 2) {
                    f4 = this.f1115c;
                } else if (i6 == 4) {
                    if (f9 > 0.0f) {
                        f4 = this.f1115c;
                    } else {
                        f5 = this.f1115c;
                    }
                }
                measuredWidth = (int) (f7 * f4);
            } else {
                f5 = this.f1115c;
            }
            measuredHeight = (int) (f6 / f5);
        } else if (f9 > 0.0f) {
            f5 = this.f1115c;
            measuredHeight = (int) (f6 / f5);
        } else {
            f4 = this.f1115c;
            measuredWidth = (int) (f7 * f4);
        }
        c cVar2 = this.f1113a;
        cVar2.f1117a = this.f1115c;
        cVar2.f1118b = f8;
        cVar2.f1119c = true;
        if (!cVar2.f1120d) {
            cVar2.f1120d = true;
            AspectRatioFrameLayout.this.post(cVar2);
        }
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(measuredWidth, BasicMeasure.EXACTLY), View.MeasureSpec.makeMeasureSpec(measuredHeight, BasicMeasure.EXACTLY));
    }

    public void setAspectRatio(float f4) {
        if (this.f1115c != f4) {
            this.f1115c = f4;
            requestLayout();
        }
    }

    public void setAspectRatioListener(@Nullable b bVar) {
        this.f1114b = bVar;
    }

    public void setResizeMode(int i4) {
        if (this.f1116d != i4) {
            this.f1116d = i4;
            requestLayout();
        }
    }

    public AspectRatioFrameLayout(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1116d = 0;
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R$styleable.AspectRatioFrameLayout, 0, 0);
            try {
                this.f1116d = typedArrayObtainStyledAttributes.getInt(R$styleable.AspectRatioFrameLayout_resize_mode, 0);
            } finally {
                typedArrayObtainStyledAttributes.recycle();
            }
        }
        this.f1113a = new c(null);
    }
}
