package i0;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import androidx.core.internal.view.SupportMenu;

/* JADX INFO: loaded from: classes.dex */
public class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Context f1899a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Resources f1900b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f1901c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public float f1902d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public float f1903e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f1904f = true;

    public class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public XmlResourceParser f1905a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public float f1906b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public float f1907c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public float f1908d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public float f1909e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public float f1910f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public float f1911g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public float f1912h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public float f1913i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public float f1914j = 30.0f;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public int f1915k = SupportMenu.CATEGORY_MASK;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public Drawable f1916l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public Drawable f1917m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public Drawable f1918n;

        public a(XmlResourceParser xmlResourceParser) {
            this.f1905a = xmlResourceParser;
        }

        public boolean a(a aVar) {
            this.f1918n = h.this.c(this.f1905a, "key_bg_res", aVar.f1918n);
            this.f1916l = h.this.c(this.f1905a, "key_select_res", aVar.f1916l);
            this.f1917m = h.this.c(this.f1905a, "key_press_res", aVar.f1917m);
            this.f1910f = h.this.d(this.f1905a, "key_left_padding", aVar.f1910f);
            this.f1911g = h.this.d(this.f1905a, "key_right_padding", aVar.f1911g);
            this.f1912h = h.this.d(this.f1905a, "key_top_padding", aVar.f1912h);
            this.f1913i = h.this.d(this.f1905a, "key_bottom_padding", aVar.f1913i);
            this.f1908d = h.this.d(this.f1905a, "start_pos_x", aVar.f1908d);
            this.f1909e = h.this.d(this.f1905a, "start_pos_y", aVar.f1909e);
            this.f1906b = h.this.d(this.f1905a, "key_width", aVar.f1906b);
            this.f1907c = h.this.d(this.f1905a, "key_height", aVar.f1907c);
            this.f1914j = h.this.d(this.f1905a, "key_text_size", aVar.f1914j);
            this.f1915k = h.this.b(this.f1905a, "key_text_color", aVar.f1915k);
            return true;
        }
    }

    public h(Context context) {
        this.f1899a = context;
        if (context == null) {
            throw new AssertionError("mContext not found.");
        }
        Resources resources = context.getResources();
        this.f1900b = resources;
        if (resources == null) {
            throw new AssertionError("mContext not found.");
        }
    }

    public final boolean a(XmlResourceParser xmlResourceParser, String str, boolean z3) {
        String attributeValue = xmlResourceParser.getAttributeValue(null, str);
        if (attributeValue == null) {
            return z3;
        }
        try {
            return Boolean.parseBoolean(attributeValue);
        } catch (NumberFormatException unused) {
            return z3;
        }
    }

    public final int b(XmlResourceParser xmlResourceParser, String str, int i4) {
        int attributeResourceValue = xmlResourceParser.getAttributeResourceValue(null, str, 0);
        if (attributeResourceValue != 0) {
            return this.f1899a.getResources().getColor(attributeResourceValue);
        }
        String attributeValue = xmlResourceParser.getAttributeValue(null, str);
        if (attributeValue == null) {
            return i4;
        }
        if (!attributeValue.startsWith("#")) {
            try {
                return Integer.valueOf(attributeValue).intValue();
            } catch (NumberFormatException unused) {
                return i4;
            }
        }
        try {
            return Color.parseColor(attributeValue);
        } catch (Exception e4) {
            e4.printStackTrace();
            return i4;
        }
    }

    public final Drawable c(XmlResourceParser xmlResourceParser, String str, Drawable drawable) {
        int attributeResourceValue = xmlResourceParser.getAttributeResourceValue(null, str, 0);
        return attributeResourceValue == 0 ? drawable : this.f1900b.getDrawable(attributeResourceValue);
    }

    public final float d(XmlResourceParser xmlResourceParser, String str, float f4) {
        int attributeResourceValue = xmlResourceParser.getAttributeResourceValue(null, str, 0);
        if (attributeResourceValue != 0) {
            return this.f1899a.getResources().getDimension(attributeResourceValue);
        }
        String attributeValue = xmlResourceParser.getAttributeValue(null, str);
        if (attributeValue == null) {
            return f4;
        }
        try {
            return attributeValue.endsWith("%p") ? Float.parseFloat(attributeValue.substring(0, attributeValue.length() - 2)) / 100.0f : Float.parseFloat(attributeValue);
        } catch (NumberFormatException unused) {
            return f4;
        }
    }

    public final cn.huidu.lcd.setting.keyboard.a e(XmlResourceParser xmlResourceParser, a aVar) {
        int iIntValue;
        float f4;
        int attributeResourceValue = xmlResourceParser.getAttributeResourceValue(null, "key_code", 0);
        if (attributeResourceValue == 0) {
            String attributeValue = xmlResourceParser.getAttributeValue(null, "key_code");
            if (attributeValue == null) {
                iIntValue = 0;
            } else {
                try {
                    iIntValue = Integer.valueOf(attributeValue).intValue();
                } catch (NumberFormatException unused) {
                    iIntValue = 0;
                }
            }
        } else {
            iIntValue = Integer.parseInt(this.f1899a.getResources().getString(attributeResourceValue));
        }
        Drawable drawableC = c(xmlResourceParser, "key_icon", null);
        int attributeResourceValue2 = xmlResourceParser.getAttributeResourceValue(null, "key_label", 0);
        String attributeValue2 = attributeResourceValue2 == 0 ? xmlResourceParser.getAttributeValue(null, "key_label") : this.f1899a.getResources().getString(attributeResourceValue2);
        float fD = d(xmlResourceParser, "key_text_size", aVar.f1914j);
        int iB = b(xmlResourceParser, "key_text_color", aVar.f1915k);
        float f5 = this.f1902d + aVar.f1908d + aVar.f1910f;
        float f6 = aVar.f1906b + f5;
        if (this.f1904f) {
            float f7 = aVar.f1909e;
            f4 = aVar.f1912h + f7;
            this.f1903e = f7 - aVar.f1907c;
        } else {
            f4 = aVar.f1912h + this.f1903e + aVar.f1909e;
        }
        float f8 = aVar.f1907c + f4;
        cn.huidu.lcd.setting.keyboard.a aVar2 = new cn.huidu.lcd.setting.keyboard.a();
        aVar2.f546i = fD;
        aVar2.f540c = attributeValue2;
        aVar2.f539b = drawableC;
        aVar2.f547j = iB;
        aVar2.f541d = iIntValue;
        aVar2.f538a = aVar.f1918n;
        aVar2.f542e = f5;
        aVar2.f544g = f4;
        aVar2.f543f = f6;
        aVar2.f545h = f8;
        return aVar2;
    }
}
