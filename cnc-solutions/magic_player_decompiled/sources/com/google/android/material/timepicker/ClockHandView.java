package com.google.android.material.timepicker;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.Pair;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import androidx.annotation.Dimension;
import androidx.annotation.FloatRange;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.core.view.ViewCompat;
import com.google.android.material.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
class ClockHandView extends View {
    private static final int ANIMATION_DURATION = 200;
    private boolean animatingOnTouchUp;
    private final float centerDotRadius;
    private boolean changedDuringTouch;
    private int circleRadius;
    private double degRad;
    private float downX;
    private float downY;
    private boolean isInTapRegion;
    private final List<OnRotateListener> listeners;
    private OnActionUpListener onActionUpListener;
    private float originalDeg;
    private final Paint paint;
    private ValueAnimator rotationAnimator;
    private int scaledTouchSlop;
    private final RectF selectorBox;
    private final int selectorRadius;

    @Px
    private final int selectorStrokeWidth;

    public interface OnActionUpListener {
        void onActionUp(@FloatRange(from = 0.0d, to = 360.0d) float f4, boolean z3);
    }

    public interface OnRotateListener {
        void onRotate(@FloatRange(from = 0.0d, to = 360.0d) float f4, boolean z3);
    }

    public ClockHandView(Context context) {
        this(context, null);
    }

    private void drawSelector(Canvas canvas) {
        int height = getHeight() / 2;
        float width = getWidth() / 2;
        float fCos = (this.circleRadius * ((float) Math.cos(this.degRad))) + width;
        float f4 = height;
        float fSin = (this.circleRadius * ((float) Math.sin(this.degRad))) + f4;
        this.paint.setStrokeWidth(0.0f);
        canvas.drawCircle(fCos, fSin, this.selectorRadius, this.paint);
        double dSin = Math.sin(this.degRad);
        double dCos = Math.cos(this.degRad);
        Double.isNaN(d);
        Double.isNaN(d);
        this.paint.setStrokeWidth(this.selectorStrokeWidth);
        canvas.drawLine(width, f4, r1 + ((int) (dCos * d)), height + ((int) (d * dSin)), this.paint);
        canvas.drawCircle(width, f4, this.centerDotRadius, this.paint);
    }

    private int getDegreesFromXY(float f4, float f5) {
        int degrees = ((int) Math.toDegrees(Math.atan2(f5 - (getHeight() / 2), f4 - (getWidth() / 2)))) + 90;
        return degrees < 0 ? degrees + 360 : degrees;
    }

    private Pair<Float, Float> getValuesForAnimation(float f4) {
        float handRotation = getHandRotation();
        if (Math.abs(handRotation - f4) > 180.0f) {
            if (handRotation > 180.0f && f4 < 180.0f) {
                f4 += 360.0f;
            }
            if (handRotation < 180.0f && f4 > 180.0f) {
                handRotation += 360.0f;
            }
        }
        return new Pair<>(Float.valueOf(handRotation), Float.valueOf(f4));
    }

    private boolean handleTouchInput(float f4, float f5, boolean z3, boolean z4, boolean z5) {
        float degreesFromXY = getDegreesFromXY(f4, f5);
        boolean z6 = false;
        boolean z7 = getHandRotation() != degreesFromXY;
        if (z4 && z7) {
            return true;
        }
        if (!z7 && !z3) {
            return false;
        }
        if (z5 && this.animatingOnTouchUp) {
            z6 = true;
        }
        setHandRotation(degreesFromXY, z6);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setHandRotationInternal(@FloatRange(from = 0.0d, to = 360.0d) float f4, boolean z3) {
        float f5 = f4 % 360.0f;
        this.originalDeg = f5;
        this.degRad = Math.toRadians(f5 - 90.0f);
        int height = getHeight() / 2;
        float fCos = (this.circleRadius * ((float) Math.cos(this.degRad))) + (getWidth() / 2);
        float fSin = (this.circleRadius * ((float) Math.sin(this.degRad))) + height;
        RectF rectF = this.selectorBox;
        int i4 = this.selectorRadius;
        rectF.set(fCos - i4, fSin - i4, fCos + i4, fSin + i4);
        Iterator<OnRotateListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onRotate(f5, z3);
        }
        invalidate();
    }

    public void addOnRotateListener(OnRotateListener onRotateListener) {
        this.listeners.add(onRotateListener);
    }

    public RectF getCurrentSelectorBox() {
        return this.selectorBox;
    }

    @FloatRange(from = 0.0d, to = 360.0d)
    public float getHandRotation() {
        return this.originalDeg;
    }

    public int getSelectorRadius() {
        return this.selectorRadius;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        drawSelector(canvas);
    }

    @Override // android.view.View
    public void onLayout(boolean z3, int i4, int i5, int i6, int i7) {
        super.onLayout(z3, i4, i5, i6, i7);
        setHandRotation(getHandRotation());
    }

    @Override // android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z3;
        boolean z4;
        boolean z5;
        OnActionUpListener onActionUpListener;
        int actionMasked = motionEvent.getActionMasked();
        float x3 = motionEvent.getX();
        float y3 = motionEvent.getY();
        if (actionMasked != 0) {
            if (actionMasked == 1 || actionMasked == 2) {
                int i4 = (int) (x3 - this.downX);
                int i5 = (int) (y3 - this.downY);
                this.isInTapRegion = (i5 * i5) + (i4 * i4) > this.scaledTouchSlop;
                boolean z6 = this.changedDuringTouch;
                z3 = actionMasked == 1;
                z4 = z6;
            } else {
                z3 = false;
                z4 = false;
            }
            z5 = false;
        } else {
            this.downX = x3;
            this.downY = y3;
            this.isInTapRegion = true;
            this.changedDuringTouch = false;
            z3 = false;
            z4 = false;
            z5 = true;
        }
        boolean zHandleTouchInput = handleTouchInput(x3, y3, z4, z5, z3) | this.changedDuringTouch;
        this.changedDuringTouch = zHandleTouchInput;
        if (zHandleTouchInput && z3 && (onActionUpListener = this.onActionUpListener) != null) {
            onActionUpListener.onActionUp(getDegreesFromXY(x3, y3), this.isInTapRegion);
        }
        return true;
    }

    public void setAnimateOnTouchUp(boolean z3) {
        this.animatingOnTouchUp = z3;
    }

    public void setCircleRadius(@Dimension int i4) {
        this.circleRadius = i4;
        invalidate();
    }

    public void setHandRotation(@FloatRange(from = 0.0d, to = 360.0d) float f4) {
        setHandRotation(f4, false);
    }

    public void setOnActionUpListener(OnActionUpListener onActionUpListener) {
        this.onActionUpListener = onActionUpListener;
    }

    public ClockHandView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.materialClockStyle);
    }

    public void setHandRotation(@FloatRange(from = 0.0d, to = 360.0d) float f4, boolean z3) {
        ValueAnimator valueAnimator = this.rotationAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        if (!z3) {
            setHandRotationInternal(f4, false);
            return;
        }
        Pair<Float, Float> valuesForAnimation = getValuesForAnimation(f4);
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(((Float) valuesForAnimation.first).floatValue(), ((Float) valuesForAnimation.second).floatValue());
        this.rotationAnimator = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(200L);
        this.rotationAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.timepicker.ClockHandView.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator2) {
                ClockHandView.this.setHandRotationInternal(((Float) valueAnimator2.getAnimatedValue()).floatValue(), true);
            }
        });
        this.rotationAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.timepicker.ClockHandView.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                animator.end();
            }
        });
        this.rotationAnimator.start();
    }

    public ClockHandView(Context context, @Nullable AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.listeners = new ArrayList();
        Paint paint = new Paint();
        this.paint = paint;
        this.selectorBox = new RectF();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ClockHandView, i4, R.style.Widget_MaterialComponents_TimePicker_Clock);
        this.circleRadius = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.ClockHandView_materialCircleRadius, 0);
        this.selectorRadius = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.ClockHandView_selectorSize, 0);
        this.selectorStrokeWidth = getResources().getDimensionPixelSize(R.dimen.material_clock_hand_stroke_width);
        this.centerDotRadius = r6.getDimensionPixelSize(R.dimen.material_clock_hand_center_dot_radius);
        int color = typedArrayObtainStyledAttributes.getColor(R.styleable.ClockHandView_clockHandColor, 0);
        paint.setAntiAlias(true);
        paint.setColor(color);
        setHandRotation(0.0f);
        this.scaledTouchSlop = ViewConfiguration.get(context).getScaledTouchSlop();
        ViewCompat.setImportantForAccessibility(this, 2);
        typedArrayObtainStyledAttributes.recycle();
    }
}
