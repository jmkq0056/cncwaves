package com.stripe.bbpos.bbdevice;

import android.os.Build;
import android.os.Environment;
import android.os.Handler;
import android.util.Log;
import com.stripe.bbpos.bbdevice.BBDeviceController;
import com.sun.jna.Callback;
import java.io.File;
import java.io.FileOutputStream;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Hashtable;
import java.util.Locale;

/* JADX INFO: loaded from: classes3.dex */
final class ccc061zz {
    private static boolean aaa000 = false;
    private static BBDeviceController aaa001;
    private static BBDeviceController.aaa003zz aaa002 = BBDeviceController.aaa003zz.FUNCTION_AND_CALLBACK_PARAMETER;

    static synchronized void aaa000() {
    }

    static void aaa000(String str) {
    }

    static synchronized void aaa000(boolean z, BBDeviceController bBDeviceController) {
        aaa001 = bBDeviceController;
        if (z) {
            new SimpleDateFormat("yyyyMMddHHmmss", Locale.ROOT).format(Calendar.getInstance().getTime());
        }
        aaa000 = z;
        if (z) {
            aaa000(Build.MANUFACTURER);
            aaa000(Build.MODEL);
            aaa000(Build.VERSION.RELEASE);
            aaa000(BBDeviceController.getApiVersion());
        }
    }

    static boolean aaa001() {
        return aaa000;
    }

    static synchronized void aaa002(final String str) {
        Handler handler;
        if (aaa000) {
            Log.d("com.bbpos", str);
            final String str2 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS", Locale.ROOT).format(Calendar.getInstance().getTime());
            BBDeviceController bBDeviceController = aaa001;
            if (bBDeviceController != null && (handler = bBDeviceController.aaa001) != null) {
                handler.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.ccc061zz$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        ccc061zz.aaa001(str2, str);
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void aaa001(String str, String str2) {
        String str3 = "(" + str + ") " + str2 + "\n";
        String str4 = Environment.getExternalStorageDirectory().getAbsolutePath() + "/Android/Temp/com.bbpos.bbdevice/";
        try {
            File file = new File(str4);
            if (!file.isDirectory()) {
                file.mkdirs();
            }
            FileOutputStream fileOutputStream = new FileOutputStream(str4 + "log.txt", true);
            fileOutputStream.write(str3.getBytes());
            fileOutputStream.flush();
            fileOutputStream.close();
        } catch (Exception unused) {
        }
    }

    static void aaa000(BBDeviceController bBDeviceController) {
        aaa001 = bBDeviceController;
    }

    static synchronized void aaa000(String str, String str2, BBDeviceController.DebugLogType debugLogType, boolean z) {
        final String str3;
        Handler handler;
        Date time = Calendar.getInstance().getTime();
        if (aaa000) {
            final String str4 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS", Locale.ROOT).format(time);
            if (aaa002 == BBDeviceController.aaa003zz.FUNCTION_AND_CALLBACK_PARAMETER) {
                str3 = str + str2;
            } else {
                if (aaa002 == BBDeviceController.aaa003zz.FUNCTION_PARAMETER_ONLY) {
                    if (debugLogType == BBDeviceController.DebugLogType.FUNCTION) {
                        str3 = str + str2;
                    } else {
                        BBDeviceController.DebugLogType debugLogType2 = BBDeviceController.DebugLogType.FUNCTION;
                    }
                } else {
                    str3 = (aaa002 == BBDeviceController.aaa003zz.CALLBACK_PARAMETER_ONLY && debugLogType != BBDeviceController.DebugLogType.FUNCTION && debugLogType == BBDeviceController.DebugLogType.CALLBACK) ? str + str2 : str;
                }
            }
            Log.d("com.bbpos", str3);
            BBDeviceController bBDeviceController = aaa001;
            if (bBDeviceController != null && (handler = bBDeviceController.aaa001) != null) {
                handler.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.ccc061zz$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        ccc061zz.aaa000(str4, str3);
                    }
                });
            }
        }
        if (!z && aaa001 != null) {
            Hashtable<String, Object> hashtable = new Hashtable<>();
            hashtable.put("date", time);
            if (debugLogType == BBDeviceController.DebugLogType.FUNCTION) {
                hashtable.put("type", debugLogType);
                hashtable.put("function", str.substring(str.lastIndexOf("[") + 1, str.lastIndexOf("]")));
                hashtable.put("message", ccc071zz.aaa001(str2).trim());
            } else if (debugLogType == BBDeviceController.DebugLogType.CALLBACK) {
                hashtable.put("type", debugLogType);
                hashtable.put(Callback.METHOD_NAME, str.substring(str.lastIndexOf("[") + 1, str.lastIndexOf("]")));
                hashtable.put("message", ccc071zz.aaa001(str2).trim());
            } else if (debugLogType == BBDeviceController.DebugLogType.EXTRA_DEBUG_MESSAGE) {
                hashtable.put("type", debugLogType);
                String strTrim = ccc071zz.aaa001(str2).trim();
                if (strTrim.indexOf("message=") > 0) {
                    strTrim = strTrim.substring(strTrim.indexOf("message=") + 8);
                }
                if (strTrim.indexOf("}") > 0) {
                    strTrim = strTrim.substring(0, strTrim.indexOf("}"));
                }
                if (strTrim.indexOf(",") > 0) {
                    strTrim = strTrim.substring(0, strTrim.indexOf(","));
                }
                hashtable.put("message", strTrim);
            }
            aaa001.aaa019(hashtable);
        }
    }

    static synchronized void aaa001(String str) {
        if (str != null) {
            Hashtable<String, Object> hashtable = new Hashtable<>();
            hashtable.put("date", Calendar.getInstance().getTime());
            hashtable.put("type", BBDeviceController.DebugLogType.EXTRA_DEBUG_MESSAGE);
            hashtable.put("message", str);
            BBDeviceController bBDeviceController = aaa001;
            if (bBDeviceController != null) {
                bBDeviceController.aaa010(hashtable);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void aaa000(String str, String str2) {
        String str3 = "(" + str + ") " + str2 + "\n";
        String str4 = Environment.getExternalStorageDirectory().getAbsolutePath() + "/Android/Temp/com.bbpos.bbdevice/";
        try {
            File file = new File(str4);
            if (!file.isDirectory()) {
                file.mkdirs();
            }
            FileOutputStream fileOutputStream = new FileOutputStream(str4 + "log.txt", true);
            fileOutputStream.write(str3.getBytes());
            fileOutputStream.flush();
            fileOutputStream.close();
        } catch (Exception unused) {
        }
    }
}
