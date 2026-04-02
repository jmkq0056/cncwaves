package cn.huidu.lcd.core.util;

import android.graphics.Point;
import android.os.Build;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.util.Log;
import androidx.media.b;
import com.droidlogic.app.ScreenControlManager;
import com.google.android.material.datepicker.UtcDates;
import java.util.Calendar;
import java.util.TimeZone;
import w0.c;
import w0.d;

/* JADX INFO: loaded from: classes.dex */
public class a {
    public static void a(String str) {
        b.a(androidx.appcompat.view.b.a("chmod 777 ", str, " >>> "), d.c(androidx.appcompat.view.a.a("chmod 777 ", str)).f3778a, "CmdUtils");
    }

    public static boolean b() {
        int i4 = Build.VERSION.SDK_INT;
        d.a aVarA = (i4 == 21 || i4 == 22) ? d.a("reboot -f") : d.a("reboot");
        Log.d("CmdUtils", "reboot:result = " + aVarA);
        return aVarA.f3778a == 0;
    }

    public static boolean c(String str) {
        return cn.huidu.lcd.core.a.f337c == 103 ? d(str) : d.a(androidx.appcompat.view.a.a("screencap -p ", str)).f3778a == 0;
    }

    public static boolean d(String str) {
        Point pointB = w0.a.b(c.f3777a);
        ScreenControlManager screenControlManager = ScreenControlManager.getInstance();
        int i4 = pointB.x;
        int i5 = pointB.y;
        return screenControlManager.startScreenCap(0, 0, i4, i5, i4, i5, 1, str) == 0;
    }

    public static boolean e(int i4) {
        String str;
        if (Build.VERSION.SDK_INT < 24) {
            return false;
        }
        String str2 = SystemProperties.get("ro.product.hd_model");
        Calendar calendar = Calendar.getInstance();
        String str3 = "hwclock -w -u -f /dev/rtc0";
        if (cn.huidu.lcd.core.a.f337c == 102) {
            if ("40X".equals(str2)) {
                calendar.setTimeZone(TimeZone.getTimeZone(UtcDates.UTC));
                str3 = "busybox hwclock -w -f /dev/rtc0";
            } else {
                calendar.setTimeZone(TimeZone.getTimeZone("GMT"));
            }
        } else if ("3288S".equals(str2) || cn.huidu.lcd.core.a.b()) {
            calendar.setTimeZone(TimeZone.getTimeZone("GMT"));
        } else {
            str3 = "hwclock -w -f /dev/rtc1";
        }
        Log.d("CmdUtils", str3 + "\n" + d.c(str3));
        calendar.add(13, i4);
        int i5 = calendar.get(1);
        int i6 = calendar.get(2);
        int i7 = calendar.get(7);
        int i8 = calendar.get(5);
        int i9 = calendar.get(11);
        int i10 = calendar.get(12);
        int i11 = calendar.get(13);
        if ("3288S".equals(str2) || "40M".equals(str2) || "A40S".equals(str2) || cn.huidu.lcd.core.a.b()) {
            str = "setalarm_pwron " + i11 + " " + i10 + " " + i9 + " " + i8 + " " + i6 + " " + i5 + " " + (i7 - 1);
        } else {
            str = "setalarm_pwron " + i11 + " " + i10 + " " + i9 + " " + i8 + " " + i6 + " " + i5;
        }
        d.a aVarC = d.c(str);
        Log.d("CmdUtils", str + "\n" + aVarC);
        return aVarC.f3778a == 0;
    }

    public static boolean f(int i4) {
        return (i4 == 0 ? d.c("echo off > /sys/devices/platform/radio-frequency/value") : d.c("echo on > /sys/devices/platform/radio-frequency/value")).f3778a == 0;
    }

    public static void g() {
        String str;
        if (Build.VERSION.SDK_INT == 25) {
            d.a aVarC = d.c("cat /sys/power/wake_lock");
            Log.d("CmdUtils", "cat /sys/power/wake_lock >>> " + aVarC);
            if (aVarC.f3778a != 0 || (str = aVarC.f3779b) == null || str.contains("PowerManagerService.noSuspend")) {
                Log.d("CmdUtils", "'PowerManagerService.noSuspend' is existed.");
                return;
            }
            Log.d("CmdUtils", "echo \"PowerManagerService.noSuspend\" > /sys/power/wake_lock >>> " + d.c("echo \"PowerManagerService.noSuspend\" > /sys/power/wake_lock"));
        }
    }

    public static boolean h() {
        Log.d("CmdUtils", "request shutdown..");
        return d.c("reboot -p").f3778a == 0;
    }

    public static boolean i(boolean z3) {
        synchronized (a.class) {
            boolean z4 = true;
            if (w0.a.e(c.f3777a) == z3) {
                return true;
            }
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            d.a aVarA = d.a("input keyevent 26");
            Log.d("CmdUtils", "input keyevent 26 >>> " + aVarA.f3778a + ", elapse: " + (SystemClock.elapsedRealtime() - jElapsedRealtime));
            if (aVarA.f3778a != 0) {
                z4 = false;
            }
            return z4;
        }
    }

    public static boolean j() {
        g();
        return i(false);
    }

    public static boolean k() {
        return i(true);
    }
}
