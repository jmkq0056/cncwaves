package androidx.cardview.widget;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import androidx.annotation.Nullable;
import androidx.cardview.R;

/* JADX INFO: loaded from: classes.dex */
class RoundRectDrawableWithShadow extends Drawable {
    private static final double COS_45 = Math.cos(Math.toRadians(45.0d));
    private static final float SHADOW_MULTIPLIER = 1.5f;
    public static RoundRectHelper sRoundRectHelper;
    private ColorStateList mBackground;
    private final RectF mCardBounds;
    private float mCornerRadius;
    private Paint mCornerShadowPaint;
    private Path mCornerShadowPath;
    private Paint mEdgeShadowPaint;
    private final int mInsetShadow;
    private float mRawMaxShadowSize;
    private float mRawShadowSize;
    private final int mShadowEndColor;
    private float mShadowSize;
    private final int mShadowStartColor;
    private boolean mDirty = true;
    private boolean mAddPaddingForCorners = true;
    private boolean mPrintedShadowClipWarning = false;
    private Paint mPaint = new Paint(5);

    public interface RoundRectHelper {
        void drawRoundRect(Canvas canvas, RectF rectF, float f4, Paint paint);
    }

    public RoundRectDrawableWithShadow(Resources resources, ColorStateList colorStateList, float f4, float f5, float f6) {
        this.mShadowStartColor = resources.getColor(R.color.cardview_shadow_start_color);
        this.mShadowEndColor = resources.getColor(R.color.cardview_shadow_end_color);
        this.mInsetShadow = resources.getDimensionPixelSize(R.dimen.cardview_compat_inset_shadow);
        setBackground(colorStateList);
        Paint paint = new Paint(5);
        this.mCornerShadowPaint = paint;
        paint.setStyle(Paint.Style.FILL);
        this.mCornerRadius = (int) (f4 + 0.5f);
        this.mCardBounds = new RectF();
        Paint paint2 = new Paint(this.mCornerShadowPaint);
        this.mEdgeShadowPaint = paint2;
        paint2.setAntiAlias(false);
        setShadowSize(f5, f6);
    }

    private void buildComponents(Rect rect) {
        float f4 = this.mRawMaxShadowSize;
        float f5 = 1.5f * f4;
        this.mCardBounds.set(rect.left + f4, rect.top + f5, rect.right - f4, rect.bottom - f5);
        buildShadowCorners();
    }

    private void buildShadowCorners() {
        float f4 = this.mCornerRadius;
        RectF rectF = new RectF(-f4, -f4, f4, f4);
        RectF rectF2 = new RectF(rectF);
        float f5 = this.mShadowSize;
        rectF2.inset(-f5, -f5);
        Path path = this.mCornerShadowPath;
        if (path == null) {
            this.mCornerShadowPath = new Path();
        } else {
            path.reset();
        }
        this.mCornerShadowPath.setFillType(Path.FillType.EVEN_ODD);
        this.mCornerShadowPath.moveTo(-this.mCornerRadius, 0.0f);
        this.mCornerShadowPath.rLineTo(-this.mShadowSize, 0.0f);
        this.mCornerShadowPath.arcTo(rectF2, 180.0f, 90.0f, false);
        this.mCornerShadowPath.arcTo(rectF, 270.0f, -90.0f, false);
        this.mCornerShadowPath.close();
        float f6 = this.mCornerRadius;
        float f7 = f6 / (this.mShadowSize + f6);
        Paint paint = this.mCornerShadowPaint;
        float f8 = this.mCornerRadius + this.mShadowSize;
        int i4 = this.mShadowStartColor;
        paint.setShader(new RadialGradient(0.0f, 0.0f, f8, new int[]{i4, i4, this.mShadowEndColor}, new float[]{0.0f, f7, 1.0f}, Shader.TileMode.CLAMP));
        Paint paint2 = this.mEdgeShadowPaint;
        float f9 = this.mCornerRadius;
        float f10 = this.mShadowSize;
        int i5 = this.mShadowStartColor;
        paint2.setShader(new LinearGradient(0.0f, (-f9) + f10, 0.0f, (-f9) - f10, new int[]{i5, i5, this.mShadowEndColor}, new float[]{0.0f, 0.5f, 1.0f}, Shader.TileMode.CLAMP));
        this.mEdgeShadowPaint.setAntiAlias(false);
    }

    public static float calculateHorizontalPadding(float f4, float f5, boolean z3) {
        if (!z3) {
            return f4;
        }
        double d4 = f4;
        double d5 = 1.0d - COS_45;
        double d6 = f5;
        Double.isNaN(d6);
        Double.isNaN(d4);
        return (float) ((d5 * d6) + d4);
    }

    public static float calculateVerticalPadding(float f4, float f5, boolean z3) {
        if (!z3) {
            return f4 * 1.5f;
        }
        double d4 = f4 * 1.5f;
        double d5 = 1.0d - COS_45;
        double d6 = f5;
        Double.isNaN(d6);
        Double.isNaN(d4);
        return (float) ((d5 * d6) + d4);
    }

    private void drawShadow(Canvas canvas) {
        float f4 = this.mCornerRadius;
        float f5 = (-f4) - this.mShadowSize;
        float f6 = (this.mRawShadowSize / 2.0f) + f4 + this.mInsetShadow;
        float f7 = f6 * 2.0f;
        boolean z3 = this.mCardBounds.width() - f7 > 0.0f;
        boolean z4 = this.mCardBounds.height() - f7 > 0.0f;
        int iSave = canvas.save();
        RectF rectF = this.mCardBounds;
        canvas.translate(rectF.left + f6, rectF.top + f6);
        canvas.drawPath(this.mCornerShadowPath, this.mCornerShadowPaint);
        if (z3) {
            canvas.drawRect(0.0f, f5, this.mCardBounds.width() - f7, -this.mCornerRadius, this.mEdgeShadowPaint);
        }
        canvas.restoreToCount(iSave);
        int iSave2 = canvas.save();
        RectF rectF2 = this.mCardBounds;
        canvas.translate(rectF2.right - f6, rectF2.bottom - f6);
        canvas.rotate(180.0f);
        canvas.drawPath(this.mCornerShadowPath, this.mCornerShadowPaint);
        if (z3) {
            canvas.drawRect(0.0f, f5, this.mCardBounds.width() - f7, (-this.mCornerRadius) + this.mShadowSize, this.mEdgeShadowPaint);
        }
        canvas.restoreToCount(iSave2);
        int iSave3 = canvas.save();
        RectF rectF3 = this.mCardBounds;
        canvas.translate(rectF3.left + f6, rectF3.bottom - f6);
        canvas.rotate(270.0f);
        canvas.drawPath(this.mCornerShadowPath, this.mCornerShadowPaint);
        if (z4) {
            canvas.drawRect(0.0f, f5, this.mCardBounds.height() - f7, -this.mCornerRadius, this.mEdgeShadowPaint);
        }
        canvas.restoreToCount(iSave3);
        int iSave4 = canvas.save();
        RectF rectF4 = this.mCardBounds;
        canvas.translate(rectF4.right - f6, rectF4.top + f6);
        canvas.rotate(90.0f);
        canvas.drawPath(this.mCornerShadowPath, this.mCornerShadowPaint);
        if (z4) {
            canvas.drawRect(0.0f, f5, this.mCardBounds.height() - f7, -this.mCornerRadius, this.mEdgeShadowPaint);
        }
        canvas.restoreToCount(iSave4);
    }

    private void setBackground(ColorStateList colorStateList) {
        if (colorStateList == null) {
            colorStateList = ColorStateList.valueOf(0);
        }
        this.mBackground = colorStateList;
        this.mPaint.setColor(colorStateList.getColorForState(getState(), this.mBackground.getDefaultColor()));
    }

    private void setShadowSize(float f4, float f5) {
        if (f4 < 0.0f) {
            throw new IllegalArgumentException("Invalid shadow size " + f4 + ". Must be >= 0");
        }
        if (f5 < 0.0f) {
            throw new IllegalArgumentException("Invalid max shadow size " + f5 + ". Must be >= 0");
        }
        float even = toEven(f4);
        float even2 = toEven(f5);
        if (even > even2) {
            if (!this.mPrintedShadowClipWarning) {
                this.mPrintedShadowClipWarning = true;
            }
            even = even2;
        }
        if (this.mRawShadowSize == even && this.mRawMaxShadowSize == even2) {
            return;
        }
        this.mRawShadowSize = even;
        this.mRawMaxShadowSize = even2;
        this.mShadowSize = (int) ((even * 1.5f) + this.mInsetShadow + 0.5f);
        this.mDirty = true;
        invalidateSelf();
    }

    private int toEven(float f4) {
        int i4 = (int) (f4 + 0.5f);
        return i4 % 2 == 1 ? i4 - 1 : i4;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.mDirty) {
            buildComponents(getBounds());
            this.mDirty = false;
        }
        canvas.translate(0.0f, this.mRawShadowSize / 2.0f);
        drawShadow(canvas);
        canvas.translate(0.0f, (-this.mRawShadowSize) / 2.0f);
        sRoundRectHelper.drawRoundRect(canvas, this.mCardBounds, this.mCornerRadius, this.mPaint);
    }

    public ColorStateList getColor() {
        return this.mBackground;
    }

    public float getCornerRadius() {
        return this.mCornerRadius;
    }

    public void getMaxShadowAndCornerPadding(Rect rect) {
        getPadding(rect);
    }

    public float getMaxShadowSize() {
        return this.mRawMaxShadowSize;
    }

    public float getMinHeight() {
        float f4 = this.mRawMaxShadowSize;
        return (((this.mRawMaxShadowSize * 1.5f) + this.mInsetShadow) * 2.0f) + (Math.max(f4, ((f4 * 1.5f) / 2.0f) + this.mCornerRadius + this.mInsetShadow) * 2.0f);
    }

    public float getMinWidth() {
        float f4 = this.mRawMaxShadowSize;
        return ((this.mRawMaxShadowSize + this.mInsetShadow) * 2.0f) + (Math.max(f4, (f4 / 2.0f) + this.mCornerRadius + this.mInsetShadow) * 2.0f);
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        int iCeil = (int) Math.ceil(calculateVerticalPadding(this.mRawMaxShadowSize, this.mCornerRadius, this.mAddPaddingForCorners));
        int iCeil2 = (int) Math.ceil(calculateHorizontalPadding(this.mRawMaxShadowSize, this.mCornerRadius, this.mAddPaddingForCorners));
        rect.set(iCeil2, iCeil, iCeil2, iCeil);
        return true;
    }

    public float getShadowSize() {
        return this.mRawShadowSize;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        ColorStateList colorStateList = this.mBackground;
        return (colorStateList != null && colorStateList.isStateful()) || super.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.mDirty = true;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        ColorStateList colorStateList = this.mBackground;
        int colorForState = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
        if (this.mPaint.getColor() == colorForState) {
            return false;
        }
        this.mPaint.setColor(colorForState);
        this.mDirty = true;
        invalidateSelf();
        return true;
    }

    public void setAddPaddingForCorners(boolean z3) {
        this.mAddPaddingForCorners = z3;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i4) {
        this.mPaint.setAlpha(i4);
        this.mCornerShadowPaint.setAlpha(i4);
        this.mEdgeShadowPaint.setAlpha(i4);
    }

    public void setColor(@Nullable ColorStateList colorStateList) {
        setBackground(colorStateList);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.mPaint.setColorFilter(colorFilter);
    }

    public void setCornerRadius(float f4) {
        if (f4 < 0.0f) {
            throw new IllegalArgumentException("Invalid radius " + f4 + ". Must be >= 0");
        }
        float f5 = (int) (f4 + 0.5f);
        if (this.mCornerRadius == f5) {
            return;
        }
        this.mCornerRadius = f5;
        this.mDirty = true;
        invalidateSelf();
    }

    public void setMaxShadowSize(float f4) {
        setShadowSize(this.mRawShadowSize, f4);
    }

    public void setShadowSize(float f4) {
        setShadowSize(f4, this.mRawMaxShadowSize);
    }
}
