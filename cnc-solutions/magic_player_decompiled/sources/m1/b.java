package m1;

import android.graphics.Color;
import androidx.annotation.ColorInt;

/* JADX INFO: loaded from: classes.dex */
public final class b {
    public static String a(String str) {
        return "." + str + ",." + str + " *";
    }

    public static float b(int i4, float f4, int i5, int i6) {
        float f5;
        if (f4 == -3.4028235E38f) {
            return -3.4028235E38f;
        }
        if (i4 == 0) {
            f5 = i6;
        } else {
            if (i4 != 1) {
                if (i4 != 2) {
                    return -3.4028235E38f;
                }
                return f4;
            }
            f5 = i5;
        }
        return f4 * f5;
    }

    public static String c(@ColorInt int i4) {
        double dAlpha = Color.alpha(i4);
        Double.isNaN(dAlpha);
        return o1.e.d("rgba(%d,%d,%d,%.3f)", Integer.valueOf(Color.red(i4)), Integer.valueOf(Color.green(i4)), Integer.valueOf(Color.blue(i4)), Double.valueOf(dAlpha / 255.0d));
    }
}
