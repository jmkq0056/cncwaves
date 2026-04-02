package cn.huidu.lcd.setting.keyboard;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import cn.huidu.lcd.setting.R$drawable;
import cn.huidu.lcd.setting.R$string;
import i0.f;
import java.util.List;
import org.eclipse.jetty.http.HttpStatus;

/* JADX INFO: loaded from: classes.dex */
public class SoftKeyboardView extends View {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final /* synthetic */ int f527k = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Context f528a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f529b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public f f530c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Bitmap f531d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Paint f532e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Paint.FontMetricsInt f533f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public float f534g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public a f535h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f536i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f537j;

    public interface a {
        boolean a(SoftKeyboardView softKeyboardView, cn.huidu.lcd.setting.keyboard.a aVar, cn.huidu.lcd.setting.keyboard.a aVar2);
    }

    public SoftKeyboardView(Context context) {
        super(context);
        this.f529b = false;
        this.f534g = 1.0f;
        this.f536i = false;
        this.f537j = HttpStatus.MULTIPLE_CHOICES_300;
        b(context);
    }

    public final void a(Canvas canvas, cn.huidu.lcd.setting.keyboard.a aVar, boolean z3) {
        if (aVar == null) {
            Log.e("SoftKeyboardView", "drawSoftKey: softKey is null...");
            return;
        }
        Drawable drawable = aVar.f538a;
        if (drawable != null) {
            drawable.setBounds(aVar.b());
            drawable.draw(canvas);
        }
        if (z3) {
            if (aVar.f549l) {
                Drawable drawable2 = this.f528a.getResources().getDrawable(R$drawable.key_select_bg_rectangle_alpha);
                if (drawable2 != null) {
                    drawable2.setBounds(aVar.b());
                    drawable2.draw(canvas);
                }
            } else if (aVar.f548k) {
                Drawable drawable3 = this.f528a.getResources().getDrawable(R$drawable.key_select_bg_rectangle);
                drawable3.setBounds(aVar.b());
                drawable3.draw(canvas);
            }
        }
        String string = aVar.f540c;
        Drawable drawable4 = aVar.f539b;
        if (drawable4 != null) {
            drawable4.setFilterBitmap(true);
            int iAbs = Math.abs((int) ((aVar.c() - drawable4.getIntrinsicWidth()) / 2.0f)) + 2;
            int iAbs2 = Math.abs((int) ((aVar.c() - drawable4.getIntrinsicWidth()) - iAbs)) + 4;
            int iAbs3 = Math.abs((int) ((aVar.a() - drawable4.getIntrinsicHeight()) / 2.0f)) + 2;
            drawable4.setBounds(((int) aVar.f542e) + iAbs, ((int) aVar.f544g) + iAbs3, ((int) aVar.f543f) - iAbs2, ((int) aVar.f545h) - (Math.abs((int) ((aVar.a() - drawable4.getIntrinsicHeight()) - iAbs3)) + 4));
            drawable4.draw(canvas);
            return;
        }
        if (TextUtils.isEmpty(string)) {
            return;
        }
        if (string.equals(this.f528a.getString(R$string.next)) && this.f529b) {
            string = this.f528a.getString(R$string.done);
        }
        this.f532e.setTextSize(aVar.f546i);
        this.f532e.setColor(aVar.f547j);
        Paint.FontMetricsInt fontMetricsInt = this.f532e.getFontMetricsInt();
        this.f533f = fontMetricsInt;
        canvas.drawText(string, aVar.f542e + ((aVar.c() - this.f532e.measureText(string)) / 2.0f), (aVar.f544g - (this.f533f.top + 1)) + ((aVar.a() - (fontMetricsInt.bottom - fontMetricsInt.top)) / 2.0f), this.f532e);
    }

    public final void b(Context context) {
        this.f528a = context;
        Paint paint = new Paint();
        this.f532e = paint;
        paint.setAntiAlias(true);
        this.f533f = this.f532e.getFontMetricsInt();
    }

    public f getSoftKeyboard() {
        return this.f530c;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        if (this.f530c == null) {
            return;
        }
        if (this.f531d == null) {
            this.f531d = Bitmap.createBitmap(getWidth(), getHeight(), Bitmap.Config.ARGB_8888);
            Canvas canvas2 = new Canvas(this.f531d);
            ColorDrawable colorDrawable = new ColorDrawable(Color.parseColor("#1b1b1b"));
            colorDrawable.setBounds(new Rect(0, 0, getWidth(), getHeight()));
            colorDrawable.draw(canvas2);
            int iE = this.f530c.e();
            for (int i4 = 0; i4 < iE; i4++) {
                i0.a aVarB = this.f530c.b(i4);
                if (aVarB != null) {
                    List<cn.huidu.lcd.setting.keyboard.a> list = aVarB.f1883a;
                    int size = list.size();
                    for (int i5 = 0; i5 < size; i5++) {
                        a(canvas2, list.get(i5), false);
                    }
                }
            }
        }
        if (this.f531d != null) {
            Paint paint = new Paint();
            paint.setAntiAlias(true);
            canvas.drawBitmap(this.f531d, 0.0f, 0.0f, paint);
        }
        a(canvas, this.f530c.f1893d, true);
    }

    public void setKeyScale(float f4) {
        this.f534g = f4;
    }

    public void setMoveDuration(int i4) {
        this.f537j = i4;
    }

    public void setMoveSoftKey(boolean z3) {
        this.f536i = z3;
    }

    public void setOnKeyBoardAnimListener(a aVar) {
        this.f535h = aVar;
    }

    public void setSelectSofkKeyFront(boolean z3) {
        postInvalidate();
    }

    public void setShowNineNumDoneKey(boolean z3) {
        this.f529b = z3;
    }

    public void setSoftKeyPress(boolean z3) {
        cn.huidu.lcd.setting.keyboard.a aVar;
        f fVar = this.f530c;
        if (fVar == null || (aVar = fVar.f1893d) == null) {
            return;
        }
        aVar.f549l = z3;
        invalidate();
    }

    public void setSoftKeySelectPadding(int i4) {
        float f4 = i4;
        setSoftKeySelectPadding(new RectF(f4, f4, f4, f4));
    }

    public void setSoftKeySelectPadding(RectF rectF) {
    }

    public void setSoftKeyboard(f fVar) {
        this.f530c = fVar;
        this.f531d = null;
        invalidate();
    }

    public SoftKeyboardView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f529b = false;
        this.f534g = 1.0f;
        this.f536i = false;
        this.f537j = HttpStatus.MULTIPLE_CHOICES_300;
        b(context);
    }

    public SoftKeyboardView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.f529b = false;
        this.f534g = 1.0f;
        this.f536i = false;
        this.f537j = HttpStatus.MULTIPLE_CHOICES_300;
        b(context);
    }
}
