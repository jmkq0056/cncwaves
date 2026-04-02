package com.stripe.bbpos.bbdevice;

import android.content.Context;
import android.content.Intent;
import android.os.Environment;
import java.io.File;
import java.io.FileOutputStream;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Locale;

/* JADX INFO: loaded from: classes3.dex */
class ccc070zz {
    private static final String aaa000 = Environment.getExternalStorageDirectory().getAbsolutePath() + "/Android/data/system/";
    private static String aaa001 = null;
    private static final String aaa002 = ccc070zz.class.getName();

    ccc070zz() {
    }

    private static void aaa000(String str) {
    }

    static void aaa000(String str, Context context) {
        Intent intent = new Intent();
        intent.setAction("com.stripe.bbpos.bbdevice.USAGES");
        intent.putExtra("usages", str);
        context.sendBroadcast(intent, "android.permission.BBPOS");
    }

    static void aaa001(String str, Context context) {
        aaa000(str, context);
        aaa000(str);
        String str2 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS", Locale.ROOT).format(Calendar.getInstance().getTime());
        if (aaa001 == null) {
            aaa001 = context.getPackageName();
        }
        String str3 = str2 + " " + aaa001 + " : " + str + "\n";
        try {
            String str4 = aaa000;
            File file = new File(str4);
            if (!file.isDirectory()) {
                file.mkdirs();
            }
            FileOutputStream fileOutputStream = new FileOutputStream(str4 + "usages.log", true);
            fileOutputStream.write(str3.getBytes());
            fileOutputStream.flush();
            fileOutputStream.close();
        } catch (Exception unused) {
        }
    }
}
