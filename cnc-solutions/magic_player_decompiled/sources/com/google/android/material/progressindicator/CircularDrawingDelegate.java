package com.google.android.material.progressindicator;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import androidx.annotation.ColorInt;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.constraintlayout.motion.utils.a;
import com.google.android.material.color.MaterialColors;

/* JADX INFO: loaded from: classes2.dex */
final class CircularDrawingDelegate extends DrawingDelegate<CircularProgressIndicatorSpec> {
    private float adjustedRadius;
    private int arcDirectionFactor;
    private float displayedCornerRadius;
    private float displayedTrackThickness;

    public CircularDrawingDelegate(@NonNull CircularProgressIndicatorSpec circularProgressIndicatorSpec) {
        super(circularProgressIndicatorSpec);
        this.arcDirectionFactor = 1;
    }

    private void drawRoundedEnd(Canvas canvas, Paint paint, float f4, float f5, float f6, boolean z3, RectF rectF) {
        float f7 = z3 ? -1.0f : 1.0f;
        canvas.save();
        canvas.rotate(f6);
        float f8 = f4 / 2.0f;
        float f9 = f7 * f5;
        canvas.drawRect((this.adjustedRadius - f8) + f5, Math.min(0.0f, this.arcDirectionFactor * f9), (this.adjustedRadius + f8) - f5, Math.max(0.0f, f9 * this.arcDirectionFactor), paint);
        canvas.translate((this.adjustedRadius - f8) + f5, 0.0f);
        canvas.drawArc(rectF, 180.0f, (-f7) * 90.0f * this.arcDirectionFactor, true, paint);
        canvas.translate(f4 - (f5 * 2.0f), 0.0f);
        canvas.drawArc(rectF, 0.0f, f7 * 90.0f * this.arcDirectionFactor, true, paint);
        canvas.restore();
    }

    private int getSize() {
        S s3 = this.spec;
        return (((CircularProgressIndicatorSpec) s3).indicatorInset * 2) + ((CircularProgressIndicatorSpec) s3).indicatorSize;
    }

    @Override // com.google.android.material.progressindicator.DrawingDelegate
    public void adjustCanvas(@NonNull Canvas canvas, @FloatRange(from = 0.0d, to = 1.0d) float f4) {
        S s3 = this.spec;
        float f5 = (((CircularProgressIndicatorSpec) s3).indicatorSize / 2.0f) + ((CircularProgressIndicatorSpec) s3).indicatorInset;
        canvas.translate(f5, f5);
        canvas.rotate(-90.0f);
        float f6 = -f5;
        canvas.clipRect(f6, f6, f5, f5);
        this.arcDirectionFactor = ((CircularProgressIndicatorSpec) this.spec).indicatorDirection == 0 ? 1 : -1;
        this.displayedTrackThickness = ((CircularProgressIndicatorSpec) r5).trackThickness * f4;
        this.displayedCornerRadius = ((CircularProgressIndicatorSpec) r5).trackCornerRadius * f4;
        this.adjustedRadius = (((CircularProgressIndicatorSpec) r5).indicatorSize - ((CircularProgressIndicatorSpec) r5).trackThickness) / 2.0f;
        if ((this.drawable.isShowing() && ((CircularProgressIndicatorSpec) this.spec).showAnimationBehavior == 2) || (this.drawable.isHiding() && ((CircularProgressIndicatorSpec) this.spec).hideAnimationBehavior == 1)) {
            this.adjustedRadius = (((1.0f - f4) * ((CircularProgressIndicatorSpec) this.spec).trackThickness) / 2.0f) + this.adjustedRadius;
        } else if ((this.drawable.isShowing() && ((CircularProgressIndicatorSpec) this.spec).showAnimationBehavior == 1) || (this.drawable.isHiding() && ((CircularProgressIndicatorSpec) this.spec).hideAnimationBehavior == 2)) {
            this.adjustedRadius = a.a(1.0f - f4, ((CircularProgressIndicatorSpec) this.spec).trackThickness, 2.0f, this.adjustedRadius);
        }
    }

    @Override // com.google.android.material.progressindicator.DrawingDelegate
    public void fillIndicator(@NonNull Canvas canvas, @NonNull Paint paint, @FloatRange(from = 0.0d, to = 1.0d) float f4, @FloatRange(from = 0.0d, to = 1.0d) float f5, @ColorInt int i4) {
        if (f4 == f5) {
            return;
        }
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeCap(Paint.Cap.BUTT);
        paint.setAntiAlias(true);
        paint.setColor(i4);
        paint.setStrokeWidth(this.displayedTrackThickness);
        int i5 = this.arcDirectionFactor;
        float f6 = f4 * 360.0f * i5;
        float f7 = (f5 >= f4 ? f5 - f4 : (f5 + 1.0f) - f4) * 360.0f * i5;
        float f8 = this.adjustedRadius;
        canvas.drawArc(new RectF(-f8, -f8, f8, f8), f6, f7, false, paint);
        if (this.displayedCornerRadius <= 0.0f || Math.abs(f7) >= 360.0f) {
            return;
        }
        paint.setStyle(Paint.Style.FILL);
        float f9 = this.displayedCornerRadius;
        RectF rectF = new RectF(-f9, -f9, f9, f9);
        drawRoundedEnd(canvas, paint, this.displayedTrackThickness, this.displayedCornerRadius, f6, true, rectF);
        drawRoundedEnd(canvas, paint, this.displayedTrackThickness, this.displayedCornerRadius, f6 + f7, false, rectF);
    }

    @Override // com.google.android.material.progressindicator.DrawingDelegate
    public void fillTrack(@NonNull Canvas canvas, @NonNull Paint paint) {
        int iCompositeARGBWithAlpha = MaterialColors.compositeARGBWithAlpha(((CircularProgressIndicatorSpec) this.spec).trackColor, this.drawable.getAlpha());
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeCap(Paint.Cap.BUTT);
        paint.setAntiAlias(true);
        paint.setColor(iCompositeARGBWithAlpha);
        paint.setStrokeWidth(this.displayedTrackThickness);
        float f4 = this.adjustedRadius;
        canvas.drawArc(new RectF(-f4, -f4, f4, f4), 0.0f, 360.0f, false, paint);
    }

    @Override // com.google.android.material.progressindicator.DrawingDelegate
    public int getPreferredHeight() {
        return getSize();
    }

    @Override // com.google.android.material.progressindicator.DrawingDelegate
    public int getPreferredWidth() {
        return getSize();
    }
}
