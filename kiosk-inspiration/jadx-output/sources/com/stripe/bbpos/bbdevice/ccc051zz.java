package com.stripe.bbpos.bbdevice;

import android.content.Context;
import android.content.Intent;
import com.sun.jna.platform.win32.COM.tlb.imp.TlbConst;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.Locale;

/* JADX INFO: loaded from: classes3.dex */
final class ccc051zz {
    static void aaa001(Context context) {
        Intent intent = new Intent("com.stripe.bbpos.powerkey_enable");
        intent.putExtra("powerkey_enable", "1");
        context.sendBroadcast(intent, "android.permission.BBPOS");
    }

    private static void aaa001(String str) {
    }

    static String aaa002(String str) {
        BufferedReader bufferedReader;
        StringBuffer stringBuffer = new StringBuffer();
        try {
            bufferedReader = new BufferedReader(new FileReader(str));
        } catch (IOException e) {
            e.printStackTrace();
            aaa001("[readSysFile] failed to read file: " + str + e.getMessage());
        }
        while (true) {
            int i = bufferedReader.read();
            if (i == -1) {
                break;
            }
            stringBuffer.append((char) i);
            return stringBuffer.toString();
        }
        bufferedReader.close();
        return stringBuffer.toString();
    }

    static String aaa000(String str) {
        String str2 = "";
        for (String str3 : str.split("\\r?\\n")) {
            String[] strArrSplit = str3.split(":");
            if (strArrSplit.length >= 2) {
                if (!str2.isEmpty()) {
                    str2 = str2 + "-";
                }
                str2 = str2 + strArrSplit[1].toUpperCase(Locale.ROOT);
            }
        }
        return str2;
    }

    static void aaa000(Context context) {
        Intent intent = new Intent("com.stripe.bbpos.powerkey_enable");
        intent.putExtra("powerkey_enable", TlbConst.TYPELIB_MINOR_VERSION_SHELL);
        context.sendBroadcast(intent, "android.permission.BBPOS");
    }
}
