package com.google.android.exoplayer2.ui;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.annotation.ColorInt;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.exoplayer2.ui.c;
import java.util.Collections;
import java.util.Formatter;
import java.util.Iterator;
import java.util.Locale;
import java.util.Objects;
import java.util.concurrent.CopyOnWriteArraySet;
import m1.f;
import o1.e;

/* JADX INFO: loaded from: classes.dex */
public class DefaultTimeBar extends View implements c {
    public static final /* synthetic */ int O = 0;
    public int A;
    public long B;
    public int C;
    public Rect D;
    public ValueAnimator E;
    public float F;
    public boolean G;
    public long H;
    public long I;
    public long J;
    public long K;
    public int L;

    @Nullable
    public long[] M;

    @Nullable
    public boolean[] N;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Rect f1122a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Rect f1123b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Rect f1124c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Rect f1125d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Paint f1126e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Paint f1127f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final Paint f1128g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Paint f1129h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Paint f1130i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Paint f1131j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @Nullable
    public final Drawable f1132k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int f1133l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final int f1134m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final int f1135n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final int f1136o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final int f1137p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final int f1138q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final int f1139r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final int f1140s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final int f1141t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final StringBuilder f1142u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final Formatter f1143v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final Runnable f1144w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final CopyOnWriteArraySet<c.a> f1145x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final Point f1146y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final float f1147z;

    public DefaultTimeBar(Context context) {
        this(context, null);
    }

    public static int b(float f4, int i4) {
        return (int) ((i4 * f4) + 0.5f);
    }

    private long getPositionIncrement() {
        long j4 = this.B;
        if (j4 != -9223372036854775807L) {
            return j4;
        }
        long j5 = this.I;
        if (j5 == -9223372036854775807L) {
            return 0L;
        }
        return j5 / ((long) this.A);
    }

    private String getProgressText() {
        return e.e(this.f1142u, this.f1143v, this.J);
    }

    private long getScrubberPosition() {
        if (this.f1123b.width() <= 0 || this.I == -9223372036854775807L) {
            return 0L;
        }
        return (((long) this.f1125d.width()) * this.I) / ((long) this.f1123b.width());
    }

    @Override // com.google.android.exoplayer2.ui.c
    public void a(c.a aVar) {
        this.f1145x.add(aVar);
    }

    public void c(long j4) {
        if (this.E.isStarted()) {
            this.E.cancel();
        }
        this.E.setFloatValues(this.F, 0.0f);
        this.E.setDuration(j4);
        this.E.start();
    }

    public final void d(float f4) {
        Rect rect = this.f1125d;
        Rect rect2 = this.f1123b;
        rect.right = e.b((int) f4, rect2.left, rect2.right);
    }

    @Override // android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        j();
    }

    public final boolean e(long j4) {
        long j5 = this.I;
        if (j5 <= 0) {
            return false;
        }
        long j6 = this.G ? this.H : this.J;
        long jC = e.c(j6 + j4, 0L, j5);
        if (jC == j6) {
            return false;
        }
        if (this.G) {
            k(jC);
        } else {
            g(jC);
        }
        i();
        return true;
    }

    public void f(long j4) {
        if (this.E.isStarted()) {
            this.E.cancel();
        }
        this.E.setFloatValues(this.F, 1.0f);
        this.E.setDuration(j4);
        this.E.start();
    }

    public final void g(long j4) {
        this.H = j4;
        this.G = true;
        setPressed(true);
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(true);
        }
        Iterator<c.a> it = this.f1145x.iterator();
        while (it.hasNext()) {
            it.next().b(this, j4);
        }
    }

    @Override // com.google.android.exoplayer2.ui.c
    public long getPreferredUpdateDelay() {
        int iWidth = (int) (this.f1123b.width() / this.f1147z);
        if (iWidth != 0) {
            long j4 = this.I;
            if (j4 != 0 && j4 != -9223372036854775807L) {
                return j4 / ((long) iWidth);
            }
        }
        return RecyclerView.FOREVER_NS;
    }

    public final void h(boolean z3) {
        removeCallbacks(this.f1144w);
        this.G = false;
        setPressed(false);
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(false);
        }
        invalidate();
        Iterator<c.a> it = this.f1145x.iterator();
        while (it.hasNext()) {
            it.next().c(this, this.H, z3);
        }
    }

    public final void i() {
        this.f1124c.set(this.f1123b);
        this.f1125d.set(this.f1123b);
        long j4 = this.G ? this.H : this.J;
        if (this.I > 0) {
            int iWidth = (int) ((((long) this.f1123b.width()) * this.K) / this.I);
            Rect rect = this.f1124c;
            Rect rect2 = this.f1123b;
            rect.right = Math.min(rect2.left + iWidth, rect2.right);
            int iWidth2 = (int) ((((long) this.f1123b.width()) * j4) / this.I);
            Rect rect3 = this.f1125d;
            Rect rect4 = this.f1123b;
            rect3.right = Math.min(rect4.left + iWidth2, rect4.right);
        } else {
            Rect rect5 = this.f1124c;
            int i4 = this.f1123b.left;
            rect5.right = i4;
            this.f1125d.right = i4;
        }
        invalidate(this.f1122a);
    }

    public final void j() {
        Drawable drawable = this.f1132k;
        if (drawable != null && drawable.isStateful() && this.f1132k.setState(getDrawableState())) {
            invalidate();
        }
    }

    @Override // android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f1132k;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    public final void k(long j4) {
        if (this.H == j4) {
            return;
        }
        this.H = j4;
        Iterator<c.a> it = this.f1145x.iterator();
        while (it.hasNext()) {
            it.next().a(this, j4);
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        canvas.save();
        int iHeight = this.f1123b.height();
        int iCenterY = this.f1123b.centerY() - (iHeight / 2);
        int i4 = iHeight + iCenterY;
        if (this.I <= 0) {
            Rect rect = this.f1123b;
            canvas.drawRect(rect.left, iCenterY, rect.right, i4, this.f1128g);
        } else {
            Rect rect2 = this.f1124c;
            int i5 = rect2.left;
            int i6 = rect2.right;
            int iMax = Math.max(Math.max(this.f1123b.left, i6), this.f1125d.right);
            int i7 = this.f1123b.right;
            if (iMax < i7) {
                canvas.drawRect(iMax, iCenterY, i7, i4, this.f1128g);
            }
            int iMax2 = Math.max(i5, this.f1125d.right);
            if (i6 > iMax2) {
                canvas.drawRect(iMax2, iCenterY, i6, i4, this.f1127f);
            }
            if (this.f1125d.width() > 0) {
                Rect rect3 = this.f1125d;
                canvas.drawRect(rect3.left, iCenterY, rect3.right, i4, this.f1126e);
            }
            if (this.L != 0) {
                long[] jArr = this.M;
                Objects.requireNonNull(jArr);
                boolean[] zArr = this.N;
                Objects.requireNonNull(zArr);
                int i8 = this.f1136o / 2;
                for (int i9 = 0; i9 < this.L; i9++) {
                    int iWidth = ((int) ((((long) this.f1123b.width()) * e.c(jArr[i9], 0L, this.I)) / this.I)) - i8;
                    Rect rect4 = this.f1123b;
                    canvas.drawRect(Math.min(rect4.width() - this.f1136o, Math.max(0, iWidth)) + rect4.left, iCenterY, r1 + this.f1136o, i4, zArr[i9] ? this.f1130i : this.f1129h);
                }
            }
        }
        if (this.I > 0) {
            Rect rect5 = this.f1125d;
            int iB = e.b(rect5.right, rect5.left, this.f1123b.right);
            int iCenterY2 = this.f1125d.centerY();
            if (this.f1132k == null) {
                canvas.drawCircle(iB, iCenterY2, (int) ((((this.G || isFocused()) ? this.f1139r : isEnabled() ? this.f1137p : this.f1138q) * this.F) / 2.0f), this.f1131j);
            } else {
                int intrinsicWidth = ((int) (r3.getIntrinsicWidth() * this.F)) / 2;
                int intrinsicHeight = ((int) (this.f1132k.getIntrinsicHeight() * this.F)) / 2;
                this.f1132k.setBounds(iB - intrinsicWidth, iCenterY2 - intrinsicHeight, iB + intrinsicWidth, iCenterY2 + intrinsicHeight);
                this.f1132k.draw(canvas);
            }
        }
        canvas.restore();
    }

    @Override // android.view.View
    public void onFocusChanged(boolean z3, int i4, @Nullable Rect rect) {
        super.onFocusChanged(z3, i4, rect);
        if (!this.G || z3) {
            return;
        }
        h(false);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        if (accessibilityEvent.getEventType() == 4) {
            accessibilityEvent.getText().add(getProgressText());
        }
        accessibilityEvent.setClassName("android.widget.SeekBar");
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName("android.widget.SeekBar");
        accessibilityNodeInfo.setContentDescription(getProgressText());
        if (this.I <= 0) {
            return;
        }
        if (e.f2847a >= 21) {
            accessibilityNodeInfo.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_FORWARD);
            accessibilityNodeInfo.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_BACKWARD);
        } else {
            accessibilityNodeInfo.addAction(4096);
            accessibilityNodeInfo.addAction(8192);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:11:0x001a  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0027  */
    @Override // android.view.View, android.view.KeyEvent.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onKeyDown(int r5, android.view.KeyEvent r6) {
        /*
            r4 = this;
            boolean r0 = r4.isEnabled()
            if (r0 == 0) goto L30
            long r0 = r4.getPositionIncrement()
            r2 = 66
            r3 = 1
            if (r5 == r2) goto L27
            switch(r5) {
                case 21: goto L13;
                case 22: goto L14;
                case 23: goto L27;
                default: goto L12;
            }
        L12:
            goto L30
        L13:
            long r0 = -r0
        L14:
            boolean r0 = r4.e(r0)
            if (r0 == 0) goto L30
            java.lang.Runnable r5 = r4.f1144w
            r4.removeCallbacks(r5)
            java.lang.Runnable r5 = r4.f1144w
            r0 = 1000(0x3e8, double:4.94E-321)
            r4.postDelayed(r5, r0)
            return r3
        L27:
            boolean r0 = r4.G
            if (r0 == 0) goto L30
            r5 = 0
            r4.h(r5)
            return r3
        L30:
            boolean r5 = super.onKeyDown(r5, r6)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.ui.DefaultTimeBar.onKeyDown(int, android.view.KeyEvent):boolean");
    }

    @Override // android.view.View
    public void onLayout(boolean z3, int i4, int i5, int i6, int i7) {
        Rect rect;
        int i8 = i6 - i4;
        int i9 = i7 - i5;
        int i10 = (i9 - this.f1134m) / 2;
        int paddingLeft = getPaddingLeft();
        int paddingRight = i8 - getPaddingRight();
        int i11 = this.f1135n;
        int paddingBottom = i11 == 1 ? (this.f1134m + i10) - ((this.f1133l / 2) + (getPaddingBottom() + this.f1140s)) : i11 == 2 ? ((getPaddingTop() + i10) + this.f1140s) - (this.f1133l / 2) : ((this.f1134m - this.f1133l) / 2) + i10;
        this.f1122a.set(paddingLeft, i10, paddingRight, this.f1134m + i10);
        Rect rect2 = this.f1123b;
        Rect rect3 = this.f1122a;
        int i12 = rect3.left;
        int i13 = this.f1140s;
        rect2.set(i12 + i13, paddingBottom, rect3.right - i13, this.f1133l + paddingBottom);
        if (e.f2847a >= 29 && ((rect = this.D) == null || rect.width() != i8 || this.D.height() != i9)) {
            Rect rect4 = new Rect(0, 0, i8, i9);
            this.D = rect4;
            setSystemGestureExclusionRects(Collections.singletonList(rect4));
        }
        i();
    }

    @Override // android.view.View
    public void onMeasure(int i4, int i5) {
        int mode = View.MeasureSpec.getMode(i5);
        int size = View.MeasureSpec.getSize(i5);
        if (mode == 0) {
            size = this.f1134m;
        } else if (mode != 1073741824) {
            size = Math.min(this.f1134m, size);
        }
        setMeasuredDimension(View.MeasureSpec.getSize(i4), size);
        j();
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int i4) {
        Drawable drawable = this.f1132k;
        if (drawable != null) {
            if (e.f2847a >= 23 && drawable.setLayoutDirection(i4)) {
                invalidate();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x005c  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r8) {
        /*
            r7 = this;
            boolean r0 = r7.isEnabled()
            r1 = 0
            if (r0 == 0) goto L88
            long r2 = r7.I
            r4 = 0
            int r0 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r0 > 0) goto L11
            goto L88
        L11:
            android.graphics.Point r0 = r7.f1146y
            float r2 = r8.getX()
            int r2 = (int) r2
            float r3 = r8.getY()
            int r3 = (int) r3
            r0.set(r2, r3)
            android.graphics.Point r0 = r7.f1146y
            int r2 = r0.x
            int r0 = r0.y
            int r3 = r8.getAction()
            r4 = 1
            if (r3 == 0) goto L6b
            r5 = 3
            if (r3 == r4) goto L5c
            r6 = 2
            if (r3 == r6) goto L36
            if (r3 == r5) goto L5c
            goto L88
        L36:
            boolean r8 = r7.G
            if (r8 == 0) goto L88
            int r8 = r7.f1141t
            if (r0 >= r8) goto L48
            int r8 = r7.C
            int r2 = r2 - r8
            int r2 = r2 / r5
            int r2 = r2 + r8
            float r8 = (float) r2
            r7.d(r8)
            goto L4e
        L48:
            r7.C = r2
            float r8 = (float) r2
            r7.d(r8)
        L4e:
            long r0 = r7.getScrubberPosition()
            r7.k(r0)
            r7.i()
            r7.invalidate()
            return r4
        L5c:
            boolean r0 = r7.G
            if (r0 == 0) goto L88
            int r8 = r8.getAction()
            if (r8 != r5) goto L67
            r1 = 1
        L67:
            r7.h(r1)
            return r4
        L6b:
            float r8 = (float) r2
            float r0 = (float) r0
            android.graphics.Rect r2 = r7.f1122a
            int r3 = (int) r8
            int r0 = (int) r0
            boolean r0 = r2.contains(r3, r0)
            if (r0 == 0) goto L88
            r7.d(r8)
            long r0 = r7.getScrubberPosition()
            r7.g(r0)
            r7.i()
            r7.invalidate()
            return r4
        L88:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.ui.DefaultTimeBar.onTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.View
    public boolean performAccessibilityAction(int i4, @Nullable Bundle bundle) {
        if (super.performAccessibilityAction(i4, bundle)) {
            return true;
        }
        if (this.I <= 0) {
            return false;
        }
        if (i4 == 8192) {
            if (e(-getPositionIncrement())) {
                h(false);
            }
        } else {
            if (i4 != 4096) {
                return false;
            }
            if (e(getPositionIncrement())) {
                h(false);
            }
        }
        sendAccessibilityEvent(4);
        return true;
    }

    public void setAdMarkerColor(@ColorInt int i4) {
        this.f1129h.setColor(i4);
        invalidate(this.f1122a);
    }

    public void setBufferedColor(@ColorInt int i4) {
        this.f1127f.setColor(i4);
        invalidate(this.f1122a);
    }

    @Override // com.google.android.exoplayer2.ui.c
    public void setBufferedPosition(long j4) {
        this.K = j4;
        i();
    }

    public void setDuration(long j4) {
        this.I = j4;
        if (this.G && j4 == -9223372036854775807L) {
            h(true);
        }
        i();
    }

    @Override // android.view.View, com.google.android.exoplayer2.ui.c
    public void setEnabled(boolean z3) {
        super.setEnabled(z3);
        if (!this.G || z3) {
            return;
        }
        h(true);
    }

    public void setKeyCountIncrement(int i4) {
        o1.a.a(i4 > 0);
        this.A = i4;
        this.B = -9223372036854775807L;
    }

    public void setKeyTimeIncrement(long j4) {
        o1.a.a(j4 > 0);
        this.A = -1;
        this.B = j4;
    }

    public void setPlayedAdMarkerColor(@ColorInt int i4) {
        this.f1130i.setColor(i4);
        invalidate(this.f1122a);
    }

    public void setPlayedColor(@ColorInt int i4) {
        this.f1126e.setColor(i4);
        invalidate(this.f1122a);
    }

    @Override // com.google.android.exoplayer2.ui.c
    public void setPosition(long j4) {
        this.J = j4;
        setContentDescription(getProgressText());
        i();
    }

    public void setScrubberColor(@ColorInt int i4) {
        this.f1131j.setColor(i4);
        invalidate(this.f1122a);
    }

    public void setUnplayedColor(@ColorInt int i4) {
        this.f1128g.setColor(i4);
        invalidate(this.f1122a);
    }

    public DefaultTimeBar(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public DefaultTimeBar(Context context, @Nullable AttributeSet attributeSet, int i4) {
        this(context, attributeSet, i4, attributeSet, 0);
    }

    public DefaultTimeBar(Context context, @Nullable AttributeSet attributeSet, int i4, @Nullable AttributeSet attributeSet2, int i5) {
        super(context, attributeSet, i4);
        this.f1122a = new Rect();
        this.f1123b = new Rect();
        this.f1124c = new Rect();
        this.f1125d = new Rect();
        Paint paint = new Paint();
        this.f1126e = paint;
        Paint paint2 = new Paint();
        this.f1127f = paint2;
        Paint paint3 = new Paint();
        this.f1128g = paint3;
        Paint paint4 = new Paint();
        this.f1129h = paint4;
        Paint paint5 = new Paint();
        this.f1130i = paint5;
        Paint paint6 = new Paint();
        this.f1131j = paint6;
        paint6.setAntiAlias(true);
        this.f1145x = new CopyOnWriteArraySet<>();
        this.f1146y = new Point();
        float f4 = context.getResources().getDisplayMetrics().density;
        this.f1147z = f4;
        this.f1141t = b(f4, -50);
        int iB = b(f4, 4);
        int iB2 = b(f4, 26);
        int iB3 = b(f4, 4);
        int iB4 = b(f4, 12);
        int iB5 = b(f4, 0);
        int iB6 = b(f4, 16);
        if (attributeSet2 != null) {
            TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet2, R$styleable.DefaultTimeBar, i4, i5);
            try {
                Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(R$styleable.DefaultTimeBar_scrubber_drawable);
                this.f1132k = drawable;
                if (drawable != null) {
                    int i6 = e.f2847a;
                    if (i6 >= 23) {
                        int layoutDirection = getLayoutDirection();
                        if (i6 < 23 || drawable.setLayoutDirection(layoutDirection)) {
                        }
                    }
                    iB2 = Math.max(drawable.getMinimumHeight(), iB2);
                }
                this.f1133l = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.DefaultTimeBar_bar_height, iB);
                this.f1134m = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.DefaultTimeBar_touch_target_height, iB2);
                this.f1135n = typedArrayObtainStyledAttributes.getInt(R$styleable.DefaultTimeBar_bar_gravity, 0);
                this.f1136o = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.DefaultTimeBar_ad_marker_width, iB3);
                this.f1137p = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.DefaultTimeBar_scrubber_enabled_size, iB4);
                this.f1138q = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.DefaultTimeBar_scrubber_disabled_size, iB5);
                this.f1139r = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.DefaultTimeBar_scrubber_dragged_size, iB6);
                int i7 = typedArrayObtainStyledAttributes.getInt(R$styleable.DefaultTimeBar_played_color, -1);
                int i8 = typedArrayObtainStyledAttributes.getInt(R$styleable.DefaultTimeBar_scrubber_color, -1);
                int i9 = typedArrayObtainStyledAttributes.getInt(R$styleable.DefaultTimeBar_buffered_color, -855638017);
                int i10 = typedArrayObtainStyledAttributes.getInt(R$styleable.DefaultTimeBar_unplayed_color, 872415231);
                int i11 = typedArrayObtainStyledAttributes.getInt(R$styleable.DefaultTimeBar_ad_marker_color, -1291845888);
                int i12 = typedArrayObtainStyledAttributes.getInt(R$styleable.DefaultTimeBar_played_ad_marker_color, 872414976);
                paint.setColor(i7);
                paint6.setColor(i8);
                paint2.setColor(i9);
                paint3.setColor(i10);
                paint4.setColor(i11);
                paint5.setColor(i12);
            } finally {
                typedArrayObtainStyledAttributes.recycle();
            }
        } else {
            this.f1133l = iB;
            this.f1134m = iB2;
            this.f1135n = 0;
            this.f1136o = iB3;
            this.f1137p = iB4;
            this.f1138q = iB5;
            this.f1139r = iB6;
            paint.setColor(-1);
            paint6.setColor(-1);
            paint2.setColor(-855638017);
            paint3.setColor(872415231);
            paint4.setColor(-1291845888);
            paint5.setColor(872414976);
            this.f1132k = null;
        }
        StringBuilder sb = new StringBuilder();
        this.f1142u = sb;
        this.f1143v = new Formatter(sb, Locale.getDefault());
        this.f1144w = new d.d(this);
        Drawable drawable2 = this.f1132k;
        if (drawable2 != null) {
            this.f1140s = (drawable2.getMinimumWidth() + 1) / 2;
        } else {
            this.f1140s = (Math.max(this.f1138q, Math.max(this.f1137p, this.f1139r)) + 1) / 2;
        }
        this.F = 1.0f;
        ValueAnimator valueAnimator = new ValueAnimator();
        this.E = valueAnimator;
        valueAnimator.addUpdateListener(new f(this));
        this.I = -9223372036854775807L;
        this.B = -9223372036854775807L;
        this.A = 20;
        setFocusable(true);
        if (getImportantForAccessibility() == 0) {
            setImportantForAccessibility(1);
        }
    }
}
