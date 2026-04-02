package m1;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import androidx.annotation.Nullable;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class k {
    public int A;
    public int B;
    public int C;
    public int D;
    public StaticLayout E;
    public StaticLayout F;
    public int G;
    public int H;
    public int I;
    public Rect J;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f2545a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f2546b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f2547c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final float f2548d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final float f2549e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final TextPaint f2550f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final Paint f2551g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Paint f2552h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @Nullable
    public CharSequence f2553i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @Nullable
    public Layout.Alignment f2554j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @Nullable
    public Bitmap f2555k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public float f2556l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f2557m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f2558n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public float f2559o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f2560p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public float f2561q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public float f2562r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f2563s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f2564t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f2565u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f2566v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f2567w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public float f2568x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public float f2569y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public float f2570z;

    public k(Context context) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(null, new int[]{R.attr.lineSpacingExtra, R.attr.lineSpacingMultiplier}, 0, 0);
        this.f2549e = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, 0);
        this.f2548d = typedArrayObtainStyledAttributes.getFloat(1, 1.0f);
        typedArrayObtainStyledAttributes.recycle();
        float fRound = Math.round((context.getResources().getDisplayMetrics().densityDpi * 2.0f) / 160.0f);
        this.f2545a = fRound;
        this.f2546b = fRound;
        this.f2547c = fRound;
        TextPaint textPaint = new TextPaint();
        this.f2550f = textPaint;
        textPaint.setAntiAlias(true);
        textPaint.setSubpixelText(true);
        Paint paint = new Paint();
        this.f2551g = paint;
        paint.setAntiAlias(true);
        paint.setStyle(Paint.Style.FILL);
        Paint paint2 = new Paint();
        this.f2552h = paint2;
        paint2.setAntiAlias(true);
        paint2.setFilterBitmap(true);
    }

    public final void a(Canvas canvas, boolean z3) {
        if (!z3) {
            Objects.requireNonNull(this.J);
            Objects.requireNonNull(this.f2555k);
            canvas.drawBitmap(this.f2555k, (Rect) null, this.J, this.f2552h);
            return;
        }
        StaticLayout staticLayout = this.E;
        StaticLayout staticLayout2 = this.F;
        if (staticLayout == null || staticLayout2 == null) {
            return;
        }
        int iSave = canvas.save();
        canvas.translate(this.G, this.H);
        if (Color.alpha(this.f2565u) > 0) {
            this.f2551g.setColor(this.f2565u);
            canvas.drawRect(-this.I, 0.0f, staticLayout.getWidth() + this.I, staticLayout.getHeight(), this.f2551g);
        }
        int i4 = this.f2567w;
        if (i4 == 1) {
            this.f2550f.setStrokeJoin(Paint.Join.ROUND);
            this.f2550f.setStrokeWidth(this.f2545a);
            this.f2550f.setColor(this.f2566v);
            this.f2550f.setStyle(Paint.Style.FILL_AND_STROKE);
            staticLayout2.draw(canvas);
        } else if (i4 == 2) {
            TextPaint textPaint = this.f2550f;
            float f4 = this.f2546b;
            float f5 = this.f2547c;
            textPaint.setShadowLayer(f4, f5, f5, this.f2566v);
        } else if (i4 == 3 || i4 == 4) {
            boolean z4 = i4 == 3;
            int i5 = z4 ? -1 : this.f2566v;
            int i6 = z4 ? this.f2566v : -1;
            float f6 = this.f2546b / 2.0f;
            this.f2550f.setColor(this.f2563s);
            this.f2550f.setStyle(Paint.Style.FILL);
            float f7 = -f6;
            this.f2550f.setShadowLayer(this.f2546b, f7, f7, i5);
            staticLayout2.draw(canvas);
            this.f2550f.setShadowLayer(this.f2546b, f6, f6, i6);
        }
        this.f2550f.setColor(this.f2563s);
        this.f2550f.setStyle(Paint.Style.FILL);
        staticLayout.draw(canvas);
        this.f2550f.setShadowLayer(0.0f, 0.0f, 0.0f, 0);
        canvas.restoreToCount(iSave);
    }
}
