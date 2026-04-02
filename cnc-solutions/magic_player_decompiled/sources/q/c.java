package q;

import android.content.Context;
import android.os.Build;
import android.util.Log;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.nio.charset.StandardCharsets;
import java.util.Iterator;
import java.util.Map;
import w0.d;

/* JADX INFO: loaded from: classes.dex */
public class c {
    public static String a(String str) {
        BufferedReader bufferedReader;
        try {
            bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(new File("/odm/huidu/build.prop")), StandardCharsets.UTF_8));
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
        while (true) {
            try {
                String line = bufferedReader.readLine();
                if (line == null) {
                    bufferedReader.close();
                    return null;
                }
                String[] strArrSplit = line.split("=");
                if (strArrSplit.length == 2 && strArrSplit[0].equals(str)) {
                    String str2 = strArrSplit[1];
                    bufferedReader.close();
                    return str2;
                }
            } finally {
            }
            e4.printStackTrace();
            return null;
        }
    }

    public static boolean b(Context context, Map<String, String> map) {
        BufferedReader bufferedReader;
        StringBuilder sb;
        boolean z3;
        try {
            bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(new File("/odm/huidu/build.prop")), StandardCharsets.UTF_8));
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
            Iterator<String> it = map.keySet().iterator();
            while (true) {
                if (!it.hasNext()) {
                    z3 = false;
                    break;
                }
                String next = it.next();
                if (line.contains(next)) {
                    Log.d("BuildProperties", "modifyBuildProp: replace > " + next);
                    sb.append(next);
                    sb.append("=");
                    sb.append(map.get(next));
                    sb.append("\n");
                    map.remove(next);
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
        for (String str : map.keySet()) {
            Log.d("BuildProperties", "modifyBuildProp: add > " + str);
            sb.append(str);
            sb.append("=");
            sb.append(map.get(str));
            sb.append("\n");
        }
        boolean zD = d(context, sb.toString());
        bufferedReader.close();
        return zD;
    }

    public static boolean c(Context context, String str) {
        Log.d("BuildProperties", "writeBuildProp+++build.prop: \n" + str);
        File file = new File(context.getFilesDir(), "build.prop");
        if (!l.e.D(str, file)) {
            return false;
        }
        String str2 = Build.VERSION.SDK_INT >= 24 ? "mount -o rw,remount /system" : "mount -o remount,rw /system";
        StringBuilder sbA = android.support.v4.media.f.a("cp ");
        sbA.append(file.getAbsolutePath());
        sbA.append(" ");
        sbA.append("/system/build.prop");
        d.a aVarC = w0.d.c(str2, sbA.toString(), "sync");
        Log.d("BuildProperties", "writeBuildProp: " + aVarC);
        return aVarC.f3778a == 0;
    }

    public static boolean d(Context context, String str) {
        Log.d("BuildProperties", "writeODMBuildProp+++build.prop: \n" + str);
        File file = new File(context.getFilesDir(), "build.prop");
        if (!l.e.D(str, file)) {
            return false;
        }
        int i4 = cn.huidu.lcd.core.a.f337c;
        String str2 = (i4 == 107 || i4 == 108) ? "mount -o rw -o remount /vendor" : "mount -o rw -o remount /odm";
        StringBuilder sbA = android.support.v4.media.f.a("cp ");
        sbA.append(file.getAbsolutePath());
        sbA.append(" ");
        sbA.append("/odm/huidu/build.prop");
        d.a aVarC = w0.d.c(str2, sbA.toString(), "sync");
        Log.d("BuildProperties", "writeODMBuildProp: +++" + aVarC);
        return aVarC.f3778a == 0;
    }
}
