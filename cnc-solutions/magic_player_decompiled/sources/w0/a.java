package w0;

import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.graphics.Point;
import android.hardware.display.DisplayManager;
import android.os.Build;
import android.os.PowerManager;
import android.view.Display;
import android.view.WindowManager;
import androidx.appcompat.widget.ActivityChooserModel;
import java.util.Iterator;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class a {
    public static PackageInfo a(Context context, String str) {
        try {
            return context.getPackageManager().getPackageInfo(str, 16384);
        } catch (Exception unused) {
            return null;
        }
    }

    public static Point b(Context context) {
        Point point = new Point();
        ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getRealSize(point);
        return point;
    }

    public static boolean c(Context context, String str) {
        try {
            Iterator<ActivityManager.RunningTaskInfo> it = ((ActivityManager) context.getSystemService(ActivityChooserModel.ATTRIBUTE_ACTIVITY)).getRunningTasks(100).iterator();
            while (it.hasNext()) {
                if (it.next().topActivity.getPackageName().equals(str)) {
                    return true;
                }
            }
            return false;
        } catch (Exception e4) {
            e4.printStackTrace();
            return false;
        }
    }

    public static boolean d(Context context) {
        return context.getResources().getConfiguration().orientation == 2;
    }

    public static boolean e(Context context) {
        if (Build.VERSION.SDK_INT <= 19) {
            PowerManager powerManager = (PowerManager) context.getSystemService("power");
            Objects.requireNonNull(powerManager);
            return powerManager.isScreenOn();
        }
        for (Display display : ((DisplayManager) context.getSystemService("display")).getDisplays()) {
            if (display.getState() != 1) {
                return true;
            }
        }
        return false;
    }
}
