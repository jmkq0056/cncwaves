package cn.huidu.lcd.render.player.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.ImageView;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatImageView;

/* JADX INFO: loaded from: classes.dex */
public class RotateImageView extends AppCompatImageView {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public float f499a;

    public RotateImageView(Context context) {
        super(context);
        setScaleType(ImageView.ScaleType.FIT_XY);
        this.f499a = 0.0f;
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDraw(Canvas canvas) {
        canvas.rotate(this.f499a, getWidth() / 2.0f, getHeight() / 2.0f);
        Drawable drawable = getDrawable();
        if (drawable != null) {
            drawable.draw(canvas);
        }
        float f4 = this.f499a + 6.0f;
        this.f499a = f4;
        if (f4 >= 360.0f) {
            this.f499a = 0.0f;
        }
        invalidate();
    }

    public RotateImageView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        setScaleType(ImageView.ScaleType.FIT_XY);
        this.f499a = 0.0f;
    }
}
