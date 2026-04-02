package e0;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.text.TextUtils;
import android.text.format.DateFormat;
import cn.huidu.lcd.render.model.ClockNode;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes.dex */
public class a implements d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Calendar f1527a = Calendar.getInstance();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Paint f1528b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ClockNode f1529c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Typeface f1530d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List<j> f1531e;

    public a() {
        Paint paint = new Paint();
        this.f1528b = paint;
        this.f1531e = new ArrayList();
        paint.setAntiAlias(true);
    }

    public final j a(String str, int i4) {
        j jVar = new j(str);
        if (i4 == 0) {
            i4 = this.f1529c.getTextColor();
        }
        jVar.f1600b = i4;
        jVar.f1601c = this.f1529c.getTextSize();
        jVar.f1602d = this.f1530d;
        return jVar;
    }

    public void b(ClockNode clockNode) {
        String str;
        this.f1529c = clockNode;
        String fontName = clockNode.getFontName();
        if (fontName != null) {
            this.f1530d = w0.g.b().c(fontName);
        } else {
            this.f1530d = null;
        }
        o.b bVarP = h.a.P(w0.c.f3777a, this.f1529c.getTimeZone());
        if (bVarP == null || (str = bVarP.f2810c) == null) {
            this.f1527a.setTimeZone(TimeZone.getDefault());
        } else {
            this.f1527a.setTimeZone(TimeZone.getTimeZone(str));
        }
    }

    @Override // e0.d
    public void draw(Canvas canvas) {
        String strC;
        ClockNode clockNode = this.f1529c;
        if (clockNode == null) {
            return;
        }
        this.f1527a.setTimeInMillis(System.currentTimeMillis() + ((long) (clockNode.getTimeAdjust() * 1000)));
        String dateFormat = this.f1529c.getDateFormat();
        Calendar calendar = this.f1527a;
        if (TextUtils.isEmpty(dateFormat)) {
            dateFormat = "yyyy/MM/dd";
        }
        String string = DateFormat.format(dateFormat, calendar).toString();
        String timeFormat = this.f1529c.getTimeFormat();
        Calendar calendar2 = this.f1527a;
        if (TextUtils.isEmpty(timeFormat)) {
            timeFormat = "HH:mm:ss";
        }
        String string2 = DateFormat.format(timeFormat, calendar2).toString();
        int weekFormat = this.f1529c.getWeekFormat();
        String[] customWeek = this.f1529c.getCustomWeek();
        int i4 = this.f1527a.get(7) - 1;
        String str = (customWeek == null || customWeek.length < 7) ? weekFormat != 1 ? weekFormat != 2 ? h0.b.f1800b[i4] : h0.b.f1799a[i4] : h0.b.f1801c[i4] : customWeek[i4];
        Calendar calendar3 = this.f1527a;
        char[] cArr = h0.e.f1814f;
        try {
            strC = new h0.e(calendar3).c(true);
        } catch (Exception unused) {
            strC = "未知";
        }
        String strA = androidx.appcompat.view.a.a("农历", strC);
        this.f1531e.clear();
        if (!TextUtils.isEmpty(this.f1529c.getFixedText())) {
            this.f1531e.add(a(this.f1529c.getFixedText(), this.f1529c.getFixedTextColor()));
        }
        List<String> showItems = this.f1529c.getShowItems();
        if (showItems != null) {
            for (int i5 = 0; i5 < showItems.size(); i5++) {
                String str2 = showItems.get(i5);
                if ("date".equals(str2)) {
                    this.f1531e.add(a(string, this.f1529c.getDateColor()));
                } else if ("time".equals(str2)) {
                    this.f1531e.add(a(string2, this.f1529c.getTimeColor()));
                } else if ("week".equals(str2)) {
                    this.f1531e.add(a(str, this.f1529c.getWeekColor()));
                } else if ("lunar".equals(str2)) {
                    this.f1531e.add(a(strA, this.f1529c.getLunarColor()));
                }
            }
        }
        int width = canvas.getWidth();
        int height = canvas.getHeight();
        int spacing = this.f1529c.getSpacing();
        float f4 = 0.0f;
        float f5 = 0.0f;
        for (j jVar : this.f1531e) {
            Paint paint = this.f1528b;
            paint.setTextSize(jVar.f1601c);
            paint.setColor(jVar.f1600b);
            Typeface typeface = jVar.f1602d;
            if (typeface != null) {
                paint.setTypeface(typeface);
            } else {
                paint.setTypeface(Typeface.DEFAULT);
            }
            jVar.f1603e = paint.measureText(jVar.f1599a);
            Paint.FontMetrics fontMetrics = paint.getFontMetrics();
            float f6 = fontMetrics.descent - fontMetrics.ascent;
            jVar.f1604f = f6;
            if (f4 > 0.0f) {
                f4 += spacing;
            }
            f4 += jVar.f1603e;
            if (f5 > 0.0f) {
                f5 += spacing;
            }
            f5 += f6;
        }
        if (this.f1529c.isMultiLine()) {
            float f7 = (height - f5) / 2.0f;
            for (j jVar2 : this.f1531e) {
                jVar2.a(canvas, this.f1528b, (width - jVar2.f1603e) / 2.0f, f7);
                f7 += jVar2.f1604f + spacing;
            }
            return;
        }
        float f8 = (width - f4) / 2.0f;
        for (j jVar3 : this.f1531e) {
            jVar3.a(canvas, this.f1528b, f8, (height - jVar3.f1604f) / 2.0f);
            f8 += jVar3.f1603e + spacing;
        }
    }
}
