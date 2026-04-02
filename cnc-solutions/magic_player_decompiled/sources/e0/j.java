package e0;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Typeface;

/* JADX INFO: loaded from: classes.dex */
public class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f1599a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f1600b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f1601c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Typeface f1602d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public float f1603e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public float f1604f;

    public j(String str) {
        this.f1599a = str == null ? "" : str;
    }

    public void a(Canvas canvas, Paint paint, float f4, float f5) {
        paint.setTextSize(this.f1601c);
        paint.setColor(this.f1600b);
        Typeface typeface = this.f1602d;
        if (typeface != null) {
            paint.setTypeface(typeface);
        } else {
            paint.setTypeface(Typeface.DEFAULT);
        }
        canvas.drawText(this.f1599a, f4, f5 - paint.getFontMetrics().ascent, paint);
    }
}
