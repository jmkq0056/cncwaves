package com.stripe.bbpos.bbdevice.ota;

import android.os.Build;
import android.os.Environment;
import android.util.Log;
import com.stripe.bbpos.bbdevice.ota.BBDeviceOTAController;
import com.sun.jna.Callback;
import java.io.File;
import java.io.FileOutputStream;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Hashtable;
import java.util.Locale;

/* JADX INFO: loaded from: classes3.dex */
final class r {
    private static boolean a = false;
    private static boolean b = false;
    private static String c = "";
    private static BBDeviceOTAController d;
    protected static final byte[] e = {117, -124, 124, -120};

    static void a(boolean z, BBDeviceOTAController bBDeviceOTAController) {
        d = bBDeviceOTAController;
        if (z) {
            c = "EncryptedLog-" + Build.MANUFACTURER + "-" + Build.MODEL + "-" + Build.VERSION.RELEASE + "-" + new SimpleDateFormat("yyyyMMddHHmmss", Locale.US).format(Calendar.getInstance().getTime()) + ".txt";
        }
        b = z;
        if (z) {
            a(Build.MANUFACTURER);
            a(Build.MODEL);
            a(Build.VERSION.RELEASE);
            a(BBDeviceOTAController.getApiVersion());
        }
    }

    static void b(String str) {
        a(str, "", null, false);
    }

    static void c(String str) {
        if (a && b) {
            Log.d("com.bbpos", str);
            String str2 = "(" + new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS", Locale.US).format(Calendar.getInstance().getTime()) + ") " + str + "\n";
            String str3 = Environment.getExternalStorageDirectory().getAbsolutePath() + "/Android/Temp/com.bbpos.bbdevice.ota/";
            try {
                File file = new File(str3);
                if (!file.isDirectory()) {
                    file.mkdirs();
                }
                FileOutputStream fileOutputStream = new FileOutputStream(str3 + "log.txt", true);
                fileOutputStream.write(str2.getBytes());
                fileOutputStream.flush();
                fileOutputStream.close();
            } catch (Exception unused) {
            }
        }
    }

    static void a(BBDeviceOTAController bBDeviceOTAController) {
        d = bBDeviceOTAController;
    }

    static void a(String str) {
        if (a) {
            Log.d("com.bbpos", str);
            String str2 = "(" + new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.US).format(Calendar.getInstance().getTime()) + ") " + str + "\n";
            String str3 = Environment.getExternalStorageDirectory().getAbsolutePath() + "/Android/Temp/com.bbpos.bbdevice.ota/";
            try {
                File file = new File(str3);
                if (!file.isDirectory()) {
                    file.mkdirs();
                }
                FileOutputStream fileOutputStream = new FileOutputStream(str3 + "log.txt", true);
                fileOutputStream.write(str2.getBytes());
                fileOutputStream.flush();
                fileOutputStream.close();
            } catch (Exception unused) {
            }
        }
    }

    static void a(String str, String str2, BBDeviceOTAController.DebugLogType debugLogType) {
        a(str, str2, debugLogType, true);
    }

    private static void a(String str, String str2, BBDeviceOTAController.DebugLogType debugLogType, boolean z) {
        BBDeviceOTAController bBDeviceOTAController;
        Date time = Calendar.getInstance().getTime();
        if (b) {
            String str3 = str + str2;
            Log.d("com.bbpos", str3);
            String str4 = "(" + new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS", Locale.US).format(time) + ") " + str3 + "\n";
            String str5 = Environment.getExternalStorageDirectory().getAbsolutePath() + "/Android/Temp/com.bbpos.bbdevice.ota/";
            try {
                File file = new File(str5);
                if (!file.isDirectory()) {
                    file.mkdirs();
                }
                FileOutputStream fileOutputStream = new FileOutputStream(str5 + "log.txt", true);
                fileOutputStream.write(str4.getBytes());
                fileOutputStream.flush();
                fileOutputStream.close();
            } catch (Exception unused) {
            }
        }
        if (!z || (bBDeviceOTAController = d) == null || bBDeviceOTAController.d == null || BBDeviceOTAController.f == null) {
            return;
        }
        final Hashtable hashtable = new Hashtable();
        hashtable.put("date", time);
        if (debugLogType == BBDeviceOTAController.DebugLogType.FUNCTION) {
            hashtable.put("type", debugLogType);
            hashtable.put("function", str.substring(str.lastIndexOf("[") + 1, str.lastIndexOf("]")));
            hashtable.put("message", f0.c(str2).trim());
        } else if (debugLogType == BBDeviceOTAController.DebugLogType.CALLBACK) {
            hashtable.put("type", debugLogType);
            hashtable.put(Callback.METHOD_NAME, str.substring(str.lastIndexOf("[") + 1, str.lastIndexOf("]")));
            hashtable.put("message", f0.c(str2).trim());
        } else if (debugLogType == BBDeviceOTAController.DebugLogType.EXTRA_DEBUG_MESSAGE) {
            hashtable.put("type", debugLogType);
            String strTrim = f0.c(str2).trim();
            if (strTrim.indexOf("message=") > 0) {
                strTrim = strTrim.substring(strTrim.indexOf("message=") + 8);
                if (strTrim.indexOf("}") > 0) {
                    strTrim = strTrim.substring(0, strTrim.indexOf("}"));
                }
                if (strTrim.indexOf(",") > 0) {
                    strTrim = strTrim.substring(0, strTrim.indexOf(","));
                }
            }
            hashtable.put("message", strTrim);
        }
        d.d.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.ota.r$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                r.a(hashtable);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(Hashtable hashtable) {
        BBDeviceOTAController.f.onReturnOTADebugLog(hashtable);
    }

    static String a(Exception exc) {
        String str = exc.toString() + "\n";
        for (StackTraceElement stackTraceElement : exc.getStackTrace()) {
            str = str + stackTraceElement.toString() + "\n";
        }
        return str;
    }
}
