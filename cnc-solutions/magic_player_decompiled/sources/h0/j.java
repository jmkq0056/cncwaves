package h0;

import android.graphics.Bitmap;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.text.Layout;
import android.util.Log;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes.dex */
public class j {

    public static class a implements Cloneable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f1826a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f1827b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f1828c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f1829d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public CharSequence f1830e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public Typeface f1831f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public float f1832g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f1833h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f1834i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public int f1835j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public boolean f1836k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public boolean f1837l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public boolean f1838m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public int f1839n;

        public Object clone() {
            return (a) super.clone();
        }
    }

    public static Bitmap a(int i4, int i5) {
        try {
            return Bitmap.createBitmap(i4, i5, Bitmap.Config.ARGB_8888);
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public static Layout.Alignment b(int i4) {
        int i5 = i4 & 255;
        return i5 != 1 ? i5 != 2 ? i5 != 3 ? Layout.Alignment.ALIGN_NORMAL : Layout.Alignment.ALIGN_CENTER : Layout.Alignment.ALIGN_OPPOSITE : Layout.Alignment.ALIGN_NORMAL;
    }

    public static float c(float f4, float f5, int i4) {
        int i5 = i4 & 65280;
        if (i5 == 256) {
            return 0.0f;
        }
        if (i5 == 512) {
            return f4 - f5;
        }
        if (i5 != 768) {
            return 0.0f;
        }
        return (f4 - f5) / 2.0f;
    }

    public static void d(Paint paint, a aVar, int i4) {
        int i5;
        int i6 = 1;
        paint.setAntiAlias(true);
        Typeface typeface = aVar.f1831f;
        if (typeface == null) {
            typeface = Typeface.DEFAULT;
        }
        paint.setTypeface(typeface);
        paint.setTextSize(aVar.f1832g);
        paint.setColor(aVar.f1834i);
        paint.setUnderlineText(aVar.f1838m);
        int i7 = 0;
        if (!aVar.f1836k || typeface.isBold()) {
            paint.setFakeBoldText(false);
        } else {
            paint.setFakeBoldText(true);
        }
        if (!aVar.f1837l || typeface.isItalic()) {
            paint.setTextSkewX(0.0f);
        } else {
            paint.setTextSkewX(-0.25f);
        }
        paint.setStyle(Paint.Style.FILL);
        int i8 = aVar.f1833h;
        if (i8 > 0) {
            int i9 = RecyclerView.MAX_SCROLL_DURATION;
            while (true) {
                if (i7 > i9) {
                    break;
                }
                i5 = (i7 + i9) >> 1;
                paint.setTextSize(i5);
                Paint.FontMetrics fontMetrics = paint.getFontMetrics();
                double d4 = fontMetrics.descent - fontMetrics.ascent;
                float f4 = i4;
                float f5 = i8 - 1;
                double d5 = f4 - (fontMetrics.leading * f5);
                int i10 = i9;
                int i11 = i7;
                double d6 = i8;
                Double.isNaN(d6);
                Double.isNaN(d6);
                Double.isNaN(d6);
                double d7 = d6 * 1.0d;
                Double.isNaN(d5);
                Double.isNaN(d5);
                Double.isNaN(d5);
                double d8 = d5 / d7;
                if (d4 >= d8) {
                    if (d4 <= d8) {
                        break;
                    }
                    i9 = i5 - 1;
                    i7 = i11;
                } else {
                    int i12 = i5 + 1;
                    paint.setTextSize(i12);
                    Paint.FontMetrics fontMetrics2 = paint.getFontMetrics();
                    double d9 = fontMetrics2.descent - fontMetrics2.ascent;
                    double d10 = f4 - (fontMetrics2.leading * f5);
                    Double.isNaN(d10);
                    Double.isNaN(d10);
                    Double.isNaN(d10);
                    double d11 = d10 / d7;
                    if (d9 > d11) {
                        i6 = i5 - 1;
                        break;
                    } else {
                        if (d9 == d11) {
                            break;
                        }
                        i9 = i10;
                        i7 = i12;
                    }
                }
            }
            i6 = i5;
            if (i6 > 1000) {
                i6 = 1000;
            }
            if (i6 < 8) {
                i6 = 8;
            }
            float f6 = i6;
            aVar.f1832g = f6;
            Log.d("Text2Image", "initTextStyle::" + i6);
            paint.setTextSize(f6);
        }
    }

    public static CharSequence e(CharSequence charSequence) {
        if (charSequence == null || charSequence.length() == 0) {
            return "";
        }
        int length = charSequence.length();
        int i4 = 0;
        while (i4 < length && charSequence.charAt(i4) == '\n') {
            i4++;
        }
        while (length > 0 && charSequence.charAt(length - 1) == '\n') {
            length--;
        }
        return (i4 > 0 || length < charSequence.length()) ? charSequence.subSequence(i4, length) : charSequence;
    }
}
