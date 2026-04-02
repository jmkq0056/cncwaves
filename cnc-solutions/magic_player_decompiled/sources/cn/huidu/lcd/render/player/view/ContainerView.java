package cn.huidu.lcd.render.player.view;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Point;
import android.graphics.RectF;
import android.graphics.Shader;
import android.os.Build;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import d0.g;

/* JADX INFO: loaded from: classes.dex */
public class ContainerView extends FrameLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Paint f486a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final RectF f487b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public BitmapShader f488c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f489d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f490e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f491f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public float f492g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Path f493h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public a f494i;

    public interface a {
    }

    public ContainerView(@NonNull Context context) {
        super(context);
        this.f486a = new Paint();
        this.f487b = new RectF();
        setWillNotDraw(true);
    }

    public void a(int i4, int i5, float f4) {
        Path path;
        double d4;
        double d5;
        Path path2;
        this.f490e = i4;
        this.f491f = i5;
        this.f492g = f4;
        if (f4 > 0.0f) {
            float f5 = f4 + i4;
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            int i6 = layoutParams.width;
            int i7 = layoutParams.height;
            float rotation = getRotation();
            if (Build.VERSION.SDK_INT < 21) {
                path = new Path();
                double d6 = 3.141592653589793d;
                while (true) {
                    if (d6 > 4.71238898038469d) {
                        break;
                    }
                    float fSin = (((float) Math.sin(d6)) * f5) + f5;
                    float fCos = (((float) Math.cos(d6)) * f5) + f5;
                    if (d6 == 3.141592653589793d) {
                        path.moveTo(fSin, fCos);
                    } else {
                        path.lineTo(fSin, fCos);
                    }
                    d6 += 0.10471975511965977d;
                }
                float f6 = i7 - f5;
                for (d4 = 4.71238898038469d; d4 <= 6.283185307179586d; d4 += 0.10471975511965977d) {
                    path.lineTo((((float) Math.sin(d4)) * f5) + f5, (((float) Math.cos(d4)) * f5) + f6);
                }
                float f7 = i6 - f5;
                double d7 = 0.0d;
                while (true) {
                    if (d7 > 1.5707963267948966d) {
                        break;
                    }
                    path.lineTo((((float) Math.sin(d7)) * f5) + f7, (((float) Math.cos(d7)) * f5) + f6);
                    d7 += 0.10471975511965977d;
                }
                for (d5 = 1.5707963267948966d; d5 <= 3.141592653589793d; d5 += 0.10471975511965977d) {
                    path.lineTo((((float) Math.sin(d5)) * f5) + f7, (((float) Math.cos(d5)) * f5) + f5);
                }
                path.close();
            } else if (rotation % 90.0f != 0.0f) {
                path2 = null;
                this.f493h = path2;
            } else {
                path = new Path();
                path.addRoundRect(0.0f, 0.0f, i6, i7, f5, f5, Path.Direction.CW);
            }
            path2 = path;
            this.f493h = path2;
        }
    }

    public void b(int i4, int i5, int i6, int i7) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new FrameLayout.LayoutParams(i6, i7);
        }
        layoutParams.width = i6;
        layoutParams.height = i7;
        layoutParams.leftMargin = i4;
        layoutParams.topMargin = i5;
        setLayoutParams(layoutParams);
    }

    public void c(int i4, int i5, int i6, int i7) {
        Point pointB = w0.a.b(getContext());
        b((int) (((Math.min(i4, 100) / 100.0f) * pointB.x) + 0.5f), (int) (((Math.min(i5, 100) / 100.0f) * pointB.y) + 0.5f), (int) (((Math.min(i6, 100) / 100.0f) * pointB.x) + 0.5f), (int) (((Math.min(i7, 100) / 100.0f) * pointB.y) + 0.5f));
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        float f4 = this.f490e / 2.0f;
        this.f487b.set(f4, f4, canvas.getWidth() - f4, canvas.getHeight() - f4);
        boolean z3 = true;
        this.f486a.setAntiAlias(true);
        this.f486a.setStyle(Paint.Style.FILL);
        BitmapShader bitmapShader = this.f488c;
        if (bitmapShader != null) {
            this.f486a.setShader(bitmapShader);
        } else {
            this.f486a.setColor(this.f489d);
        }
        RectF rectF = this.f487b;
        float f5 = this.f492g;
        canvas.drawRoundRect(rectF, f5, f5, this.f486a);
        this.f486a.setShader(null);
        if (this.f493h != null) {
            canvas.save();
            canvas.clipPath(this.f493h);
        } else {
            z3 = false;
        }
        super.dispatchDraw(canvas);
        if (z3) {
            canvas.restore();
        }
        if (this.f490e > 0) {
            this.f486a.setColor(this.f491f);
            this.f486a.setStyle(Paint.Style.STROKE);
            this.f486a.setStrokeWidth(this.f490e);
            RectF rectF2 = this.f487b;
            float f6 = this.f492g;
            canvas.drawRoundRect(rectF2, f6, f6, this.f486a);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        a aVar = this.f494i;
        if (aVar != null) {
            ((g) aVar).J();
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        a aVar = this.f494i;
        if (aVar != null) {
            ((g) aVar).J();
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public void setBgColor(int i4) {
        this.f489d = i4;
        this.f488c = null;
    }

    public void setBgImage(@Nullable Bitmap bitmap) {
        if (bitmap != null) {
            Shader.TileMode tileMode = Shader.TileMode.CLAMP;
            this.f488c = new BitmapShader(bitmap, tileMode, tileMode);
        } else {
            this.f488c = null;
        }
        this.f489d = 0;
    }

    public void setOnTouchActiveListener(a aVar) {
        this.f494i = aVar;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public FrameLayout.LayoutParams generateDefaultLayoutParams() {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 17;
        return layoutParams;
    }
}
