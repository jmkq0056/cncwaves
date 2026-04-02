package e0;

import android.graphics.Canvas;
import android.os.SystemClock;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import androidx.core.internal.view.SupportMenu;
import cn.huidu.lcd.render.model.WeatherNode;

/* JADX INFO: loaded from: classes.dex */
public class l implements d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TextPaint f1609a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public WeatherNode f1610b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Layout f1611c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f1612d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f1613e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public float f1614f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public long f1615g;

    public l() {
        TextPaint textPaint = new TextPaint();
        this.f1609a = textPaint;
        textPaint.setColor(SupportMenu.CATEGORY_MASK);
        textPaint.setTextSize(16.0f);
        textPaint.setAntiAlias(true);
    }

    public final void a(String str) {
        float f4 = 0.0f;
        this.f1614f = 0.0f;
        if (!this.f1610b.isMultiLine()) {
            this.f1612d = true;
            this.f1611c = new StaticLayout(str, this.f1609a, Math.round(this.f1609a.measureText(str)) + 60, Layout.Alignment.ALIGN_CENTER, 1.0f, 0.0f, false);
            return;
        }
        this.f1612d = false;
        for (String str2 : str.split("\n")) {
            float fMeasureText = this.f1609a.measureText(str2);
            if (fMeasureText > f4) {
                f4 = fMeasureText;
            }
        }
        this.f1611c = new StaticLayout(str, this.f1609a, Math.round(f4) + 60, Layout.Alignment.ALIGN_CENTER, 1.0f, this.f1610b.getSpacing(), false);
    }

    @Override // e0.d
    public void draw(Canvas canvas) {
        Layout layout = this.f1611c;
        if (layout == null) {
            return;
        }
        int width = canvas.getWidth();
        int height = canvas.getHeight();
        int width2 = layout.getWidth();
        int height2 = layout.getHeight();
        boolean z3 = this.f1612d && width2 + (-60) > width;
        this.f1613e = z3;
        if (!z3) {
            canvas.translate((width - width2) / 2.0f, (height - height2) / 2.0f);
            layout.draw(canvas);
            return;
        }
        float f4 = this.f1614f;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        long j4 = jElapsedRealtime - this.f1615g;
        this.f1615g = jElapsedRealtime;
        float f5 = f4 + ((j4 <= 0 || j4 >= 3000) ? 0.0f : (j4 * 30) / 1000.0f);
        this.f1614f = f5;
        float f6 = width2;
        if (f5 > f6) {
            this.f1614f = f5 - f6;
        }
        float f7 = -this.f1614f;
        canvas.translate(f7, (height - height2) / 2.0f);
        layout.draw(canvas);
        if (!this.f1613e || f7 + f6 >= width) {
            return;
        }
        canvas.translate(f6, 0.0f);
        layout.draw(canvas);
    }
}
