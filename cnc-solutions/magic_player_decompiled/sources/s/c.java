package s;

import android.content.Context;
import android.graphics.Point;
import android.hardware.display.DisplayManager;
import android.view.Display;
import android.view.WindowManager;
import w0.d;

/* JADX INFO: loaded from: classes.dex */
public class c {
    public static Point a() {
        Point point = new Point();
        try {
            d.a aVarC = w0.d.c("getprop persist.vendor.sys.display-size");
            if (aVarC.f3778a == 0) {
                String strReplaceAll = aVarC.f3779b;
                if (strReplaceAll.contains("\n")) {
                    strReplaceAll = strReplaceAll.replaceAll("\n", "");
                }
                String[] strArrSplit = strReplaceAll.split("x");
                if (strArrSplit.length > 1) {
                    point.x = Integer.parseInt(strArrSplit[0]);
                    point.y = Integer.parseInt(strArrSplit[1]);
                }
            }
            return point;
        } catch (Exception e4) {
            e4.printStackTrace();
            return point;
        }
    }

    public static Point b() {
        if (cn.huidu.lcd.core.a.f337c == 103) {
            Point pointA = a();
            if (pointA.x > 0 && pointA.y > 0) {
                return pointA;
            }
        }
        return w0.a.b(w0.c.f3777a);
    }

    public static Display c(Context context, int i4) {
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        Display[] displays = ((DisplayManager) context.getSystemService("display")).getDisplays();
        if (displays == null) {
            return null;
        }
        int i5 = 0;
        for (Display display : displays) {
            if (display.getDisplayId() != defaultDisplay.getDisplayId() && (i5 = i5 + 1) == i4) {
                return display;
            }
        }
        return null;
    }
}
