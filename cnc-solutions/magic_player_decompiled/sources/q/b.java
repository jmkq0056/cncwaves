package q;

import android.content.Context;
import android.provider.Settings;
import android.util.Log;
import com.droidlogic.app.SystemControlManager;
import w0.d;

/* JADX INFO: loaded from: classes.dex */
public class b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int f3096b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Context f3097a;

    static {
        if (cn.huidu.lcd.core.a.f337c == 103) {
            f3096b = 100;
        } else {
            f3096b = 255;
        }
    }

    public b(Context context) {
        this.f3097a = context;
    }

    public static int a(boolean z3) {
        try {
            int iGetBacklight = SystemControlManager.getInstance().GetBacklight() + (z3 ? 5 : -5);
            if (iGetBacklight > 100) {
                iGetBacklight = 100;
            } else if (iGetBacklight < 0) {
                iGetBacklight = 0;
            }
            SystemControlManager.getInstance().SetBacklight(iGetBacklight, 1);
            return iGetBacklight;
        } catch (Exception e4) {
            e4.printStackTrace();
            return 50;
        }
    }

    public int b(int i4) {
        if (i4 < 0) {
            return 0;
        }
        if (i4 > 100) {
            return f3096b;
        }
        double d4 = i4;
        Double.isNaN(d4);
        double d5 = f3096b;
        Double.isNaN(d5);
        return (int) (((d4 / 100.0d) * d5) + 0.5d);
    }

    public int c() {
        int i4 = f3096b;
        try {
            int i5 = Settings.System.getInt(this.f3097a.getContentResolver(), "screen_brightness");
            return i5 > i4 ? i4 : i5;
        } catch (Exception e4) {
            e4.printStackTrace();
            return i4;
        }
    }

    public int d(int i4) {
        double d4 = i4;
        Double.isNaN(d4);
        double d5 = f3096b;
        Double.isNaN(d5);
        return (int) ((((d4 * 1.0d) / d5) * 100.0d) + 0.5d);
    }

    public void e(int i4) {
        try {
            int i5 = cn.huidu.lcd.core.a.f337c;
            if (i5 == 103) {
                SystemControlManager.getInstance().SetBacklight(i4, 1);
            } else if (i5 == 106) {
                d.a aVarC = w0.d.c("echo " + i4 + " > /sys/class/backlight/backlight1/brightness");
                StringBuilder sb = new StringBuilder();
                sb.append("setDdpBrightness: ");
                sb.append(aVarC.f3778a);
                Log.d("BrightnessUtils", sb.toString());
            }
            Settings.System.putInt(this.f3097a.getContentResolver(), "screen_brightness", i4);
            this.f3097a.getContentResolver().notifyChange(Settings.System.getUriFor("screen_brightness"), null);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }
}
