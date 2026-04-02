package q;

import android.content.Context;
import android.os.Build;
import android.provider.Settings;
import android.util.Log;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.nio.charset.StandardCharsets;
import java.util.HashMap;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class k {
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0066, code lost:
    
        r0 = r2[1];
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0069, code lost:
    
        r3.close();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int a() {
        /*
            int r0 = cn.huidu.lcd.core.a.f337c
            r1 = 0
            r2 = 102(0x66, float:1.43E-43)
            if (r0 != r2) goto Lf
            java.lang.String r0 = "persist.sys.rotation"
            java.lang.String r0 = h.a.L(r0)
            goto L87
        Lf:
            r2 = 103(0x67, float:1.44E-43)
            if (r0 != r2) goto L1e
            java.lang.String r0 = "persist.sys.builtinrotation"
            java.lang.String r0 = h.a.L(r0)
            int r1 = java.lang.Integer.parseInt(r0)     // Catch: java.lang.Exception -> L1d
        L1d:
            return r1
        L1e:
            r2 = 107(0x6b, float:1.5E-43)
            if (r0 == r2) goto L81
            r2 = 108(0x6c, float:1.51E-43)
            if (r0 != r2) goto L27
            goto L81
        L27:
            int r0 = android.os.Build.VERSION.SDK_INT
            r2 = 29
            if (r0 < r2) goto L34
            java.lang.String r0 = "ro.sf.main.hwrotation"
            java.lang.String r0 = q.c.a(r0)
            goto L87
        L34:
            java.lang.String r0 = "ro.sf.hwrotation"
            java.io.File r2 = new java.io.File
            java.lang.String r3 = "/system/build.prop"
            r2.<init>(r3)
            java.io.BufferedReader r3 = new java.io.BufferedReader     // Catch: java.lang.Exception -> L7b
            java.io.InputStreamReader r4 = new java.io.InputStreamReader     // Catch: java.lang.Exception -> L7b
            java.io.FileInputStream r5 = new java.io.FileInputStream     // Catch: java.lang.Exception -> L7b
            r5.<init>(r2)     // Catch: java.lang.Exception -> L7b
            java.nio.charset.Charset r2 = java.nio.charset.StandardCharsets.UTF_8     // Catch: java.lang.Exception -> L7b
            r4.<init>(r5, r2)     // Catch: java.lang.Exception -> L7b
            r3.<init>(r4)     // Catch: java.lang.Exception -> L7b
        L4e:
            java.lang.String r2 = r3.readLine()     // Catch: java.lang.Throwable -> L71
            if (r2 == 0) goto L6d
            java.lang.String r4 = "="
            java.lang.String[] r2 = r2.split(r4)     // Catch: java.lang.Throwable -> L71
            int r4 = r2.length     // Catch: java.lang.Throwable -> L71
            r5 = 2
            if (r4 != r5) goto L4e
            r4 = r2[r1]     // Catch: java.lang.Throwable -> L71
            boolean r4 = r4.equals(r0)     // Catch: java.lang.Throwable -> L71
            if (r4 == 0) goto L4e
            r0 = 1
            r0 = r2[r0]     // Catch: java.lang.Throwable -> L71
            r3.close()     // Catch: java.lang.Exception -> L7b
            goto L87
        L6d:
            r3.close()     // Catch: java.lang.Exception -> L7b
            goto L7f
        L71:
            r0 = move-exception
            r3.close()     // Catch: java.lang.Throwable -> L76
            goto L7a
        L76:
            r2 = move-exception
            r0.addSuppressed(r2)     // Catch: java.lang.Exception -> L7b
        L7a:
            throw r0     // Catch: java.lang.Exception -> L7b
        L7b:
            r0 = move-exception
            r0.printStackTrace()
        L7f:
            r0 = 0
            goto L87
        L81:
            java.lang.String r0 = "ro.vendor.sf.rotation"
            java.lang.String r0 = q.c.a(r0)
        L87:
            int r1 = java.lang.Integer.parseInt(r0)     // Catch: java.lang.Exception -> L8b
        L8b:
            int r1 = r1 / 90
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: q.k.a():int");
    }

    public static boolean b(Context context) {
        int i4;
        try {
            i4 = Settings.System.getInt(context.getContentResolver(), "accelerometer_rotation");
        } catch (Exception e4) {
            Log.w("SystemSettingUtils", e4.getClass().getName() + ": " + e4.getMessage());
            i4 = 0;
        }
        return i4 == 1;
    }

    public static boolean c(Context context, int i4) {
        int i5 = cn.huidu.lcd.core.a.f337c;
        if (i5 == 103) {
            return true;
        }
        if (Build.VERSION.SDK_INT < 29) {
            return h.a.r0("persist.sys.rotation.einit", String.valueOf(i4));
        }
        HashMap map = new HashMap();
        map.put("ro.sf.hwrotation", String.valueOf(i4 * 90));
        if (i5 == 105) {
            map.put("persist.sys.rotation.einit-1", String.valueOf(i4));
            map.put("persist.sys.rotation.einit-2", String.valueOf(i4));
        } else {
            map.put("persist.sys.rotation.einit", String.valueOf(i4));
        }
        return c.b(context, map);
    }

    public static boolean d(Context context, int i4) {
        BufferedReader bufferedReader;
        StringBuilder sb;
        boolean z3;
        int i5 = cn.huidu.lcd.core.a.f337c;
        if (i5 == 102) {
            return h.a.r0("persist.sys.rotation", String.valueOf(i4 * 90));
        }
        if (i5 == 103) {
            return h.a.r0("persist.sys.builtinrotation", String.valueOf(i4));
        }
        if (i5 == 107 || i5 == 108) {
            String strValueOf = String.valueOf(i4 * 90);
            HashMap map = new HashMap();
            map.put("ro.vendor.sf.rotation", strValueOf);
            map.put("ro.surface_flinger.primary_display_orientation", "ORIENTATION_" + strValueOf);
            return c.b(context, map);
        }
        if (Build.VERSION.SDK_INT >= 29) {
            String strValueOf2 = String.valueOf(i4 * 90);
            HashMap map2 = new HashMap();
            map2.put("ro.sf.main.hwrotation", strValueOf2);
            map2.put("ro.surface_flinger.primary_display_orientation", "ORIENTATION_" + strValueOf2);
            return c.b(context, map2);
        }
        String strValueOf3 = String.valueOf(i4 * 90);
        HashMap map3 = new HashMap();
        map3.put("ro.sf.hwrotation", strValueOf3);
        try {
            bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(new File("/system/build.prop")), StandardCharsets.UTF_8));
            try {
                sb = new StringBuilder();
            } finally {
            }
        } catch (Exception e4) {
            e4.printStackTrace();
            return false;
        }
        while (true) {
            String line = bufferedReader.readLine();
            if (line == null) {
                break;
            }
            Iterator it = map3.keySet().iterator();
            while (true) {
                if (!it.hasNext()) {
                    z3 = false;
                    break;
                }
                String str = (String) it.next();
                if (line.contains(str)) {
                    Log.d("BuildProperties", "modifyBuildProp: replace > " + str);
                    sb.append(str);
                    sb.append("=");
                    sb.append((String) map3.get(str));
                    sb.append("\n");
                    map3.remove(str);
                    z3 = true;
                    break;
                }
            }
            if (!z3) {
                sb.append(line);
                sb.append("\n");
            }
            e4.printStackTrace();
            return false;
        }
        for (String str2 : map3.keySet()) {
            Log.d("BuildProperties", "modifyBuildProp: add > " + str2);
            sb.append(str2);
            sb.append("=");
            sb.append((String) map3.get(str2));
            sb.append("\n");
        }
        boolean zC = c.c(context, sb.toString());
        bufferedReader.close();
        return zC;
    }

    public static boolean e(Context context, boolean z3) {
        try {
            return h.a.r0("persist.sys.sensor.rotation", z3 ? "1" : "0") && Settings.System.putInt(context.getContentResolver(), "accelerometer_rotation", z3 ? 1 : 0);
        } catch (Exception e4) {
            e4.printStackTrace();
            return false;
        }
    }
}
